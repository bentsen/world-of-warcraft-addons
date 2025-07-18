if not WeakAuras.IsLibsOK() then return end
---@type string
local AddonName = ...
---@class OptionsPrivate
local OptionsPrivate = select(2, ...)

-- Lua APIs
local pairs, error, coroutine = pairs, error, coroutine

-- WoW APIs
local IsSpellKnown = IsSpellKnown

---@class WeakAuras
local WeakAuras = WeakAuras

local spellCache = {}
WeakAuras.spellCache = spellCache

local cache
local metaData
local bestIcon = {}

-- Builds a cache of name/icon pairs from existing spell data
-- This is a rather slow operation, so it's only done once, and the result is subsequently saved
function spellCache.Build()
  if not cache  then
    error("spellCache has not been loaded. Call WeakAuras.spellCache.Load(...) first.")
  end

  if not metaData.needsRebuild then
    return
  end

  local holes
  if WeakAuras.IsClassicEra() then
    holes = {}
    holes[63707] = 81743
    holes[81748] = 219002
    holes[219004] = 285223
    holes[285224] = 301088
    holes[301101] = 324269
    holes[474742] = 1213143
  elseif WeakAuras.IsCataClassic() then
    holes = {}
    holes[121820] = 158262
    holes[158263] = 186402
    holes[186403] = 219002
    holes[219004] = 243805
    holes[243806] = 261127
    holes[262591] = 281624
    holes[301101] = 324269
  elseif WeakAuras.IsMists() then
    holes = {}
    holes[171557] = 186402
    holes[186403] = 219002
    holes[219004] = 243805
    holes[243819] = 261127
    holes[262591] = 281624
    holes[301101] = 324269
    holes[473745] = 1214175
  elseif WeakAuras.IsRetail() then
    holes = {}
    holes[474771] = 556604
    holes[556606] = 936050
    holes[936051] = 1049295
    holes[1049296] = 1213133
  end
  wipe(cache)
  local co = coroutine.create(function()
    metaData.rebuilding = true
    local id = 0
    local misses = 0
    while misses < 80000 do
      id = id + 1
      local name = OptionsPrivate.Private.ExecEnv.GetSpellName(id)
      local icon = OptionsPrivate.Private.ExecEnv.GetSpellIcon(id)

      if(icon == 136243) then -- 136243 is the a gear icon, we can ignore those spells
        misses = 0;
      elseif name and name ~= "" and icon then
        cache[name] = cache[name] or {}

        if not cache[name].spells or cache[name].spells == "" then
          cache[name].spells = id .. "=" .. icon
        else
          cache[name].spells = cache[name].spells .. "," .. id .. "=" .. icon
        end
        misses = 0
      else
        misses = misses + 1
      end
      if holes and holes[id] then
        id = holes[id]
      end
      coroutine.yield(0.01, "spells")
    end

    if WeakAuras.IsCataOrMistsOrRetail() then
      for _, category in pairs(GetCategoryList()) do
        local total = GetCategoryNumAchievements(category, true)
        for i = 1, total do
          local id,name,_,_,_,_,_,_,_,iconID = GetAchievementInfo(category, i)
          if name and iconID then
            cache[name] = cache[name] or {}
            if not cache[name].achievements or cache[name].achievements == "" then
              cache[name].achievements = id .. "=" .. iconID
            else
              cache[name].achievements = cache[name].achievements .. "," .. id .. "=" .. iconID
            end
          end
          coroutine.yield(0.1, "achievements")
        end
        coroutine.yield(0.1, "categories")
      end
    end

    metaData.needsRebuild = false
    metaData.rebuilding = false
  end)
  OptionsPrivate.Private.Threads:Add("spellCache", co, 'background')
end

--[[ function to help find big holes in spellIds to help speedup Build()

local id = 0
local misses = 0
local lastId
print("####")
while misses < 4000000 do
   id = id + 1
   local spellInfo = C_Spell.GetSpellInfo(id)
   local name = spellInfo and spellInfo.name
   local icon = C_Spell.GetSpellTexture(id)
   if icon == 136243 then -- 136243 is the a gear icon, we can ignore those spells
      misses = 0
   elseif name and name ~= "" and icon then
      if misses > 10000 then
         print(("holes[%s] = %s"):format(lastId, id - 1))
      end
      lastId = id
      misses = 0
   else
      misses = misses + 1
   end
end
print("lastId", lastId)
]]

