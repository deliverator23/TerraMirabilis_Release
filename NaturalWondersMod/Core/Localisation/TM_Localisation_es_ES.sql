/*
	Localisation
	Language: Spanish ("es_ES")
	Credits: SeelingCat y Ari
	
	Guide:
	~ Do not change anything in UPPERCASE text, including [ICONS]. These are important references.
	~ Keep your changes inside the "quotation marks"
		
	Thank you for your help :) just ask us if you have any questions.

*/

INSERT OR REPLACE INTO LocalizedText (Language, Tag, Text, Gender, Plurality)
VALUES

	("es_ES",	"LOC_FEATURE_BARRINGER_CRATER_NAME",				"Cráter Barringer|Cráteres Barringer",		"masculine|masculine",	"1|2"	),
	("es_ES",	"LOC_FEATURE_CERRO_DE_POTOSI_NAME",					"Cerro Rico|Cerros Ricos",					"masculine|masculine",	"1|2"	),
	("es_ES",	"LOC_FEATURE_GRAND_MESA_NAME",						"Grand Mesa|Grand Mesa",					"feminine:sinartfem",	"1|2"	),
	("es_ES",	"LOC_FEATURE_KAILASH_NAME",							"Monte Kailash|Montes Kailash",				"masculine|masculine",	"1|2"	),
	("es_ES",	"LOC_FEATURE_KRAKATOA_NAME",						"Krakatoa|Krakatoa",						"masculine:sinartmasc",	"1|2"	),
	("es_ES",	"LOC_FEATURE_LAKE_VICTORIA_NAME",					"Lago Victoria|Lagos Victoria",				"masculine|masculine",	"1|2"	),
	("es_ES",	"LOC_FEATURE_MOTLATSE_CANYON_NAME",					"Cañón de Motlatse|Cañones de Motlatse",	"masculine|masculine",	"1|2"	),
	("es_ES",	"LOC_FEATURE_OLD_FAITHFUL_NAME",					"Viejo Fiel|Viejos Fieles",					"masculine|masculine",	"1|2"	),
	("es_ES",	"LOC_FEATURE_GIBRALTAR_NAME",						"Peñón de Gibraltar|Peñones de Gibraltar",	"masculine|masculine",	"1|2"	),
	("es_ES",	"LOC_FEATURE_SALAR_DE_UYUNI_NAME",					"Salar de Uyuni|Salares de Uyuni",			"masculine|masculine",	"1|2"	),
	("es_ES",	"LOC_FEATURE_SINAI_NAME",							"Monte Sinaí|Montes Sinaí",					"masculine|masculine",	"1|2"	),
	("es_ES",	"LOC_FEATURE_SRI_PADA_NAME",						"Sri Pada|Sri Pada",						"feminine:sinartfem",	"1|2"	),
	("es_ES",	"LOC_FEATURE_WULINGYUAN_NAME",						"Wulingyuan|Wulingyuan",					"masculine:sinartmasc",	"1|2"	),

	("es_ES",	"LOC_RESOURCE_TM_TORTOISE_NAME",					"Tortugas Gigantes",						"feminine",				"2"		),
	("es_ES",	"LOC_RESOURCE_TM_LITHIUM_NAME",						"Litio",									"masculine",			"1"		);

INSERT OR REPLACE INTO LocalizedText (Language, Tag, Text)
VALUES

-----------------------------------------------
-- BARRIER REEF
-----------------------------------------------

	("es_ES",	"LOC_TM_FEATURE_BARRIER_REEF_DESCRIPTION",		"Maravilla de la naturaleza de dos casillas que se puede encontrar en terreno costero y proporciona +2 a Alimentos [ICON_FOOD], +1 de Oro [ICON_GOLD], y +2 a Ciencia [ICON_SCIENCE]."	),
	("es_ES",	"LOC_TM_FEATURE_BARRIER_REEF_EFFECT",			"Recursos marítimos mejorados proporcionan +1 de Oro [ICON_GOLD] por cualquier Civilización que tiene al menos una de estas casillas."	),
	
-----------------------------------------------
-- BARRINGER CRATER
-----------------------------------------------

	("es_ES",	"LOC_TM_FEATURE_BARRINGER_CRATER_DESCRIPTION",		"Maravilla de la naturaleza de una casilla. Proporciona +3 a Ciencia [ICON_SCIENCE] and +2 de Oro [ICON_GOLD]."	),
	("es_ES",	"LOC_TM_FEATURE_BARRINGER_CRATER_EFFECT",			"La ciudad que tiene esta casilla recibe +20% a la Producción [ICON_PRODUCTION] para proyectos de Carrera espacial."	),
	
	("es_ES",	'LOC_TM_FEATURE_BARRINGER_CRATER_QUOTE',
	'"De hecho, ahora podemos probar que este cráter se debe a la colisión con la tierra de un cuerpo extraterrestre, posiblemente un pequeño asteroide, que era presumiblemente de naturaleza metálica."[NEWLINE]- Daniel Barringer'	),
	
	("es_ES",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_BARRINGER_CRATER_CHAPTER_HISTORY_PARA_1",	
	"El cráter Barringer es un cráter enorme de meteorito ubicado en Arizona, en los Estados Unidos de América. El cráter tiene un diámetro de aproximadamente 1.200 metros, y los científicos creen que fue creado hace unos 50.000 años cuando el sitio fue golpeado por un gran meteorito de hierro y niquél que pesaba 160.000 toneladas en el momento del impacto y se estaba moviendo a unos 44.000 kilómetros por hora."	),

