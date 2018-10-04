/*
	Mod Support: LargerMapSizes by pOkiehl
	Credits: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Number of Natural Wonders on Map Sizes
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