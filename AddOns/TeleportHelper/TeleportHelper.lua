-- TeleportHelper Addon for MoP Classic
-- Creates a UI that shows when ESC is pressed

-- Create the main addon object (namespace)
TeleportHelper = {}

-- Frame to hold our UI
local mainFrame = nil
local isVisible = false

-- Items that can teleport (add more as needed)
local teleportItems = {
    [6948] = "Hearthstone",
    [64488] = "The Innkeeper's Daughter", 
    [54452] = "Ethereal Portal",
    [39883] = "Ethereal Portal",  -- Different version
    [52251] = "Jaina's Locket",
    [63378] = "Hellscream's Reach Tabard",
    [63379] = "Baradin's Wardens Tabard",
    [63353] = "Shroud of Cooperation",
    [63352] = "Shroud of Cooperation",
}

-- Guild services (if in guild)
local guildServices = {
    ["hearthstone"] = "Guild Hearthstone",
    ["cloak"] = "Guild Cloak"
}

-- Initialize the addon
function TeleportHelper:Initialize()
    -- Create the main frame
    self:CreateMainFrame()
    
    -- Hook the escape key
    self:HookEscapeKey()
    
    -- Register events
    self:RegisterEvents()
    
    print("|cff00ff00TeleportHelper|r loaded! Press ESC to view teleports.")
end

-- Create the main UI frame
function TeleportHelper:CreateMainFrame()
    -- Create main frame
    mainFrame = CreateFrame("Frame", "TeleportHelperMainFrame", UIParent)
    mainFrame:SetSize(300, 400)
    mainFrame:SetPoint("CENTER", UIParent, "CENTER", 200, 0)
    mainFrame:SetFrameStrata("HIGH")
    mainFrame:Hide()
    
    -- Make frame movable
    mainFrame:SetMovable(true)
    mainFrame:EnableMouse(true)
    mainFrame:RegisterForDrag("LeftButton")
    mainFrame:SetScript("OnDragStart", mainFrame.StartMoving)
    mainFrame:SetScript("OnDragStop", mainFrame.StopMovingOrSizing)
    
    -- Background
    local bg = mainFrame:CreateTexture(nil, "BACKGROUND")
    bg:SetAllPoints(mainFrame)
    bg:SetColorTexture(0, 0, 0, 0.8)
    
    -- Border
    local border = CreateFrame("Frame", nil, mainFrame, "DialogBorderTemplate")
    border:SetAllPoints()
    
    -- Title
    local title = mainFrame:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
    title:SetPoint("TOP", mainFrame, "TOP", 0, -10)
    title:SetText("Available Teleports")
    title:SetTextColor(1, 1, 1)
    
    -- Close button
    local closeBtn = CreateFrame("Button", nil, mainFrame, "UIPanelCloseButton")
    closeBtn:SetPoint("TOPRIGHT", mainFrame, "TOPRIGHT", -5, -5)
    closeBtn:SetScript("OnClick", function()
        TeleportHelper:HideFrame()
    end)
    
    -- Scroll frame for teleport list
    local scrollFrame = CreateFrame("ScrollFrame", "TeleportScrollFrame", mainFrame, "UIPanelScrollFrameTemplate")
    scrollFrame:SetPoint("TOPLEFT", mainFrame, "TOPLEFT", 10, -40)
    scrollFrame:SetPoint("BOTTOMRIGHT", mainFrame, "BOTTOMRIGHT", -30, 10)
    
    -- Content frame inside scroll frame
    local content = CreateFrame("Frame", nil, scrollFrame)
    content:SetSize(260, 1) -- Height will be set dynamically
    scrollFrame:SetScrollChild(content)
    
    -- Store references
    mainFrame.scrollFrame = scrollFrame
    mainFrame.content = content
end

-- Hook the escape key
function TeleportHelper:HookEscapeKey()
    -- Store original escape function
    local originalCloseAllWindows = CloseAllWindows
    
    -- Override escape function
    CloseAllWindows = function(...)
        if isVisible then
            -- If our frame is visible, close it instead
            TeleportHelper:HideFrame()
            return
        else
            -- Show our frame
            TeleportHelper:ShowFrame()
        end
        -- Don't call original function when showing our frame
    end
end

-- Show the teleport frame
function TeleportHelper:ShowFrame()
    if not mainFrame then return end
    
    -- Update the teleport list
    self:UpdateTeleportList()
    
    -- Show frame
    mainFrame:Show()
    isVisible = true
end

