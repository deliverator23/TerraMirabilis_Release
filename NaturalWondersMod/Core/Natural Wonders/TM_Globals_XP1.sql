/*
	Globals XP1
	Authors: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Natural Wonders Enabled/Disabled
-----------------------------------------------

	DELETE FROM MomentIllustrations
	WHERE GameDataType = (SELECT Setting FROM TM_UserSettings WHERE Section = 'DISABLED' AND Setting IN (SELECT FeatureType FROM TM_Validation));

-----------------------------------------------
-- EraScore
-----------------------------------------------

	UPDATE	Moments
	SET		EraScore = (SELECT Value FROM TM_UserSettings WHERE Setting = 'ERASCORE_SETTLE')
	WHERE	Name = 'MOMENT_CITY_BUILT_NEAR_NATURAL_WONDER';

	UPDATE	Moments
	SET		EraScore = (SELECT Value FROM TM_UserSettings WHERE Setting = 'ERASCORE_DISCOVERED')
	WHERE	Name = 'MOMENT_FIND_NATURAL_WONDER';

	UPDATE	Moments
	SET		EraScore = (SELECT Value FROM TM_UserSettings WHERE Setting = 'ERASCORE_DISCOVERED_FIRST')
	WHERE	Name = 'MOMENT_FIND_NATURAL_WONDER_FIRST_IN_WORLD';
