/*
	Eyjafjallajokull XP2
	Authors: ChimpanG, Deliverator
*/

-----------------------------------------------
-- General Changes
-----------------------------------------------

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_EYJAFJALLAJOKULL_XP2_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_EYJAFJALLAJOKULL';

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_EYJAFJALLAJOKULL_EFFECT_XP2_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_EYJAFJALLAJOKULL'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);