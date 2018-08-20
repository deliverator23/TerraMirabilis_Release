/*
	Localisation
	Language: Portuguese ("pt_BR")
	Credits: Your Name Here
	
	Guide:
	~ Do not change anything in UPPERCASE text, including [ICONS]. These are important references.
	~ Keep your changes inside the "quotation marks"
		
	Thank you for your help :) just ask us if you have any questions.
*/

INSERT OR REPLACE INTO LocalizedText (Language, Tag, Text)
VALUES

-----------------------------------------------
-- BARRIER REEF
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_BARRIER_REEF_DESCRIPTION",		"Two tile natural wonder. Yields +2 [ICON_FOOD] Food, +1 [ICON_GOLD] Gold, and +2 [ICON_SCIENCE] Science."	),
	("pt_BR",	"LOC_TM_FEATURE_BARRIER_REEF_EFFECT",			"Improved sea resources yield +1 [ICON_GOLD] Gold for any Civilization that owns at least one of these tiles."	),
	
-----------------------------------------------
-- BARRINGER CRATER
-----------------------------------------------

	("pt_BR",	"LOC_FEATURE_BARRINGER_CRATER_NAME",				"Barringer Crater"	),
	("pt_BR",	"LOC_TM_FEATURE_BARRINGER_CRATER_DESCRIPTION",		"One tile natural wonder. Yields +3 [ICON_SCIENCE] Science and +2 [ICON_GOLD] Gold."	),
	("pt_BR",	"LOC_TM_FEATURE_BARRINGER_CRATER_EFFECT",			"Receive +20% [ICON_PRODUCTION] Production toward Space Race projects in the City that owns this tile."	),
	
	("pt_BR",	'LOC_TM_FEATURE_BARRINGER_CRATER_QUOTE',
	'"In fact we can now prove that this crater is due to the collision with the earth of an extra-terrestrial body, possibly a small asteroid, which was presumably metallic in nature."[NEWLINE]- Daniel Barringer'	),
	
	("pt_BR",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_BARRINGER_CRATER_CHAPTER_HISTORY_PARA_1",	
	"The Barringer Crater is a huge meteorite crater located in Arizona, in the United States of America. The crater is 1,200 meters (4,000 feet) in diameter, and scientists believe that it was created some 50,000 years ago when the site was hit by a large nickel-iron meteorite weighing, at time of impact, 160,000 tons and moving at perhaps 44,000 kilometers per hour (27,000 mph)."	),

-----------------------------------------------
-- CERRO DE POTOSI
-----------------------------------------------

	("pt_BR",	"LOC_FEATURE_CERRO_DE_POTOSI_NAME",				"Cerro de Potosi"	),
	("pt_BR",	"LOC_TM_FEATURE_CERRO_DE_POTOSI_DESCRIPTION",	"One tile impassable natural wonder. Appears as a Mountain. Adjacent plots yield +1 [ICON_PRODUCTION] Production and +1 [ICON_GOLD] Gold."	),
	("pt_BR",	"LOC_TM_FEATURE_CERRO_DE_POTOSI_EFFECT",		"International [ICON_TRADEROUTE] Trade Routes from the City that owns this tile yield +4 [ICON_GOLD] Gold."	),
	
	("pt_BR",	'LOC_TM_FEATURE_CERRO_DE_POTOSI_QUOTE',	
	'"I am rich Potosi, treasure of the world, king of all mountains and envy of kings."[NEWLINE]- First Coat of Arms of Potosi'	),
	
	("pt_BR",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_CERRO_DE_POTOSI_CHAPTER_HISTORY_PARA_1",	
	"Located in southern Bolivia, the mountain of Potosi produced nearly all of the silver mined by the Spanish during their imperial days. Once removed from the mountain, it was taken by llama and mule to the coast where it was then loaded onto treasure ships sailing back to Europe. Nearly 41,000 tons of pure silver were mined over the course of 200 years, 8,200 of which went directly to the Spanish crown. After 1800, the main silver mines were depleted, but the mining of Potosi still continues today - some for silver but now mostly for tin."	),

-----------------------------------------------
-- CLIFFS OF DOVER
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_CLIFFS_DOVER_DESCRIPTION",		"Two tile natural wonder. Appears as Cliffs. Yields +3 [ICON_CULTURE] Culture, +1 [ICON_FOOD] Food, and +1 [ICON_GOLD] Gold."	),
	("pt_BR",	"LOC_TM_FEATURE_CLIFFS_DOVER_EFFECT",			"Harbors receive minor adjacency bonuses from Cliffs for any Civilization that owns at least one of these tiles."	),

	("pt_BR",	"LOC_MODIFIER_TM_FEATURE_CLIFFS_DOVER_ADJACENCY_DESCRIPTION",	"+{1_num} [ICON_GOLD] Gold from adjacent {1_Num : plural 1?cliff; other?cliffs;}."	),

-----------------------------------------------
-- CRATER LAKE
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_CRATER_LAKE_DESCRIPTION",	"One tile natural wonder. Appears as a Lake and provides fresh water. Yields +4 [ICON_FAITH] Faith and +1 [ICON_SCIENCE] Science."	),
	("pt_BR",	"LOC_TM_FEATURE_CRATER_LAKE_EFFECT",		"May purchase any Building with [ICON_FAITH] Faith in the City that owns this tile."	),

