--[[
	Copyright (c) 2009, CMTitan
	Copyright (c) 2009-2017, Hendrik "Nevcairiel" Leppkes < h.leppkes at gmail dot com >
	Based on Nevcairiel's RepXPBar.lua
	All rights to be transferred to Nevcairiel upon inclusion into Bartender4.
	All rights reserved, otherwise.
]]
local _, Bartender4 = ...
-- fetch upvalues
local L = LibStub("AceLocale-3.0"):GetLocale("Bartender4")
local Bar = Bartender4.Bar.prototype

local WoW10 = select(4, GetBuildInfo()) >= 100000
if WoW10 then return end

local WoWCata = (WOW_PROJECT_ID == WOW_PROJECT_CATACLYSM_CLASSIC)
local WoWMists = (WOW_PROJECT_ID == WOW_PROJECT_MISTS_CLASSIC)

local PresetsMod = Bartender4:NewModule("Presets")

PresetsMod.showXPBar = true
PresetsMod.showStatusBar = true

function PresetsMod:ToggleModule(info, val)
	-- We are always enabled. Period.
	if not self:IsEnabled() then
		self:Enabled()
	end
end

local function SetBarLocation(config, point, x, y)
	config.position.point = point
	config.position.x = x
	config.position.y = y
end

local function BuildSingleProfile()
	local dy, config
	dy = 0
	if not PresetsMod.showXPBar then
		dy = dy - 7
	end

	local actionButtonScale = 1.0

	Bartender4.db.profile.blizzardVehicle = false
	Bartender4.db.profile.outofrange = "hotkey"
	Bartender4.db.profile.focuscastmodifier = false

	config = Bartender4.db:GetNamespace("ActionBars").profile
	config.actionbars[1].padding = 6
	config.actionbars[1].position.scale = actionButtonScale
	SetBarLocation( config.actionbars[1], "BOTTOM", -256, 41.75 )
	config.actionbars[2].position.scale = actionButtonScale
	config.actionbars[2].enabled = false
	config.actionbars[3].padding = 5
	config.actionbars[3].rows = 12
	config.actionbars[3].position.scale = actionButtonScale
	SetBarLocation( config.actionbars[3], "BOTTOMRIGHT", -42, 610 )
	config.actionbars[4].padding = 5
	config.actionbars[4].rows = 12
	config.actionbars[4].position.scale = actionButtonScale
	config.actionbars[5].position.scale = actionButtonScale
	config.actionbars[6].position.scale = actionButtonScale
	SetBarLocation( config.actionbars[4], "BOTTOMRIGHT", -82, 610 )
	SetBarLocation( config.actionbars[5], "BOTTOM", -232, 94 + dy )
	SetBarLocation( config.actionbars[6], "BOTTOM", -232, 132 + dy )

	config = Bartender4.db:GetNamespace("BagBar").profile
	config.enabled = false
	Bartender4:GetModule("BagBar"):Disable()
	config = Bartender4.db:GetNamespace("MicroMenu").profile
	config.enabled = false
	Bartender4:GetModule("MicroMenu"):Disable()
	config = Bartender4.db:GetNamespace("StanceBar").profile
	config.enabled = false
	Bartender4:GetModule("StanceBar"):Disable()

	if PresetsMod.showXPBar then
		config = Bartender4.db:GetNamespace("XPBar").profile
		config.enabled = true
		config.scale = 0.5
		Bartender4:GetModule("XPBar"):Enable()
		SetBarLocation( config, "BOTTOM", -256, 48)

		config = Bartender4.db:GetNamespace("RepBar").profile
		config.enabled = true
		config.scale = 0.5
		Bartender4:GetModule("RepBar"):Enable()
		SetBarLocation( config, "BOTTOM", -256, 51)
	end

	config = Bartender4.db:GetNamespace("BlizzardArt").profile
	config.enabled = true
	config.artLayout = "ONEBAR"
	Bartender4:GetModule("BlizzardArt"):Enable()
	SetBarLocation( config, "BOTTOM", -256, 47 )

	config = Bartender4.db:GetNamespace("PetBar").profile
	SetBarLocation( config, "BOTTOM", -164, 164 + dy )
end