-----------------------------------------------
-- CERRO DE POTOSI
-----------------------------------------------


	("es_ES",	"LOC_TM_FEATURE_CERRO_DE_POTOSI_DESCRIPTION",	"Maravilla de la naturaleza infranqueable de una casilla. Aparece como Montaña y proporciona +1 a la Producción [ICON_PRODUCTION] +1 de Oro [ICON_GOLD] a las casillas adyacentes."	),
	("es_ES",	"LOC_TM_FEATURE_CERRO_DE_POTOSI_EFFECT",		"Rutas comerciales internacionales [ICON_TRADEROUTE] que comienzan en la ciudad que tiene esta casilla proporciona +4 de Oro [ICON_GOLD]."	),
	
	("es_ES",	'LOC_TM_FEATURE_CERRO_DE_POTOSI_QUOTE',	
	'"Soy el rico Potosí, del mundo soy el tesoro, soy el rey de los montes y envidia soy de los reyes."[NEWLINE]- Primera Escudo de Armas de Potosí'	),
	
	("es_ES",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_CERRO_DE_POTOSI_CHAPTER_HISTORY_PARA_1",	
	"El Cerro Rico, también conocido como 'El Cerro do Potosí,' está ubicado en el sur de Bolivia y produjo casi toda la plata extraída por los españoles durante el tiempo del Imperio Español. La plata fue removida de la montaña, fue llevada por llama y mulo a la costa, y fue cargada en los barcos del tesoro que luego navegaron a Europa. Durante el transcurso de 200 años, se extrajeron casi 41.000 toneladas de plata pura. 8.200 toneladas de esta plata se destinaron directamente a la corona española. Después de 1800, las principales minas de plata se agotaron, pero extracción continúa hoy en Potosí; hoy en día, el metal principal es estaño, pero algo de plata también se extrae."	),

-----------------------------------------------
-- CLIFFS OF DOVER
-----------------------------------------------

	("es_ES",	"LOC_TM_FEATURE_CLIFFS_DOVER_DESCRIPTION",		"Maravilla de la naturaleza de dos casillas. Aparece como Acantilados. Proporciona +3 a Cultura [ICON_CULTURE], +1 a Alimentos [ICON_FOOD], y +1 de Oro [ICON_GOLD]."	),
	("es_ES",	"LOC_TM_FEATURE_CLIFFS_DOVER_EFFECT",			"Puertos reciben una bonificación menor por casillas con Acantilados adyacentes por cualquier Civilización tiene al menos una de estas casillas."	),

	("es_ES",	"LOC_MODIFIER_TM_FEATURE_CLIFFS_DOVER_ADJACENCY_DESCRIPTION",	"+{1_num} de Oro [ICON_GOLD] por {1_Num : plural 1?la casilla de Acantilados adyacente; other?las casillas de Acantilados adyacentes;}."	),

-----------------------------------------------
-- CRATER LAKE
-----------------------------------------------

	("es_ES",	"LOC_TM_FEATURE_CRATER_LAKE_DESCRIPTION",	"Maravilla de la naturaleza de una casilla. Aparece como un Lago y proporciona +4 a Fe [ICON_FAITH], +1 a Ciencia [ICON_SCIENCE], y Agua dulce."	),
	("es_ES",	"LOC_TM_FEATURE_CRATER_LAKE_EFFECT",		"En la ciudad que tiene esta casilla, todos los edificios se pueden comprar con Fe [ICON_FAITH]."	),

-----------------------------------------------
-- DEAD SEA
-----------------------------------------------

	("es_ES",	"LOC_TM_FEATURE_DEAD_SEA_DESCRIPTION",		"Maravilla de la naturaleza de dos casillas. Aparece como un Lago y proporciona +2 a Fe [ICON_FAITH], +2 a Cultura [ICON_CULTURE], and +1 de Oro [ICON_GOLD]."	),
	("es_ES",	"LOC_TM_FEATURE_DEAD_SEA_EFFECT",			"Unidades entrenadas en una ciudad que tiene al menos una de estas casillas recibe +10 PG de curación cuando están fortificadas [ICON_Fortified]."	),

-----------------------------------------------
-- DELICATE ARCH
-----------------------------------------------

	("es_ES",	"LOC_TM_FEATURE_DELICATE_ARCH_DESCRIPTION",		"Maravilla de la naturaleza infranqueable de una casilla y proporciona +1 a Cultura [ICON_CULTURE] y and +1 de Oro [ICON_GOLD] a las casillas adyacentes."	),
	("es_ES",	"LOC_TM_FEATURE_DELICATE_ARCH_EFFECT",			"Reduce el coste de compra de una casilla en un 20% por la Civilización que tiene esta casilla."	),

-----------------------------------------------
-- EVEREST
-----------------------------------------------

	("es_ES",	"LOC_TM_FEATURE_EVEREST_DESCRIPTION",		"Maravilla de la naturaleza de tres casillas. Aparece como Montaña y proporciona +2 a Fe [ICON_FAITH] a las casillas adyacentes."	),
	("es_ES",	"LOC_TM_FEATURE_EVEREST_EFFECT",			"Unidades religiosas entrenadas en una ciudad que tiene al menos una de estas casillas ignoran los costes de Movimiento [ICON_MOVEMENT] de las Colinas durante el resto de la partida y recibe +1 carga de propagación adicional."	),

-----------------------------------------------
-- EYE OF THE SAHARA
-----------------------------------------------

	("es_ES",	"LOC_TM_FEATURE_EYE_OF_THE_SAHARA_DESCRIPTION",		"Maravilla de la naturaleza de tres casillas. Proporciona +2 a la Producción [ICON_PRODUCTION], +2 a Ciencia [ICON_SCIENCE], y +1 de Oro [ICON_GOLD]."	),
	("es_ES",	"LOC_TM_FEATURE_EYE_OF_THE_SAHARA_EFFECT",			"Cualquier Civilización que tiene al menos una de estas casillas recibe +2 a la Puntuación de época por Momento histórico obtenido, siempre que ese Momento suela otorgar 4 or más de Puntuación de época."	),

-----------------------------------------------
-- EYJAFJALLAJOKULL
-----------------------------------------------

	("es_ES",	"LOC_TM_FEATURE_EYJAFJALLAJOKULL_DESCRIPTION",		"Maravilla de la naturaleza infranqueable de dos casillas. Aparece como Montaña y proporciona +1 a Cultura [ICON_CULTURE] y +1 a Alimentos [ICON_FOOD] a las casillas adyacentes."	),
	("es_ES",	"LOC_TM_FEATURE_EYJAFJALLAJOKULL_EFFECT",			"Distritos especializados en casillas de Tundra o Nieve proporciona +1 a Alimentos [ICON_FOOD] por cualquier Civilización que tiene al menos una de estas casillas."	),

