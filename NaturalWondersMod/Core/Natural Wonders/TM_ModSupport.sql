/*
	Mod Support
	Authors: ChimpanG, Deliverator
*/

-----------------------------------------------
-- LargerMapSizes by p0kiehl
-- Configured by TM_UserSettings
-----------------------------------------------

	UPDATE	Maps
	SET		NumNaturalWonders = (SELECT Value FROM TM_UserSettings WHERE Setting = 'WONDERS_MASSIVE')
	WHERE	MapSizeType = 'MAPSIZE_MASSIVE';

	UPDATE	Maps
	SET		NumNaturalWonders = (SELECT Value FROM TM_UserSettings WHERE Setting = 'WONDERS_GIGANTIC')
	WHERE	MapSizeType = 'MAPSIZE_GIGANTIC';

	UPDATE	Maps
	SET		NumNaturalWonders = (SELECT Value FROM TM_UserSettings WHERE Setting = 'WONDERS_COLOSSAL')
	WHERE	MapSizeType = 'MAPSIZE_COLOSSAL';

-----------------------------------------------
-- YNAMP by Gedemon
-----------------------------------------------

CREATE TABLE IF NOT EXISTS NaturalWonderPosition
	(
		MapName TEXT NOT NULL,
		FeatureType TEXT NOT NULL,
		TerrainType TEXT,
		X INT default 0,
		Y INT default 0
	);

	UPDATE	Maps
	SET		NumNaturalWonders = (SELECT Value FROM TM_UserSettings WHERE Setting = 'WONDERS_SMALL')
	WHERE	MapSizeType = 'MAPSIZE_SMALL21';

	UPDATE	Maps
	SET		NumNaturalWonders = (SELECT Value FROM TM_UserSettings WHERE Setting = 'WONDERS_STANDARD')
	WHERE	MapSizeType = 'MAPSIZE_STANDARD21';

	UPDATE	Maps
	SET		NumNaturalWonders = (SELECT Value FROM TM_UserSettings WHERE Setting = 'WONDERS_LARGE')
	WHERE	MapSizeType = 'MAPSIZE_LARGE21';

	UPDATE	Maps
	SET		NumNaturalWonders = (SELECT Value FROM TM_UserSettings WHERE Setting = 'WONDERS_HUGE')
	WHERE	MapSizeType = 'MAPSIZE_HUGE21';
	
	UPDATE	Maps
	SET		NumNaturalWonders = (SELECT Value FROM TM_UserSettings WHERE Setting = 'WONDERS_ENORMOUS')
	WHERE	MapSizeType = 'MAPSIZE_ENORMOUS'
	OR		MapSizeType = 'MAPSIZE_ENORMOUS21';

	UPDATE	Maps
	SET		NumNaturalWonders = (SELECT Value FROM TM_UserSettings WHERE Setting = 'WONDERS_GIANT')
	WHERE	MapSizeType = 'MAPSIZE_GIANT';

	UPDATE	Maps
	SET		NumNaturalWonders = (SELECT Value FROM TM_UserSettings WHERE Setting = 'WONDERS_LUDICROUS')
	WHERE	MapSizeType = 'MAPSIZE_LUDICROUS';

INSERT OR REPLACE INTO NaturalWonderPosition
		(FeatureType,					MapName,			TerrainType,				X,		Y	)