-----------------------------------------------
-- DEAD SEA
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_DEAD_SEA_DESCRIPTION",		"Two tile natural wonder. Appears as a Lake. Yields +2 [ICON_FAITH] Faith, +2 [ICON_CULTURE] Culture, and +1 [ICON_GOLD] Gold."	),
	("pt_BR",	"LOC_TM_FEATURE_DEAD_SEA_EFFECT",			"Units trained in a City that owns at least one of these tiles may heal an additional 10 HP when [ICON_Fortified] Fortified."	),

-----------------------------------------------
-- DELICATE ARCH
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_DELICATE_ARCH_DESCRIPTION",		"One tile impassable natural wonder. Adjacent plots yield +1 [ICON_CULTURE] Culture and +1 [ICON_GOLD] Gold."	),
	("pt_BR",	"LOC_TM_FEATURE_DELICATE_ARCH_EFFECT",			"Plots are 20% cheaper to purchase for any Civilization that owns this tile."	),

-----------------------------------------------
-- EVEREST
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_EVEREST_DESCRIPTION",		"Three tile impassable natural wonder. Appears as a Mountain. Adjacent plots yield +2 [ICON_FAITH] Faith."	),
	("pt_BR",	"LOC_TM_FEATURE_EVEREST_EFFECT",			"Religious units trained in any City that owns at least one of these tiles ignore [ICON_MOVEMENT] Movement penalties on Hills and receive +1 additional spread charge."	),

-----------------------------------------------
-- EYE OF THE SAHARA
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_EYE_OF_THE_SAHARA_DESCRIPTION",		"Three tile natural wonder. Yields +2 [ICON_PRODUCTION] Production, +2 [ICON_SCIENCE] Science, and +1 [ICON_GOLD] Gold."	),
	("pt_BR",	"LOC_TM_FEATURE_EYE_OF_THE_SAHARA_EFFECT",			"Any Civilization that owns at least one of these tiles receives +2 Era Score from Historic Moments if that Moment is usually worth at least +4 Era Score."	),

-----------------------------------------------
-- EYJAFJALLAJOKULL
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_EYJAFJALLAJOKULL_DESCRIPTION",		"Two tile impassable natural wonder. Appears as a Mountain. Adjacent plots yield +1 [ICON_CULTURE] Culture and +1 [ICON_FOOD] Food."	),
	("pt_BR",	"LOC_TM_FEATURE_EYJAFJALLAJOKULL_EFFECT",			"Specialty Districts constructed on Tundra or Snow terrain yield +1 [ICON_FOOD] Food for any Civilization that owns this tile."	),

-----------------------------------------------
-- GALAPAGOS
-----------------------------------------------
	
	("pt_BR",	"LOC_TM_FEATURE_GALAPAGOS_DESCRIPTION",		"Two tile impassable natural wonder. Adjacent plots yield +2 [ICON_SCIENCE] Science."	),
	("pt_BR",	"LOC_TM_FEATURE_GALAPAGOS_EFFECT",			"Grants a free copy of the [ICON_RESOURCE_TM_TORTOISE] Tortoise luxury resource (not tradeable), which provides +6 [ICON_AMENITIES] Amenities, to any Civilization that owns at least one of these tiles."	),

	("pt_BR",	"LOC_RESOURCE_TM_TORTOISE_NAME",	"Tortoise"	),
	("pt_BR",	"LOC_PEDIA_RESOURCES_PAGE_RESOURCE_TM_TORTOISE_CHAPTER_HISTORY_PARA_1",
	"The Galapagos giant tortoise is the largest living species of tortoise, weighing up to 417kg. Today, giant tortoises exist on only two remote archipelagos, the Galapagos Islands, and Aldabra. Their numbers declined from over 250,000 in the 16th century to around 3,000 in 1970 due to overexploitation of the species for meat and oil. The extinction of most giant tortoise lineages is thought to have been caused by predation by humans as the tortoises themselves have no natural predators on the remote Galapagos archipelago that they are native to."	),

-----------------------------------------------
-- GIANTS CAUSEWAY
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_GIANTS_CAUSEWAY_DESCRIPTION",	"Two tile impassable natural wonder. Adjacent plots yield +2 [ICON_CULTURE] Culture."	),
	("pt_BR",	"LOC_TM_FEATURE_GIANTS_CAUSEWAY_EFFECT",		"Land units trained in a City that owns at least one of these tiles start with a free [ICON_PROMOTION] Promotion."	),