local function BuildDoubleProfile()
	local dy, config
	dy = 0
	if not PresetsMod.showXPBar then
		dy = dy - 13
	end

	local actionButtonScale = 1.0

	Bartender4.db.profile.blizzardVehicle = true
	Bartender4.db.profile.outofrange = "hotkey"
	Bartender4.db.profile.focuscastmodifier = false

	config = Bartender4.db:GetNamespace("ActionBars").profile
	config.actionbars[1].padding = 6
	config.actionbars[1].position.scale = actionButtonScale
	SetBarLocation( config.actionbars[1], "BOTTOM", -510, 41.75 )
	config.actionbars[2].padding = 6
	config.actionbars[2].position.scale = actionButtonScale
	SetBarLocation( config.actionbars[2], "BOTTOM", 3, 41.75 )
	config.actionbars[3].padding = 5
	config.actionbars[3].rows = 12
	config.actionbars[3].position.scale = actionButtonScale
	SetBarLocation( config.actionbars[3], "BOTTOMRIGHT", -42, 610 )
	config.actionbars[4].padding = 5
	config.actionbars[4].rows = 12
	config.actionbars[4].position.scale = actionButtonScale
	SetBarLocation( config.actionbars[4], "BOTTOMRIGHT", -82, 610 )
	config.actionbars[5].padding = 6
	config.actionbars[5].position.scale = actionButtonScale
	SetBarLocation( config.actionbars[5], "BOTTOM", 3, 102 + dy )
	config.actionbars[6].padding = 6
	config.actionbars[6].position.scale = actionButtonScale
	SetBarLocation( config.actionbars[6], "BOTTOM", -510, 102 + dy )

	config = Bartender4.db:GetNamespace("BagBar").profile
	config.enabled = false
	Bartender4:GetModule("BagBar"):Disable()

	config = Bartender4.db:GetNamespace("MicroMenu").profile
	config.enabled = false
	Bartender4:GetModule("MicroMenu"):Disable()

	if PresetsMod.showXPBar then
		config = Bartender4.db:GetNamespace("XPBar").profile
		config.enabled = true
		Bartender4:GetModule("XPBar"):Enable()
		SetBarLocation( config, "BOTTOM", -514, 54)

		config = Bartender4.db:GetNamespace("RepBar").profile
		config.enabled = true
		Bartender4:GetModule("RepBar"):Enable()
		SetBarLocation( config, "BOTTOM", -514, 61)
	end

	config = Bartender4.db:GetNamespace("BlizzardArt").profile
	config.enabled = true
	config.artLayout = "TWOBAR"
	Bartender4:GetModule("BlizzardArt"):Enable()
	SetBarLocation( config, "BOTTOM", -512, 47 )

	config = Bartender4.db:GetNamespace("PetBar").profile
	if GetNumShapeshiftForms() > 0 then
		SetBarLocation( config, "BOTTOM", -120, 135 + dy )
		config = Bartender4.db:GetNamespace("StanceBar").profile
		config.position.scale = 1.0
		SetBarLocation( config, "BOTTOM", -460, 135 + dy )
	else
		SetBarLocation( config, "BOTTOM", -460, 135 + dy )
	end
end

local function BuildBlizzardProfile()
	local dy, config
	dy = 0
	if not PresetsMod.showXPBar then
		dy = dy - 13
	end

	local showKeyRing = KeyRingButton and GetCVarBool("showKeyring") or nil
	local actionButtonScale = 1.0

	Bartender4.db.profile.blizzardVehicle = true
	Bartender4.db.profile.outofrange = "hotkey"
	Bartender4.db.profile.focuscastmodifier = false

	config = Bartender4.db:GetNamespace("ActionBars").profile
	config.actionbars[1].padding = 6
	config.actionbars[1].position.scale = actionButtonScale
	SetBarLocation( config.actionbars[1], "BOTTOM", -510, 41.75 )
	config.actionbars[2].enabled = false
	config.actionbars[2].position.scale = actionButtonScale
	config.actionbars[3].padding = 5
	config.actionbars[3].rows = 12
	config.actionbars[3].position.scale = actionButtonScale
	SetBarLocation( config.actionbars[3], "BOTTOMRIGHT", -82, 610 )
	config.actionbars[4].padding = 5
	config.actionbars[4].rows = 12
	config.actionbars[4].position.scale = actionButtonScale
	SetBarLocation( config.actionbars[4], "BOTTOMRIGHT", -42, 610 )
	config.actionbars[5].padding = 6
	config.actionbars[5].position.scale = actionButtonScale
	SetBarLocation( config.actionbars[5], "BOTTOM", 3, 110 + dy )
	config.actionbars[6].padding = 6
	config.actionbars[6].position.scale = actionButtonScale
	SetBarLocation( config.actionbars[6], "BOTTOM", -510, 110 + dy )

	config = Bartender4.db:GetNamespace("BagBar").profile
	config.onebag = false
	config.keyring = showKeyRing
	config.verticalAlignment = "CENTER"
	if WoWMists then
		config.keyring = false
		config.padding = 2
		config.scale = 0.9
		SetBarLocation( config, "BOTTOM", 346, 38)
	elseif WoWCata then
		config.keyring = false
		config.padding = 4
		config.scale = 0.9
		SetBarLocation( config, "BOTTOM", 346, 38)
	elseif GetClassicExpansionLevel() >= 2 --[[Wrath]] then
		config.padding = 4
		SetBarLocation( config, "BOTTOM", 304, 42)
	else
		config.padding = 5
		SetBarLocation( config, "BOTTOM", 272, 42)
	end

	config = Bartender4.db:GetNamespace("MicroMenu").profile
	config.position.scale = 1.0
	config.padding = (WoWCata or WoWMists) and -3 or -2
	SetBarLocation( config, "BOTTOM", 33, 42)

	if PresetsMod.showXPBar then
		config = Bartender4.db:GetNamespace("XPBar").profile
		config.enabled = true
		Bartender4:GetModule("XPBar"):Enable()
		SetBarLocation( config, "BOTTOM", -514, 54)

		config = Bartender4.db:GetNamespace("RepBar").profile
		config.enabled = true
		Bartender4:GetModule("RepBar"):Enable()
		SetBarLocation( config, "BOTTOM", -514, 61)
	end

	if HasMultiCastActionBar and HasMultiCastActionBar() then
		config = Bartender4.db:GetNamespace("MultiCast").profile
		config.enabled = true
	end

	config = Bartender4.db:GetNamespace("BlizzardArt").profile
	config.enabled = true
	Bartender4:GetModule("BlizzardArt"):Enable()
	SetBarLocation( config, "BOTTOM", -512, 47 )

	config = Bartender4.db:GetNamespace("PetBar").profile
	if GetNumShapeshiftForms() > 0 or HasMultiCastActionBar and HasMultiCastActionBar() then
		SetBarLocation( config, "BOTTOM", -120, 143 + dy )
		if GetNumShapeshiftForms() > 0 then
			config = Bartender4.db:GetNamespace("StanceBar").profile
			config.position.scale = 1.0
			SetBarLocation( config, "BOTTOM", -460, 143 + dy )
		elseif HasMultiCastActionBar and HasMultiCastActionBar() then
			config = Bartender4.db:GetNamespace("MultiCast").profile
			config.position.scale = 1.0
			Bartender4:GetModule("MultiCast"):Enable()
			SetBarLocation( config, "BOTTOM", -460, 143 + dy )
		end
	else
		SetBarLocation( config, "BOTTOM", -460, 143 + dy )
	end
