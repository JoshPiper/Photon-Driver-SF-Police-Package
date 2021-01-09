AddCSLuaFile()

local name = "Test Vehicle (Driver SF Police Package)"
local entName = "int_testcar_driver"

local EMV = {}

EMV.Auto = {
	{
		ID = "Internet Driver SF Lightbar Amber/White",
		Scale = 1,
		Pos = Vector(0, 15, 43),
		Ang = Angle(0, 90, 0),
	},
	{
		ID = "Internet Driver SF Lightbar Blue",
		Scale = 1,
		Pos = Vector(0, 10, 49),
		Ang = Angle(0, 90, 0),
	},
	{
		ID = "Internet Driver SF Lightbar Red/Blue",
		Scale = 1,
		Pos = Vector(0, 5, 55),
		Ang = Angle(0, 90, 0),
	},
	{
		ID = "Internet Driver SF Pushbar",
		Scale = 1,
		Pos = Vector(0, 45, 10),
		Ang = Angle(0, 90, 0),
	}
}


EMV.Sequences = {
	Sequences = {
		{Name = "CODE 1", Stage = "M1", Components = {}, Disconnect = {}},
		{Name = "CODE 2", Stage = "M2", Components = {}, Disconnect = {}},
		{Name = "CODE 3", Stage = "M3", Components = {}, Disconnect = {}}
	},
	Traffic = {
		{Name = "LEFT", Stage = "L", Components = {}, Disconnect = {}},
		{Name = "DIVERGE", Stage = "D", Components = {}, Disconnect = {}},
		{Name = "RIGHT", Stage = "R", Components = {}, Disconnect = {}}
	},
	Illumination = {
		{Name = "TKDN", Stage = "T", Components = {}, Disconnect = {}},
		{Name = "LEFT", Stage = "L ", Components = {}, Disconnect = {}},
		{Name = "RIGHT", Stage = "R", Components = {}, Disconnect = {}}
	}
}

local V = {
	Name =	name,
	Class = "prop_vehicle_jeep",
	Category = "Internet's Emergency - Component Test Vehicles",
	Author = "Doctor Internet",
	Model =	"models/buggy.mdl",
	KeyValues = {vehiclescript = "scripts/vehicles/jeep_test.txt"},

	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}

list.Set("Vehicles", entName, V)

if EMVU then EMVU:OverwriteIndex(name, EMV) end
if Photon then Photon:OverwriteIndex(name, PI) end