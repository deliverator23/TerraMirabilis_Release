/*
	Lake Retba
	Credits: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Any Civilization that owns at least one of these tiles receives +1 [ICON_Gold] Gold for each unique copy of a Luxury resource that they own.
-----------------------------------------------

UPDATE	Features
SET		Description = 'LOC_TM_FEATURE_LAKE_RETBA_DESCRIPTION'
WHERE	FeatureType = 'FEATURE_LAKE_RETBA';

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_LAKE_RETBA_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_LAKE_RETBA'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_LAKE_RETBA_ATTACH_PLAYERS_'||ResourceType
	FROM	Resources
	WHERE	ResourceClassType = 'RESOURCECLASS_LUXURY'
	AND EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_LAKE_RETBA')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,														ModifierType,						SubjectRequirementSetId	)
SELECT	'MODIFIER_TM_FEATURE_LAKE_RETBA_ATTACH_PLAYERS_'||ResourceType,		'MODTYPE_TM_ATTACH_ALL_PLAYERS',	'REQSET_TM_PLAYER_HAS_FEATURE_LAKE_RETBA'
FROM	Resources
WHERE	ResourceClassType = 'RESOURCECLASS_LUXURY'
AND EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_LAKE_RETBA');
		
INSERT INTO Modifiers
		(ModifierId,											ModifierType,						SubjectRequirementSetId	)
SELECT	'MODIFIER_TM_FEATURE_LAKE_RETBA_GOLD_'||ResourceType,	'MODTYPE_TM_ADJUST_PLAYER_YIELD',	'REQSET_TM_PLAYER_HAS_'||ResourceType
FROM	Resources
WHERE	ResourceClassType = 'RESOURCECLASS_LUXURY';

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,													Name,			Value	)
SELECT	'MODIFIER_TM_FEATURE_LAKE_RETBA_ATTACH_PLAYERS_'||ResourceType,	'ModifierId',	'MODIFIER_TM_FEATURE_LAKE_RETBA_GOLD_'||ResourceType
FROM	Resources
WHERE	ResourceClassType = 'RESOURCECLASS_LUXURY'
AND EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_LAKE_RETBA');

INSERT INTO ModifierArguments
		(ModifierId,											Name,			Value	)
SELECT	'MODIFIER_TM_FEATURE_LAKE_RETBA_GOLD_'||ResourceType,	'YieldType',	'YIELD_GOLD'
FROM	Resources
WHERE	ResourceClassType = 'RESOURCECLASS_LUXURY';

INSERT INTO ModifierArguments
		(ModifierId,											Name,		Value	)
SELECT	'MODIFIER_TM_FEATURE_LAKE_RETBA_GOLD_'||ResourceType,	'Amount',	2
FROM	Resources
WHERE	ResourceClassType = 'RESOURCECLASS_LUXURY';

-----------------------------------------------
-- Triggers
-----------------------------------------------

CREATE TRIGGER IF NOT EXISTS TM_RetbaResource_TriggerApply
AFTER INSERT ON Resources WHEN NEW.ResourceClassType = 'RESOURCECLASS_LUXURY'
BEGIN

	INSERT INTO GameModifiers (ModifierId)
	SELECT DISTINCT	'MODIFIER_TM_FEATURE_LAKE_RETBA_ATTACH_PLAYERS_'||NEW.ResourceType
	WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_LAKE_RETBA')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO Modifiers
			(ModifierId,															ModifierType,						SubjectRequirementSetId	)
	SELECT	'MODIFIER_TM_FEATURE_LAKE_RETBA_ATTACH_PLAYERS_'||NEW.ResourceType,		'MODTYPE_TM_ATTACH_ALL_PLAYERS',	'REQSET_TM_PLAYER_HAS_FEATURE_LAKE_RETBA'
	WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_LAKE_RETBA');

	INSERT INTO Modifiers
			(ModifierId,												ModifierType,						SubjectRequirementSetId						)
	VALUES	('MODIFIER_TM_FEATURE_LAKE_RETBA_GOLD_'||NEW.ResourceType,	'MODTYPE_TM_ADJUST_PLAYER_YIELD',	'REQSET_TM_PLAYER_HAS_'||NEW.ResourceType	);

	INSERT INTO ModifierArguments
			(ModifierId,														Name,			Value	)
	SELECT	'MODIFIER_TM_FEATURE_LAKE_RETBA_ATTACH_PLAYERS_'||NEW.ResourceType,	'ModifierId',	'MODIFIER_TM_FEATURE_LAKE_RETBA_GOLD_'||NEW.ResourceType
	WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_LAKE_RETBA');

	INSERT INTO ModifierArguments
			(ModifierId,												Name,			Value			)
	VALUES	('MODIFIER_TM_FEATURE_LAKE_RETBA_GOLD_'||NEW.ResourceType,	'YieldType',	'YIELD_GOLD'	),
			('MODIFIER_TM_FEATURE_LAKE_RETBA_GOLD_'||NEW.ResourceType,	'Amount',		2				);

END;