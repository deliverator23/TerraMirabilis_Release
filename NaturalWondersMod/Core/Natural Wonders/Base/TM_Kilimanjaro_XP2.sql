/*
	Kilimanjaro XP2
	Authors: ChimpanG, Deliverator
*/

-----------------------------------------------
-- General Changes
-----------------------------------------------

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_KILIMANJARO_XP2_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_KILIMANJARO';

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_KILIMANJARO_EFFECT_XP2_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_KILIMANJARO'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);