-----------------------------------------------
-- GALAPAGOS
-----------------------------------------------
	
	("es_ES",	"LOC_TM_FEATURE_GALAPAGOS_DESCRIPTION",		"Maravilla de la naturaleza infranqueable de dos casillas. Proporciona +2 a Ciencia [ICON_SCIENCE] a las casillas adyacentes."	),
	("es_ES",	"LOC_TM_FEATURE_GALAPAGOS_EFFECT",			"Cualquier Civilización que tiene al menos una de estas casillas recibe 1 de Tortugas Gigantes [ICON_RESOURCE_TM_TORTOISE], un recurso de lujo exclusivo que proporciona +6 a Servicios [ICON_Amenities]."	),

	("es_ES",	"LOC_PEDIA_RESOURCES_PAGE_RESOURCE_TM_TORTOISE_CHAPTER_HISTORY_PARA_1",
	"Las Tortuga gigante de las Galápagos es la especie más grande de tortuga que aún está viva, con un pesto de hasta 417 kg. Hoy en día, las tortugas gigantes solo existen en dos archipiélagos remotos: Aldabra y las Islas Galápagos. El número de tortugas gigantes ha disminuido de más de 250.000 en el siglo XVI a alrededor de 3.000 en 1970 debido a la sobreexplotación de la especie para carne y aceite. Se cree que la extinción de la mayoría de laos linajes de tortugas gigantes ha sido causada por la depredación de los humanos, ya que las tortugas mismas no tienen depredadores naturales en su archipiélago remoto de los que son originarios."	),

-----------------------------------------------
-- GIANTS CAUSEWAY
-----------------------------------------------

	("es_ES",	"LOC_TM_FEATURE_GIANTS_CAUSEWAY_DESCRIPTION",	"Maravilla de la naturaleza infranqueable de dos casillas. Proporciona +2 a Cultura [ICON_CULTURE] a las casillas adyacentes."	),
	("es_ES",	"LOC_TM_FEATURE_GIANTS_CAUSEWAY_EFFECT",		"Unidades terrestres entrenadas en una ciudad que tiene al menos una de estas casillas comienzan con un ascenso [ICON_PROMOTION] gratis."	),

-----------------------------------------------
-- GRAND MESA
-----------------------------------------------

	("es_ES",	"LOC_TM_FEATURE_GRAND_MESA_DESCRIPTION",	"Maravilla de la naturaleza infranqueable de una casilla. Proporciona +1 a Alimentos [ICON_FOOD] y +1 a Cultura [ICON_CULTURE] a las casillas adyacentes."	),
	("es_ES",	"LOC_TM_FEATURE_GRAND_MESA_EFFECT",			"Unidades entrenadas en la ciudad que tiene esta casilla ignoran los costes de Movimiento [ICON_MOVEMENT] de Bosques y Selvas tropicales."	),
	
	("es_ES",	'LOC_TM_FEATURE_GRAND_MESA_QUOTE',	
	'"La conservación significa que el uso inteligente de la tierra y sus recursos para el bien duradero de humanidad."[NEWLINE]- Gifford Pinchot'	),
	
	("es_ES",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_GRAND_MESA_CHAPTER_HISTORY_PARA_1",	
	"La Grand Mesa es una grán formación geológica en Colorado, en los Estados Unidos de América. La Mesa alcanza los 1.500 metros sobre el territorio circundante y, con un área de 1.300 kilómetros cuadrados, La Grand Mesa es la mesa más grande del mundo. La Grand Mesa tiene una capa de basalto volcánico en la parte superior, que resiste la erosión. Por lo tanto, La Mesa no creció a su altura actual, sino que se permaneció en su altura original ya que el terrento cicundante fue erosionado por las acciones de los ríos Colorado y Gunnison. El Bosque Nacional de La Grand Mesa (originalmente llamado 'Reserva Forestal de Battlement Mesa') fue creado por Presidente Benjamin Harrison el 24 de diciembre de 1892. Fue la tercera reserva forestal creada en la historia de los Estados Unidos."	),

-----------------------------------------------
-- HA LONG BAY
-----------------------------------------------

	("es_ES",	"LOC_TM_FEATURE_HA_LONG_BAY_DESCRIPTION",	"Maravilla de la naturaleza de dos casillas. Proporciona +2 a Cultura [ICON_CULTURE], +2 a Alimentos [ICON_FOOD], y +1 a la Producción [ICON_PRODUCTION]."	),
	("es_ES",	"LOC_TM_FEATURE_HA_LONG_BAY_EFFECT",		"Puertos proporcionan +2 a Alojamiento [ICON_HOUSING] en cualquier Civilización que tiene al menos una de estas casillas."	),

-----------------------------------------------
-- KAILASH
-----------------------------------------------


	("es_ES",	"LOC_TM_FEATURE_KAILASH_DESCRIPTION",	"Maravilla de la naturaleza de una collina. Aparece como Montaña y proporciona +1 a Fe [ICON_FAITH] y +1 a Cultura [ICON_CULTURE] a las casillas adyacentes."	),
	("es_ES",	"LOC_TM_FEATURE_KAILASH_EFFECT",		"Recibe +1 a Cultura [ICON_CULTURE] por cada ciudad extranjera que siga la religión [ICON_RELIGION] de la Civilización que tiene esta casilla."	),
		
	("es_ES",	'LOC_TM_FEATURE_KAILASH_QUOTE',	
	'"Después de instruir a los piadosos, el Señor Brahma se fue con los antepasados y los líderes del pueblo as su paso, a quien llevó de su propio lugar a la morada del Señor Shiva, Kailash, la mejor de las montañas que es tan querida por el maestro."[NEWLINE]- The Bhagavata Purana'	),
	
	("es_ES",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_KAILASH_CHAPTER_HISTORY_PARA_1",	
	"El pico sagrado de Monte Kailash, que se encuentra en el Himalaya del Tíbet, es apreciado por muchas religiones, en particular el hinduismo. Se cree que Kailash es el hogar del Señor Shiva, que habita en la montaña en un estado de felicidad eterna. Se dice que el viaje al Monte Kailash es una de las peregrinaciones religiones más difíciles: las duras condiciones disuaden a muchos peregrinos, y la montaña no es accesible por ninguna forma de transporte moderno."	),

