AddCSLuaFile()

local B = "BLUE"
local W = "WHITE"

local name = "Internet Driver SF Lightbar Blue"

local COMPONENT = {}
COMPONENT.Model = "models/lonewolfie/lightbar.mdl"
COMPONENT.Category = "Lightbar"
COMPONENT.Skin = 1
COMPONENT.Lightbar = true
COMPONENT.Bodygroups = {}
COMPONENT.ColorInput = 0
COMPONENT.Deprecated = "Use the core component 'Driver SF Lightbar Blue'."

COMPONENT.Meta = {
	driver_forward = {
		AngleOffset = -90,
		W = 6.1,
		H = 7.5,
		Sprite = "sprites/emv/fs_valor",
		Scale = 1,
		WMult = 1
	},
	driver_illum_f = {
		AngleOffset = -90,
		W = 6.1,
		H = 7.5,
		Sprite = "sprites/emv/fs_valor",
		Scale = 1.25,
		WMult = 1.5
	},
	driver_corner = {
		AngleOffset = -90,
		W = 2.7,
		H = 7.5,
		Sprite = "sprites/emv/fs_valor",
		Scale = 1,
		WMult = 1,
	},
	driver_illum_s = {
		AngleOffset = -90,
		W = 8,
		H = 7.5,
		Sprite = "sprites/emv/fs_valor",
		Scale = 1.25,
		WMult = 1.5,
	},
	driver_rear = {
		AngleOffset = 90,
		W = 6.1,
		H = 7.5,
		Sprite = "sprites/emv/fs_valor",
		Scale = 1,
		WMult = 1
	},
}

COMPONENT.Positions = {
	{Vector(3.55, 6.1, h), zAng, "driver_forward"},
	{Vector(-3.15, 6.1, h), zAng, "driver_forward"},
	{Vector(10, 6.1, h), zAng, "driver_forward"},
	{Vector(-10, 6.1, h), zAng, "driver_forward"},
	{Vector(16.35, 6.1, h), zAng, "driver_illum_f"},
	{Vector(-16.37, 6.1, h), zAng, "driver_illum_f"},
	{Vector(23.5, 6.1, h), zAng, "driver_forward"},
	{Vector(-23.5, 6.1, h), zAng, "driver_forward"},
	{Vector(27.25, 5.2, h), Angle(0, -52, 0), "driver_corner", 1},
	{Vector(-27.25, 5.2, h), Angle(0, 52, 0), "driver_corner", 2},
	{Vector(28, 0.2, h), Angle(0, -90, 0), "driver_illum_s" },
	{Vector(-28, 0.2, h), Angle(0, 90, 0), "driver_illum_s" },
	{Vector(27.25, -5.18, h), Angle(0, -130.5, 0), "driver_corner", 3},
	{Vector(-27.25, -5.18, h), Angle(0, 130.5, 0), "driver_corner", 4},
	{Vector(23.5, -6.2, h), zAng, "driver_rear"},
	{Vector(-23.5, -6.2, h), zAng, "driver_rear"},
	{Vector(16.35, -6.2, h), zAng, "driver_rear"},
	{Vector(-16.37, -6.2, h), zAng, "driver_rear"},
	{Vector(10, -6.2, h), zAng, "driver_rear"},
	{Vector(-10, -6.2, h), zAng, "driver_rear"},
	{Vector(3.55, -6.2, h), zAng, "driver_rear"},
	{Vector(-3.15, -6.2, h), zAng, "driver_rear"},
}

COMPONENT.Sections = {
	["driver_lightbar"] = {
		{
			{1, B}, {2, B},
			{3, B}, {4, B},
			{5, W}, {6, W},
			{7, B}, {8, B},
			{9, B}, {10, B},
			{11, W}, {12, W},
			{13, B}, {14, B},
			{15, B}, {16, B},
			{17, W}, {18, W},
			{19, B}, {20, B},
			{21, B}, {22, B},
		},
		{
			{1, B}, {3, B}, {5, W}, {7, B}, {9, B},
			{11, W}, {13, B}, {15, B}, {17, W}, {19, B}, {21, B}
		},
		{
			{2, B}, {4, B}, {6, W}, {8, B}, {10, B}, {12, W},
			{14, B}, {16, B}, {18, W}, {20, B}, {22, B}
		},
		{
			{8, B}, {10, B}, {12, W}, {14, B}
		},
		{
			{7, B}, {9, B}, {11, W}, {13, B}
		},
		{
			{2, B}, {4, B}, {6, W},
			{22, B}, {16, B}, {18, W}, {20, B}
		},
		{
			{1, B}, {3, B}, {5, W},
			{21, B}, {19, B}, {17, W}, {15, B}
		},
		[8] = {
			{6, W}, {2, B}, {16, B}, {22, B}
		},
		[9] = {
			{1, B}, {5, W}, {21, B}, {15, B}
		},
		[10] = {
			{4, B}, {18, W}, {20, B},
		},
		[11] = {
			{3, B}, {17, W}, {19, B}
		},
		[12] = {
			{6, W}, {4, B}, {3, B}, {5, W},
			{16, B}, {18, W}, {15, B}, {17, W}
		},
		[13] = {
			{2, B}, {1, B},
			{20, B}, {22, B},
			{21, B}, {19, B}
		},
		[14] = {
			{2, B}, {4, B}, {6, W}, {8, B}, {10, B}, {12, B},
			{14, B}, {16, B}, {18, W}, {20, B}, {22, B},
		},
		[15] = {
			{1, B}, {3, B}, {5, W}, {7, B}, {9, B},
			{11, W}, {13, B}, {15, B}, {17, W}, {19, B}, {21, B}
		},
	},
	["driver_lightbar_corner"] = {
		{
			{8, B}, {10, B}, {12, W}, {14, B}
		},
		{
			{7, B}, {9, B}, {11, W}, {13, B}
		},
		{
			{7, B}, {9, B}, {11, W}, {13, B},
			{8, B}, {10, B}, {12, W}, {14, B}
		},
		{
			{7, B, .55}, {9, B, .55}, {11, W, .55}, {13, B, .55},
			{8, B, .66}, {10, B, .66, .66, .66}, {12, W, .66, .66}, {14, B, .66}
		}
		,
		{
			{7, B, .66}, {9, B, .66}, {11, W, .66}, {13, B, .66},
			{8, B, .55}, {10, B, .55, .55, .55}, {12, W, .55, .55}, {14, B, .55}
		}
	},
	["driver_lightbar_signalmaster"] = {
		-- right
		[1] = {{16, B}},
		[2] = {{16, B}, {18, W}},
		[3] = {{16, B}, {18, W}, {20, B}},
		[4] = {{16, B}, {18, W}, {20, B}, {22, B}},
		[5] = {{16, B}, {18, W}, {20, B}, {22, B}, {21, B}},
		[6] = {{16, B}, {18, W}, {20, B}, {22, B}, {21, B}, {19, B}},
		-- all
		[7] = {{16, B}, {18, W}, {20, B}, {22, B}, {21, B}, {19, B}, {17, W}, {15, B}},
		-- left
		[8] = {{15, B}},
		[9] = {{17, W}, {15, B}},
		[10] = {{19, B}, {17, W}, {15, B}},
		[11] = {{21, B}, {19, B}, {17, W}, {15, B}},
		[12] = {{22, B}, {21, B}, {19, B}, {17, W}, {15, B}},
		[13] = {{18, W}, {20, B}, {22, B}, {21, B}, {19, B}, {17, W}, {15, B}},
		-- center out
		[14] = {{22, B}, {21, B}},
		[15] = {{20, B}, {22, B}, {21, B}, {19, B}},
		[16] = {{18, W}, {20, B}, {22, B}, {21, B}, {19, B}, {17, W}},
	}
}