-----------------------------------------------
-- GRAND MESA
-----------------------------------------------

	("pt_BR",	"LOC_FEATURE_GRAND_MESA_NAME",				"Grand Mesa"	),
	("pt_BR",	"LOC_TM_FEATURE_GRAND_MESA_DESCRIPTION",	"One tile impassable natural wonder. Adjacent plots yield +1 [ICON_FOOD] Food and +1 [ICON_CULTURE] Culture."	),
	("pt_BR",	"LOC_TM_FEATURE_GRAND_MESA_EFFECT",			"Units trained in the City that owns this tile ignore [ICON_MOVEMENT] Movement penalties in Forest or Jungle."	),
	
	("pt_BR",	'LOC_TM_FEATURE_GRAND_MESA_QUOTE',	
	'"Conservation means the wise use of the earth and its resources for the lasting good of men."[NEWLINE]- Gifford Pinchot'	),
	
	("pt_BR",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_GRAND_MESA_CHAPTER_HISTORY_PARA_1",	
	"The Grand Mesa is a large geologic formation in Colorado, the United States of America. Rising some 1,500 meters (5,000 feet) above the surrounding territory and with an area of 1300 square kilometers (500 square miles), it is the largest mesa in the world. The Grand Mesa has a layer of volcanic basalt on top, which resists erosion. It did not so much rise into the air, as it remained at its original height, as the surrounding terrain was eroded by the action of the Colorado and Gunnison rivers.  The Grand Mesa National Forest (originally called Battlement Mesa Forest Reserve) was created by Benjamin Harrison on December 24, 1892. It was the third forest reserve created in United States."	),

-----------------------------------------------
-- HA LONG BAY
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_HA_LONG_BAY_DESCRIPTION",	"Two tile natural wonder. Yields +2 [ICON_CULTURE] Culture, +2 [ICON_FOOD] Food and +1 [ICON_PRODUCTION] Production."	),
	("pt_BR",	"LOC_TM_FEATURE_HA_LONG_BAY_EFFECT",		"Harbors provide +2 [ICON_HOUSING] Housing for any Civilization that owns at least one of these tiles."	),

-----------------------------------------------
-- KAILASH
-----------------------------------------------

	("pt_BR",	"LOC_FEATURE_KAILASH_NAME",				"Mount Kailash"	),
	("pt_BR",	"LOC_TM_FEATURE_KAILASH_DESCRIPTION",	"One tile impassable natural wonder. Appears as a Mountain. Adjacent plots yield +1 [ICON_FAITH] Faith and +1 [ICON_CULTURE] Culture."	),
	("pt_BR",	"LOC_TM_FEATURE_KAILASH_EFFECT",		"Receive +1 [ICON_CULTURE] Culture for every foreign City that follows the [ICON_RELIGION] Religion of the Civilization that owns this tile."	),
		
	("pt_BR",	'LOC_TM_FEATURE_KAILASH_QUOTE',	
	'"After thus having instructed the godly ones Lord Brahma went away with in his wake the forefathers and the leaders of the people whom he took from his own place to the abode of Lord Shiva, Kailash, the best of all mountains that is so dear to the master."[NEWLINE]- The Bhagavata Purana'	),
	
	("pt_BR",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_KAILASH_CHAPTER_HISTORY_PARA_1",	
	"The sacred peak of Mount Kailash, found in the Himalayas of Tibet, is cherished by a number of religions, particularly the followers of Hinduism. It is believed to be the home of Lord Shiva, who dwells on the mountain in a state of eternal bliss. Mount Kailash is said to be among the most difficult of all religious pilgrimages, as the harsh conditions dissuade many would-be pilgrims, and the mountain is not accessible by any forms of modern transportation."	),

-----------------------------------------------
-- KILIMANJARO
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_KILIMANJARO_DESCRIPTION",	"One tile impassable natural wonder. Appears as a Mountain. Adjacent plots yield +2 [ICON_FOOD] Food."	),
	("pt_BR",	"LOC_TM_FEATURE_KILIMANJARO_EFFECT",		"Receive +1 [ICON_Citizen] Population in the City that owns this tile when a Specialty District is constructed."	),

-----------------------------------------------
-- KRAKATOA
-----------------------------------------------

	("pt_BR",	"LOC_FEATURE_KRAKATOA_NAME",				"Krakatoa"	),
	("pt_BR",	"LOC_TM_FEATURE_KRAKATOA_DESCRIPTION",		"One tile impassable natural wonder. Appears as a Mountain. Adjacent plots yield +1 [ICON_SCIENCE] Science and +1 [ICON_CULTURE] Culture."	),
	("pt_BR",	"LOC_TM_FEATURE_KRAKATOA_EFFECT",			"Receive +2 [ICON_SCIENCE] Science for each Specialty District in a City that owns this tile, increasing to +3 if the City has a National Park."	),
	("pt_BR",	"LOC_TM_FEATURE_KRAKATOA_EFFECT_XP1",		"Any Civilization that owns this tile receives a free [ICON_TechBoosted] Eureka upon earning a [ICON_GREATADMIRAL] Great Admiral."	),
	
	("pt_BR",	'LOC_TM_FEATURE_KRAKATOA_QUOTE',	
	'"I saw with amazement that the island of Krakatoa lay completely burnt and barren in front of our eyes and that at four locations was throwing up large chunks of fire."[NEWLINE]- Johann Wilhelm Vogel'	),
	
	("pt_BR",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_KRAKATOA_CHAPTER_HISTORY_PARA_1",	
	"Krakatoa is a volcanic island located in Indonesia, between the islands of Java and Sumatra. The volcano exploded violently in August, 1883 with a force equivalent to 13,000 times the power of the Hiroshima nuclear bomb. The blast is widely regarded as the loudest sound ever recorded. The eruption destroyed over half of the island, and was heard in parts of Australia, some 3,200 kilometers (2,000 miles) away. Some 37,000 people were killed by the eruption and subsequent tsunamis. The volcano has been emitting lava steadily for the past eighty years, rebuilding the cone at a rate of about 5 meters per year (15 feet per year)."	),

