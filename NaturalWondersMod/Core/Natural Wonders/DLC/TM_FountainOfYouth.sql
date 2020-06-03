/*
	Fountain of Youth
	Authors: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Land combat units from any civilization that owns this tile receive the 'Water of Life' ability, granting +10 Healing after every turn adjacent to a source of fresh water.
-----------------------------------------------

UPDATE	Features
SET		Description = 'LOC_TM_FEATURE_FOUNTAIN_OF_YOUTH_DESCRIPTION'
WHERE	FeatureType = 'FEATURE_FOUNTAIN_OF_YOUTH';

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_FOUNTAIN_OF_YOUTH_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_FOUNTAIN_OF_YOUTH'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_FOUNTAIN_OF_YOUTH_ATTACH_PLAYERS'
	WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_FOUNTAIN_OF_YOUTH')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	-- Original Effect
	DELETE FROM GameModifiers
	WHERE ModifierId IN ('FOUNTAIN_OF_YOUTH_UNITS_GRANT_ABILITY')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_FOUNTAIN_OF_YOUTH_ORIGINAL_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_FOUNTAIN_OF_YOUTH'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 0);

-----------------------------------------------
-- Types
-----------------------------------------------
	
INSERT INTO Types
		(Type,										Kind			)
VALUES	('ABILITY_TM_FEATURE_FOUNTAIN_OF_YOUTH',	'KIND_ABILITY'	);

-----------------------------------------------
-- Tags
-----------------------------------------------	
	
INSERT INTO Tags
		(Tag,										Vocabulary		)
VALUES	('ABILITY_TM_FEATURE_FOUNTAIN_OF_YOUTH',	'ABILITY_CLASS'	);

-----------------------------------------------
-- TypeTags
-----------------------------------------------		

INSERT INTO TypeTags
		(Type,										Tag							)
VALUES	('ABILITY_TM_FEATURE_FOUNTAIN_OF_YOUTH',	'CLASS_ALL_COMBAT_UNITS'	);

-----------------------------------------------
-- UnitAbilities
-----------------------------------------------

INSERT INTO UnitAbilities
		(UnitAbilityType,							Name,												Description,											Inactive,	ShowFloatTextWhenEarned,	Permanent	)
VALUES	('ABILITY_TM_FEATURE_FOUNTAIN_OF_YOUTH',	'LOC_ABILITY_TM_FEATURE_FOUNTAIN_OF_YOUTH_NAME',	'LOC_ABILITY_TM_FEATURE_FOUNTAIN_OF_YOUTH_DESCRIPTION',	0,			1,							1			);

-----------------------------------------------
-- UnitAbilityModifiers
-----------------------------------------------
		
INSERT INTO UnitAbilityModifiers
		(UnitAbilityType,							ModifierId												)
VALUES	('ABILITY_TM_FEATURE_FOUNTAIN_OF_YOUTH',	'MODIFIER_TM_FEATURE_FOUNTAIN_OF_YOUTH_UNIT_HEALING'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers (ModifierId, ModifierType, OwnerRequirementSetId, SubjectRequirementSetId)
SELECT	'MODIFIER_TM_FEATURE_FOUNTAIN_OF_YOUTH_ATTACH_PLAYERS',
		'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',
		'REQSET_TM_MAP_HAS_FEATURE_FOUNTAIN_OF_YOUTH',	
		'REQSET_TM_PLAYER_HAS_FEATURE_FOUNTAIN_OF_YOUTH'
WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_FOUNTAIN_OF_YOUTH');

INSERT INTO Modifiers
		(ModifierId,											ModifierType,										SubjectRequirementSetId			)
VALUES	('MODIFIER_TM_FEATURE_FOUNTAIN_OF_YOUTH_GRANT_ABILITY',	'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',				NULL							),
		('MODIFIER_TM_FEATURE_FOUNTAIN_OF_YOUTH_UNIT_HEALING',	'MODIFIER_PLAYER_UNIT_GRANT_HEAL_AFTER_ACTION',		'REQSET_TM_PLOT_IS_FRESH_WATER'	);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_TM_FEATURE_FOUNTAIN_OF_YOUTH_ATTACH_PLAYERS',
		'ModifierId',
		'MODIFIER_TM_FEATURE_FOUNTAIN_OF_YOUTH_GRANT_ABILITY'
WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_FOUNTAIN_OF_YOUTH');

INSERT INTO ModifierArguments
		(ModifierId,											Name,			Value									)
VALUES	('MODIFIER_TM_FEATURE_FOUNTAIN_OF_YOUTH_GRANT_ABILITY',	'AbilityType',	'ABILITY_TM_FEATURE_FOUNTAIN_OF_YOUTH'	);


