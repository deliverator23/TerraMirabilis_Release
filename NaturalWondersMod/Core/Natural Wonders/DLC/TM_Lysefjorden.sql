/*
	Lysefjorden
	Authors: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Naval units trained in a City that owns at least one of these tiles start with a free [ICON_Promotion] Promotion.
-----------------------------------------------

UPDATE	Features
SET		Description = 'LOC_TM_FEATURE_LYSEFJORDEN_DESCRIPTION'
WHERE	FeatureType = 'FEATURE_LYSEFJORDEN';

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_LYSEFJORDEN_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_LYSEFJORDEN'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_LYSEFJORDEN_ATTACH_CITIES'
	WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_LYSEFJORDEN')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	-- Original Effect

	DELETE FROM GameModifiers
	WHERE ModifierId = 'LYSEFJORDEN_GRANT_NAVAL_UNIT_EXPERIENCE'
	AND EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_LYSEFJORDEN')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_LYSEFJORDEN_ORIGINAL_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_LYSEFJORDEN'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 0);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers (ModifierId, ModifierType, OwnerRequirementSetId, SubjectRequirementSetId)
SELECT	'MODIFIER_TM_FEATURE_LYSEFJORDEN_ATTACH_CITIES',
		'MODIFIER_ALL_CITIES_ATTACH_MODIFIER',
		'REQSET_TM_MAP_HAS_FEATURE_LYSEFJORDEN',
		'REQSET_TM_CITY_HAS_FEATURE_LYSEFJORDEN'
WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_LYSEFJORDEN');
				
INSERT INTO Modifiers
		(ModifierId,										ModifierType,						SubjectRequirementSetId		)
VALUES	('MODIFIER_TM_FEATURE_LYSEFJORDEN_NAVAL_PROMOTION',	'MODTYPE_TM_GRANT_UNIT_EXPERIENCE',	'REQSET_TM_UNIT_IS_NAVAL'	);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_TM_FEATURE_LYSEFJORDEN_ATTACH_CITIES',
		'ModifierId',
		'MODIFIER_TM_FEATURE_LYSEFJORDEN_NAVAL_PROMOTION'
WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_LYSEFJORDEN');
		
INSERT INTO ModifierArguments
		(ModifierId,										Name,			Value	)
VALUES	('MODIFIER_TM_FEATURE_LYSEFJORDEN_NAVAL_PROMOTION',	'Amount',		-1		);