-----------------------------------------------
-- KILIMANJARO
-----------------------------------------------

	("es_ES",	"LOC_TM_FEATURE_KILIMANJARO_DESCRIPTION",	"Maravilla de la naturaleza infranqueable de una casilla. Aparece como Montaña y proporciona +2 a Alimentos [ICON_Food] a las casillas adyacentes."	),
	("es_ES",	"LOC_TM_FEATURE_KILIMANJARO_EFFECT",		"Recibe +1 a Población [ICON_Citizen] en la ciudad que tiene esta casilla cuando se construye un distrito especializado en esa ciudad."	),

-----------------------------------------------
-- KRAKATOA
-----------------------------------------------

	("es_ES",	"LOC_TM_FEATURE_KRAKATOA_DESCRIPTION",		"Maravilla de naturaleza infranqueable de una casilla. Apare como Montaña y proporciona +1 a Ciencia [ICON_SCIENCE] y +1 a Cultura [ICON_CULTURE] a las casillas adyacentes."	),
	("es_ES",	"LOC_TM_FEATURE_KRAKATOA_EFFECT",			"La ciudad que tiene esta casilla recibe +2 a Ciencia [ICON_SCIENCE] por cada distrito especializado en la ciudad. Si la ciudad tiene un Parque nacional, recibe +2 a Ciencia [ICON_SCIENCE] en su lugar."	),
	("es_ES",	"LOC_TM_FEATURE_KRAKATOA_EFFECT_XP1",		"La Civilización que tiene esta casilla consigue 1 Eureka [ICON_TechBoosted] cuando obtene un Gran almirante [ICON_GREATADMIRAL]."	),
	
	("es_ES",	'LOC_TM_FEATURE_KRAKATOA_QUOTE',	
	'"Vi con asombro que la isla de Krakatoa yacía completamente quemada y estéril frente a nuestros ojos y que en cuatro lugares estaba arrojando grandes trozos de fuego."[NEWLINE]- Johann Wilhelm Vogel'	),
	
	("es_ES",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_KRAKATOA_CHAPTER_HISTORY_PARA_1",	
	"Krakatoa es una isla volcánica en Indonesia, entre las islas de Java y Sumatra. El volcán explotó violentamente en agosto de 1883 con una fuerza equivalente a 13.000 veces el poder de la bomba nuclear de Hiroshima. La explosión se considera el sonido más fuerte jamás registrado. La erupción destruyó más de la mitad de la isla y se escuchó en partes de Australia, 3.200 kilómetros de distancia. Aproximadamente 37.000 personas murieron por la erupción y los tsunamis posteriores. El volcán ha estado emitiendo lava constantemente durante los últimos ochenta años, reconstruyendo el cono volcánico a una velocidad de aproximadamente 5 metros por año."	),

-----------------------------------------------
-- LAKE RETBA
-----------------------------------------------

	("es_ES",	"LOC_TM_FEATURE_LAKE_RETBA_DESCRIPTION",	"Maravilla de naturaleza de dos casillas. Aparece como Lago y proporciona +2 a Cultura [ICON_CULTURE], +2 de Oro [ICON_GOLD], y +1 a la Producción [ICON_PRODUCTION]."	),
	("es_ES",	"LOC_TM_FEATURE_LAKE_RETBA_EFFECT",			"Cualquier Civilización que tiene al menos una de estas casillas recibe +2 de Oro [ICON_GOLD] por cada recurso de lujo diferente propiedad de esa Civilización."	),

-----------------------------------------------
-- LAKE VICTORIA
-----------------------------------------------

	("es_ES",	"LOC_TM_FEATURE_LAKE_VICTORIA_DESCRIPTION",		"Maravilla de naturaleza de cuatro casillas. Aparece como Lago y proporciona +3 a Alimentos [ICON_FOOD], +1 a Cultura [ICON_CULTURE], +1 de Oro [ICON_GOLD], y Agua dulce."	),
	("es_ES",	"LOC_TM_FEATURE_LAKE_VICTORIA_EFFECT",			"Aumenta el crecimiento [ICON_FOODSURPLUS] en un 15% en todas las ciudades que no estén en el continent original de la capital [ICON_CAPITAL] de cualquier Civilización que tiene al menos una de estas casillas."	),
	
	("es_ES",	'LOC_TM_FEATURE_LAKE_VICTORIA_QUOTE',	
	'"Vi que el viejo padre Nilo, sin ninguna duda, aflora en la Victora Nyanza, y como había predicho, ese lago es la gran fuente del río sagrado que acunó al primer expositor de nuestra creencia religiosa."[NEWLINE]- John Hanning Speke'	),
	
	("es_ES",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_LAKE_VICTORIA_CHAPTER_HISTORY_PARA_1",	
	"Con una superficie de más de 68.800 kilómetros cuadrados, el Lago Victoria es el lago más grande de África, el segundo lago de agua dulce más grande del mundo, y el lago topical más grande del mundo. Dos grandes ríos comienzan en el lago: el Nilo Blanco y el Katonga. Los primeros registros históricos del lago fueron de los comerciantes árabes que buscan oro, marfil y otras mercancías de los nativos del interior. La búsqueda de los exploradores europeos por la fuente del Nilo llevó al descubrimiento del lago por el inglés John Speke en 1858, quien nombró el lago por el monarca británica, la reina Victoria."	),

-----------------------------------------------
-- LYSEFJORDEN
-----------------------------------------------

	("es_ES",	"LOC_TM_FEATURE_LYSEFJORDEN_DESCRIPTION",	"Maravilla de naturaleza de dos casillas. Proporciona +1 a Cultura [ICON_CULTURE] y +1 a Ciencia [ICON_SCIENCE] a las casillas adyacentes."	),
	("es_ES",	"LOC_TM_FEATURE_LYSEFJORDEN_EFFECT",		"Unidades navales entrenadas en una ciudad que tiene al menos una de estas casillas comienzan con un ascenso [ICON_PROMOTION] gratis."	),

