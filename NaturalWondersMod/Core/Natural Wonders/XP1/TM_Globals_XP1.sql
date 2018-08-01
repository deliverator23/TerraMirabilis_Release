/*
	Globals XP1
	Credits: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Natural Wonders Enabled/Disabled
-----------------------------------------------

	DELETE FROM MomentIllustrations
	WHERE GameDataType = (SELECT Setting FROM TM_UserSettings WHERE Section = 'DISABLED' AND Setting IN (SELECT FeatureType FROM TM_Validation WHERE Active = 1));