-----------------------------------------------
-- LAKE RETBA
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_LAKE_RETBA_DESCRIPTION",	"Two tile natural wonder. Appears as a Lake. Yields +2 [ICON_CULTURE] Culture, +2 [ICON_GOLD] Gold, +1 [ICON_PRODUCTION] Production."	),
	("pt_BR",	"LOC_TM_FEATURE_LAKE_RETBA_EFFECT",			"Any Civilization that owns at least one of these tiles receives +2 [ICON_GOLD] Gold for each unique copy of a Luxury resource that they own."	),

-----------------------------------------------
-- LAKE VICTORIA
-----------------------------------------------

	("pt_BR",	"LOC_FEATURE_LAKE_VICTORIA_NAME",				"Lake Victoria"	),
	("pt_BR",	"LOC_TM_FEATURE_LAKE_VICTORIA_DESCRIPTION",		"Four tile natural wonder. Appears as a Lake and provides Fresh Water. Yields +3 [ICON_FOOD] Food, +1 [ICON_CULTURE] Culture, and +1 [ICON_GOLD] Gold."	),
	("pt_BR",	"LOC_TM_FEATURE_LAKE_VICTORIA_EFFECT",			"Any Civilization that owns at least one of these tiles receives +15% [ICON_FOODSURPLUS] Growth in Cities not on their original [ICON_CAPITAL] Capital's continent."	),
	
	("pt_BR",	'LOC_TM_FEATURE_LAKE_VICTORIA_QUOTE',	
	'"I saw that old father Nile without any doubt rises in the Victoria Nyanza, and as I had foretold, that lake is the great source of the holy river which cradled the first expounder of our religious belief."[NEWLINE]- John Hanning Speke'	),
	
	("pt_BR",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_LAKE_VICTORIA_CHAPTER_HISTORY_PARA_1",	
	"With a surface area over 26,000 square miles (68,800 km²), Lake Victoria is the largest lake in Africa, the second largest freshwater lake on Earth, and the largest tropical lake in the world. Two large rivers leave the lake, the White Nile and the Katonga. The first historical records of the lake come from Arab traders seeking gold, ivory and other commodities from the natives as they pushed inland from the coast. The search by European explorers for the source of the Nile led to the discovery of the lake by the Englishman John Speke in 1858 AD, who named it after the then British monarch."	),

-----------------------------------------------
-- LYSEFJORDEN
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_LYSEFJORDEN_DESCRIPTION",	"Two tile natural wonder. Adjacent plots yield +1 [ICON_CULTURE] Culture and +1 [ICON_SCIENCE] Science"	),
	("pt_BR",	"LOC_TM_FEATURE_LYSEFJORDEN_EFFECT",		"Naval units trained in a City that owns at least one of these tiles start with a free [ICON_PROMOTION] Promotion."	),

-----------------------------------------------
-- MATTERHORN
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_MATTERHORN_DESCRIPTION",	"One tile impassable natural wonder. Appears as a Mountain. Adjacent plots yield +2 [ICON_CULTURE] Culture to adjacent tiles."	),
	("pt_BR",	"LOC_TM_FEATURE_MATTERHORN_EFFECT",			"Land Units trained in a City that owns this tile ignore [ICON_MOVEMENT] Movement penalties on Hills, and receive +3 [ICON_STRENGTH] Combat Strength when fighting on them."	),

	("pt_BR",	"LOC_MODIFIER_TM_FEATURE_MATTERHORN_COMBAT_DESCRIPTION",	"+{1_Amount} Combat Bonus on Hills (Matterhorn)"	),

