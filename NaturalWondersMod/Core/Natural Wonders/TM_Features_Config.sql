-----------------------------------------------
-- NaturalWonders - for August 2020 NW Picker
-----------------------------------------------

INSERT INTO NaturalWonders (Domain, FeatureType, Name, Description, Icon)
SELECT 'StandardNaturalWonders',
        FeatureType,
		'LOC_'||FeatureType||'_NAME',
		'LOC_TM_'||FeatureType||'_EFFECT_DESCRIPTION',
		'ICON_'||FeatureType
FROM	TM_Master WHERE New = 1;

INSERT INTO NaturalWonders (Domain, FeatureType, Name, Description, Icon)
SELECT 'Expansion1NaturalWonders',
        FeatureType,
		'LOC_'||FeatureType||'_NAME',
		'LOC_TM_'||FeatureType||'_EFFECT_DESCRIPTION',
		'ICON_'||FeatureType
FROM	TM_Master WHERE New = 1;

INSERT INTO NaturalWonders (Domain, FeatureType, Name, Description, Icon)
SELECT 'Expansion2NaturalWonders',
        FeatureType,
		'LOC_'||FeatureType||'_NAME',
		'LOC_TM_'||FeatureType||'_EFFECT_DESCRIPTION',
		'ICON_'||FeatureType
FROM	TM_Master WHERE New = 1;

UPDATE NaturalWonders
SET    DESCRIPTION = 'LOC_TM_'||FeatureType||'_EFFECT_DESCRIPTION'
WHERE NOT EXISTS (SELECT 1 FROM	TM_Master WHERE New = 1 AND TM_Master.FeatureType = NaturalWonders.FeatureType)
AND   NOT FeatureType = 'FEATURE_BERMUDA_TRIANGLE';

UPDATE	NaturalWonders
SET		Description = 'LOC_TM_FEATURE_KRAKATOA_EFFECT_XP2_DESCRIPTION'
WHERE	FeatureType = 'FEATURE_KRAKATOA';

UPDATE	NaturalWonders
SET		Description = 'LOC_TM_FEATURE_IK_KIL_EFFECT_DESCRIPTION'
WHERE	FeatureType = 'FEATURE_IKKIL';

UPDATE	NaturalWonders
SET		Description = 'LOC_TM_FEATURE_CHOCOLATE_HILLS_EFFECT_DESCRIPTION'
WHERE	FeatureType = 'FEATURE_CHOCOLATEHILLS';

UPDATE	NaturalWonders
SET		Description = 'LOC_TM_FEATURE_SAHARA_EL_BEYDA_EFFECT_DESCRIPTION'
WHERE	FeatureType = 'FEATURE_WHITEDESERT';
