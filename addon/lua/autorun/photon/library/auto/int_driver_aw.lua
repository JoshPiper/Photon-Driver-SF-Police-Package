AddCSLuaFile()

local A = "AMBER"
local R = "RED"
local W = "WHITE"

local name = "Internet Driver SF Lightbar Amber/White"

local COMPONENT = {}
COMPONENT.Model = "models/lonewolfie/lightbar.mdl"
COMPONENT.Category = "Lightbar"
COMPONENT.Skin = 2
COMPONENT.Lightbar = true
COMPONENT.Bodygroups = {}
COMPONENT.ColorInput = 0
COMPONENT.Deprecated = "Use the core component 'Driver SF Lightbar Red/White'."

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

local h = 9.87
local zAng = Angle(0, 0, 0)
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
	["driver_lightbar_main"] = {
		{
			{1, R}, {2, W},
			{3, R}, {4, W},
			{5, A}, {6, A},
			{7, R}, {8, W},
			{9, R}, {10, W},
			{11, W}, {12, W},
			{13, R}, {14, W},
			{15, R}, {16, W},
			{17, A}, {18, A},
			{19, R}, {20, W},
			{21, R}, {22, W},
		},
		{
			{1, R}, {3, R}, {5, A}, {7, R}, {9, R},
			{11, W}, {13, R}, {15, R}, {17, A}, {19, R}, {21, R}
		},
		{
			{2, W}, {4, W}, {6, A}, {8, W}, {10, W}, {12, W},
			{14, W}, {16, W}, {18, A}, {20, W}, {22, W}
		},
		{
			{8, W}, {10, W}, {12, W}, {14, W}
		},
		{
			{7, R}, {9, R}, {11, W}, {13, R}
		},
		{
			{2, W}, {4, W}, {6, A},
			{22, W}, {16, W}, {18, A}, {20, W}
		},
		{
			{1, R}, {3, R}, {5, A},
			{21, R}, {19, R}, {17, A}, {15, R}
		},
		{
			{6, A}, {2, W}, {16, W}, {22, W}
		},
		{
			{1, R}, {5, A}, {21, R}, {15, R}
		},
		{
			{4, W}, {18, A}, {20, W},
		},
		{
			{3, R}, {17, A}, {19, R}
		},
		{
			{6, A}, {4, W}, {3, R}, {5, A},
			{16, W}, {18, A}, {15, R}, {17, A}
		},
		{
			{2, W}, {1, R},
			{20, W}, {22, W},
			{21, R}, {19, R}
		},
		{
			{2, W}, {4, W}, {6, A}, {8, W}, {10, W}, {12, W},
			{14, W}, {16, W}, {18, A}, {20, W}, {22, W},
		},
		{
			{1, R}, {3, R}, {5, A}, {7, R}, {9, R},
			{11, W}, {13, R}, {15, R}, {17, A}, {19, R}, {21, R}
		},
	},
	["driver_lightbar_corner"] = {
		{
			{8, W}, {10, W}, {12, W}, {14, W}
		},
		{
			{7, R}, {9, R}, {11, W}, {13, R}
		},
		{
			{7, R}, {9, R}, {11, W}, {13, R},
			{8, W}, {10, W}, {12, W}, {14, W}
		},
		{
			{7, R, .55}, {9, R, .55}, {11, W, .55}, {13, R, .55},
			{8, W, .66}, {10, W, .66, .66, .66}, {12, W, .66, .66}, {14, W, .66}
		}
		,
		{
			{7, R, .66}, {9, R, .66}, {11, W, .66}, {13, R, .66},
			{8, W, .55}, {10, W, .55, .55, .55}, {12, W, .55, .55}, {14, W, .55}
		}
	},
	["driver_lightbar_ta"] = {
		-- right
		{{16, W}},
		{{16, W}, {18, A}},
		{{16, W}, {18, A}, {20, W} },
		{{16, W}, {18, A}, {20, W}, {22, W}},
		{{16, W}, {18, A}, {20, W}, {22, W}, {21, R}},
		{{16, W}, {18, A}, {20, W}, {22, W}, {21, R}, {19, R}},
		-- all
		{{16, W}, {18, A}, {20, W}, {22, W}, {21, R}, {19, R}, {17, A}, {15, R}},
		-- left
		{{15, R}},
		{{17, A}, {15, R}},
		{{19, R}, {17, A}, {15, R}},
		{{21, R}, {19, R}, {17, A}, {15, R}},
		{{22, W}, {21, R}, {19, R}, {17, A}, {15, R}},
		{{18, A}, {20, W}, {22, W}, {21, R}, {19, R}, {17, A}, {15, R}},
		-- center out
		{{22, W}, {21, R}},
		{{20, W}, {22, W}, {21, R}, {19, R}},
		{{18, A}, {20, W}, {22, W}, {21, R}, {19, R}, {17, A}},
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