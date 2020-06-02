/*
	Cerro de Potosi
	Authors: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: International Trade Routes from a City that owns this tile yield +4 Gold
-----------------------------------------------

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_CERRO_DE_POTOSI_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_CERRO_DE_POTOSI'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_CERRO_DE_POTOSI_ATTACH_CITIES'
	WHERE EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,												ModifierType,														OwnerRequirementSetId,							SubjectRequirementSetId							)
VALUES	('MODIFIER_TM_FEATURE_CERRO_DE_POTOSI_ATTACH_CITIES',		'MODIFIER_ALL_CITIES_ATTACH_MODIFIER',								'REQSET_TM_MAP_HAS_FEATURE_CERRO_DE_POTOSI',	'REQSET_TM_CITY_HAS_FEATURE_CERRO_DE_POTOSI'	),
		('MODIFIER_TM_FEATURE_CERRO_DE_POTOSI_TRADE_INTERNATIONAL',	'MODIFIER_SINGLE_CITY_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL',	NULL,											NULL											);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,													Name,			Value														)
VALUES	('MODIFIER_TM_FEATURE_CERRO_DE_POTOSI_ATTACH_CITIES',			'ModifierId',	'MODIFIER_TM_FEATURE_CERRO_DE_POTOSI_TRADE_INTERNATIONAL'	),
		('MODIFIER_TM_FEATURE_CERRO_DE_POTOSI_TRADE_INTERNATIONAL',		'YieldType',	'YIELD_GOLD'												),
		('MODIFIER_TM_FEATURE_CERRO_DE_POTOSI_TRADE_INTERNATIONAL',		'Amount',		4															);