COMPONENT.Patterns = {
	["driver_lightbar_ta"] = {
		["left"] = {
			8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 7, 7, 7, 7, 0, 0, 0, 0,
		},
		["right"] = {
			1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 7, 7, 0, 0, 0, 0,
		},
		["diverge"] = {
			14, 14, 15, 15, 16, 16, 7, 7, 7, 7, 0, 0, 0, 0
		}
	},
	["driver_lightbar_main"] = {
		["all"] = {1, 0, 1, 0, 1, 0},
		["pattern_1"] = {2, 2, 2, 2, 3, 3, 3, 3},
		["code2"] = {
			6, 6, 0, 7, 7, 0,
			6, 6, 0, 7, 7, 0,
			6, 6, 0, 7, 7, 0,
			6, 6, 0, 7, 7, 0,
			6, 0, 6, 0, 6, 0, 7, 0, 7, 0, 7, 0,
			6, 0, 6, 0, 6, 0, 7, 0, 7, 0, 7, 0,
			6, 0, 6, 0, 6, 0, 7, 0, 7, 0, 7, 0,
			6, 0, 6, 0, 6, 0, 7, 0, 7, 0, 7, 0,
		},
		["code3"] = {
			0, 6, 0, 7, 0,
			6, 0, 7, 0,
			6, 0, 7, 0,
			6, 0, 7, 0,
			6, 0, 7, 0,
			6, 0, 6, 0, 6, 0,
			7, 0, 7, 0, 7, 0,
			6, 0, 6, 0, 6, 0,
			7, 0, 7, 0, 7, 0,
			6, 0, 6, 0, 6, 0,
			7, 0, 7, 0, 7, 0,
			8, 8, 0, 9, 9, 0,
			8, 8, 0, 9, 9, 0,
			{8, 11}, {9, 10},
			{8, 11}, {9, 10},
			{8, 11}, {9, 10},
			{8, 11}, {9, 10},
			{8, 11}, {9, 10},
			{8, 11}, {9, 10},
			12, 0, 12, 0, 12, 0,
			13, 0, 13, 0, 13, 0,
			12, 0, 12, 0, 12, 0,
			13, 0, 13, 0, 13, 0,
			12, 0, 12, 0, 12, 0,
			13, 0, 13, 0, 13, 0,
		},
		["alert"] = {3, 15, 14, 2}
	},
	["driver_lightbar_corner"] = {
		["cruise"] = {
			4, 4, 4, 5, 5, 5
		},
		["alt_slow"] = {1, 1, 1, 1, 2, 2, 2},
		["code3"] = {
			1, 0, 1, 0, 1,
			2, 0, 2, 0, 2,
		}
	}
}

COMPONENT.TrafficDisconnect = {
	["driver_lightbar_ta"] = {
		15, 16, 17, 18, 19, 20, 21, 22
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = {["driver_lightbar_main"] = "pattern_1"},
		M2 = {
			["driver_lightbar_main"] = "code2",
			["driver_lightbar_corner"] = "alt_slow"
		},
		M3 = {
			["driver_lightbar_main"] = "code3",
			["driver_lightbar_corner"] = "code3"
		},
		ALERT = {["driver_lightbar_main"] = "alert",}
	},
	Auxiliary = {
		C = {["driver_lightbar_corner"] = "cruise"},
		L = {["driver_lightbar_ta"] = "left"},
		R = {["driver_lightbar_ta"] = "right"},
		D = {["driver_lightbar_ta"] = "diverge"}
	},
	Illumination = {}
}

EMVU:AddAutoComponent(COMPONENT, name)