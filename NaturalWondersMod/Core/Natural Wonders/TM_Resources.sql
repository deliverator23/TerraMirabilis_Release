/*
	Resources
	Authors: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO Types
		(Type, 						Kind			)
VALUES	('RESOURCE_TM_LITHIUM', 	'KIND_RESOURCE'	),
		('RESOURCE_TM_SYLVITE', 	'KIND_RESOURCE'	),
		('RESOURCE_TM_TORTOISE', 	'KIND_RESOURCE'	);

-----------------------------------------------
-- Resources
-----------------------------------------------

INSERT INTO Resources
		(ResourceType, 				Name, 								ResourceClassType, 			Happiness,	Frequency	)
VALUES	('RESOURCE_TM_LITHIUM',		'LOC_RESOURCE_TM_LITHIUM_NAME',		'RESOURCECLASS_LUXURY', 	6, 			0			),
		('RESOURCE_TM_SYLVITE',		'LOC_RESOURCE_TM_SYLVITE_NAME',		'RESOURCECLASS_LUXURY', 	6, 			0			),
		('RESOURCE_TM_TORTOISE',	'LOC_RESOURCE_TM_TORTOISE_NAME',	'RESOURCECLASS_LUXURY', 	6, 			0			);