-----------------------------------------------
-- MOTLATSE CANYON
-----------------------------------------------

	("pt_BR",	"LOC_FEATURE_MOTLATSE_CANYON_NAME",				"Motlatse Canyon"	),
	("pt_BR",	"LOC_TM_FEATURE_MOTLATSE_CANYON_DESCRIPTION",	"Four tile impassable natural wonder. Adjacent plots yield +1 [ICON_CULTURE] Culture and +1 [ICON_SCIENCE] Science."	),
	("pt_BR",	"LOC_TM_FEATURE_MOTLATSE_CANYON_EFFECT",		"Specialty Districts receive +1 of their respective yield on Breathtaking plots for any Civilization that owns at least one of these tiles."	),
	
	("pt_BR",	"LOC_ADJ_MOTLATSE_FAITH_DESCRIPTION",			"+{1_num} [ICON_FAITH] Faith from the tile's Appeal. (Motlatse Canyon)"	),
	("pt_BR",	"LOC_ADJ_MOTLATSE_SCIENCE_DESCRIPTION",			"+{1_num} [ICON_SCIENCE] Science from the tile's Appeal. (Motlatse Canyon)"	),
	("pt_BR",	"LOC_ADJ_MOTLATSE_CULTURE_DESCRIPTION",			"+{1_num} [ICON_CULTURE] Culture from the tile's Appeal. (Motlatse Canyon)"	),
	("pt_BR",	"LOC_ADJ_MOTLATSE_PRODUCTION_DESCRIPTION",		"+{1_num} [ICON_PRODUCTION] Production from the tile's Appeal. (Motlatse Canyon)"	),
	("pt_BR",	"LOC_ADJ_MOTLATSE_GOLD_DESCRIPTION",			"+{1_num} [ICON_GOLD] Gold from the tile's Appeal. (Motlatse Canyon)"	),

	("pt_BR",	'LOC_TM_FEATURE_MOTLATSE_CANYON_QUOTE',	
	'"I believe that South Africa is the most beautiful place on earth. Admittedly, I am biased, but I think even the most scrupulous critic would agree that we have been blessed with a truly wonderful land."[NEWLINE]- Nelson Mandela'	),
	
	("pt_BR",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_MOTLATSE_CANYON_CHAPTER_HISTORY_PARA_1",	
	"The Motlatse Canyon is a significant natural feature of South Africa, located in Mpumalanga, and forming the northern part of the Drakensberg escarpment. Located in the Blyde River Canyon Nature Reserve, it is 25 kilometers in length and is, on average, around 750 meters deep, sporting some of the deepest precipitous cliffs of any canyon on the planet."	),
	("pt_BR",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_MOTLATSE_CANYON_CHAPTER_HISTORY_PARA_2",	
	"While it is difficult to compare canyons world-wide, Blyde River Canyon is one of the largest canyons on Earth, and it may be the largest green canyon due to its lush subtropical foliage. It supports a large diversity of flora and fauna, including numerous fish and antelope species as well as hippos, crocodiles and every primate species that may be seen in south Africa, making it a very popular region for tourism."	),

-----------------------------------------------
-- OLD FAITHFUL
-----------------------------------------------

	("pt_BR",	"LOC_FEATURE_OLD_FAITHFUL_NAME",				"Old Faithful"	),
	("pt_BR",	"LOC_TM_FEATURE_OLD_FAITHFUL_DESCRIPTION",		"One tile natural wonder. Yields +3 [ICON_SCIENCE] Science, +1 [ICON_FAITH] Faith, and +1 [ICON_GOLD] Gold."	),
	("pt_BR",	"LOC_TM_FEATURE_OLD_FAITHFUL_EFFECT",			"Campus districts trigger a culture bomb in any City. Double adjacency bonuses for Campus districts if their City has a National Park."	),
	
	("pt_BR",	'LOC_TM_FEATURE_OLD_FAITHFUL_QUOTE',	
	'"It spouted at regular intervals nine times during our stay, the columns of boiling water being thrown from ninety to one hundred and twenty-five feet at each discharge, which lasted from fifteen to twenty minutes. We gave it the name of Old Faithful."[NEWLINE]- Nathaniel P. Langford'	),
	
	("pt_BR",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_OLD_FAITHFUL_CHAPTER_HISTORY_PARA_1",	
	"Old Faithful is a geyser found in Yellowstone National Park, in Wyoming, US. First seen by Europeans in 1870 (and by natives some 10,000 years before that), Old Faithful was thus named because of the regularity of its eruption. The geyser shoots a column of boiling water to a height of some 30-50 meters (100-175 feet) every 60-90 minutes (the interval determined by the ferocity of the previous eruption). Geysers occur when subterranean water hits magma (molten rock). The water is instantly turned to steam, which rushes out the nearest available opening at tremendously high pressure. Old Faithful and the other 250 geysers in Yellowstone are enjoyed by some three million visitors each year."	),

-----------------------------------------------
-- PANTANAL
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_PANTANAL_DESCRIPTION",			"Four tile natural wonder. Appears as Marsh. Provides +3 [ICON_FOOD] Food and +2 [ICON_CULTURE] Culture."	),
	("pt_BR",	"LOC_TM_FEATURE_PANTANAL_EFFECT",				"Marsh tiles provide standard adjacency bonuses for Specialty Districts for any Civilization that owns at least one of these tiles."	),
	
	("pt_BR",	"LOC_ADJ_PANTANAL_FAITH_DESCRIPTION",			"+{1_num} [ICON_FAITH] Faith from adjacent {1_Num : plural 1?Marsh; other?Marsh;} (Pantanal)."	),
	("pt_BR",	"LOC_ADJ_PANTANAL_SCIENCE_DESCRIPTION",			"+{1_num} [ICON_SCIENCE] Science from adjacent {1_Num : plural 1?Marsh; other?Marsh;} (Pantanal)."	),
	("pt_BR",	"LOC_ADJ_PANTANAL_CULTURE_DESCRIPTION",			"+{1_num} [ICON_CULTURE] Culture from adjacent {1_Num : plural 1?Marsh; other?Marsh;} (Pantanal)."	),
	("pt_BR",	"LOC_ADJ_PANTANAL_GOLD_DESCRIPTION",			"+{1_num} [ICON_GOLD] Gold from adjacent {1_Num : plural 1?Marsh; other?Marsh;} (Pantanal)."	),
	("pt_BR",	"LOC_ADJ_PANTANAL_PRODUCTION_DESCRIPTION",		"+{1_num} [ICON_PRODUCTION] Production from adjacent {1_Num : plural 1?Marsh; other?Marsh;} (Pantanal)."	),