function spellCache.GetIcon(name)
  if (name == nil) then
    return nil;
  end
  if cache then
    if (bestIcon[name]) then
      return bestIcon[name]
    end

    local icons = cache[name]
    local bestMatch = nil
    if (icons) then
      if (icons.spells) then
        for spell, icon in icons.spells:gmatch("(%d+)=(%d+)") do
          local spellId = tonumber(spell)

          if not bestMatch or (spellId and spellId ~= 0 and IsSpellKnown(spellId)) then
            bestMatch = tonumber(icon)
          end
        end
      end
    elseif metaData.rebuilding then
      OptionsPrivate.Private.Threads:SetPriority('spellCache', 'normal')
    end

    bestIcon[name] = bestMatch
    return bestIcon[name]
  else
    error("spellCache has not been loaded. Call WeakAuras.spellCache.Load(...) first.")
  end
end

function spellCache.GetSpellsMatching(name)
  if cache[name] then
    if cache[name].spells then
      local result = {}
      for spell, icon in cache[name].spells:gmatch("(%d+)=(%d+)") do
        local spellId = tonumber(spell)
        local iconId = tonumber(icon)
        result[spellId] = icon
      end
      return result
    end
  elseif metaData.rebuilding then
    OptionsPrivate.Private.Threads:SetPriority('spellCache', 'normal')
  end
end

function spellCache.AddIcon(name, id, icon)
  if not cache then
    error("spellCache has not been loaded. Call WeakAuras.spellCache.Load(...) first.")
    return
  end

  if name and id and icon then
    cache[name] = cache[name] or {}
    if not cache[name].spells or cache[name].spells == "" then
      cache[name].spells = id .. "=" .. icon
    else
      cache[name].spells = cache[name].spells .. "," .. id .. "=" .. icon
    end
  end
end

function spellCache.Get()
  if cache then
    return cache
  else
    error("spellCache has not been loaded. Call WeakAuras.spellCache.Load(...) first.")
  end
end

function spellCache.Load(data)
  metaData = data
  cache = metaData.spellCache

  local _, build = GetBuildInfo();
  local locale = GetLocale();
  local version = WeakAuras.versionString

  local num = 0;
  for i,v in pairs(cache) do
    num = num + 1;
  end

  if(num < 39000 or metaData.locale ~= locale or metaData.build ~= build
     or metaData.version ~= version or not metaData.spellCacheStrings)
  then
    metaData.build = build;
    metaData.locale = locale;
    metaData.version = version;
    metaData.spellCacheAchievements = true
    metaData.spellCacheStrings = true
    metaData.needsRebuild = true
    wipe(cache)
  end
end

-- This function computes the Levenshtein distance between two strings
-- It is used in this program to match spell icon textures with "good" spell names; i.e.,
-- spell names that are very similar to the name of the texture
local function Lev(str1, str2)
  local matrix = {};
  for i=0, str1:len() do
    matrix[i] = {[0] = i};
  end
  for j=0, str2:len() do
    matrix[0][j] = j;
  end
  for j=1, str2:len() do
    for i =1, str1:len() do
      if(str1:sub(i, i) == str2:sub(j, j)) then
        matrix[i][j] = matrix[i-1][j-1];
      else
        matrix[i][j] = math.min(matrix[i-1][j], matrix[i][j-1], matrix[i-1][j-1]) + 1;
      end
    end
  end

  return matrix[str1:len()][str2:len()];
end

function spellCache.BestKeyMatch(nearkey)
  local bestKey = "";
  local bestDistance = math.huge;
  local partialMatches = {};
  if cache[nearkey] then
    return nearkey
  end
  for key, value in pairs(cache) do
    if key:lower() == nearkey:lower() then
      return key
    end
    if(key:lower():find(nearkey:lower(), 1, true)) then
      partialMatches[key] = value;
    end
  end
  for key, value in pairs(partialMatches) do
    local distance = Lev(nearkey, key);
    if(distance < bestDistance) then
      bestKey = key;
      bestDistance = distance;
    end
  end

  return bestKey;
end

---@param input string | number
---@return string name, number? id
function spellCache.CorrectAuraName(input)
  if (not cache) then
    error("spellCache has not been loaded. Call WeakAuras.spellCache.Load(...) first.")
  end

  local spellId = WeakAuras.SafeToNumber(input)
  if type(input) == "string" and input:find("|", nil, true) then
    spellId = WeakAuras.SafeToNumber(input:match("|Hspell:(%d+)"))
  end
  if(spellId) then
    local name, _, icon = OptionsPrivate.Private.ExecEnv.GetSpellInfo(spellId);
    if(name) then
      spellCache.AddIcon(name, spellId, icon)
      return name, spellId;
    else
      return "Invalid Spell ID", spellId;
    end
  else
    local ret = spellCache.BestKeyMatch(input);
    if(ret == "") then
      return "No Match Found", nil;
    else
      return ret, nil;
    end
  end
end
