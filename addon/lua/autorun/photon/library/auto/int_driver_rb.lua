AddCSLuaFile()

local R = "RED"
local B = "BLUE"
local W = "WHITE"

local name = "Internet Driver SF Lightbar Red/Blue"

local COMPONENT = {}

COMPONENT.Model = "models/lonewolfie/lightbar.mdl"
COMPONENT.Category = "Lightbar"
COMPONENT.Skin = 0
COMPONENT.Lightbar = true
COMPONENT.Bodygroups = {}
COMPONENT.ColorInput = 0
COMPONENT.Deprecated = "Use the core component 'Driver SF Lightbar Red/Blue'."

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

	[1] = { Vector( 3.55, 6.1, 9.87 ), Angle( 0, 0, 0 ), "driver_forward" },
	[2] = { Vector( -3.15, 6.1, 9.87 ), Angle( 0, 0, 0 ), "driver_forward" },

	[3] = { Vector( 10, 6.1, 9.87 ), Angle( 0, 0, 0 ), "driver_forward" },
	[4] = { Vector( -10, 6.1, 9.87 ), Angle( 0, 0, 0 ), "driver_forward" },

	[5] = { Vector( 16.35, 6.1, 9.87 ), Angle( 0, 0, 0 ), "driver_illum_f" },
	[6] = { Vector( -16.37, 6.1, 9.87 ), Angle( 0, 0, 0 ), "driver_illum_f" },

	[7] = { Vector( 23.5, 6.1, 9.87 ), Angle( 0, 0, 0 ), "driver_forward" },
	[8] = { Vector( -23.5, 6.1, 9.87 ), Angle( 0, 0, 0 ), "driver_forward" },

	[9] = { Vector( 27.25, 5.2, 9.87 ), Angle( 0, -52, 0 ), "driver_corner", 1 },
	[10] = { Vector( -27.25, 5.2, 9.87 ), Angle( 0, 52, 0 ), "driver_corner", 2 },

	[11] = { Vector( 28, 0.2, 9.87 ), Angle( 0, -90, 0 ), "driver_illum_s" },
	[12] = { Vector( -28, 0.2, 9.87 ), Angle( 0, 90, 0 ), "driver_illum_s" },

	[13] = { Vector( 27.25, -5.18, 9.87 ), Angle( 0, -130.5, 0 ), "driver_corner", 3 },
	[14] = { Vector( -27.25, -5.18, 9.87 ), Angle( 0, 130.5, 0 ), "driver_corner", 4 },

	[15] = { Vector( 23.5, -6.2, 9.87 ), Angle( 0, 0, 0 ), "driver_rear" },
	[16] = { Vector( -23.5, -6.2, 9.87 ), Angle( 0, 0, 0 ), "driver_rear" },

	[17] = { Vector( 16.35, -6.2, 9.87 ), Angle( 0, 0, 0 ), "driver_rear" },
	[18] = { Vector( -16.37, -6.2, 9.87 ), Angle( 0, 0, 0 ), "driver_rear" },

	[19] = { Vector( 10, -6.2, 9.87 ), Angle( 0, 0, 0 ), "driver_rear" },
	[20] = { Vector( -10, -6.2, 9.87 ), Angle( 0, 0, 0 ), "driver_rear" },

	[21] = { Vector( 3.55, -6.2, 9.87 ), Angle( 0, 0, 0 ), "driver_rear" },
	[22] = { Vector( -3.15, -6.2, 9.87 ), Angle( 0, 0, 0 ), "driver_rear" },

}