-----------------------------------------------
-- PIOPIOTAHI
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_PIOPIOTAHI_DESCRIPTION",	"Three tile impassable natural wonder. Adjacent plots yield +1 [ICON_CULTURE] Culture and +1 [ICON_GOLD] Gold."	),
	("pt_BR",	"LOC_TM_FEATURE_PIOPIOTAHI_EFFECT",			"[ICON_AMENITIES] Amenities provided by regional buildings extend 3 tiles further for any Civilization that owns at least one of these tiles."	),
	
-----------------------------------------------
-- ROCK OF GIBRALTAR
-----------------------------------------------

	("pt_BR",	"LOC_FEATURE_GIBRALTAR_NAME",				"Rock of Gibraltar"	),
	("pt_BR",	"LOC_TM_FEATURE_GIBRALTAR_DESCRIPTION",		"One tile impassable natural wonder. Adjacent plots yield +1 [ICON_FOOD] Food and +1 [ICON_GOLD] Gold."	),
	("pt_BR",	"LOC_TM_FEATURE_GIBRALTAR_EFFECT",			"Encampments and Harbors receive +2 [ICON_GREATPERSON] Great Person Points of their respective type in the City that owns this tile."	),

	("pt_BR",	'LOC_TM_FEATURE_GIBRALTAR_QUOTE',	
	'"Look round, my boys, and view how beautiful the Rock appears by the light of the glorious fire."[NEWLINE]- George Augustus Eliott'	),
	
	("pt_BR",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_GIBRALTAR_CHAPTER_HISTORY_PARA_1",	
	"Gibraltar is a peninsula containing a remarkable rock formation at the mouth of the Mediterranean Sea. Captured from Spain by the English and Dutch in 1704 and ceded to England in 1713, Gibraltar has been a British possession ever since (much to the annoyance of Spain, which wants it back). Commanding the entrance to the Atlantic from the Mediterranean, Gibraltar has been a major British naval base for three hundred years. Most of Gibraltar is covered by the 'Rock', a huge formation of shale, sandstone and limestone thrust up by the unimaginable power of plate tectonics. The Rock stands some 430 meters (1400 feet) in height. At one time Gibraltar was a massive fortification allowing Britain to dominate the narrow Mediterranean-Atlantic passage, but today the island is more of a nature preserve and tourist destination than it is a military base."	),

-----------------------------------------------
-- RORAIMA
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_RORAIMA_DESCRIPTION",	"Four tile impassable natural wonder. Appears as a Mountain. Adjacent plots yield +1 [ICON_FAITH] Faith and +1 [ICON_SCIENCE] Science."	),
	("pt_BR",	"LOC_TM_FEATURE_RORAIMA_EFFECT",		"Jungle does not diminish the appeal of adjacent plots for any Civilization that owns at least one of these tiles."	),

-----------------------------------------------
-- SALAR DE UYUNI
-----------------------------------------------

	("pt_BR",	"LOC_FEATURE_SALAR_DE_UYUNI_NAME",				"Salar de Uyuni"	),
	("pt_BR",	"LOC_TM_FEATURE_SALAR_DE_UYUNI_DESCRIPTION",	"Four tile natural wonder. Yields +2 [ICON_SCIENCE] Science, +1 [ICON_PRODUCTION] Production, and +2 [ICON_GOLD] Gold."	),
	("pt_BR",	"LOC_TM_FEATURE_SALAR_DE_UYUNI_EFFECT",			"Grants a free copy of the [ICON_RESOURCE_TM_LITHIUM] Lithium luxury resource (not tradeable), which provides +6 [ICON_AMENITIES] Amenities, to any player that owns at least one of these tiles."	),

	("pt_BR",	'LOC_TM_FEATURE_SALAR_DE_UYUNI_QUOTE',	
	'"I shivered in those solitudes when I heard the voice of the salt in the desert."[NEWLINE]- Pablo Neruda'	),
	
	("pt_BR",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_SALAR_DE_UYUNI_CHAPTER_HISTORY_PARA_1",	
	"Situated in southwest Bolivia, near the Chilean border and the Atacama Desert, lies Salar de Uyuni; the largest salt flat on Earth at 10,582 square kilometers, roughly 100 times the size of the Bonneville Salt Flats in the United States. The Salar was formed a result of transformations between several prehistoric lakes. Covered by a few meters of salt crust, it has an extraordinary flatness with the average elevation variations within one meter over the entire area of the Salar. The large area, clear skies, and exceptional flatness of the surface make it an ideal object for calibrating the altimeters of Earth observation satellites."	),

	("pt_BR",	"LOC_RESOURCE_TM_LITHIUM_NAME",	"Lithium"	),
	("pt_BR",	"LOC_PEDIA_RESOURCES_PAGE_RESOURCE_TM_LITHIUM_CHAPTER_HISTORY_PARA_1",
	"Lithium, from Greek lithos stone, is a soft, silver-white metal that has highly reactive properties. Lithium and its compounds have several industrial applications, including heat-resistant glass and ceramics, lithium grease lubricants, flux additives for iron, steel and aluminium production, lithium batteries, and lithium-ion batteries. Salar de Uyuni, in southwest Bolivia, contains 50% to 70% of the world's known lithium reserves, which is in the process of being extracted."	),