-----------------------------------------------
-- MATTERHORN
-----------------------------------------------

	("es_ES",	"LOC_TM_FEATURE_MATTERHORN_DESCRIPTION",	"Maravilla de naturaleza infranqueable de una casilla. Aparece como Montaña y proporciona +2 a Cultura [ICON_CULTURE] a las casillas adyacentes."	),
	("es_ES",	"LOC_TM_FEATURE_MATTERHORN_EFFECT",			"Unidades terrestres entrenadas en la ciudad que tiene esta casilla ignoran los costes de Movimiento [ICON_MOVEMENT] de las Colinas y reciben +3 a la Fuerza de combate [ICON_STRENGTH] cuando luchan en casillas de Colinas."	),

	("es_ES",	"LOC_MODIFIER_TM_FEATURE_MATTERHORN_COMBAT_DESCRIPTION",	"+{1_Amount} a la Fuerza de combate [ICON_Strength] en casillas de Colinas (Cervino)"	),

-----------------------------------------------
-- MOTLATSE CANYON
-----------------------------------------------

	("es_ES",	"LOC_TM_FEATURE_MOTLATSE_CANYON_DESCRIPTION",	"Maravilla de naturaleza infranqueable de cuatro casillas. Proporciona +1 a Cultura [ICON_CULTURE] y +1 a Ciencia [ICON_SCIENCE] a las casillas adyacentes."	),
	("es_ES",	"LOC_TM_FEATURE_MOTLATSE_CANYON_EFFECT",		"En cualquier Civilización que tiene al menos una de estas casillas, distritos especializados reciben +1 a sus rendimientos respectivos cuando construido en casillas con un Atractivo Impresionante."	),
	
	("es_ES",	"LOC_ADJ_MOTLATSE_FAITH_DESCRIPTION",			"+{1_num} a Fe [ICON_FAITH] del Atractivo de la casilla. (Cañón de Motlatse)"	),
	("es_ES",	"LOC_ADJ_MOTLATSE_SCIENCE_DESCRIPTION",			"+{1_num} a Ciencia [ICON_SCIENCE]  del Atractivo de la casilla. (Cañón de Motlatse)"	),
	("es_ES",	"LOC_ADJ_MOTLATSE_CULTURE_DESCRIPTION",			"+{1_num} a Cultura [ICON_CULTURE]  del Atractivo de la casilla. (Cañón de Motlatse)"	),
	("es_ES",	"LOC_ADJ_MOTLATSE_PRODUCTION_DESCRIPTION",		"+{1_num} a la Producción [ICON_PRODUCTION]  del Atractivo de la casilla. (Cañón de Motlatse)"	),
	("es_ES",	"LOC_ADJ_MOTLATSE_GOLD_DESCRIPTION",			"+{1_num} de Oro [ICON_GOLD] del Atractivo de la casilla. (Cañón de Motlatse)"	),

	("es_ES",	'LOC_TM_FEATURE_MOTLATSE_CANYON_QUOTE',	
	'"Creo que Sudáfrica es el lugar más hermoso del mundo. Es cierto que soy parcial, pero creo que incluso el crítico más escrupuloso estaría de acuerdo en que hemos sido bendecidos con una tierra verdaderamente maravillosa."[NEWLINE]- Nelson Mandela'	),
	
	("es_ES",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_MOTLATSE_CANYON_CHAPTER_HISTORY_PARA_1",	
	"El Cañón del Motlatse es una característica natural importante de Sudáfrica. El Cañón está ubicada en Mpumalanga y forma la parte norte de la escarpa Drakensberg. Ubicada en la Reserva Natural del Cañón del Ríp Blyde, el Cañón de Motlatse tiene una longitud de 25 kilómetros y, en promedio, tiene alrededor de 750 metros de profundidad, con algunos de los acantilados más profundos y escarpados de cualquier cañón del planeta."	),
	("es_ES",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_MOTLATSE_CANYON_CHAPTER_HISTORY_PARA_2",	
	"Si bien es difícil comparar cañones en todo el mundo, el Cañón del Río Blyde es uno de los cañones más grandes del mundo, y es posible que está el cañón verde más grande debido a su frondoso follaje subtropical. Es hogar de una gran diversidad de flora y fauna, incluidos numerosos especies de peces y antílopes, así como hipopótamos, cocodrilos y todas las especies de primates que se pueden ver en el sur de África, por lo que es una región muy popular para el turismo."	),

-----------------------------------------------
-- OLD FAITHFUL
-----------------------------------------------

	("es_ES",	"LOC_TM_FEATURE_OLD_FAITHFUL_DESCRIPTION",		"Maravilla de naturaleza de una casilla. Proporciona +3 a Ciencia [ICON_SCIENCE], +1 a Fe [ICON_FAITH], y +1 de Oro [ICON_GOLD]."	),
	("es_ES",	"LOC_TM_FEATURE_OLD_FAITHFUL_EFFECT",			"En la Civilización que tiene esta casilla, Distritos de Campus Bombardea culturalmente las casillas adyacentes cuando están construidos y reciben el doble de la Bonificación de adyacencia en ciudades con un Parque Nacional."	),
	
	("es_ES",	'LOC_TM_FEATURE_OLD_FAITHFUL_QUOTE',	
	'"Brotó a intervalos regulares nueve veces durante nuestra estancia, arrojando las columnas de agua hirviendo de noventa a ciento veinticinco pies en cada descarga, que duró de quince a veinte minutos. Le dimos el nombre de Biejo Fiel."[NEWLINE]- Nathaniel P. Langford'	),
	
	("es_ES",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_OLD_FAITHFUL_CHAPTER_HISTORY_PARA_1",	
	"Old Faithful es un géiser encontrado en el Parque Nacional Yellowstone, en Wyoming en los Estados Unidos. Visto por primera vez por los europeos en 1870 (y por los nativos unos 10.000 años antes), el Viejo Fiel fue nombrado debido a la regularidad de su erupción. El géiser dispara una columna de agua hirviendo a una altura de unos 30-50 metros cada 60-90 minutos (el intervalo es determinado por la ferocidad de la erupción anterior). Los géiseres ocurren cuando el agua subterránea golpea al magma (roca fundida). El agua se convierte instantáneamente en vapor, que se precipita a la apertura más cercana a una presión tremendamente alta. El Viejo Fiel y los otros 250 géiseres en Yellowstone son disfrutados por unos tres millones de visitantes cada año."	),