VALUES	('FEATURE_BARRINGER_CRATER',	'GiantEarth',		'TERRAIN_PLAINS',			135,	61	),
		('FEATURE_BARRINGER_CRATER',	'GreatestEarthMap',	'TERRAIN_PLAINS',			6,		43	),
		('FEATURE_BARRINGER_CRATER',	'CordiformEarth',	'TERRAIN_PLAINS',			8,		44	),

		('FEATURE_CERRO_DE_POTOSI',		'GiantEarth',		'TERRAIN_DESERT_MOUNTAIN',	155,	21	),
		('FEATURE_CERRO_DE_POTOSI',		'GreatestEarthMap',	'TERRAIN_DESERT_MOUNTAIN',	26,		11	),
		('FEATURE_CERRO_DE_POTOSI',		'CordiformEarth',	'TERRAIN_DESERT_MOUNTAIN',	15,		12	),

		('FEATURE_GIBRALTAR',			'GiantEarth',		'TERRAIN_GRASS_MOUNTAIN',	7,		52	),
		('FEATURE_GIBRALTAR',			'GreatestEarthMap',	'TERRAIN_GRASS_MOUNTAIN',	38,		33	),
		('FEATURE_GIBRALTAR',			'CordiformEarth',	'TERRAIN_GRASS_MOUNTAIN',	31,		22	),
		('FEATURE_GIBRALTAR',			'PlayEuropeAgain',	'TERRAIN_GRASS_MOUNTAIN',	15,		30	),
		('FEATURE_GIBRALTAR',			'LargeEurope',		'TERRAIN_GRASS_MOUNTAIN',	17,		22	),

		('FEATURE_GRAND_MESA',			'GiantEarth',		'TERRAIN_PLAINS',			136,	66	),
		('FEATURE_GRAND_MESA',			'GreatestEarthMap',	'TERRAIN_PLAINS',			8,		48	),
		('FEATURE_GRAND_MESA',			'CordiformEarth',	'TERRAIN_PLAINS',			11,		37	),

		('FEATURE_KAILASH',				'GiantEarth',		'TERRAIN_TUNDRA_MOUNTAIN',	63,		58	),
		('FEATURE_KAILASH',				'GreatestEarthMap',	'TERRAIN_TUNDRA_MOUNTAIN',	76,		44	),
		('FEATURE_KAILASH',				'CordiformEarth',	'TERRAIN_TUNDRA_MOUNTAIN',	55,		27	),

		('FEATURE_KRAKATOA',			'GiantEarth',		'TERRAIN_GRASS_MOUNTAIN',	78,		25	),
		('FEATURE_KRAKATOA',			'GreatestEarthMap',	'TERRAIN_GRASS_MOUNTAIN',	84,		26	),
		('FEATURE_KRAKATOA',			'CordiformEarth',	'TERRAIN_GRASS_MOUNTAIN',	68,		21	),

		('FEATURE_LAKE_VICTORIA',		'GiantEarth',		'TERRAIN_COAST',			29,		28	),
		('FEATURE_LAKE_VICTORIA',		'GiantEarth',		'TERRAIN_COAST',			29,		29	),
		('FEATURE_LAKE_VICTORIA',		'GiantEarth',		'TERRAIN_COAST',			30,		29	),
		('FEATURE_LAKE_VICTORIA',		'GiantEarth',		'TERRAIN_COAST',			30,		28	),
		('FEATURE_LAKE_VICTORIA',		'GreatestEarthMap',	'TERRAIN_COAST',			60,		27	),
		('FEATURE_LAKE_VICTORIA',		'GreatestEarthMap',	'TERRAIN_COAST',			60,		28	),
		('FEATURE_LAKE_VICTORIA',		'GreatestEarthMap',	'TERRAIN_COAST',			61,		28	),
		('FEATURE_LAKE_VICTORIA',		'GreatestEarthMap',	'TERRAIN_COAST',			60,		29	),
		('FEATURE_LAKE_VICTORIA',		'CordiformEarth',	'TERRAIN_COAST',			42,		10	),
		('FEATURE_LAKE_VICTORIA',		'CordiformEarth',	'TERRAIN_COAST',			42,		11	),
		('FEATURE_LAKE_VICTORIA',		'CordiformEarth',	'TERRAIN_COAST',			43,		11	),
		('FEATURE_LAKE_VICTORIA',		'CordiformEarth',	'TERRAIN_COAST',			42,		12	),

		('FEATURE_LENCOIS_MARANHENSES',	'GiantEarth',		'TERRAIN_DESERT',			166,	34	),
		('FEATURE_LENCOIS_MARANHENSES',	'GiantEarth',		'TERRAIN_DESERT',			166,	33	),
		('FEATURE_LENCOIS_MARANHENSES',	'GreatestEarthMap',	'TERRAIN_DESERT',			29,		21	),
		('FEATURE_LENCOIS_MARANHENSES',	'GreatestEarthMap',	'TERRAIN_DESERT',			30,		21	),
		('FEATURE_LENCOIS_MARANHENSES',	'CordiformEarth',	'TERRAIN_DESERT',			17,		17	),
		('FEATURE_LENCOIS_MARANHENSES',	'CordiformEarth',	'TERRAIN_DESERT',			18,		16	),

		('FEATURE_MOTLATSE_CANYON',		'GiantEarth',		'TERRAIN_GRASS',			29,		16	),
		('FEATURE_MOTLATSE_CANYON',		'GiantEarth',		'TERRAIN_GRASS',			29,		15	),
		('FEATURE_MOTLATSE_CANYON',		'GiantEarth',		'TERRAIN_GRASS',			30,		14	),
		('FEATURE_MOTLATSE_CANYON',		'GiantEarth',		'TERRAIN_GRASS',			29,		14	),
		('FEATURE_MOTLATSE_CANYON',		'GreatestEarthMap',	'TERRAIN_GRASS',			57,		9	),
		('FEATURE_MOTLATSE_CANYON',		'GreatestEarthMap',	'TERRAIN_GRASS',			59,		8	),
		('FEATURE_MOTLATSE_CANYON',		'GreatestEarthMap',	'TERRAIN_GRASS',			58,		9	),
		('FEATURE_MOTLATSE_CANYON',		'GreatestEarthMap',	'TERRAIN_GRASS',			59,		9	),
		('FEATURE_MOTLATSE_CANYON',		'CordiformEarth',	'TERRAIN_GRASS',			39,		5	),
		('FEATURE_MOTLATSE_CANYON',		'CordiformEarth',	'TERRAIN_GRASS',			39,		6	),
		('FEATURE_MOTLATSE_CANYON',		'CordiformEarth',	'TERRAIN_GRASS',			40,		6	),
		('FEATURE_MOTLATSE_CANYON',		'CordiformEarth',	'TERRAIN_GRASS',			41,		6	),

		('FEATURE_OLD_FAITHFUL',		'GiantEarth',		'TERRAIN_GRASS',			136,	71	),
		('FEATURE_OLD_FAITHFUL',		'GreatestEarthMap',	'TERRAIN_GRASS',			47,		53	),
		('FEATURE_OLD_FAITHFUL',		'CordiformEarth',	'TERRAIN_GRASS',			15,		40	),

		('FEATURE_SALAR_DE_UYUNI',		'GiantEarth',		'TERRAIN_PLAINS',			156,	19	),
		('FEATURE_SALAR_DE_UYUNI',		'GiantEarth',		'TERRAIN_PLAINS',			156,	20	),
		('FEATURE_SALAR_DE_UYUNI',		'GiantEarth',		'TERRAIN_PLAINS',			157,	20	),
		('FEATURE_SALAR_DE_UYUNI',		'GiantEarth',		'TERRAIN_PLAINS',			156,	21	),
		('FEATURE_SALAR_DE_UYUNI',		'GreatestEarthMap',	'TERRAIN_PLAINS',			26,		9	),
		('FEATURE_SALAR_DE_UYUNI',		'GreatestEarthMap',	'TERRAIN_PLAINS',			26,		10	),
		('FEATURE_SALAR_DE_UYUNI',		'GreatestEarthMap',	'TERRAIN_PLAINS',			27,		10	),
		('FEATURE_SALAR_DE_UYUNI',		'GreatestEarthMap',	'TERRAIN_PLAINS',			26,		11	),
		('FEATURE_SALAR_DE_UYUNI',		'CordiformEarth',	'TERRAIN_PLAINS',			13,		14	),
		('FEATURE_SALAR_DE_UYUNI',		'CordiformEarth',	'TERRAIN_PLAINS',			12,		15	),
		('FEATURE_SALAR_DE_UYUNI',		'CordiformEarth',	'TERRAIN_PLAINS',			13,		15	),
		('FEATURE_SALAR_DE_UYUNI',		'CordiformEarth',	'TERRAIN_PLAINS',			13,		16	),

		('FEATURE_SINAI',				'GiantEarth',		'TERRAIN_DESERT_MOUNTAIN',	33,		48	),
		('FEATURE_SINAI',				'GreatestEarthMap',	'TERRAIN_DESERT_MOUNTAIN',	62,		34	),
		('FEATURE_SINAI',				'CordiformEarth',	'TERRAIN_DESERT_MOUNTAIN',	47,		18	),
		('FEATURE_SINAI',				'PlayEuropeAgain',	'TERRAIN_DESERT_MOUNTAIN',	79,		8	),
		('FEATURE_SINAI',				'LargeEurope',		'TERRAIN_DESERT_MOUNTAIN',	60,		13	),

		('FEATURE_SRI_PADA',			'GiantEarth',		'TERRAIN_GRASS_MOUNTAIN',	63,		32	),
		('FEATURE_SRI_PADA',			'GreatestEarthMap',	'TERRAIN_GRASS_MOUNTAIN',	78,		28	),
		('FEATURE_SRI_PADA',			'CordiformEarth',	'TERRAIN_GRASS_MOUNTAIN',	61,		16	),

		('FEATURE_WULINGYUAN',			'GiantEarth',		'TERRAIN_GRASS',			79,		54	),
		('FEATURE_WULINGYUAN',			'GiantEarth',		'TERRAIN_GRASS',			78,		55	),
		('FEATURE_WULINGYUAN',			'GreatestEarthMap',	'TERRAIN_GRASS',			83,		45	),
		('FEATURE_WULINGYUAN',			'GreatestEarthMap',	'TERRAIN_GRASS',			83,		46	),
		('FEATURE_WULINGYUAN',			'CordiformEarth',	'TERRAIN_GRASS',			60,		29	),
		('FEATURE_WULINGYUAN',			'CordiformEarth',	'TERRAIN_GRASS',			60,		30	),

		('FEATURE_VREDEFORT_DOME',		'GiantEarth',		'TERRAIN_GRASS',			27,		12	),
		('FEATURE_VREDEFORT_DOME',		'GiantEarth',		'TERRAIN_GRASS',			27,		13	),
		('FEATURE_VREDEFORT_DOME',		'GreatestEarthMap',	'TERRAIN_GRASS',			58,		9	),
		('FEATURE_VREDEFORT_DOME',		'GreatestEarthMap',	'TERRAIN_GRASS',			59,		9	),
		('FEATURE_VREDEFORT_DOME',		'CordiformEarth',	'TERRAIN_GRASS',			40,		4	),
		('FEATURE_VREDEFORT_DOME',		'CordiformEarth',	'TERRAIN_GRASS',			40,		4	),

		('FEATURE_OUNIANGA',			'GiantEarth',		'TERRAIN_DESERT',			26,		42	),
		('FEATURE_OUNIANGA',			'GiantEarth',		'TERRAIN_DESERT',			26,		41	),
		('FEATURE_OUNIANGA',			'GreatestEarthMap',	'TERRAIN_DESERT',			53,		30	),
		('FEATURE_OUNIANGA',			'GreatestEarthMap',	'TERRAIN_DESERT',			53,		29	),
		('FEATURE_OUNIANGA',			'CordiformEarth',	'TERRAIN_DESERT',			40,		15	),
		('FEATURE_OUNIANGA',			'CordiformEarth',	'TERRAIN_DESERT',			40,		16	),

		('FEATURE_MOSI_OA_TUNYA',		'GiantEarth',		'TERRAIN_PLAINS',			27,		23	),
		('FEATURE_MOSI_OA_TUNYA',		'GreatestEarthMap',	'TERRAIN_PLAINS',			59,		12	),
		('FEATURE_MOSI_OA_TUNYA',		'CordiformEarth',	'TERRAIN_PLAINS',			41,		8	),

		('FEATURE_NAMIB',				'GiantEarth',		'TERRAIN_DESERT',			21,		20	),
		('FEATURE_NAMIB',				'GiantEarth',		'TERRAIN_DESERT',			20,		19	),
		('FEATURE_NAMIB',				'GiantEarth',		'TERRAIN_DESERT',			20,		18	),
		('FEATURE_NAMIB',				'GreatestEarthMap',	'TERRAIN_DESERT',			52,		11	),
		('FEATURE_NAMIB',				'GreatestEarthMap',	'TERRAIN_DESERT',			53,		10	),
		('FEATURE_NAMIB',				'GreatestEarthMap',	'TERRAIN_DESERT',			53,		9	),
		('FEATURE_NAMIB',				'CordiformEarth',	'TERRAIN_DESERT',			36,		7	),
		('FEATURE_NAMIB',				'CordiformEarth',	'TERRAIN_DESERT',			37,		6	),
		('FEATURE_NAMIB',				'CordiformEarth',	'TERRAIN_DESERT',			37,		5	),

		('FEATURE_BIOLUMINESCENT_BAY',	'GiantEarth',		'TERRAIN_COAST',			158,	46	),
		('FEATURE_BIOLUMINESCENT_BAY',	'GreatestEarthMap',	'TERRAIN_COAST',			29,		31	),
		('FEATURE_BIOLUMINESCENT_BAY',	'CordiformEarth',	'TERRAIN_COAST',			13,		24	),

		('FEATURE_DALLOL',				'GiantEarth',		'TERRAIN_DESERT',			35,		38	),
		('FEATURE_DALLOL',				'GreatestEarthMap',	'TERRAIN_DESERT',			64,		28	),
		('FEATURE_DALLOL',				'CordiformEarth',	'TERRAIN_DESERT',			47,		14	);