-----------------------------------------------
-- SINAI
-----------------------------------------------

	("pt_BR",	"LOC_FEATURE_SINAI_NAME",				"Mount Sinai"	),
	("pt_BR",	"LOC_TM_FEATURE_SINAI_DESCRIPTION",		"One tile impassable natural wonder. Appears as a Mountain. Adjacent plots yield +2 [ICON_FAITH] Faith."	),
	("pt_BR",	"LOC_TM_FEATURE_SINAI_EFFECT",			"Holy Sites provide +1 [ICON_GREATPERSON] Great Person Points toward [ICON_GREATPROPHET] Great Prophets for the player that owns this tile. Religious units trained in this City receive +10 Theological [ICON_STRENGTH] Combat Strength."	),
	
	("pt_BR",	'LOC_TM_FEATURE_SINAI_QUOTE',	
	'"When the Lord finished speaking to Moses on Mount Sinai, he gave him the two tablets of the covenant law, the tablets of stone inscribed by the finger of God."[NEWLINE]- Exodus 31:18'	),
	
	("pt_BR",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_SINAI_CHAPTER_HISTORY_PARA_1",	
	"Found on the Sinai Peninsula of Egypt, Mount Sinai is among the most revered holy sites recognized by the followers of Judaism, Christianity, and Islam. Mount Sinai is believed to be the location where Moses first received the Ten Commandments from God during the Israelites' exodus from Egypt, making the peak an important site for religious pilgrims from around the world."	),

-----------------------------------------------
-- SRI PADA
-----------------------------------------------

	("pt_BR",	"LOC_FEATURE_SRI_PADA_NAME",				"Sri Pada"	),
	("pt_BR",	"LOC_TM_FEATURE_SRI_PADA_DESCRIPTION",		"One tile impassable natural wonder. Appears as a Mountain. Adjacent plots yield +1 [ICON_FOOD] Food and +1 [ICON_FAITH] Faith."	),
	("pt_BR",	"LOC_TM_FEATURE_SRI_PADA_EFFECT",			"Religious units trained in the City that owns this tile receive [ICON_CULTURE] Culture upon converting a City to their [ICON_RELIGION] Religion for the first time."	),
	
	("pt_BR",	'LOC_TM_FEATURE_SRI_PADA_QUOTE',	
	'"An exceedingly wondrous sight, which is endowed with supreme splendour."[NEWLINE]- The Mahabharata'	),
	
	("pt_BR",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_SRI_PADA_CHAPTER_HISTORY_PARA_1",	
	"Towering above Sri Lanka, Sri Pada is a large mountain peak with an unusually conical shape that is held sacred by a number of religions for the footprint found at its peak. The footprint, a large depression found in a rock formation on the summit, has been attributed to Buddha, Shiva, and the biblical figure Adam, leading to a reverence among followers of Buddhism, Hinduism, and Islam. Each year, thousands of pilgrims trek for hours up the mountain to pay their respects at the holy site."	),

-----------------------------------------------
-- TORRES DEL PAINE
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_TORRES_DEL_PAINE_DESCRIPTION",		"Two tile impassable natural wonder. Doubles the terrain yields of adjacent tiles."	),
	("pt_BR",	"LOC_TM_FEATURE_TORRES_DEL_PAINE_EFFECT",			"Any City that owns at least one of these tiles may build one extra District than the [ICON_Citizen] Population would normally allow."	),

-----------------------------------------------
-- TSINGY
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_TSINGY_DESCRIPTION",	"One tile impassable natural wonder. Adjacent plots yield +1 [ICON_CULTURE] Culture and +1 [ICON_SCIENCE] Science."	),
	("pt_BR",	"LOC_TM_FEATURE_TSINGY_EFFECT",			"Theater districts trigger a culture bomb in any City. Double adjacency bonuses for Theater districts if their City has a National Park."	),

-----------------------------------------------
-- UBSUNUR HOLLOW
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_UBSUNUR_HOLLOW_DESCRIPTION",	"Four tile natural wonder. Appears as Marsh. Yields +2 [ICON_FAITH] Faith, +1 [ICON_FOOD] Food, and +2 [ICON_PRODUCTION] Production."	),
	("pt_BR",	"LOC_TM_FEATURE_UBSUNUR_HOLLOW_EFFECT",			"Any Civilization that owns at least one of these tiles receives a free [ICON_CivicBoosted] Inspiration upon earning a [ICON_GREATGENERAL] Great General."	),