-----------------------------------------------
-- PANTANAL
-----------------------------------------------

	("es_ES",	"LOC_TM_FEATURE_PANTANAL_DESCRIPTION",			"Maravilla de naturaleza de cuatro casillas. Aparece como Ciénagas y proporciona +3 a Alimentos [ICON_FOOD] y +2 a Cultura [ICON_CULTURE]."	),
	("es_ES",	"LOC_TM_FEATURE_PANTANAL_EFFECT",				"En cualquier Civilización que tiene al menos una de estas casillas, Distritos especializados reciben una Bonificación normal por casillas de Ciénagas."	),
	
	("es_ES",	"LOC_ADJ_PANTANAL_FAITH_DESCRIPTION",			"+{1_num} a Fe [ICON_FAITH] por {1_Num : plural 1?la casilla de Ciénagas adyacente; other?las casillas de Ciénagas adyacentes;} (Pantanal)."	),
	("es_ES",	"LOC_ADJ_PANTANAL_SCIENCE_DESCRIPTION",			"+{1_num} a Ciencia [ICON_SCIENCE] from adjacent {1_Num : plural 1?la casilla de Ciénagas adyacente; other?las casillas de Ciénagas adyacentes;} (Pantanal)."	),
	("es_ES",	"LOC_ADJ_PANTANAL_CULTURE_DESCRIPTION",			"+{1_num} a Cultura [ICON_CULTURE] from adjacent {1_Num : plural 1?la casilla de Ciénagas adyacente; other?las casillas de Ciénagas adyacentes;} (Pantanal)."	),
	("es_ES",	"LOC_ADJ_PANTANAL_GOLD_DESCRIPTION",			"+{1_num} de Oro [ICON_GOLD] from adjacent {1_Num : plural 1?la casilla de Ciénagas adyacente; other?las casillas de Ciénagas adyacentes;} (Pantanal)."	),
	("es_ES",	"LOC_ADJ_PANTANAL_PRODUCTION_DESCRIPTION",		"+{1_num} a la Producción [ICON_PRODUCTION] from adjacent {1_Num : plural 1?la casilla de Ciénagas adyacente; other?las casillas de Ciénagas adyacentes;} (Pantanal)."	),

-----------------------------------------------
-- PIOPIOTAHI
-----------------------------------------------

	("es_ES",	"LOC_TM_FEATURE_PIOPIOTAHI_DESCRIPTION",	"Maravilla de naturaleza de tres casillas. Proporciona +1 a Cultura [ICON_CULTURE] y +1 de Oro [ICON_GOLD] a las casillas adyacentes."	),
	("es_ES",	"LOC_TM_FEATURE_PIOPIOTAHI_EFFECT",			"En cualquier Civilización que tiene al menos una de estas casillas, el alcance de los edificios regionales que otorgan Servicios [ICON_AMENITIES] aumenta +3 casillas."	),
	
-----------------------------------------------
-- ROCK OF GIBRALTAR
-----------------------------------------------

	("es_ES",	"LOC_TM_FEATURE_GIBRALTAR_DESCRIPTION",		"Maravilla de naturaleza infranqueable de una casilla. Proporciona +1 a Alimentos [ICON_FOOD] y +1 de Oro [ICON_GOLD] a las casillas adyacentes."	),
	("es_ES",	"LOC_TM_FEATURE_GIBRALTAR_EFFECT",			"Los Campamentos y los Puertos en la ciudad que tiene esta casilla proporcionan +2 puntos de gran personaje [ICON_GREATPERSON] de su tipo."	),

	("es_ES",	'LOC_TM_FEATURE_GIBRALTAR_QUOTE',	
	'"Mire a su alrededor, mis muchachos, y vea cuán hermoso aparece el Peñón a la luz del incendio glorioso."[NEWLINE]- George Augustus Eliott'	),
	
	("es_ES",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_GIBRALTAR_CHAPTER_HISTORY_PARA_1",	
	"Gibraltar es una península que contiene una formación rocosa notable en la desembocadura del mar Mediterráneo. Fue capturado de España por los ingleses y holandeses en 1704 y cedido a Inglaterra en 1713 y Gibraltar ha sido una posesión británica desde entonces (para fastidio de España, que lo quiere de regreso). Gibraltar domina la entrada al Atlántico desde el Mediterráneo y ha sido una base naval británica durante trescientos años. La mayor parte de Gibraltar está cubierta por el 'Peñón,' una enorme formación de pizarra, arenisca, y piedra caliza impulsada por el poder inimaginable de la tectónica de placa. El Peñón tiene 430 metros de altura. En el pasado, Gibraltar era una fortificación masiva que permitía a Gran Bretaña dominar el estrecho pasaje Mediterráneo-Atlántico, pero hoy en día, Gibraltar es más una reserva natural y un destino turístico que una base militar."	),

-----------------------------------------------
-- RORAIMA
-----------------------------------------------

	("es_ES",	"LOC_TM_FEATURE_RORAIMA_DESCRIPTION",	"Maravilla de naturaleza infranqueable de cuatro casillas. Aparece como Montaña y proporciona +1 a Fe [ICON_FAITH] y +1 a Ciencia [ICON_SCIENCE] a las casillas adyacentes."	),
	("es_ES",	"LOC_TM_FEATURE_RORAIMA_EFFECT",		"En cualquier Civilización que tiene al menos una de estas casillas, casillas de Selva tropical no reducen el Atractivo de las casillas adyacentes."	),

