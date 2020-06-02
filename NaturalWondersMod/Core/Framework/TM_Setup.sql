/*
	Setup
	Authors: ChimpanG, Deliverator
*/

-----------------------------------------------
-- TM_Master
-----------------------------------------------

UPDATE	TM_Master
SET		Required = (SELECT a.Required FROM TM_Validation AS a WHERE a.FeatureType = TM_Master.FeatureType),
		Version = (SELECT a.Version FROM TM_Validation AS a WHERE a.FeatureType = TM_Master.FeatureType),
		Removed = (SELECT a.Removed FROM TM_Validation AS a WHERE a.FeatureType = TM_Master.FeatureType);

DELETE FROM TM_Master
WHERE	Required NOT IN (SELECT * FROM ModValidation)
OR		Version NOT IN (SELECT * FROM ModValidation)
OR		Removed IN (SELECT * FROM ModValidation);

-----------------------------------------------
-- TM_FeatureYields
-----------------------------------------------

DELETE FROM TM_FeatureYields
WHERE	Required NOT IN (SELECT * FROM ModValidation)
OR		Version NOT IN (SELECT * FROM ModValidation)
OR		Removed IN (SELECT * FROM ModValidation);

-----------------------------------------------
-- TM_Placement
-----------------------------------------------

UPDATE	TM_Placement
SET		Required = (SELECT a.Required FROM TM_Validation AS a WHERE a.FeatureType = TM_Placement.FeatureType),
		Version = (SELECT a.Version FROM TM_Validation AS a WHERE a.FeatureType = TM_Placement.FeatureType),
		Removed = (SELECT a.Removed FROM TM_Validation AS a WHERE a.FeatureType = TM_Placement.FeatureType);

DELETE FROM TM_Placement
WHERE	Required NOT IN (SELECT * FROM ModValidation)
OR		Version NOT IN (SELECT * FROM ModValidation)
OR		Removed IN (SELECT * FROM ModValidation);