-----------------------------------------------
-- ULURU
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_ULURU_DESCRIPTION",		"One tile impassable natural wonder. Adjacent plots yield +1 [ICON_CULTURE] Culture and +1 [ICON_FAITH] Faith."	),
	("pt_BR",	"LOC_TM_FEATURE_ULURU_EFFECT",			"Specialty Districts constructed on desert terrain yield +1 [ICON_FOOD] Food for any Civilization that owns this tile."	),

-----------------------------------------------
-- WULINGYUAN
-----------------------------------------------
	
	("pt_BR",	"LOC_FEATURE_WULINGYUAN_NAME",				"Wulingyuan"	),
	("pt_BR",	"LOC_TM_FEATURE_WULINGYUAN_DESCRIPTION",	"Two tile impassable natural wonder. Adjacent plots yield +2 [ICON_CULTURE] Culture"	),
	("pt_BR",	"LOC_TM_FEATURE_WULINGYUAN_EFFECT",			"Great Works of [ICON_GreatWork_Writing] Writing yield +2 [ICON_CULTURE] Culture and +50% [ICON_TOURISM] Tourism for any Civilization that owns at least one of these tiles."	),
	
	("pt_BR",	'LOC_TM_FEATURE_WULINGYUAN_QUOTE',	
	'"From ten thousand valleys the trees touch heaven, on a thousand peaks cuckoos are calling, and, after a night of mountain rain, from each summit come hundreds of silken cascades."[NEWLINE]- Wang Wei'	),
	
	("pt_BR",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_WULINGYUAN_CHAPTER_HISTORY_PARA_1",	
	"Wulingyuan is a scenic and historical site in south-central China. It is noted for more than 3,000 quartzite sandstone pillars and peaks, many over 200 meters in height, along with ravines, gorges, pools, lakes, rivers and waterfalls. It features 40 caves and two natural bridges, Xianrenqiao (Bridge of the Immortals) and Tianqiashengkong (Bridge Across the Sky)."	),

-----------------------------------------------
-- YOSEMITE
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_YOSEMITE_DESCRIPTION",		"Two tile impassable natural wonder. Adjacent plots yield +1 [ICON_GOLD] Gold and +1 [ICON_SCIENCE] Science."	),
	("pt_BR",	"LOC_TM_FEATURE_YOSEMITE_EFFECT",			"Forest provides an additional +1 Appeal to adjacent plots for any Civilization that owns at least one of these tiles."	),

-----------------------------------------------
-- ZHANGYE DANXIA
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_ZHANGYE_DANXIA_DESCRIPTION",	"Three tile impassable natural wonder. Appears as a Mountain. Adjacent plots yield +2 [ICON_SCIENCE] Science."	),
	("pt_BR",	"LOC_TM_FEATURE_ZHANGYE_DANXIA_EFFECT",			"Commercial Hubs and Campus districts in a City that owns at least one of these tiles receive +2 [ICON_GREATPERSON] Great Person Points of their respective type."	),

-----------------------------------------------
-- MISC - District Adjacency
-----------------------------------------------

	("pt_BR",	"LOC_TM_ADJ_NW_FAITH_DESCRIPTION",			"+{1_num} [ICON_FAITH] Faith from the adjacent {1_Num : plural 1?Natural Wonder; other?Natural Wonder plots;}."	),
	("pt_BR",	"LOC_TM_ADJ_NW_SCIENCE_DESCRIPTION",		"+{1_num} [ICON_SCIENCE] Science from the adjacent {1_Num : plural 1?Natural Wonder; other?Natural Wonder plots;}."	),
	("pt_BR",	"LOC_TM_ADJ_NW_CULTURE_DESCRIPTION",		"+{1_num} [ICON_CULTURE] Culture from the adjacent {1_Num : plural 1?Natural Wonder; other?Natural Wonder plots;}."	),
	("pt_BR",	"LOC_TM_ADJ_NW_PRODUCTION_DESCRIPTION",		"+{1_num} [ICON_PRODUCTION] Production from the adjacent {1_Num : plural 1?Natural Wonder; other?Natural Wonder plots;}."	),
	("pt_BR",	"LOC_TM_ADJ_NW_GOLD_DESCRIPTION",			"+{1_num} [ICON_GOLD] Gold from the adjacent {1_Num : plural 1?Natural Wonder; other?Natural Wonder plots;}."	),

-----------------------------------------------
-- MISC - Naturlist
-----------------------------------------------

	("pt_BR",	"LOC_TM_UNIT_NATURALIST_DESCRIPTION",	"A late-game civilian who can create a single National Park to attract [ICON_TOURISM] Tourists. Must be purchased with [ICON_GOLD] Gold."	),

-----------------------------------------------
-- MOD SUPPORT
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_FUJI_DESCRIPTION",		"One tile impassable natural wonder. Appears as a Mountain. Adjacent plots yield +1 [ICON_CULTURE] Culture and +1 [ICON_FAITH] Faith. Districts built in adjacent tiles provide an additional +2 [ICON_GREATPERSON] Great Person points of their type."	);