-----------------------------------------------
-- SALAR DE UYUNI
-----------------------------------------------

	("es_ES",	"LOC_TM_FEATURE_SALAR_DE_UYUNI_DESCRIPTION",	"Maravilla de naturaleza de cuatro casillas. Proporciona +2 a Ciencia [ICON_SCIENCE], +1 a la Producción [ICON_PRODUCTION], y +2 de Oro [ICON_GOLD]."	),
	("es_ES",	"LOC_TM_FEATURE_SALAR_DE_UYUNI_EFFECT",			"Cualquier Civilización que tiene al menos una de estas casillas recibe 1 de Litio [ICON_RESOURCE_TM_LITHIUM], un recurso de lujo exclusivo que proporciona +6 a Servicios [ICON_Amenities]."	),

	("es_ES",	'LOC_TM_FEATURE_SALAR_DE_UYUNI_QUOTE',	
	'"Me estremecí en aquellas soledades cuando escuché la voz de la sal en el desierto."[NEWLINE]- Pablo Neruda'	),
	
	("es_ES",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_SALAR_DE_UYUNI_CHAPTER_HISTORY_PARA_1",	
	"Situado en el suroeste de Bolivia, cerca de la frontera con Chile y el desiero de Atacama, se encuentra el Salar de Uyuni, el salar más grande del mundo. El salar tiene 582 kilómetros cuadrados, aproximadamente 100 veces más grande que las Salinas de Bonneville en los Estados Unidos. El Salar se formó de las transformaciones entre varios lagos prehistóricos. Cubierto por unos pocos metros de costra de sal, el Salar tiene una planicidad extraordinaria con una variación de elevación promedio de menos de un metro en toda el área del Salar. El área grande, los cielos despejados, y la planicidad excepcional del Salar lo convierten en un lugar ideal para calibrar los altímetros de los satelites de observación de la Tierra."	),

	("es_ES",	"LOC_PEDIA_RESOURCES_PAGE_RESOURCE_TM_LITHIUM_CHAPTER_HISTORY_PARA_1",
	"El litio es un metal blando de color blanco-plateado que tiene propiedades altamente reactivas. El litio y sus compuestos tiene varias aplicaciones industriales, incluyendo vidrio y cerámico resistentes al calor; lubricantes; aditivos de fundente para la producción de hierro, acero, y aluminio; y baterías de litio y de iones de litio. El Salar de Uyuni contiene del 50% al 70% de las reservas mundiales conocidas de litio, que está en proceso de extracción."	),

-----------------------------------------------
-- SINAI
-----------------------------------------------

	("es_ES",	"LOC_TM_FEATURE_SINAI_DESCRIPTION",		"Maravilla de naturaleza infranqueable de una casilla. Aparece como Montaña y proporciona +2 a Fe [ICON_FAITH] a las casillas adyacentes."	),
	("es_ES",	"LOC_TM_FEATURE_SINAI_EFFECT",			"Los Lugares sagrados en la Civilización que tiene esta casilla proporciona +1 puntos de Gran profeta [ICON_GREATPROPHET] por turno. Unidades religiosas entrenadas en la ciudad que tiene esta casilla reciben +10 a la Fuerza religiosa [ICON_Religion] en Combate teológico."	),
	
	("es_ES",	'LOC_TM_FEATURE_SINAI_QUOTE',	
	'"Y cuando terminó de hablar con Moisés seobre el monte Sinaí, le dio las dos tablas del testimonio, tablas de piedra, escritas por el dedo de Dios."[NEWLINE]- Éxodo 31:18'	),
	
	("es_ES",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_SINAI_CHAPTER_HISTORY_PARA_1",	
	"Situado en la Península de Sinaí en Egipto, el Monte Sinaí es uno de los lugares sagrados más venerados del judaísmo, el cristianismo, y el islam. Se cree que el Monte Sinaí es el lugar donde Moisés recibió por primera vez los Diez Mandamientos de Dios durante el éxodo de los israelitas de Egipto. Esta creencia hace que el Monte sea un sitio importante para los peregrinos religiosos de todo el mundo."	),

-----------------------------------------------
-- SRI PADA
-----------------------------------------------

	("es_ES",	"LOC_TM_FEATURE_SRI_PADA_DESCRIPTION",		"Maravilla de naturaleza infranqueable de una casilla. Aparece como Montaña y proporciona +1 a Alimentos [ICON_FOOD] y +1 a Fe [ICON_FAITH] a las casillas adyacentes."	),
	("es_ES",	"LOC_TM_FEATURE_SRI_PADA_EFFECT",			"Unidades religiosas entrenadas en la ciudad que tiene esta casilla proporcionan Cultura [ICON_CULTURE] cuando convierten a una ciudad al su religión [ICON_RELIGION] por primera vez."	),
	
	("es_ES",	'LOC_TM_FEATURE_SRI_PADA_QUOTE',	
	'"Una vista extremadamente maravillosa, que está dotada de un esplendor supremo."[NEWLINE]- El Mahabharata'	),
	
	("es_ES",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_SRI_PADA_CHAPTER_HISTORY_PARA_1",	
	"Elevándose sobre la isla de Sri Lanka, Sri Pada (también conocido como el Pico de Adán) es un gran montaña con una forma cónica inusual que se considera sagrada por muchas religiones para la huella que se encuentra en su apogeo. La huella, una gran depresión en una formación rocosa en la cumbre, ha sido atribuida a Buda, Shiva, y Adán. Debido a esto, los seguidores del budismo, el hinduismo, y el islam reverencian a Sri Pada. Cada año, miles de peregrinos caminan durante horas por la montaña para presentar sur respetos en el lugar sagrado."	),

-----------------------------------------------
-- TORRES DEL PAINE
-----------------------------------------------

	("es_ES",	"LOC_TM_FEATURE_TORRES_DEL_PAINE_DESCRIPTION",		"Maravilla de la naturaleza infranqueable de dos casillas. Duplica el rendimiento del terreno de todas las casillas adyacentes."	),
	("es_ES",	"LOC_TM_FEATURE_TORRES_DEL_PAINE_EFFECT",			"Cualquier ciudad que tiene al menos una de estas casillas puede construir un distrito más del que permite el límite de población [ICON_Citizen]."	),

-----------------------------------------------
-- TSINGY
-----------------------------------------------

	("es_ES",	"LOC_TM_FEATURE_TSINGY_DESCRIPTION",	"Maravilla de naturaleza infranqueable de una casilla. Proporciona +1 a Cultura [ICON_CULTURE] y +1 a Ciencia [ICON_SCIENCE] a las casillas adyacentes."	),
	("es_ES",	"LOC_TM_FEATURE_TSINGY_EFFECT",			"En la Civilización que tiene esta casilla, Distritos de Teatro Bombardea culturalmente las casillas adyacentes cuando están construidos y reciben el doble de la Bonificación de adyacencia en ciudades con un Parque Nacional."	),

