/*
	Features XP1
	Credits: ChimpanG, Deliverator
*/

-----------------------------------------------
-- MomentIllustrations
-----------------------------------------------

INSERT INTO MomentIllustrations
		(MomentIllustrationType,				MomentDataType,			GameDataType,	Texture)
SELECT	'MOMENT_ILLUSTRATION_NATURAL_WONDER',	'MOMENT_DATA_FEATURE',	FeatureType,	'MOMENT_'||FeatureType
FROM	TM_Master
WHERE NOT EXISTS (SELECT 1 FROM MomentIllustrations WHERE Texture = 'CHM_Moment_PromoteGovernor_Ambassador.dds');

INSERT INTO MomentIllustrations
		(MomentIllustrationType,				MomentDataType,			GameDataType,	Texture)
SELECT	'MOMENT_ILLUSTRATION_NATURAL_WONDER',	'MOMENT_DATA_FEATURE',	FeatureType,	'CHM_MOMENT_'||FeatureType
FROM	TM_Master
WHERE EXISTS (SELECT 1 FROM MomentIllustrations WHERE Texture = 'CHM_Moment_PromoteGovernor_Ambassador.dds');