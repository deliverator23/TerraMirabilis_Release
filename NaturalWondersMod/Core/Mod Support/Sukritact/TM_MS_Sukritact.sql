/*
	Mod Support: Sukritact
	Credits: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Fuji Yields
-- Don't want Fuji to be the only wonder without yields when this mod is active.
-----------------------------------------------

UPDATE	Features
SET		Description = 'LOC_TM_FEATURE_FUJI_DESCRIPTION'
WHERE	FeatureType = 'FEATURE_SUK_FUJI'
AND EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_SUK_FUJI');