-----------------------------------------------
-- UBSUNUR HOLLOW
-----------------------------------------------

	("es_ES",	"LOC_TM_FEATURE_UBSUNUR_HOLLOW_DESCRIPTION",	"Maravilla de naturaleza de cuatro casillas. Aparece como Ciénagas y proporciona +2 a Fe [ICON_FAITH], +1 a Alimentos [ICON_FOOD], y +2 a la Producción [ICON_PRODUCTION]."	),
	("es_ES",	"LOC_TM_FEATURE_UBSUNUR_HOLLOW_EFFECT",			"Cualquier Civilización que tiene al menos una de estas casillas consigue 1 Inspiración [ICON_CivicBoosted] cuando obtene un Gran general [ICON_GREATGENERAL]."	),

-----------------------------------------------
-- ULURU
-----------------------------------------------

	("es_ES",	"LOC_TM_FEATURE_ULURU_DESCRIPTION",		"Maravilla de naturaleza infranqueable de una casilla. Proporciona +1 a Cultura [ICON_CULTURE] y +1 a Fe [ICON_FAITH] a casill adyacentes."	),
	("es_ES",	"LOC_TM_FEATURE_ULURU_EFFECT",			"Distritos especializados en casillas de Desierto proporciona +1 a Alimentos [ICON_FOOD] por cualquier Civilización que tiene al menos una de estas casillas."	),

-----------------------------------------------
-- WULINGYUAN
-----------------------------------------------
	
	("es_ES",	"LOC_TM_FEATURE_WULINGYUAN_DESCRIPTION",	"Maravilla de naturaleza infranqueable de dos casillas. Proporciona +2 a Cultura [ICON_CULTURE] a las casillas adyacentes."	),
	("es_ES",	"LOC_TM_FEATURE_WULINGYUAN_EFFECT",			"Grandes obras [ICON_GreatWork_Writing] de la literatura proporcionan +2 a cultura [ICON_CULTURE] y generan el 150% de su Turismo [ICON_TOURISM] habitual por calquier Civilización que tiene al menos una de estas casillas."	),
	
	("es_ES",	'LOC_TM_FEATURE_WULINGYUAN_QUOTE',	
	'"De diez miles valles, los árboles tocan el cielo; en mil picos, cucos llaman; y, después de una noche de lluvia de la montaña, de cada cumbre surgen cientos d cascadas de seda."[NEWLINE]- Wang Wei'	),
	
	("es_ES",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_WULINGYUAN_CHAPTER_HISTORY_PARA_1",	
	"Wulingyuan es un sitio pintoresco e histórico en el centro-sur de China. Es famoso por tener más de 3.000 pilares y picos de arenisca y de cuarcita - muchos de los cuales tienen más de 200 metros de altura - así como barrancos, gargantas, estanques, lagos, ríos, y cascadas. También tiene 40 cuevas y dos puentes naturales, Xianrenqiao ('El Puente de los Inmortales') y Tianqiashengkong	(El Puente a través del Cielo)."	),

-----------------------------------------------
-- YOSEMITE
-----------------------------------------------

	("es_ES",	"LOC_TM_FEATURE_YOSEMITE_DESCRIPTION",		"Maravilla de naturaleza infranqueable de dos casillas. Proporciona +1 de Oro [ICON_GOLD] y +1 a Ciencia [ICON_SCIENCE] a las casillas adyacentes."	),
	("es_ES",	"LOC_TM_FEATURE_YOSEMITE_EFFECT",			"En cualquier Civilización que tiene al menos una de estas casillas, casillas de Bosque proporcionan +1 de Atractivo adicional a las casillas adyacentes."	),

-----------------------------------------------
-- ZHANGYE DANXIA
-----------------------------------------------

	("es_ES",	"LOC_TM_FEATURE_ZHANGYE_DANXIA_DESCRIPTION",	"Maravilla de naturaleza infranqueable de tres casillas. Aparece como Montaña y proporciona +2 a Ciencia [ICON_SCIENCE] a las casillas adyacentes."	),
	("es_ES",	"LOC_TM_FEATURE_ZHANGYE_DANXIA_EFFECT",			"En cualquier ciudad que tiene al menos una de estas casillas, los Centros comerciales y los Distritos de Campus proporcionan +2 puntos de gran personaje [ICON_GREATPERSON] de su tipo."	),

-----------------------------------------------
-- MISC - District Adjacency
-----------------------------------------------

	("es_ES",	"LOC_TM_ADJ_NW_FAITH_DESCRIPTION",			"+{1_num} a Fe [ICON_FAITH] por {1_Num : plural 1?la maravilla natural adyacente; other?las maravillas naturales adyacentes;}."	),
	("es_ES",	"LOC_TM_ADJ_NW_SCIENCE_DESCRIPTION",		"+{1_num} a Ciencia [ICON_SCIENCE] por {1_Num : plural 1?la maravilla natural adyacente; other?las maravillas naturales adyacentes;}."	),
	("es_ES",	"LOC_TM_ADJ_NW_CULTURE_DESCRIPTION",		"+{1_num} a Cultura [ICON_CULTURE] por {1_Num : plural 1?la maravilla natural adyacente; other?las maravillas naturales adyacentes;}."	),
	("es_ES",	"LOC_TM_ADJ_NW_PRODUCTION_DESCRIPTION",		"+{1_num} a la Producción [ICON_PRODUCTION] por {1_Num : plural 1?la maravilla natural adyacente; other?las maravillas naturales adyacentes;}."	),
	("es_ES",	"LOC_TM_ADJ_NW_GOLD_DESCRIPTION",			"+{1_num} de Oro [ICON_GOLD] por {1_Num : plural 1?la maravilla natural adyacente; other?las maravillas naturales adyacentes;}."	),

-----------------------------------------------
-- MISC - Naturlist
-----------------------------------------------

	("es_ES",	"LOC_TM_UNIT_NATURALIST_DESCRIPTION",	"Un civil del final del juego que puede crear un Parque nacional para atraer a los Turistas [ICON_Tourism]. Debe adquirirse con Oro [ICON_GOLD]."	),

-----------------------------------------------
-- MOD SUPPORT
-----------------------------------------------

	("es_ES",	"LOC_TM_FEATURE_FUJI_DESCRIPTION",		"Maravilla de naturaleza infranqueable de una casilla. Aparece como Montaña y proporciona +1 a Cultura [ICON_CULTURE] y +1 a Fe [ICON_FAITH]. Districts en casillas adyacentes a esta casilla proporcionan +2 puntos de gran personaje [ICON_GREATPERSON] de su tipo."	);