-- Hide the teleport frame
function TeleportHelper:HideFrame()
    if not mainFrame then return end
    
    mainFrame:Hide()
    isVisible = false
end

-- Update the list of available teleports
function TeleportHelper:UpdateTeleportList()
    if not mainFrame or not mainFrame.content then return end
    
    -- Clear existing buttons
    for i = 1, 50 do
        local oldButton = _G["TeleportButton" .. i]
        if oldButton then
            oldButton:Hide()
            oldButton:SetParent(nil)
        end
    end
    
    local yOffset = -10
    local buttonHeight = 30
    local buttonCount = 0
    
    -- Check for hearthstone and similar items
    for itemId, itemName in pairs(teleportItems) do
        local itemCount = GetItemCount(itemId)
        if itemCount > 0 then
            buttonCount = buttonCount + 1
            local button = self:CreateTeleportButton(itemName, itemId, "item")
            button:SetParent(mainFrame.content)
            button:SetPoint("TOPLEFT", mainFrame.content, "TOPLEFT", 5, yOffset)
            button:Show()
            yOffset = yOffset - buttonHeight - 5
        end
    end
    
    -- Check for guild hearthstone (if in guild)
    if IsInGuild() then
        -- Guild Hearthstone spell
        if IsSpellKnown(83958) then -- Guild Hearthstone spell ID
            buttonCount = buttonCount + 1
            local button = self:CreateTeleportButton("Guild Hearthstone", 83958, "spell")
            button:SetParent(mainFrame.content)
            button:SetPoint("TOPLEFT", mainFrame.content, "TOPLEFT", 5, yOffset)
            button:Show()
            yOffset = yOffset - buttonHeight - 5
        end
    end
    
    -- Set content height
    mainFrame.content:SetHeight(math.max(100, (buttonCount * (buttonHeight + 5)) + 20))
    
    -- If no teleports available
    if buttonCount == 0 then
        local noTeleports = mainFrame.content:CreateFontString(nil, "OVERLAY", "GameFontNormal")
        noTeleports:SetPoint("CENTER", mainFrame.content, "CENTER", 0, 0)
        noTeleports:SetText("No teleports available")
        noTeleports:SetTextColor(0.7, 0.7, 0.7)
    end
end

-- Create a teleport button
function TeleportHelper:CreateTeleportButton(name, id, buttonType)
    local button = CreateFrame("Button", "TeleportButton" .. id, nil, "UIPanelButtonTemplate")
    button:SetSize(250, 25)
    button:SetText(name)
    
    -- Get item texture if it's an item
    if buttonType == "item" then
        local _, _, _, _, _, _, _, _, _, texture = GetItemInfo(id)
        if texture then
            -- Create icon
            local icon = button:CreateTexture(nil, "ARTWORK")
            icon:SetTexture(texture)
            icon:SetSize(20, 20)
            icon:SetPoint("LEFT", button, "LEFT", 5, 0)
            
            -- Adjust text position
            button:GetFontString():SetPoint("LEFT", icon, "RIGHT", 5, 0)
        end
    end
    
    -- Click handler
    button:SetScript("OnClick", function()
        if buttonType == "item" then
            -- Use item
            UseItemByName(id)
        elseif buttonType == "spell" then
            -- Cast spell
            CastSpell(id)
        end
        TeleportHelper:HideFrame()
    end)
    
    -- Tooltip
    button:SetScript("OnEnter", function(self)
        GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
        if buttonType == "item" then
            GameTooltip:SetItemByID(id)
        else
            GameTooltip:SetText(name)
            GameTooltip:AddLine("Click to use this teleport", 1, 1, 1)
        end
        GameTooltip:Show()
    end)
    
    button:SetScript("OnLeave", function()
        GameTooltip:Hide()
    end)
    
    return button
end

-- Register events
function TeleportHelper:RegisterEvents()
    local eventFrame = CreateFrame("Frame")
    eventFrame:RegisterEvent("ADDON_LOADED")
    eventFrame:RegisterEvent("BAG_UPDATE")
    
    eventFrame:SetScript("OnEvent", function(self, event, ...)
        if event == "ADDON_LOADED" then
            local addonName = ...
            if addonName == "TeleportHelper" then
                TeleportHelper:Initialize()
            end
        elseif event == "BAG_UPDATE" then
            -- Update teleport list when bags change
            if isVisible then
                TeleportHelper:UpdateTeleportList()
            end
        end
    end)
end

-- Initialize when loaded
TeleportHelper:RegisterEvents()