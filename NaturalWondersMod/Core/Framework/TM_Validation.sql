/*
	Validation
	Credits: ChimpanG, Deliverator
*/

-----------------------------------------------
-- TM_Validation
-----------------------------------------------

INSERT INTO TM_Validation
		(FeatureType,					Requirement			)
VALUES	('FEATURE_BARRIER_REEF',		'BASE'				),
		('FEATURE_CLIFFS_DOVER',		'BASE'				),
		('FEATURE_CRATER_LAKE',			'BASE'				),
		('FEATURE_DEAD_SEA',			'BASE'				),
		('FEATURE_EVEREST',				'BASE'				),
		('FEATURE_GALAPAGOS',			'BASE'				),
		('FEATURE_KILIMANJARO',			'BASE'				),
		('FEATURE_PANTANAL',			'BASE'				),
		('FEATURE_PIOPIOTAHI',			'BASE'				),
		('FEATURE_TORRES_DEL_PAINE',	'BASE'				),
		('FEATURE_TSINGY',				'BASE'				),
		('FEATURE_YOSEMITE',			'BASE'				),
		('FEATURE_EYJAFJALLAJOKULL',	'VIKINGS'			),
		('FEATURE_GIANTS_CAUSEWAY',		'VIKINGS'			),
		('FEATURE_LYSEFJORDEN',			'VIKINGS'			),
		('FEATURE_ULURU',				'AUSTRALIA'			),
		('FEATURE_HA_LONG_BAY',			'INDONESIA_KHMER'	),
		('FEATURE_DELICATE_ARCH',		'XP1'				),
		('FEATURE_EYE_OF_THE_SAHARA',	'XP1'				),
		('FEATURE_LAKE_RETBA',			'XP1'				),
		('FEATURE_MATTERHORN',			'XP1'				),
		('FEATURE_RORAIMA',				'XP1'				),
		('FEATURE_UBSUNUR_HOLLOW',		'XP1'				),
		('FEATURE_ZHANGYE_DANXIA',		'XP1'				),
		('FEATURE_BARRINGER_CRATER',	'TM'				),
		('FEATURE_BIOLUMINESCENT_BAY',	'TM'				),
		('FEATURE_CERRO_DE_POTOSI',		'TM'				),
		('FEATURE_DALLOL',				'TM'				),
		('FEATURE_GIBRALTAR',			'TM'				),
		('FEATURE_GRAND_MESA',			'TM'				),
		('FEATURE_KAILASH',				'TM'				),
		('FEATURE_KRAKATOA',			'TM'				),
		('FEATURE_LAKE_VICTORIA',		'TM'				),
		('FEATURE_MOTLATSE_CANYON',		'TM'				),
		('FEATURE_MOSI_OA_TUNYA',		'TM'				),
		('FEATURE_NAMIB',				'TM'				),
		('FEATURE_OLD_FAITHFUL',		'TM'				),
		('FEATURE_OUNIANGA',			'TM'				),
		('FEATURE_SALAR_DE_UYUNI',		'TM'				),
		('FEATURE_SINAI',				'TM'				),
		('FEATURE_SRI_PADA',			'TM'				),
		('FEATURE_VREDEFORT_DOME',		'TM'				),
		('FEATURE_WULINGYUAN',			'INDONESIA_KHMER'	), -- Added by Terra Mirabilis, but depends on DLC
		('FEATURE_SUK_FUJI',			'SUKRITACT'			); -- Here because we have mod support for this

UPDATE	TM_Validation
SET		Active = 1
WHERE	Requirement IN ('BASE', 'TM');