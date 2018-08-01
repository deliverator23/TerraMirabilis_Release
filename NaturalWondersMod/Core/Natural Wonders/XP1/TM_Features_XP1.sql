/*
	Features XP1
	Credits: ChimpanG, Deliverator
*/

-----------------------------------------------
-- MomentIllustrations
-----------------------------------------------

INSERT INTO MomentIllustrations
		(MomentIllustrationType,					MomentDataType,				GameDataType,	Texture)
SELECT	'MOMENT_ILLUSTRATION_NATURAL_WONDER',		'MOMENT_DATA_FEATURE',		FeatureType,	'MOMENT_'||FeatureType
FROM	TM_Validation WHERE Active = 1 AND Requirement = 'TM';