end

function PresetsMod:ResetProfile(type)
	if not type then type = PresetsMod.defaultType end
	Bartender4.db:ResetProfile()
	if type == "BLIZZARD" then
		BuildBlizzardProfile()
	elseif type == "DOUBLE" then
		BuildDoubleProfile()
	elseif type == "SINGLE" then
		BuildSingleProfile()
	end
	Bartender4:UpdateModuleConfigs()
end

function PresetsMod:OnEnable()
	Bartender4.finishedLoading = true
	if self.applyBlizzardOnEnable then
		self:ResetProfile("BLIZZARD")
		self.applyBlizzardOnEnable = nil
	end
end

function PresetsMod:SetupOptions()
	if not self.options then
		PresetsMod.defaultType = "BLIZZARD"
		self.showStatusBar = true
		self.showXPBar = true
		local otbl = {
			message1 = {
				order = 1,
				type = "description",
				name = L["You can use the preset defaults as a starting point for setting up your interface. Just choose your preferences here and click the button below to reset your profile to the preset default. Note that not all defaults show all bars."]
			},
			message2 = {
				order = 2,
				type = "description",
				name = L["|cffff0000WARNING|cffffffff: Pressing the button will reset your complete profile! If you're not sure about this, create a new profile and use that to experiment."],
			},
			preset = {
				order = 10,
				type = "select",
				name = L["Presets"],
				values = { BLIZZARD = L["Blizzard interface"], DOUBLE = L["Two bars wide"], SINGLE = L["Three bars stacked"], ZRESET = L["Full reset"] },
				get = function() return PresetsMod.defaultType end,
				set = function(info, val) PresetsMod.defaultType = val end
			},
			nl1 = {
				order = 11,
				type = "description",
				name = ""
			},
			xpbar = {
				order = 20,
				type = "toggle",
				width = "full",
				name = L["XP Bar"],
				get = function() return PresetsMod.showXPBar end,
				set = function(info, val) PresetsMod.showXPBar = val end,
				disabled = function() return PresetsMod.defaultType == "RESET" end,
			},
			nl2 = {
				order = 36,
				type = "description",
				name = ""
			},
			button = {
				order = 40,
				type = "execute",
				name = L["Apply Preset"],
				func = function() PresetsMod.ResetProfile() end,
			}
		}
		self.optionobject = Bartender4:NewOptionObject( otbl )
		self.options = {
			order = 99,
			type = "group",
			name = L["Presets"],
			desc = L["Configure all of Bartender to preset defaults"],
			childGroups = "tab",
		}
		Bartender4:RegisterModuleOptions("Presets", self.options)
	end
	self.options.args = self.optionobject.table
end
