/*
	Localisation
	Language: English ("en_US")
	Credits: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Incorporate available translations
-----------------------------------------------

INSERT OR REPLACE INTO LocalizedText (Language, Tag, Text)
SELECT	(SELECT Language IN ('de_DE', 'es_ES', 'fr_FR', 'it_IT', 'ja_JP', 'ko_KR', 'pl_PL', 'pt_BR', 'ru_RU', 'zh_Hans_CN', 'zh_Hans_HK')),
		Tag,
		Text
FROM	LocalizedText
WHERE	Tag LIKE 'LOC_TM_FEATURE_%_EFFECT%DESCRIPTION';

INSERT OR REPLACE INTO LocalizedText (Language, Tag, Text)
VALUES

-----------------------------------------------
-- BARRIER REEF
-----------------------------------------------

	("en_US",		"LOC_TM_FEATURE_BARRIER_REEF_DESCRIPTION",			"Two tile natural wonder. Yields +2 [ICON_Food] Food, +1 [ICON_Gold] Gold, and +2 [ICON_Science] Science."	),
	("en_US",		"LOC_TM_FEATURE_BARRIER_REEF_EFFECT",				"Improved sea resources yield +1 [ICON_Gold] Gold for any Civilization that owns at least one of these tiles."	),
	("en_US",		"LOC_TM_FEATURE_BARRIER_REEF_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_BARRIER_REEF_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_BARRIER_REEF_EFFECT}"	),

-----------------------------------------------
-- BARRINGER CRATER
-----------------------------------------------

	("en_US",	"LOC_FEATURE_BARRINGER_CRATER_NAME",					"Barringer Crater"	),
	("en_US",	"LOC_TM_FEATURE_BARRINGER_CRATER_DESCRIPTION",			"One tile natural wonder. Yields +3 [ICON_Science] Science and +2 [ICON_Gold] Gold."	),
	("en_US",	"LOC_TM_FEATURE_BARRINGER_CRATER_EFFECT",				"Receive +20% [ICON_Production] Production toward Space Race projects in the City that owns this tile."	),
	("en_US",	"LOC_TM_FEATURE_BARRINGER_CRATER_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_BARRINGER_CRATER_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_BARRINGER_CRATER_EFFECT}"	),
	
	("en_US",	'LOC_TM_FEATURE_BARRINGER_CRATER_QUOTE',
	'"In fact we can now prove that this crater is due to the collision with the earth of an extra-terrestrial body, possibly a small asteroid, which was presumably metallic in nature."[NEWLINE]- Daniel Barringer'	),
	
	("en_US",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_BARRINGER_CRATER_CHAPTER_HISTORY_PARA_1",	
	"The Barringer Crater is a huge meteorite crater located in Arizona, in the United States of America. The crater is 1,200 meters (4,000 feet) in diameter, and scientists believe that it was created some 50,000 years ago when the site was hit by a large nickel-iron meteorite weighing, at time of impact, 160,000 tons and moving at perhaps 44,000 kilometers per hour (27,000 mph)."	),

-----------------------------------------------
-- BIOLUMINESCENT BAY
-----------------------------------------------

	("en_US",	"LOC_FEATURE_BIOLUMINESCENT_BAY_NAME",					"Bioluminescent Bay"	),
	("en_US",	"LOC_TM_FEATURE_BIOLUMINESCENT_BAY_DESCRIPTION",		"One tile natural wonder. Yields +2 [ICON_SCIENCE] Science, +2 [ICON_CULTURE] Culture, and +1 [ICON_GOLD] Gold."	),
	("en_US",	"LOC_TM_FEATURE_BIOLUMINESCENT_BAY_EFFECT",				"Fishing Boats provide +1 [ICON_GOLD] Gold on outgoing international [ICON_TRADEROUTE] Trade Routes from their cities for any Civilization that owns this tile."	),
	("en_US",	"LOC_TM_FEATURE_BIOLUMINESCENT_BAY_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_BIOLUMINESCENT_BAY_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_BIOLUMINESCENT_BAY_EFFECT}"	),
	
	("en_US",	'LOC_TM_FEATURE_BIOLUMINESCENT_BAY_QUOTE',
	'"The emission of light from fire, lightning bolts, stars or living beings attracts the attention of any human being. In the case of bioluminescence the light has a strange glow, something magic and mysterious."[NEWLINE]- Cassius Stevani'	),
	
	("en_US",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_BIOLUMINESCENT_BAY_CHAPTER_HISTORY_PARA_1",	
	"The Bioluminescent Bay (also known as Puerto Mosquito, or Mosquito Bay), is considered the best example of a bioluminescent bay in the United States and is listed as a national natural landmark, one of five in Puerto Rico. The luminescence in the bay is caused by a micro-organism, the dinoflagellate Pyrodinium bahamense, which glows whenever the water is disturbed, leaving a trail of neon blue."	),
	("en_US",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_BIOLUMINESCENT_BAY_CHAPTER_HISTORY_PARA_2",	
	"A combination of factors creates the necessary conditions for bioluminescence: red mangrove trees surround the water, a complete lack of modern development around the bay, the water is cool enough and deep enough, and a small channel to the ocean keeps the dinoflagellates in the bay. This small channel was created artificially, being the result of attempts by the occupants of Spanish ships to choke off the bay from the ocean. The Spanish believed that the bioluminescence they encountered there while first exploring the area, was the work of the devil and tried to block ocean water from entering the bay by dropping huge boulders in the channel. The Spanish only succeeded in preserving and increasing the luminescence in the now isolated bay."	),

-----------------------------------------------
-- CERRO DE POTOSI
-----------------------------------------------

	("en_US",	"LOC_FEATURE_CERRO_DE_POTOSI_NAME",						"Cerro de Potosi"	),
	("en_US",	"LOC_TM_FEATURE_CERRO_DE_POTOSI_DESCRIPTION",			"One tile impassable natural wonder. Appears as a Mountain. Adjacent plots yield +1 [ICON_Production] Production and +1 [ICON_Gold] Gold."	),
	("en_US",	"LOC_TM_FEATURE_CERRO_DE_POTOSI_EFFECT",				"International [ICON_TradeRoute] Trade Routes from the City that owns this tile yield +4 [ICON_Gold] Gold."	),
	("en_US",	"LOC_TM_FEATURE_CERRO_DE_POTOSI_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_CERRO_DE_POTOSI_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_CERRO_DE_POTOSI_EFFECT}"	),
	
	("en_US",	'LOC_TM_FEATURE_CERRO_DE_POTOSI_QUOTE',	
	'"I am rich Potosi, treasure of the world, king of all mountains and envy of kings."[NEWLINE]- First Coat of Arms of Potosi'	),
	
	("en_US",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_CERRO_DE_POTOSI_CHAPTER_HISTORY_PARA_1",	
	"Located in southern Bolivia, the mountain of Potosi produced nearly all of the silver mined by the Spanish during their imperial days. Once removed from the mountain, it was taken by llama and mule to the coast where it was then loaded onto treasure ships sailing back to Europe. Nearly 41,000 tons of pure silver were mined over the course of 200 years, 8,200 of which went directly to the Spanish crown. After 1800, the main silver mines were depleted, but the mining of Potosi still continues today - some for silver but now mostly for tin."	),

-----------------------------------------------
-- CHOCOLATE HILLS
-----------------------------------------------

	("en_US",	"LOC_TM_FEATURE_CHOCOLATE_HILLS_DESCRIPTION",			"Four tile natural wonder. Yields +2 [ICON_CULTURE] Culture, +2 [ICON_PRODUCTION] Production and +1 [ICON_FOOD] Food."	),
	("en_US",	"LOC_TM_FEATURE_CHOCOLATE_HILLS_EFFECT",				"Any Civilization that owns at least one of these tiles exerts +25% [ICON_TOURISM] Tourism toward other Civilizations with whom they have a [ICON_TRADEROUTE] Trade Route."	),
	("en_US",	"LOC_TM_FEATURE_CHOCOLATE_HILLS_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_CHOCOLATE_HILLS_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_CHOCOLATE_HILLS_EFFECT}"	),

-----------------------------------------------
-- CLIFFS OF DOVER
-----------------------------------------------

	("en_US",	"LOC_TM_FEATURE_CLIFFS_DOVER_DESCRIPTION",				"Two tile natural wonder. Appears as Cliffs. Yields +3 [ICON_Culture] Culture, +1 [ICON_Food] Food, and +1 [ICON_Gold] Gold."	),
	("en_US",	"LOC_TM_FEATURE_CLIFFS_DOVER_EFFECT",					"Harbors receive minor adjacency bonuses from Cliffs for any Civilization that owns at least one of these tiles."	),
	("en_US",	"LOC_TM_FEATURE_CLIFFS_DOVER_EFFECT_DESCRIPTION",		"{LOC_TM_FEATURE_CLIFFS_DOVER_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_CLIFFS_DOVER_EFFECT}"	),

	("en_US",	"LOC_MODIFIER_TM_FEATURE_CLIFFS_DOVER_ADJACENCY_DESCRIPTION",	"+{1_num} [ICON_Gold] Gold from adjacent {1_Num : plural 1?cliff; other?cliffs;}."	),

-----------------------------------------------
-- CRATER LAKE
-----------------------------------------------

	("en_US",	"LOC_TM_FEATURE_CRATER_LAKE_DESCRIPTION",			"One tile natural wonder. Appears as a Lake and provides fresh water. Yields +4 [ICON_Faith] Faith and +1 [ICON_Science] Science."	),
	("en_US",	"LOC_TM_FEATURE_CRATER_LAKE_EFFECT",				"May purchase any Building with [ICON_Faith] Faith in the City that owns this tile."	),
	("en_US",	"LOC_TM_FEATURE_CRATER_LAKE_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_CRATER_LAKE_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_CRATER_LAKE_EFFECT}"	),

-----------------------------------------------
-- DALLOL
-----------------------------------------------

	("en_US",	"LOC_FEATURE_DALLOL_NAME",					"Dallol"	),
	("en_US",	"LOC_TM_FEATURE_DALLOL_DESCRIPTION",		"One tile natural wonder. Provides +2 [ICON_SCIENCE] Science, +2 [ICON_PRODUCTION] Production and +1 [ICON_GOLD] Gold."	),
	("en_US",	"LOC_TM_FEATURE_DALLOL_EFFECT",				"Grants a free copy of the [ICON_RESOURCE_TM_SYLVITE] Sylvite luxury resource (not tradeable), which provides +6 [ICON_Amenities] Amenities, to any Civilization that owns this tile."	),
	("en_US",	"LOC_TM_FEATURE_DALLOL_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_DALLOL_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_DALLOL_EFFECT}"	),
	
	("en_US",	'LOC_TM_FEATURE_DALLOL_QUOTE',	
	'"There is hell, there is darkness, there is the sulfurous pit— burning, scalding, stench, consumption!"[NEWLINE]- William Shakespeare, King Lear'	),
	
	("en_US",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_DALLOL_CHAPTER_HISTORY_PARA_1",	
	"Dallol is a cinder cone volcano in the Danakil Depression, northeast of the Erta Ale Range in Ethiopia. It has been formed by the intrusion of basaltic magma into Miocene salt deposits and subsequent hydrothermal activity. Phreatic eruptions took place in 1926, forming Dallol Volcano while numerous other eruption craters dot the salt flats nearby. These craters are the lowest known subaerial volcanic vents in the world, at 45 m (150 ft) or more below sea level."	),
	("en_US",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_DALLOL_CHAPTER_HISTORY_PARA_2",	
	"Numerous hot springs are discharging brine and acidic liquid here. Small, widespread, temporary geysers produce cones of salt. The Dallol deposits include significant bodies of potash found directly at the surface. The term 'Dallol' was coined by the Afar people and means 'dissolution' or 'disintegration', describing a landscape of green acid ponds (pH-values less than 1) and iron oxide, sulfur and salt desert plains."	),

	("en_US",	"LOC_RESOURCE_TM_SYLVITE_NAME",	"Sylvite"	),
	("en_US",	"LOC_PEDIA_RESOURCES_PAGE_RESOURCE_TM_SYLVITE_CHAPTER_HISTORY_PARA_1",
	"In Dallol, Ethiopia, Potash production is said to have reached 51,000 metric tons after 1917, and between the years 1925-29, an Italian company mined 25,000 tons of Sylvite. By 1965, about 10,000 holes had been drilled at 65 locations across Dallol."	),
	("en_US",	"LOC_PEDIA_RESOURCES_PAGE_RESOURCE_TM_SYLVITE_CHAPTER_HISTORY_PARA_2",
	"Named for the Dutch chemist, Francois Sylvius de le Boe, Sylvite was first described at Mt. Vesuvius near Napoli in Italy. Found in many evaporite deposits around the world, Sylvite is one of the last evaporite minerals to precipitate out of solution and as such, is only found in very dry saline areas. It is used for spectroscopic prisms and lenses, but its principal use is as a potassium fertilizer."	),

-----------------------------------------------
-- DEAD SEA
-----------------------------------------------

	("en_US",	"LOC_TM_FEATURE_DEAD_SEA_DESCRIPTION",				"Two tile natural wonder. Appears as a Lake. Yields +2 [ICON_Faith] Faith, +2 [ICON_Culture] Culture, and +1 [ICON_Gold] Gold."	),
	("en_US",	"LOC_TM_FEATURE_DEAD_SEA_EFFECT",					"Units may heal an additional 10 HP when [ICON_Fortified] Fortified for any Civilization that owns at least one of these tiles."	),
	("en_US",	"LOC_TM_FEATURE_DEAD_SEA_EFFECT_DESCRIPTION",		"{LOC_TM_FEATURE_DEAD_SEA_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_DEAD_SEA_EFFECT}"	),

-----------------------------------------------
-- DELICATE ARCH
-----------------------------------------------

	("en_US",	"LOC_TM_FEATURE_DELICATE_ARCH_DESCRIPTION",			"One tile impassable natural wonder. Adjacent plots yield +1 [ICON_Culture] Culture and +1 [ICON_Gold] Gold."	),
	("en_US",	"LOC_TM_FEATURE_DELICATE_ARCH_EFFECT",				"Plots are 20% cheaper to purchase for any Civilization that owns this tile."	),
	("en_US",	"LOC_TM_FEATURE_DELICATE_ARCH_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_DELICATE_ARCH_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_DELICATE_ARCH_EFFECT}"	),

-----------------------------------------------
-- EVEREST
-----------------------------------------------

	("en_US",	"LOC_TM_FEATURE_EVEREST_DESCRIPTION",			"Three tile impassable natural wonder. Appears as a Mountain. Adjacent plots yield +2 [ICON_Faith] Faith."	),
	("en_US",	"LOC_TM_FEATURE_EVEREST_EFFECT",				"Religious units ignore [ICON_Movement] Movement penalties on Hills and receive +1 additional spread charge for any Civilization that owns at least one of these tiles."	),
	("en_US",	"LOC_TM_FEATURE_EVEREST_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_EVEREST_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_EVEREST_EFFECT}"	),

-----------------------------------------------
-- EYE OF THE SAHARA
-----------------------------------------------

	("en_US",	"LOC_TM_FEATURE_EYE_OF_THE_SAHARA_DESCRIPTION",			"Three tile natural wonder. Yields +2 [ICON_PRODUCTION] Production, +2 [ICON_Science] Science, and +1 [ICON_Gold] Gold."	),
	("en_US",	"LOC_TM_FEATURE_EYE_OF_THE_SAHARA_EFFECT",				"Any Civilization that owns at least one of these tiles receives +1 Era Score from Historic Moments if that Moment is usually worth at least +4 Era Score."	),
	("en_US",	"LOC_TM_FEATURE_EYE_OF_THE_SAHARA_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_EYE_OF_THE_SAHARA_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_EYE_OF_THE_SAHARA_EFFECT}"	),

-----------------------------------------------
-- EYJAFJALLAJOKULL
-----------------------------------------------

	("en_US",	"LOC_TM_FEATURE_EYJAFJALLAJOKULL_DESCRIPTION",				"Two tile impassable natural wonder. Appears as a Mountain. Adjacent plots yield +1 [ICON_Culture] Culture and +1 [ICON_Food] Food."	),
	("en_US",	"LOC_TM_FEATURE_EYJAFJALLAJOKULL_XP2_DESCRIPTION",			"Two tile impassable natural wonder. Appears as a Volcano. Adjacent plots yield +1 [ICON_CULTURE] Culture. Provides additional yields on eruption at the cost of [ICON_CITIZEN] Population and damage to infrastructure. Always active."	),
	("en_US",	"LOC_TM_FEATURE_EYJAFJALLAJOKULL_EFFECT",					"Specialty Districts constructed on Tundra or Snow terrain yield +1 [ICON_Food] Food for any Civilization that owns this tile."	),
	("en_US",	"LOC_TM_FEATURE_EYJAFJALLAJOKULL_EFFECT_DESCRIPTION",		"{LOC_TM_FEATURE_EYJAFJALLAJOKULL_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_EYJAFJALLAJOKULL_EFFECT}"	),
	("en_US",	"LOC_TM_FEATURE_EYJAFJALLAJOKULL_EFFECT_XP2_DESCRIPTION",	"{LOC_TM_FEATURE_EYJAFJALLAJOKULL_XP2_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_EYJAFJALLAJOKULL_EFFECT}"	),

-----------------------------------------------
-- GALAPAGOS
-----------------------------------------------
	
	("en_US",	"LOC_TM_FEATURE_GALAPAGOS_DESCRIPTION",		"Two tile impassable natural wonder. Adjacent plots yield +2 [ICON_Science] Science."	),
	("en_US",	"LOC_TM_FEATURE_GALAPAGOS_EFFECT",				"Grants a free copy of the [ICON_RESOURCE_TM_TORTOISE] Tortoise luxury resource (not tradeable), which provides +6 [ICON_Amenities] Amenities, to any Civilization that owns at least one of these tiles."	),
	("en_US",	"LOC_TM_FEATURE_GALAPAGOS_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_GALAPAGOS_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_GALAPAGOS_EFFECT}"	),

	("en_US",	"LOC_RESOURCE_TM_TORTOISE_NAME",	"Tortoise"	),
	("en_US",	"LOC_PEDIA_RESOURCES_PAGE_RESOURCE_TM_TORTOISE_CHAPTER_HISTORY_PARA_1",
	"The Galapagos giant tortoise is the largest living species of tortoise, weighing up to 417kg. Today, giant tortoises exist on only two remote archipelagos, the Galapagos Islands, and Aldabra. Their numbers declined from over 250,000 in the 16th century to around 3,000 in 1970 due to overexploitation of the species for meat and oil. The extinction of most giant tortoise lineages is thought to have been caused by predation by humans as the tortoises themselves have no natural predators on the remote Galapagos archipelago that they are native to."	),

-----------------------------------------------
-- GIANTS CAUSEWAY
-----------------------------------------------

	("en_US",	"LOC_TM_FEATURE_GIANTS_CAUSEWAY_DESCRIPTION",			"Two tile impassable natural wonder. Adjacent plots yield +2 [ICON_Culture] Culture."	),
	("en_US",	"LOC_TM_FEATURE_GIANTS_CAUSEWAY_EFFECT",				"Land units trained in a City that owns at least one of these tiles start with a free [ICON_Promotion] Promotion."	),
	("en_US",	"LOC_TM_FEATURE_GIANTS_CAUSEWAY_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_GIANTS_CAUSEWAY_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_GIANTS_CAUSEWAY_EFFECT}"	),

-----------------------------------------------
-- GOBUSTAN
-----------------------------------------------

	("en_US",	"LOC_TM_FEATURE_GOBUSTAN_DESCRIPTION",			"Three tile natural wonder. Yields +3 [ICON_CULTURE] Culture, +1 [ICON_PRODUCTION] Production, and +1 [ICON_SCIENCE] Science."	),
	("en_US",	"LOC_TM_FEATURE_GOBUSTAN_EFFECT",				"Improved sources of [ICON_RESOURCE_OIL] Oil accumulate 2 more resources per turn for any Civilization that owns at least one of these tiles."	),
	("en_US",	"LOC_TM_FEATURE_GOBUSTAN_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_GOBUSTAN_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_GOBUSTAN_EFFECT}"	),

-----------------------------------------------
-- GRAND MESA
-----------------------------------------------

	("en_US",	"LOC_FEATURE_GRAND_MESA_NAME",					"Grand Mesa"	),
	("en_US",	"LOC_TM_FEATURE_GRAND_MESA_DESCRIPTION",		"One tile impassable natural wonder. Adjacent plots yield +1 [ICON_Food] Food and +1 [ICON_Culture] Culture."	),
	("en_US",	"LOC_TM_FEATURE_GRAND_MESA_EFFECT",				"Units ignore [ICON_Movement] Movement penalties in Forest or Jungle for any Civilization that owns this tile."	),
	("en_US",	"LOC_TM_FEATURE_GRAND_MESA_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_GRAND_MESA_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_GRAND_MESA_EFFECT}"	),
	
	("en_US",	'LOC_TM_FEATURE_GRAND_MESA_QUOTE',	
	'"Conservation means the wise use of the earth and its resources for the lasting good of men."[NEWLINE]- Gifford Pinchot'	),
	
	("en_US",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_GRAND_MESA_CHAPTER_HISTORY_PARA_1",	
	"The Grand Mesa is a large geologic formation in Colorado, the United States of America. Rising some 1,500 meters (5,000 feet) above the surrounding territory and with an area of 1300 square kilometers (500 square miles), it is the largest mesa in the world. The Grand Mesa has a layer of volcanic basalt on top, which resists erosion. It did not so much rise into the air, as it remained at its original height, as the surrounding terrain was eroded by the action of the Colorado and Gunnison rivers.  The Grand Mesa National Forest (originally called Battlement Mesa Forest Reserve) was created by Benjamin Harrison on December 24, 1892. It was the third forest reserve created in United States."	),

-----------------------------------------------
-- HA LONG BAY
-----------------------------------------------

	("en_US",	"LOC_TM_FEATURE_HA_LONG_BAY_DESCRIPTION",			"Two tile natural wonder. Yields +2 [ICON_Culture] Culture, +2 [ICON_Food] Food and +1 [ICON_Production] Production."	),
	("en_US",	"LOC_TM_FEATURE_HA_LONG_BAY_EFFECT",				"Harbors provide +2 [ICON_Housing] Housing for any Civilization that owns at least one of these tiles."	),
	("en_US",	"LOC_TM_FEATURE_HA_LONG_BAY_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_HA_LONG_BAY_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_HA_LONG_BAY_EFFECT}"	),

-----------------------------------------------
-- IK-KIL
-----------------------------------------------

	("en_US",	"LOC_TM_FEATURE_IK_KIL_DESCRIPTION",			"One tile impassable natural wonder. Provides Fresh Water. Adjacent plots yield +1 [ICON_SCIENCE] Science, and +1 [ICON_FAITH] Faith."	),
	("en_US",	"LOC_TM_FEATURE_IK_KIL_EFFECT",					"+15% [ICON_PRODUCTION] Production toward Wonders for any Civilization that owns this tile."	),
	("en_US",	"LOC_TM_FEATURE_IK_KIL_EFFECT_DESCRIPTION",		"{LOC_TM_FEATURE_IK_KIL_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_IK_KIL_EFFECT}"	),

-----------------------------------------------
-- KAILASH
-----------------------------------------------

	("en_US",	"LOC_FEATURE_KAILASH_NAME",						"Mount Kailash"	),
	("en_US",	"LOC_TM_FEATURE_KAILASH_DESCRIPTION",			"One tile impassable natural wonder. Appears as a Mountain. Adjacent plots yield +1 [ICON_Faith] Faith and +1 [ICON_Culture] Culture."	),
	("en_US",	"LOC_TM_FEATURE_KAILASH_EFFECT",				"Receive +1 [ICON_Culture] Culture for every foreign City that follows the [ICON_Religion] Religion of the Civilization that owns this tile."	),
	("en_US",	"LOC_TM_FEATURE_KAILASH_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_KAILASH_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_KAILASH_EFFECT}"	),
		
	("en_US",	'LOC_TM_FEATURE_KAILASH_QUOTE',	
	'"After thus having instructed the godly ones Lord Brahma went away with in his wake the forefathers and the leaders of the people whom he took from his own place to the abode of Lord Shiva, Kailash, the best of all mountains that is so dear to the master."[NEWLINE]- The Bhagavata Purana'	),
	
	("en_US",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_KAILASH_CHAPTER_HISTORY_PARA_1",	
	"The sacred peak of Mount Kailash, found in the Himalayas of Tibet, is cherished by a number of religions, particularly the followers of Hinduism. It is believed to be the home of Lord Shiva, who dwells on the mountain in a state of eternal bliss. Mount Kailash is said to be among the most difficult of all religious pilgrimages, as the harsh conditions dissuade many would-be pilgrims, and the mountain is not accessible by any forms of modern transportation."	),

-----------------------------------------------
-- KILIMANJARO
-----------------------------------------------

	("en_US",	"LOC_TM_FEATURE_KILIMANJARO_DESCRIPTION",				"One tile impassable natural wonder. Appears as a Mountain. Adjacent plots yield +2 [ICON_Food] Food."	),
	("en_US",	"LOC_TM_FEATURE_KILIMANJARO_XP2_DESCRIPTION",			"One tile impassable natural wonder. Appears as a Volcano. Adjacent plots yield +1 [ICON_FOOD] Food. Provides additional yields on eruption at the cost of [ICON_Citizen] Population and damage to infrastructure. Always active."	),
	("en_US",	"LOC_TM_FEATURE_KILIMANJARO_EFFECT",					"Receive +1 [ICON_Citizen] Population in the City that owns this tile when a Specialty District is constructed."	),
	("en_US",	"LOC_TM_FEATURE_KILIMANJARO_EFFECT_DESCRIPTION",		"{LOC_TM_FEATURE_KILIMANJARO_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_KILIMANJARO_EFFECT}"	),
	("en_US",	"LOC_TM_FEATURE_KILIMANJARO_EFFECT_XP2_DESCRIPTION",	"{LOC_TM_FEATURE_KILIMANJARO_XP2_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_KILIMANJARO_EFFECT}"	),

-----------------------------------------------
-- KRAKATOA
-----------------------------------------------

	("en_US",	"LOC_FEATURE_KRAKATOA_NAME",						"Krakatoa"	),
	("en_US",	"LOC_TM_FEATURE_KRAKATOA_XP2_DESCRIPTION",			"One tile impassable natural wonder. Appears as a Volcano. Adjacent plots yield +1 [ICON_SCIENCE] Science. Provides additional yields on eruption at the cost of [ICON_Citizen] Population and damage to infrastructure. Always active."	),
	("en_US",	"LOC_TM_FEATURE_KRAKATOA_EFFECT_XP1",				"Any Civilization that owns this tile receives a free [ICON_TechBoosted] Eureka upon earning a [ICON_GreatAdmiral] Great Admiral."	),
	("en_US",	"LOC_TM_FEATURE_KRAKATOA_EFFECT_DESCRIPTION",		"{LOC_TM_FEATURE_KRAKATOA_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_KRAKATOA_EFFECT}"	),
	("en_US",	"LOC_TM_FEATURE_KRAKATOA_EFFECT_XP1_DESCRIPTION",	"{LOC_TM_FEATURE_KRAKATOA_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_KRAKATOA_EFFECT_XP1}"	),
	("en_US",	"LOC_TM_FEATURE_KRAKATOA_EFFECT_XP2_DESCRIPTION",	"{LOC_TM_FEATURE_KRAKATOA_XP2_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_KRAKATOA_EFFECT_XP1}"	),
	
	("en_US",	'LOC_TM_FEATURE_KRAKATOA_QUOTE',	
	'"I saw with amazement that the island of Krakatoa lay completely burnt and barren in front of our eyes and that at four locations was throwing up large chunks of fire."[NEWLINE]- Johann Wilhelm Vogel'	),
	
	("en_US",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_KRAKATOA_CHAPTER_HISTORY_PARA_1",	
	"Krakatoa is a volcanic island located in Indonesia, between the islands of Java and Sumatra. The volcano exploded violently in August, 1883 with a force equivalent to 13,000 times the power of the Hiroshima nuclear bomb. The blast is widely regarded as the loudest sound ever recorded. The eruption destroyed over half of the island, and was heard in parts of Australia, some 3,200 kilometers (2,000 miles) away. Some 37,000 people were killed by the eruption and subsequent tsunamis. The volcano has been emitting lava steadily for the past eighty years, rebuilding the cone at a rate of about 5 meters per year (15 feet per year)."	),

	("en_US",	"LOC_RANDOM_EVENT_KRAKATOA_GENTLE_NAME",				"Gentle Eruption"	),
	("en_US",	"LOC_RANDOM_EVENT_KRAKATOA_GENTLE_DESCRIPTION",			"Smoke billows from the mountain of fire that people call Krakatoa. Could this be a foreboding sign of things to come?"	),
	("en_US",	"LOC_RANDOM_EVENT_KRAKATOA_CATASTROPHIC_NAME",			"Catastrophic Eruption"	),
	("en_US",	"LOC_RANDOM_EVENT_KRAKATOA_CATASTROPHIC_DESCRIPTION",	"Must we have forsaken our gods, for when we looked toward the blue sky and asked for rain, it was Krakatoa that answered with fire."	),
	("en_US",	"LOC_RANDOM_EVENT_KRAKATOA_MEGACOLOSSAL_NAME",			"Megacolossal Eruption"	),
	("en_US",	"LOC_RANDOM_EVENT_KRAKATOA_MEGACOLOSSAL_DESCRIPTION",	"Cursed be the ground on which Krakatoa casts its mighty shadow. Both fire and rock it wrought upon us. For out of the ground we were taken for the ashes we are... and to the ashes we returned."	),

-----------------------------------------------
-- LAKE RETBA
-----------------------------------------------

	("en_US",	"LOC_TM_FEATURE_LAKE_RETBA_DESCRIPTION",			"Two tile natural wonder. Appears as a Lake. Yields +2 [ICON_CULTURE] Culture, +2 [ICON_GOLD] Gold, +1 [ICON_PRODUCTION] Production."	),
	("en_US",	"LOC_TM_FEATURE_LAKE_RETBA_EFFECT",					"Any Civilization that owns at least one of these tiles receives +2 [ICON_Gold] Gold for each unique copy of a Luxury resource that they own."	),
	("en_US",	"LOC_TM_FEATURE_LAKE_RETBA_EFFECT_DESCRIPTION",		"{LOC_TM_FEATURE_LAKE_RETBA_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_LAKE_RETBA_EFFECT}"	),

-----------------------------------------------
-- LAKE VICTORIA
-----------------------------------------------

	("en_US",	"LOC_FEATURE_LAKE_VICTORIA_NAME",						"Lake Victoria"	),
	("en_US",	"LOC_TM_FEATURE_LAKE_VICTORIA_DESCRIPTION",				"Four tile natural wonder. Appears as a Lake and provides Fresh Water. Yields +3 [ICON_Food] Food, +1 [ICON_Culture] Culture, and +1 [ICON_Gold] Gold."	),
	("en_US",	"LOC_TM_FEATURE_LAKE_VICTORIA_EFFECT",					"Any Civilization that owns at least one of these tiles receives +15% [ICON_FoodSurplus] Growth in Cities not on their original [ICON_Capital] Capital's continent."	),
	("en_US",	"LOC_TM_FEATURE_LAKE_VICTORIA_EFFECT_DESCRIPTION",		"{LOC_TM_FEATURE_LAKE_VICTORIA_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_LAKE_VICTORIA_EFFECT}"	),
	
	("en_US",	'LOC_TM_FEATURE_LAKE_VICTORIA_QUOTE',	
	'"I saw that old father Nile without any doubt rises in the Victoria Nyanza, and as I had foretold, that lake is the great source of the holy river which cradled the first expounder of our religious belief."[NEWLINE]- John Hanning Speke'	),
	
	("en_US",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_LAKE_VICTORIA_CHAPTER_HISTORY_PARA_1",	
	"With a surface area over 26,000 square miles (68,800 km²), Lake Victoria is the largest lake in Africa, the second largest freshwater lake on Earth, and the largest tropical lake in the world. Two large rivers leave the lake, the White Nile and the Katonga. The first historical records of the lake come from Arab traders seeking gold, ivory and other commodities from the natives as they pushed inland from the coast. The search by European explorers for the source of the Nile led to the discovery of the lake by the Englishman John Speke in 1858 AD, who named it after the then British monarch."	),

-----------------------------------------------
-- LYSEFJORDEN
-----------------------------------------------

	("en_US",	"LOC_TM_FEATURE_LYSEFJORDEN_DESCRIPTION",			"Three tile natural wonder. Adjacent plots yield +1 [ICON_Culture] Culture and +1 [ICON_Science] Science"	),
	("en_US",	"LOC_TM_FEATURE_LYSEFJORDEN_EFFECT",				"Naval units trained in a City that owns at least one of these tiles start with a free [ICON_Promotion] Promotion."	),
	("en_US",	"LOC_TM_FEATURE_LYSEFJORDEN_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_LYSEFJORDEN_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_LYSEFJORDEN_EFFECT}"	),

-----------------------------------------------
-- MATO TIPILA
-----------------------------------------------

	("en_US",	"LOC_TM_FEATURE_DEVILSTOWER_DESCRIPTION",			"One tile impassable natural wonder. Adjacent plots yield +1 [ICON_FAITH] Faith and +1 [ICON_PRODUCTION] Production."	),
	("en_US",	"LOC_TM_FEATURE_DEVILSTOWER_EFFECT",				"Naturalists are 50% cheaper to purchase for any Civilization that owns this tile."	),
	("en_US",	"LOC_TM_FEATURE_DEVILSTOWER_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_DEVILSTOWER_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_DEVILSTOWER_EFFECT}"	),

-----------------------------------------------
-- MATTERHORN
-----------------------------------------------

	("en_US",	"LOC_TM_FEATURE_MATTERHORN_DESCRIPTION",			"One tile impassable natural wonder. Appears as a Mountain. Adjacent plots yield +2 [ICON_CULTURE] Culture."	),
	("en_US",	"LOC_TM_FEATURE_MATTERHORN_EFFECT",					"Units ignore [ICON_Movement] Movement penalties on Hills, and receive +3 [ICON_Strength] Combat Strength when fighting on them for any Civilization that owns this tile."	),
	("en_US",	"LOC_TM_FEATURE_MATTERHORN_EFFECT_DESCRIPTION",		"{LOC_TM_FEATURE_MATTERHORN_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_MATTERHORN_EFFECT}"	),

	("en_US",	"LOC_MODIFIER_TM_FEATURE_MATTERHORN_COMBAT_DESCRIPTION",		"+{1_Amount} Combat Bonus on Hills (Matterhorn)"	),

-----------------------------------------------
-- MOSI_OA_TUNYA
-----------------------------------------------

	("en_US",	"LOC_FEATURE_MOSI_OA_TUNYA_NAME",					"Mosi-oa-Tunya"	),
	("en_US",	"LOC_TM_FEATURE_MOSI_OA_TUNYA_DESCRIPTION",			"One tile impassable natural wonder. Provides fresh water. Adjacent plots yield +2 [ICON_FOOD] Food."	),
	("en_US",	"LOC_TM_FEATURE_MOSI_OA_TUNYA_EFFECT",				"Improved bonus resources adjacent to a river provide +1 [ICON_FOOD] Food for the Civilization that owns this tile."	),
	("en_US",	"LOC_TM_FEATURE_MOSI_OA_TUNYA_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_MOSI_OA_TUNYA_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_MOSI_OA_TUNYA_EFFECT}"	),
	
	("en_US",	'LOC_TM_FEATURE_MOSI_OA_TUNYA_QUOTE',	
	'"Creeping with awe to the verge, I peered down into a large rent and saw that a stream of a thousand yards broad leaped down a hundred feet, and then became suddenly compressed into a space of fifteen or twenty yards, the most wonderful sight I had witnessed in Africa."[NEWLINE]- David Livingstone'	),
	
	("en_US",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_MOSI_OA_TUNYA_CHAPTER_HISTORY_PARA_1",	
	"The Mosi-oa-Tunya, otherwise known as Victoria Falls, is among the most spectacular waterfalls in the world. The Zambezi River, which is more than 2 kilometers wide at this point, plunges noisily down a series of basalt gorges and raises an iridescent mist that can be seen more than 50 km away. Its name, which translates to 'The Smoke Which Thunders', comes from the Kololo or Lozi language used throughout Zambia and in parts of Zimbabwe, though it is more commonly known worldwide as Victoria Falls due to Scottish missionary and explorer, David Livingstone, who is perhaps most famous for giving a name to a waterfall that already had one."	),

-----------------------------------------------
-- MOTLATSE CANYON
-----------------------------------------------

	("en_US",	"LOC_FEATURE_MOTLATSE_CANYON_NAME",						"Motlatse Canyon"	),
	("en_US",	"LOC_TM_FEATURE_MOTLATSE_CANYON_DESCRIPTION",			"Four tile impassable natural wonder. Adjacent plots yield +1 [ICON_Culture] Culture and +1 [ICON_Science] Science."	),
	("en_US",	"LOC_TM_FEATURE_MOTLATSE_CANYON_EFFECT",				"River tiles with Breathtaking appeal yield +1 [ICON_GOLD] Gold for any Civilization that owns at least one of these tiles."	),
	("en_US",	"LOC_TM_FEATURE_MOTLATSE_CANYON_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_MOTLATSE_CANYON_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_MOTLATSE_CANYON_EFFECT}"	),

	("en_US",	'LOC_TM_FEATURE_MOTLATSE_CANYON_QUOTE',	
	'"I believe that South Africa is the most beautiful place on earth. Admittedly, I am biased, but I think even the most scrupulous critic would agree that we have been blessed with a truly wonderful land."[NEWLINE]- Nelson Mandela'	),
	
	("en_US",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_MOTLATSE_CANYON_CHAPTER_HISTORY_PARA_1",	
	"The Motlatse Canyon is a significant natural feature of South Africa, located in Mpumalanga, and forming the northern part of the Drakensberg escarpment. Located in the Blyde River Canyon Nature Reserve, it is 25 kilometers in length and is, on average, around 750 meters deep, sporting some of the deepest precipitous cliffs of any canyon on the planet."	),
	("en_US",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_MOTLATSE_CANYON_CHAPTER_HISTORY_PARA_2",	
	"While it is difficult to compare canyons world-wide, Blyde River Canyon is one of the largest canyons on Earth, and it may be the largest green canyon due to its lush subtropical foliage. It supports a large diversity of flora and fauna, including numerous fish and antelope species as well as hippos, crocodiles and every primate species that may be seen in south Africa, making it a very popular region for tourism."	),

-----------------------------------------------
-- NAMIB
-----------------------------------------------

	("en_US",	"LOC_FEATURE_NAMIB_NAME",					"Namib Sand Sea"	),
	("en_US",	"LOC_TM_FEATURE_NAMIB_DESCRIPTION",			"Three tile natural wonder. Yields +3 [ICON_CULTURE] Culture and +2 [ICON_GOLD] Gold."	),
	("en_US",	"LOC_TM_FEATURE_NAMIB_EFFECT",				"Foreign [ICON_TRADEROUTE] Trade Routes that pass through your cities provide +1 [ICON_CULTURE] Culture for any Civilization that owns at least one of these tiles."	),
	("en_US",	"LOC_TM_FEATURE_NAMIB_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_NAMIB_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_NAMIB_EFFECT}"	),
	
	("en_US",	'LOC_TM_FEATURE_NAMIB_QUOTE',	
	'"I love to hear the sound made by sand dunes, I am one of those who perceive the rhythm of a landscape as recorded in many paintings, I am one of thousands who know I am finally home."[NEWLINE]- Mvula Ya Nangolo'	),
	
	("en_US",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_NAMIB_CHAPTER_HISTORY_PARA_1",	
	"The Namib is a coastal desert in southern Africa, whose name is of Nama origin and means 'vast place'. The Namib stretches for more than 2,000km along the Atlantic coasts of Angola, Namibia, and South Africa. Having endured arid, or semi-arid conditions for roughly 55-80 million years, the Namib may be the oldest desert in the world, containing some of the world's driest regions. Owing to its aridity, the Namib is almost totally uninhabited except for a small number of scattered settlements, which have historically served as trading posts for the routes of traders and missionaries that cross the desert."	),

-----------------------------------------------
-- OLD FAITHFUL
-----------------------------------------------

	("en_US",	"LOC_FEATURE_OLD_FAITHFUL_NAME",					"Old Faithful"	),
	("en_US",	"LOC_TM_FEATURE_OLD_FAITHFUL_DESCRIPTION",			"One tile natural wonder. Yields +3 [ICON_Science] Science, +1 [ICON_Faith] Faith, and +1 [ICON_Gold] Gold."	),
	("en_US",	"LOC_TM_FEATURE_OLD_FAITHFUL_EFFECT",				"Campus districts trigger a culture bomb in any City. Double adjacency bonuses for Campus districts if their City has a National Park."	),
	("en_US",	"LOC_TM_FEATURE_OLD_FAITHFUL_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_OLD_FAITHFUL_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_OLD_FAITHFUL_EFFECT}"	),
	
	("en_US",	'LOC_TM_FEATURE_OLD_FAITHFUL_QUOTE',	
	'"It spouted at regular intervals nine times during our stay, the columns of boiling water being thrown from ninety to one hundred and twenty-five feet at each discharge, which lasted from fifteen to twenty minutes. We gave it the name of Old Faithful."[NEWLINE]- Nathaniel P. Langford'	),
	
	("en_US",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_OLD_FAITHFUL_CHAPTER_HISTORY_PARA_1",	
	"Old Faithful is a geyser found in Yellowstone National Park, in Wyoming, US. First seen by Europeans in 1870 (and by natives some 10,000 years before that), Old Faithful was thus named because of the regularity of its eruption. The geyser shoots a column of boiling water to a height of some 30-50 meters (100-175 feet) every 60-90 minutes (the interval determined by the ferocity of the previous eruption). Geysers occur when subterranean water hits magma (molten rock). The water is instantly turned to steam, which rushes out the nearest available opening at tremendously high pressure. Old Faithful and the other 250 geysers in Yellowstone are enjoyed by some three million visitors each year."	),

-----------------------------------------------
-- OUNIANGA
-----------------------------------------------

	("en_US",	"LOC_FEATURE_OUNIANGA_NAME",					"Lakes of Ounianga"	),
	("en_US",	"LOC_TM_FEATURE_OUNIANGA_DESCRIPTION",			"Two tile natural wonder. Provides fresh water. Yields +2 [ICON_FOOD] Food, +2 [ICON_CULTURE] Culture, and +1 [ICON_GOLD] Gold."	),
	("en_US",	"LOC_TM_FEATURE_OUNIANGA_EFFECT",				"Oases provide major adjacency bonuses to Specialty Districts for any Civilization that owns at least one of these tiles."	),
	("en_US",	"LOC_TM_FEATURE_OUNIANGA_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_OUNIANGA_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_OUNIANGA_EFFECT}"	),

	("en_US",	"LOC_ADJ_OUNIANGA_FAITH_DESCRIPTION",			"+{1_num} [ICON_FAITH] Faith from adjacent {1_Num : plural 1?Oasis; other?Oases;} (Ounianga)."	),
	("en_US",	"LOC_ADJ_OUNIANGA_SCIENCE_DESCRIPTION",			"+{1_num} [ICON_SCIENCE] Science from adjacent {1_Num : plural 1?Oasis; other?Oases;} (Ounianga)."	),
	("en_US",	"LOC_ADJ_OUNIANGA_CULTURE_DESCRIPTION",			"+{1_num} [ICON_CULTURE] Culture from adjacent {1_Num : plural 1?Oasis; other?Oases;} (Ounianga)."	),
	("en_US",	"LOC_ADJ_OUNIANGA_GOLD_DESCRIPTION",			"+{1_num} [ICON_GOLD] Gold from adjacent {1_Num : plural 1?Oasis; other?Oases;} (Ounianga)."	),
	("en_US",	"LOC_ADJ_OUNIANGA_PRODUCTION_DESCRIPTION",		"+{1_num} [ICON_PRODUCTION] Production from adjacent {1_Num : plural 1?Oasis; other?Oases;} (Ounianga)."	),
	
	("en_US",	'LOC_TM_FEATURE_OUNIANGA_QUOTE',	
	'"At the beginning, the language of the desert was grass blooming against the wall of wind, tall palms swaying in the season of seeding and cinders carried by air to the blue welcome of warm sand. She was our first fountain, our mother, who held us, then gave us away to the age of waiting cities."[NEWLINE]- Al-Munsif al-Wahaybi'	),
	
	("en_US",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_OUNIANGA_CHAPTER_HISTORY_PARA_1",	
	"Lakes of Ounianga are a series of eighteen interconnected lakes in the hyper arid Ennedi region of the Sahara desert, occupying a basin in the mountains of West Tibesti and Ennedi East. It constitutes an exceptional natural landscape of great beauty with striking colours and shapes. The saline, hyper saline and freshwater lakes are supplied by groundwater and are found in two groups 40 km apart. Ounianga Kebir comprises four lakes, the largest of which, Yoan, covers an area of 358 ha and is 27 m deep. Its highly saline waters only sustain algae and some microorganisms. The second group, Ounianga Serir, comprises fourteen lakes separated by sand dunes. Floating reeds cover almost half the surface of these lakes reducing evaporation. Lake Teli has the largest surface area but is less than 10 m deep. With their high quality freshwater, some of these lakes are home to aquatic fauna, particularly fish."	),

-----------------------------------------------
-- PAMUKKALE
-----------------------------------------------

	("en_US",	"LOC_TM_FEATURE_PAMUKKALE_DESCRIPTION",				"Two tile impassable natural wonder. Provies Fresh Water. Adjacent plots yield +1 [ICON_CULTURE] Culture and +1 [ICON_GOLD] Gold."	),
	("en_US",	"LOC_TM_FEATURE_PAMUKKALE_EFFECT",					"Regional buildings within Entertainment Complex or Waterpark districts provide +1 [ICON_AMENITIES] Amenity to cities within range for any Civilization that owns at least one of these tiles."	),
	("en_US",	"LOC_TM_FEATURE_PAMUKKALE_EFFECT_DESCRIPTION",		"{LOC_TM_FEATURE_PAMUKKALE_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_PAMUKKALE_EFFECT}"	),

-----------------------------------------------
-- PANTANAL
-----------------------------------------------

	("en_US",	"LOC_TM_FEATURE_PANTANAL_DESCRIPTION",				"Four tile natural wonder. Appears as Marsh. Provides +3 [ICON_Food] Food and +2 [ICON_Culture] Culture."	),
	("en_US",	"LOC_TM_FEATURE_PANTANAL_EFFECT",					"Marsh tiles provide standard adjacency bonuses for Specialty Districts for any Civilization that owns at least one of these tiles."	),
	("en_US",	"LOC_TM_FEATURE_PANTANAL_EFFECT_DESCRIPTION",		"{LOC_TM_FEATURE_PANTANAL_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_PANTANAL_EFFECT}"	),
	
	("en_US",	"LOC_ADJ_PANTANAL_FAITH_DESCRIPTION",				"+{1_num} [ICON_Faith] Faith from adjacent {1_Num : plural 1?Marsh; other?Marsh;} (Pantanal)."	),
	("en_US",	"LOC_ADJ_PANTANAL_SCIENCE_DESCRIPTION",				"+{1_num} [ICON_Science] Science from adjacent {1_Num : plural 1?Marsh; other?Marsh;} (Pantanal)."	),
	("en_US",	"LOC_ADJ_PANTANAL_CULTURE_DESCRIPTION",				"+{1_num} [ICON_Culture] Culture from adjacent {1_Num : plural 1?Marsh; other?Marsh;} (Pantanal)."	),
	("en_US",	"LOC_ADJ_PANTANAL_GOLD_DESCRIPTION",				"+{1_num} [ICON_Gold] Gold from adjacent {1_Num : plural 1?Marsh; other?Marsh;} (Pantanal)."	),
	("en_US",	"LOC_ADJ_PANTANAL_PRODUCTION_DESCRIPTION",			"+{1_num} [ICON_Production] Production from adjacent {1_Num : plural 1?Marsh; other?Marsh;} (Pantanal)."	),

-----------------------------------------------
-- PIOPIOTAHI
-----------------------------------------------

	("en_US",	"LOC_TM_FEATURE_PIOPIOTAHI_DESCRIPTION",		"Three tile impassable natural wonder. Adjacent plots yield +1 [ICON_Culture] Culture and +1 [ICON_Gold] Gold."	),
	("en_US",	"LOC_TM_FEATURE_PIOPIOTAHI_EFFECT",				"[ICON_Amenities] Amenities provided by regional buildings extend 3 tiles further for any Civilization that owns at least one of these tiles."	),
	("en_US",	"LOC_TM_FEATURE_PIOPIOTAHI_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_PIOPIOTAHI_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_PIOPIOTAHI_EFFECT}"	),
	
-----------------------------------------------
-- ROCK OF GIBRALTAR
-----------------------------------------------

	("en_US",	"LOC_FEATURE_GIBRALTAR_NAME",					"Rock of Gibraltar"	),
	("en_US",	"LOC_TM_FEATURE_GIBRALTAR_DESCRIPTION",			"One tile impassable natural wonder. Adjacent plots yield +1 [ICON_Food] Food and +1 [ICON_Gold] Gold."	),
	("en_US",	"LOC_TM_FEATURE_GIBRALTAR_EFFECT",				"Encampments and Harbors receive +2 [ICON_GreatPerson] Great Person Points of their respective type in the City that owns this tile."	),
	("en_US",	"LOC_TM_FEATURE_GIBRALTAR_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_GIBRALTAR_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_GIBRALTAR_EFFECT}"	),

	("en_US",	'LOC_TM_FEATURE_GIBRALTAR_QUOTE',	
	'"Look round, my boys, and view how beautiful the Rock appears by the light of the glorious fire."[NEWLINE]- George Augustus Eliott'	),
	
	("en_US",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_GIBRALTAR_CHAPTER_HISTORY_PARA_1",	
	"Gibraltar is a peninsula containing a remarkable rock formation at the mouth of the Mediterranean Sea. Captured from Spain by the English and Dutch in 1704 and ceded to England in 1713, Gibraltar has been a British possession ever since (much to the annoyance of Spain, which wants it back). Commanding the entrance to the Atlantic from the Mediterranean, Gibraltar has been a major British naval base for three hundred years. Most of Gibraltar is covered by the 'Rock', a huge formation of shale, sandstone and limestone thrust up by the unimaginable power of plate tectonics. The Rock stands some 430 meters (1400 feet) in height. At one time Gibraltar was a massive fortification allowing Britain to dominate the narrow Mediterranean-Atlantic passage, but today the island is more of a nature preserve and tourist destination than it is a military base."	),

-----------------------------------------------
-- RORAIMA
-----------------------------------------------

	("en_US",	"LOC_TM_FEATURE_RORAIMA_DESCRIPTION",			"Four tile impassable natural wonder. Appears as a Mountain. Adjacent plots yield +1 [ICON_FAITH] Faith and +1 [ICON_SCIENCE] Science."	),
	("en_US",	"LOC_TM_FEATURE_RORAIMA_EFFECT",				"Onwed Jungle tiles do not reduce the appeal of adjacent plots for any Civilization that owns at least one of these tiles."	),
	("en_US",	"LOC_TM_FEATURE_RORAIMA_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_RORAIMA_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_RORAIMA_EFFECT}"	),

-----------------------------------------------
-- SAHARA EL BEYDA
-----------------------------------------------

	("en_US",	"LOC_TM_FEATURE_SAHARA_EL_BEYDA_DESCRIPTION",			"Four tile natural wonder. Yields +3 [ICON_GOLD] Gold, +1 [ICON_SCIENCE] Science, and +1 [ICON_CULTURE] Culture."	),
	("en_US",	"LOC_TM_FEATURE_SAHARA_EL_BEYDA_EFFECT",				"Cities are immune to damage from Dust Storms for any Civilization that owns at least one of these tiles."	),
	("en_US",	"LOC_TM_FEATURE_SAHARA_EL_BEYDA_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_SAHARA_EL_BEYDA_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_SAHARA_EL_BEYDA_EFFECT}"	),

-----------------------------------------------
-- SALAR DE UYUNI
-----------------------------------------------

	("en_US",	"LOC_FEATURE_SALAR_DE_UYUNI_NAME",					"Salar de Uyuni"	),
	("en_US",	"LOC_TM_FEATURE_SALAR_DE_UYUNI_DESCRIPTION",		"Four tile natural wonder. Yields +2 [ICON_Science] Science, +1 [ICON_Production] Production, and +2 [ICON_Gold] Gold."	),
	("en_US",	"LOC_TM_FEATURE_SALAR_DE_UYUNI_EFFECT",				"Grants a free copy of the [ICON_RESOURCE_TM_LITHIUM] Lithium luxury resource (not tradeable), which provides +6 [ICON_Amenities] Amenities, to any player that owns at least one of these tiles."	),
	("en_US",	"LOC_TM_FEATURE_SALAR_DE_UYUNI_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_SALAR_DE_UYUNI_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_SALAR_DE_UYUNI_EFFECT}"	),

	("en_US",	'LOC_TM_FEATURE_SALAR_DE_UYUNI_QUOTE',	
	'"I shivered in those solitudes when I heard the voice of the salt in the desert."[NEWLINE]- Pablo Neruda'	),
	
	("en_US",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_SALAR_DE_UYUNI_CHAPTER_HISTORY_PARA_1",	
	"Situated in southwest Bolivia, near the Chilean border and the Atacama Desert, lies Salar de Uyuni; the largest salt flat on Earth at 10,582 square kilometers, roughly 100 times the size of the Bonneville Salt Flats in the United States. The Salar was formed a result of transformations between several prehistoric lakes. Covered by a few meters of salt crust, it has an extraordinary flatness with the average elevation variations within one meter over the entire area of the Salar. The large area, clear skies, and exceptional flatness of the surface make it an ideal object for calibrating the altimeters of Earth observation satellites."	),

	("en_US",	"LOC_RESOURCE_TM_LITHIUM_NAME",	"Lithium"	),
	("en_US",	"LOC_PEDIA_RESOURCES_PAGE_RESOURCE_TM_LITHIUM_CHAPTER_HISTORY_PARA_1",
	"Lithium, from Greek lithos stone, is a soft, silver-white metal that has highly reactive properties. Lithium and its compounds have several industrial applications, including heat-resistant glass and ceramics, lithium grease lubricants, flux additives for iron, steel and aluminium production, lithium batteries, and lithium-ion batteries. Salar de Uyuni, in southwest Bolivia, contains 50% to 70% of the world's known lithium reserves, which is in the process of being extracted."	),

-----------------------------------------------
-- SINAI
-----------------------------------------------

	("en_US",	"LOC_FEATURE_SINAI_NAME",					"Mount Sinai"	),
	("en_US",	"LOC_TM_FEATURE_SINAI_DESCRIPTION",			"One tile impassable natural wonder. Appears as a Mountain. Adjacent plots yield +2 [ICON_Faith] Faith."	),
	("en_US",	"LOC_TM_FEATURE_SINAI_EFFECT",				"Holy Sites provide +1 [ICON_GreatPerson] Great Person Points toward [ICON_GreatProphet] Great Prophets for the player that owns this tile. Religious receive +10 Theological [ICON_Strength] Combat Strength."	),
	("en_US",	"LOC_TM_FEATURE_SINAI_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_SINAI_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_SINAI_EFFECT}"	),
	
	("en_US",	'LOC_TM_FEATURE_SINAI_QUOTE',	
	'"When the Lord finished speaking to Moses on Mount Sinai, he gave him the two tablets of the covenant law, the tablets of stone inscribed by the finger of God."[NEWLINE]- Exodus 31:18'	),
	
	("en_US",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_SINAI_CHAPTER_HISTORY_PARA_1",	
	"Found on the Sinai Peninsula of Egypt, Mount Sinai is among the most revered holy sites recognized by the followers of Judaism, Christianity, and Islam. Mount Sinai is believed to be the location where Moses first received the Ten Commandments from God during the Israelites' exodus from Egypt, making the peak an important site for religious pilgrims from around the world."	),

-----------------------------------------------
-- SRI PADA
-----------------------------------------------

	("en_US",	"LOC_FEATURE_SRI_PADA_NAME",					"Sri Pada"	),
	("en_US",	"LOC_TM_FEATURE_SRI_PADA_DESCRIPTION",			"One tile impassable natural wonder. Appears as a Mountain. Adjacent plots yield +1 [ICON_Food] Food and +1 [ICON_Faith] Faith."	),
	("en_US",	"LOC_TM_FEATURE_SRI_PADA_EFFECT",				"Religious units from any Civilization that owns this tile receive [ICON_Culture] Culture upon converting a City to their [ICON_Religion] Religion for the first time."	),
	("en_US",	"LOC_TM_FEATURE_SRI_PADA_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_SRI_PADA_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_SRI_PADA_EFFECT}"	),
	
	("en_US",	'LOC_TM_FEATURE_SRI_PADA_QUOTE',	
	'"An exceedingly wondrous sight, which is endowed with supreme splendour."[NEWLINE]- The Mahabharata'	),
	
	("en_US",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_SRI_PADA_CHAPTER_HISTORY_PARA_1",	
	"Towering above Sri Lanka, Sri Pada is a large mountain peak with an unusually conical shape that is held sacred by a number of religions for the footprint found at its peak. The footprint, a large depression found in a rock formation on the summit, has been attributed to Buddha, Shiva, and the biblical figure Adam, leading to a reverence among followers of Buddhism, Hinduism, and Islam. Each year, thousands of pilgrims trek for hours up the mountain to pay their respects at the holy site."	),

-----------------------------------------------
-- TORRES DEL PAINE
-----------------------------------------------

	("en_US",	"LOC_TM_FEATURE_TORRES_DEL_PAINE_DESCRIPTION",			"Two tile impassable natural wonder. Doubles the terrain yields of adjacent tiles."	),
	("en_US",	"LOC_TM_FEATURE_TORRES_DEL_PAINE_EFFECT",				"Any City that owns at least one of these tiles may build one extra District than the [ICON_Citizen] Population would normally allow."	),
	("en_US",	"LOC_TM_FEATURE_TORRES_DEL_PAINE_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_TORRES_DEL_PAINE_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_TORRES_DEL_PAINE_EFFECT}"	),

-----------------------------------------------
-- TSINGY
-----------------------------------------------

	("en_US",	"LOC_TM_FEATURE_TSINGY_DESCRIPTION",			"One tile impassable natural wonder. Adjacent plots yield +1 [ICON_Culture] Culture and +1 [ICON_Science] Science."	),
	("en_US",	"LOC_TM_FEATURE_TSINGY_EFFECT",					"Theater districts trigger a culture bomb in any City. Double adjacency bonuses for Theater districts if their City has a National Park."	),
	("en_US",	"LOC_TM_FEATURE_TSINGY_EFFECT_DESCRIPTION",		"{LOC_TM_FEATURE_TSINGY_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_TSINGY_EFFECT}"	),

-----------------------------------------------
-- UBSUNUR HOLLOW
-----------------------------------------------

	("en_US",	"LOC_TM_FEATURE_UBSUNUR_HOLLOW_DESCRIPTION",		"Four tile natural wonder. Appears as Marsh. Yields +2 [ICON_FAITH] Faith, +1 [ICON_FOOD] Food, and +2 [ICON_PRODUCTION] Production."	),
	("en_US",	"LOC_TM_FEATURE_UBSUNUR_HOLLOW_EFFECT",				"Any Civilization that owns at least one of these tiles receives a free [ICON_CivicBoosted] Inspiration upon earning a [ICON_GreatGeneral] Great General."	),
	("en_US",	"LOC_TM_FEATURE_UBSUNUR_HOLLOW_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_UBSUNUR_HOLLOW_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_UBSUNUR_HOLLOW_EFFECT}"	),

-----------------------------------------------
-- ULURU
-----------------------------------------------

	("en_US",	"LOC_TM_FEATURE_ULURU_DESCRIPTION",			"One tile impassable natural wonder. Adjacent plots yield +1 [ICON_CULTURE] Culture and +1 [ICON_FAITH] Faith."	),
	("en_US",	"LOC_TM_FEATURE_ULURU_EFFECT",				"Specialty Districts constructed on desert terrain yield +1 [ICON_Food] Food for any Civilization that owns this tile."	),
	("en_US",	"LOC_TM_FEATURE_ULURU_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_ULURU_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_ULURU_EFFECT}"	),

-----------------------------------------------
-- VESUVIUS
-----------------------------------------------

	("en_US",	"LOC_TM_FEATURE_VESUVIUS_DESCRIPTION",				"One tile impassable natural wonder. Appears as a Volcano. Adjacent plots yield +1 [ICON_PRODUCTION] Production. Provides additional yields on eruption at the cost of [ICON_Citizen] Population and damage to infrastructure. Always active."	),
	("en_US",	"LOC_TM_FEATURE_VESUVIUS_EFFECT",					"Antiquity Sites yield +4 [ICON_CULTURE] Culture, and [ICON_GREATWORK_ARTIFACT] Artifacts yield +2 [ICON_CULTURE] Culture and +2 [ICON_TOURISM] Tourism for any Civilization that owns this tile."	),
	("en_US",	"LOC_TM_FEATURE_VESUVIUS_EFFECT_DESCRIPTION",		"{LOC_TM_FEATURE_VESUVIUS_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_VESUVIUS_EFFECT}"	),

-----------------------------------------------
-- VREDEFORT DOME
-----------------------------------------------

	("en_US",	"LOC_FEATURE_VREDEFORT_DOME_NAME",					"Vredefort Dome"	),
	("en_US",	"LOC_TM_FEATURE_VREDEFORT_DOME_DESCRIPTION",		"Two tile natural wonder. Yields +2 [ICON_FOOD] Food, +2 [ICON_SCIENCE] Science, and +1 [ICON_CULTURE] Culture."	),
	("en_US",	"LOC_TM_FEATURE_VREDEFORT_DOME_EFFECT",				"Farms provide +1 [ICON_FOOD] Food when adjacent to another Farm for any Civilization that owns at least one of these tiles."	),
	("en_US",	"LOC_TM_FEATURE_VREDEFORT_DOME_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_VREDEFORT_DOME_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_VREDEFORT_DOME_EFFECT}"	),
	
	("en_US",	'LOC_TM_FEATURE_VREDEFORT_DOME_QUOTE',	
	'"When geologists first wandered the spectacular ring of hills straddling the Vaal River north of Vredefort nearly 150 years ago, they immediately recognised that the unusually shattered and uptilted rocks bore witness to an exceptionally violent event in the distant past."[NEWLINE]- Wolf Uwe Reimold'	),
	
	("en_US",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_VREDEFORT_DOME_CHAPTER_HISTORY_PARA_1",	
	"The Vredefort Dome is the largest verified impact crater on Earth, more than 300km across when it was formed. What remains of it is located in the present-day Free State province of South Africa where cultivated agriculture dominates the landscape. The crater is estimated to be over 2 billion years old, with impact taking place in the Paleoproterozoic Era, making it the second-oldest known crater on Earth."	),

-----------------------------------------------
-- WULINGYUAN
-----------------------------------------------
	
	("en_US",	"LOC_FEATURE_WULINGYUAN_NAME",					"Wulingyuan"	),
	("en_US",	"LOC_TM_FEATURE_WULINGYUAN_DESCRIPTION",		"Two tile impassable natural wonder. Adjacent plots yield +2 [ICON_Culture] Culture"	),
	("en_US",	"LOC_TM_FEATURE_WULINGYUAN_EFFECT",				"Great Works of [ICON_GreatWork_Writing] Writing yield +2 [ICON_Culture] Culture and +2 [ICON_Tourism] Tourism for any Civilization that owns at least one of these tiles."	),
	("en_US",	"LOC_TM_FEATURE_WULINGYUAN_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_WULINGYUAN_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_WULINGYUAN_EFFECT}"	),
	
	("en_US",	'LOC_TM_FEATURE_WULINGYUAN_QUOTE',	
	'"From ten thousand valleys the trees touch heaven, on a thousand peaks cuckoos are calling, and, after a night of mountain rain, from each summit come hundreds of silken cascades."[NEWLINE]- Wang Wei'	),
	
	("en_US",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_WULINGYUAN_CHAPTER_HISTORY_PARA_1",	
	"Wulingyuan is a scenic and historical site in south-central China. It is noted for more than 3,000 quartzite sandstone pillars and peaks, many over 200 meters in height, along with ravines, gorges, pools, lakes, rivers and waterfalls. It features 40 caves and two natural bridges, Xianrenqiao (Bridge of the Immortals) and Tianqiashengkong (Bridge Across the Sky)."	),

-----------------------------------------------
-- YOSEMITE
-----------------------------------------------

	("en_US",	"LOC_TM_FEATURE_YOSEMITE_DESCRIPTION",			"Two tile impassable natural wonder. Adjacent plots yield +1 [ICON_Gold] Gold and +1 [ICON_Science] Science."	),
	("en_US",	"LOC_TM_FEATURE_YOSEMITE_EFFECT",				"Owned Forest tiles provide an additional +1 Appeal to adjacent plots for any Civilization that owns at least one of these tiles."	),
	("en_US",	"LOC_TM_FEATURE_YOSEMITE_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_YOSEMITE_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_YOSEMITE_EFFECT}"	),

-----------------------------------------------
-- ZHANGYE DANXIA
-----------------------------------------------

	("en_US",	"LOC_TM_FEATURE_ZHANGYE_DANXIA_DESCRIPTION",		"Three tile impassable natural wonder. Appears as a Mountain. Adjacent plots yield +2 [ICON_Science] Science."	),
	("en_US",	"LOC_TM_FEATURE_ZHANGYE_DANXIA_EFFECT",				"Commercial Hubs and Campus districts in a City that owns at least one of these tiles receive +2 [ICON_GreatPerson] Great Person Points of their respective type."	),
	("en_US",	"LOC_TM_FEATURE_ZHANGYE_DANXIA_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_ZHANGYE_DANXIA_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_ZHANGYE_DANXIA_EFFECT}"	),

-----------------------------------------------
-- MISC - District Adjacency
-----------------------------------------------

	("en_US",	"LOC_TM_ADJ_NW_FAITH_DESCRIPTION",			"+{1_num} [ICON_Faith] Faith from the adjacent {1_Num : plural 1?Natural Wonder; other?Natural Wonder plots;}."	),
	("en_US",	"LOC_TM_ADJ_NW_SCIENCE_DESCRIPTION",		"+{1_num} [ICON_Science] Science from the adjacent {1_Num : plural 1?Natural Wonder; other?Natural Wonder plots;}."	),
	("en_US",	"LOC_TM_ADJ_NW_CULTURE_DESCRIPTION",		"+{1_num} [ICON_Culture] Culture from the adjacent {1_Num : plural 1?Natural Wonder; other?Natural Wonder plots;}."	),
	("en_US",	"LOC_TM_ADJ_NW_PRODUCTION_DESCRIPTION",		"+{1_num} [ICON_Production] Production from the adjacent {1_Num : plural 1?Natural Wonder; other?Natural Wonder plots;}."	),
	("en_US",	"LOC_TM_ADJ_NW_GOLD_DESCRIPTION",			"+{1_num} [ICON_Gold] Gold from the adjacent {1_Num : plural 1?Natural Wonder; other?Natural Wonder plots;}."	),

-----------------------------------------------
-- MISC - Naturlist
-----------------------------------------------

	("en_US",	"LOC_TM_UNIT_NATURALIST_DESCRIPTION",			"A late-game civilian who can create a single National Park to attract [ICON_Tourism] Tourists. Must be purchased with [ICON_GOLD] Gold or [ICON_FAITH] Faith."	),

-----------------------------------------------
-- MOD SUPPORT
-----------------------------------------------

	("en_US",	"LOC_TM_FEATURE_FUJI_DESCRIPTION",		"One tile impassable natural wonder. Appears as a Mountain. Adjacent plots yield +1 [ICON_Culture] Culture and +1 [ICON_Faith] Faith. Districts built in adjacent tiles provide an additional +2 [ICON_GreatPerson] Great Person points of their type."	);