COMPONENT.Sections = {
	["auto_fedsig_integrity"] = {
		{
			{ 1, B }, { 2, R},
			{ 3, B }, { 4, R},
			{ 5, W }, { 6, W},
			{ 7, B }, { 8, R},
			{ 9, B }, { 10, R},
			{ 11, W }, { 12, W},
			{ 13, B }, { 14, R},
			{ 15, B }, { 16, R},
			{ 17, W }, { 18, W},
			{ 19, B }, { 20, R},
			{ 21, B }, { 22, R},
		},
		{
			{ 1, B }, { 3, B }, { 5, W }, { 7, B }, { 9, B },
			{ 11, W }, { 13, B }, { 15, B }, { 17, W }, { 19, B }, { 21, B }
		},
		{
			{ 2, R}, { 4, R}, { 6, W}, { 8, R}, { 10, R}, { 12, W},
			{ 14, R}, { 16, R}, { 18, W}, { 20, R}, { 22, R}
		},
		{
			{ 8, R}, { 10, R}, { 12, W}, { 14, R}
		},
		{
			{ 7, B }, { 9, B }, { 11, W }, { 13, B }
		},
		{
			{ 2, R}, { 4, R}, { 6, W},
			{ 22, R}, { 16, R}, { 18, W}, { 20, R}
		},
		{
			{ 1, B }, { 3, B }, { 5, W },
			{ 21, B }, { 19, B }, { 17, W }, { 15, B }
		},
		[8] = {
			{ 6, W}, { 2, R}, { 16, R}, { 22, R}
		},
		[9] = {
			{ 1, B }, { 5, W }, { 21, B }, { 15, B }
		},
		[10] = {
			{ 4, R}, { 18, W}, { 20, R},
		},
		[11] = {
			{ 3, B }, { 17, W }, { 19, B }
		},
		[12] = {
			{ 6, W}, { 4, R}, { 3, B }, { 5, W },
			{ 16, R}, { 18, W}, { 15, B }, { 17, W }
		},
		[13] = {
			{ 2, R }, { 1, B },
			{ 20, R}, { 22, R},
			{ 21, B }, { 19, B }
		},
		[14] = {
			{ 2, R }, { 4, R }, { 6, W }, { 8, R }, { 10, R }, { 12, R },
			{ 14, R }, { 16, R }, { 18, W }, { 20, R }, { 22, R },
		},
		[15] = {
			{ 1, B }, { 3, B }, { 5, W }, { 7, B }, { 9, B },
			{ 11, W }, { 13, B }, { 15, B }, { 17, W }, { 19, B }, { 21, B }
		},
	},
	["auto_fedsig_integrity_corner"] = {
		{
			{ 8, R}, { 10, R}, { 12, W}, { 14, R}
		},
		{
			{ 7, B }, { 9, B }, { 11, W }, { 13, B }
		},
		{
			{ 7, B }, { 9, B }, { 11, W }, { 13, B },
			{ 8, R}, { 10, R}, { 12, W}, { 14, R}
		},
		{
			{ 7, B, .55 }, { 9, B, .55 }, { 11, W, .55 }, { 13, B, .55 },
			{ 8, R, .66}, { 10, R, .66, .66, .66}, { 12, W, .66, .66}, { 14, R, .66}
		}
		,
		{
			{ 7, B, .66 }, { 9, B, .66 }, { 11, W, .66 }, { 13, B, .66 },
			{ 8, R, .55}, { 10, R, .55, .55, .55}, { 12, W, .55, .55}, { 14, R, .55}
		}
	},
	["auto_fedsig_integrity_signalmaster"] = {
		-- right
		[1] = { { 16, R }, },
		[2] = { { 16, R }, { 18, W }, },
		[3] = { { 16, R }, { 18, W }, { 20, R } },
		[4] = { { 16, R }, { 18, W }, { 20, R }, { 22, R }, },
		[5] = { { 16, R }, { 18, W }, { 20, R }, { 22, R }, { 21, B }, },
		[6] = { { 16, R }, { 18, W }, { 20, R }, { 22, R }, { 21, B }, { 19, B }, },
		-- all
		[7] = { { 16, R }, { 18, W }, { 20, R }, { 22, R }, { 21, B }, { 19, B }, { 17, W }, { 15, B }, },
		-- left
		[8] = { { 15, B }, },
		[9] = { { 17, W }, { 15, B }, },
		[10] = { { 19, B }, { 17, W }, { 15, B }, },
		[11] = { { 21, B }, { 19, B }, { 17, W }, { 15, B }, },
		[12] = { { 22, R }, { 21, B }, { 19, B }, { 17, W }, { 15, B }, },
		[13] = { { 18, W }, { 20, R }, { 22, R }, { 21, B }, { 19, B }, { 17, W }, { 15, B }, },
		-- center out
		[14] = { { 22, R }, { 21, B }, },
		[15] = { { 20, R }, { 22, R }, { 21, B }, { 19, B }, },
		[16] = { { 18, W }, { 20, R }, { 22, R }, { 21, B }, { 19, B }, { 17, W }, },
	}
}

COMPONENT.Patterns = {
	["auto_fedsig_integrity_signalmaster"] = {
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
	["auto_fedsig_integrity"] = {
		["all"] = { 1, 0, 1, 0, 1, 0 },
		["pattern_1"] = { 2, 2, 2, 2, 3, 3, 3, 3, },
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
			{ 8, 11 }, { 9, 10 },
			{ 8, 11 }, { 9, 10 },
			{ 8, 11 }, { 9, 10 },
			{ 8, 11 }, { 9, 10 },
			{ 8, 11 }, { 9, 10 },
			{ 8, 11 }, { 9, 10 },
			12, 0, 12, 0, 12, 0,
			13, 0, 13, 0, 13, 0,
			12, 0, 12, 0, 12, 0,
			13, 0, 13, 0, 13, 0,
			12, 0, 12, 0, 12, 0,
			13, 0, 13, 0, 13, 0,
		},
		["alert"] = { 3, 15, 14, 2 }
	},
	["auto_fedsig_integrity_corner"] = {
		["cruise"] = {
			4, 4, 4, 5, 5, 5
		},
		["alt_slow"] = { 1, 1, 1, 1, 2, 2, 2, },
		["code3"] = {
			1, 0, 1, 0, 1,
			2, 0, 2, 0, 2,
		}
	}
}

COMPONENT.TrafficDisconnect = {
	["auto_fedsig_integrity_signalmaster"] = {
		15, 16, 17, 18, 19, 20, 21, 22
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = {
			["auto_fedsig_integrity"] = "pattern_1",
		},
		M2 = {
			["auto_fedsig_integrity"] = "code2",
			["auto_fedsig_integrity_corner"] = "alt_slow"
		},
		M3 = {
			["auto_fedsig_integrity"] = "code3",
			["auto_fedsig_integrity_corner"] = "code3"
		},
		ALERT = {
			["auto_fedsig_integrity"] = "alert",
		}
	},
	Auxiliary = {
		C = {
			["auto_fedsig_integrity_corner"] = "cruise"
		},
		L = {
			["auto_fedsig_integrity_signalmaster"] = "left"
		},
		R = {
			["auto_fedsig_integrity_signalmaster"] = "right"
		},
		D = {
			["auto_fedsig_integrity_signalmaster"] = "diverge"
		}
	},
	Illumination = {
		R = {
			{ 11, W }
		},
		L = {
			{ 12, W }
		},
		T = {
			{ 6, W }, { 7, W }
		}
	}
}

EMVU:AddAutoComponent( COMPONENT, name )