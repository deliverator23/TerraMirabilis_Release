/*
	Giant's Causeway
	Authors: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Land units trained in a City that owns at least one of these tiles start with a free [ICON_Promotion] Promotion.
-----------------------------------------------

UPDATE	Features
SET		Description = 'LOC_TM_FEATURE_GIANTS_CAUSEWAY_DESCRIPTION'
WHERE	FeatureType = 'FEATURE_GIANTS_CAUSEWAY';

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_GIANTS_CAUSEWAY_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_GIANTS_CAUSEWAY'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_GIANTS_CAUSEWAY_ATTACH_CITIES'
	WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_GIANTS_CAUSEWAY')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	-- Original Effect
	DELETE FROM GameModifiers
	WHERE ModifierId = 'GIANTS_CAUSEWAY_GRANT_UNIT_ABILITY'
	AND EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_GIANTS_CAUSEWAY')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_GIANTS_CAUSEWAY_ORIGINAL_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_GIANTS_CAUSEWAY'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 0);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers (ModifierId, ModifierType, OwnerRequirementSetId, SubjectRequirementSetId)
SELECT	'MODIFIER_TM_FEATURE_GIANTS_CAUSEWAY_ATTACH_CITIES',
		'MODIFIER_ALL_CITIES_ATTACH_MODIFIER',
		'REQSET_TM_MAP_HAS_FEATURE_GIANTS_CAUSEWAY',
		'REQSET_TM_CITY_HAS_FEATURE_GIANTS_CAUSEWAY'
WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_GIANTS_CAUSEWAY');

INSERT INTO Modifiers
		(ModifierId,											ModifierType,						SubjectRequirementSetId	)
VALUES	('MODIFIER_TM_FEATURE_GIANTS_CAUSEWAY_LAND_PROMOTION',	'MODTYPE_TM_GRANT_UNIT_EXPERIENCE',	'UNIT_IS_DOMAIN_LAND'	);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_TM_FEATURE_GIANTS_CAUSEWAY_ATTACH_CITIES',
		'ModifierId',
		'MODIFIER_TM_FEATURE_GIANTS_CAUSEWAY_LAND_PROMOTION'
WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_GIANTS_CAUSEWAY');
		
INSERT INTO ModifierArguments
		(ModifierId,											Name,			Value	)
VALUES	('MODIFIER_TM_FEATURE_GIANTS_CAUSEWAY_LAND_PROMOTION',	'Amount',		-1		);
