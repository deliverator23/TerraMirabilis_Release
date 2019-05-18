/*
	Localisation
	Language: Portuguese ("pt_BR")
	Credits: Gabriel ("lornard")

	Guide:
	~ Make a copy of this file on your local drive. This is to ensure that your work isn't overwritten when the mod gets updated on Steam.
	~ Do not change anything in UPPERCASE text, including [ICONS]. These are important references.
	~ Keep your changes inside the "quotation marks"
		
	Thank you for your help :) just ask us if you have any questions.
*/

INSERT OR REPLACE INTO LocalizedText (Language, Tag, Text, Gender, Plurality)
VALUES

	("pt_BR",	"LOC_FEATURE_BARRINGER_CRATER_NAME",				"Cratera de Barringer|Crateras de Barringer",	"feminine|feminine",	"1|2"	),
	("pt_BR",	"LOC_FEATURE_CERRO_DE_POTOSI_NAME",					"Cerro Potosí|Cerros Potosí",					"masculine|masculine",	"1|2"	),
	("pt_BR",	"LOC_FEATURE_GRAND_MESA_NAME",						"Grand Mesa|Grand Mesa",						"feminine:sinartfem",	"1|2"	),
	("pt_BR",	"LOC_FEATURE_KAILASH_NAME",							"Monte Kailash|Montes Kailash",					"masculine|masculine",	"1|2"	),
	("pt_BR",	"LOC_FEATURE_KRAKATOA_NAME",						"Krakatoa|Krakatoa",							"masculine:sinartmasc",	"1|2"	),
	("pt_BR",	"LOC_FEATURE_LAKE_VICTORIA_NAME",					"Lago Vitória|Lagos Vitória",					"masculine|masculine",	"1|2"	),
	("pt_BR",	"LOC_FEATURE_MOTLATSE_CANYON_NAME",					"Canyon Motlatse|Canyons Motlatse",				"masculine|masculine",	"1|2"	),
	("pt_BR",	"LOC_FEATURE_OLD_FAITHFUL_NAME",					"Velho Fiel|Velhos Fiéis",						"masculine|masculine",	"1|2"	),
	("pt_BR",	"LOC_FEATURE_GIBRALTAR_NAME",						"Rochedo de Gibraltar|Rochedos de Gibraltar",	"masculine|masculine",	"1|2"	),
	("pt_BR",	"LOC_FEATURE_SALAR_DE_UYUNI_NAME",					"Salar de Uyuni|Salares de Uyuni",				"masculine|masculine",	"1|2"	),
	("pt_BR",	"LOC_FEATURE_SINAI_NAME",							"Monte Sinai|Montes Sinai",						"masculine|masculine",	"1|2"	),
	("pt_BR",	"LOC_FEATURE_SRI_PADA_NAME",						"Sri Pada|Sri Pada",							"masculine:sinartmasc",	"1|2"	),
	("pt_BR",	"LOC_FEATURE_WULINGYUAN_NAME",						"Wulingyuan|Wulingyuan",						"masculine:sinartmasc",	"1|2"	),

	("pt_BR",	"LOC_FEATURE_MOSI_OA_TUNYA_NAME",					"Mosi-oa-Tunya|Mosi-oa-Tunya",					"masculine:sinartmasc",	"1|2"	),
	("pt_BR",	"LOC_FEATURE_NAMIB_NAME",							"Deserto do Namibe|Desertos do Namibe",			"masculine|masculine",	"1|2"	),
	("pt_BR",	"LOC_FEATURE_OUNIANGA_NAME",						"Lagos de Ounianga|Lagos de Ounianga",			"masculine|masculine",	"2|2"	),
	("pt_BR",	"LOC_FEATURE_VREDEFORT_DOME_NAME",					"Domo de Vredefort|Domos de Vredefort",			"masculine|masculine",	"1|2"	),

	("pt_BR",	"LOC_RESOURCE_TM_TORTOISE_NAME",					"Tartarugas-das-galápagos",						"feminine",				"2"		),
	("pt_BR",	"LOC_RESOURCE_TM_LITHIUM_NAME",						"Lítio",										"masculine",			"1"		),

	("pt_BR",	"LOC_FEATURE_BIOLUMINESCENT_BAY_NAME",				"Baía Bioluminescente|Baías Bioluminescentes",	"feminine|feminine",	"1|2"	),
	("pt_BR",	"LOC_FEATURE_DALLOL_NAME",							"Dallol|Dallol",								"masculine:sinartmasc",	"1|2"	),

	("pt_BR",	"LOC_RESOURCE_TM_SYLVITE_NAME",						"Silvina",										"feminine",				"1"		);
	
INSERT OR REPLACE INTO LocalizedText (Language, Tag, Text)
VALUES

-----------------------------------------------
-- BARRIER REEF
-----------------------------------------------

	("pt_BR",		"LOC_TM_FEATURE_BARRIER_REEF_DESCRIPTION",			"Maravilha natural de 2 painéis. Fornece +2 de [ICON_Food] Comida, +1 de [ICON_GOLD] Ouro, e +2 de [ICON_Science] Ciência."	),
	("pt_BR",		"LOC_TM_FEATURE_BARRIER_REEF_EFFECT",				"Recursos marítmos melhorados recebem +1 de [ICON_GOLD] Ouro para qualquer civilização que possua pelo menos um destes painéis."	),
	("pt_BR",		"LOC_TM_FEATURE_BARRIER_REEF_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_BARRIER_REEF_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_BARRIER_REEF_EFFECT}"	),

-----------------------------------------------
-- BARRINGER CRATER
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_BARRINGER_CRATER_DESCRIPTION",			"Maravilha natural de 1 painel. Fornece +3 de [ICON_Science] Ciência e +2 de [ICON_GOLD] Ouro."	),
	("pt_BR",	"LOC_TM_FEATURE_BARRINGER_CRATER_EFFECT",				"Recebe +20% de [ICON_PRODUCTION] Produção para projetos de Corrida Espacial na cidade que possui este painel."	),
	("pt_BR",	"LOC_TM_FEATURE_BARRINGER_CRATER_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_BARRINGER_CRATER_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_BARRINGER_CRATER_EFFECT}"	),
			
	("pt_BR",	'LOC_TM_FEATURE_BARRINGER_CRATER_QUOTE',
	'"Na verdade, podemos agora provar que esta cratera é devido à colisão com a terra de um corpo extraterrestre, possivelmente um pequeno asteróide, que era presumivelmente metálico por natureza." [NEWLINE] - Daniel Barringer'	),
	
	("pt_BR",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_BARRINGER_CRATER_CHAPTER_HISTORY_PARA_1",	
	"A cratera de Barringer é uma enorme cratera de meteorito localizada no Arizona, nos Estados Unidos da América. A cratera tem 1.200 metros de diâmetro e os cientistas acreditam que ela foi criada há 50 mil anos, quando o local foi atingido por um grande meteorito de níquel-ferro pesando, na época do impacto, 160.000 toneladas e se movendo a 44.000 quilômetros. por hora."	),

-----------------------------------------------
-- BIOLUMINESCENT BAY
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_BIOLUMINESCENT_BAY_DESCRIPTION",		"Maravilha natural de 1 painel. `Fornece +2 de [ICON_Science] Ciência, +2 de [ICON_CULTURE] Cultura, e +1 de [ICON_GOLD] Ouro."	),
	("pt_BR",	"LOC_TM_FEATURE_BIOLUMINESCENT_BAY_EFFECT",				"Rotas Comerciais [ICON_TRADEROUTE] internacionais recebem +1 de [ICON_GOLD] Ouro para cada Barco de Pesca na cidade de origem para qualquer civilização que possua este painel."	),
	("pt_BR",	"LOC_TM_FEATURE_BIOLUMINESCENT_BAY_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_BIOLUMINESCENT_BAY_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_BIOLUMINESCENT_BAY_EFFECT}"	),
	
	("pt_BR",	'LOC_TM_FEATURE_BIOLUMINESCENT_BAY_QUOTE',
	'"A emissão de luz de fogo, raios, estrelas ou seres vivos atrai a atenção de qualquer ser humano. No caso da bioluminescência a luz tem um brilho estranho, algo mágico e misterioso. "[NEWLINE] - Cassius Stevani'	),
	
	("pt_BR",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_BIOLUMINESCENT_BAY_CHAPTER_HISTORY_PARA_1",	
	"A Baía Bioluminescente (também conhecida como Puerto Mosquito, ou Baía de Mosquito) é considerada o melhor exemplo de uma baía bioluminescente nos Estados Unidos e está listada como um marco natural nacional, um dos cinco em Porto Rico. A luminescência na baía é causada por um microrganismo, o dinoflagelado Pyrodinium bahamense, que brilha sempre que a água é perturbada, deixando um rastro de azul neon."	),
	("pt_BR",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_BIOLUMINESCENT_BAY_CHAPTER_HISTORY_PARA_2",	
	"Uma combinação de fatores cria as condições necessárias para a bioluminescência: árvores de mangue vermelho cercam a água, uma completa falta de desenvolvimento moderno ao redor da baía, a água é fria e profunda o bastante, e um pequeno canal para o oceano mantém os dinoflagelados na baía . Este pequeno canal foi criado artificialmente, sendo o resultado de tentativas dos ocupantes de navios espanhóis de sufocar a baía do oceano. Os espanhóis acreditavam que a bioluminescência que encontraram lá enquanto exploravam a área pela primeira vez era obra do diabo e tentavam impedir que a água do oceano entrasse na baía soltando pedras enormes no canal. Os espanhóis só conseguiram preservar e aumentar a luminescência na baía agora isolada."	),

-----------------------------------------------
-- CERRO DE POTOSI
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_CERRO_DE_POTOSI_DESCRIPTION",			"Maravilha natural intransponível de 1 painel. Aparece como uma Montanha. Painéis adjacentes recebem +1 de [ICON_PRODUCTION] Produção e +1 de [ICON_GOLD] Ouro."	),
	("pt_BR",	"LOC_TM_FEATURE_CERRO_DE_POTOSI_EFFECT",				"Rotas Comerciais [ICON_TradeRoute] internacionais da cidade que possui este painel recebem +4 de [ICON_GOLD] Ouro."	),
	("pt_BR",	"LOC_TM_FEATURE_CERRO_DE_POTOSI_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_CERRO_DE_POTOSI_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_CERRO_DE_POTOSI_EFFECT}"	),

	("pt_BR",	'LOC_TM_FEATURE_CERRO_DE_POTOSI_QUOTE',	
	'"Eu sou o rico Potosí, tesouro do mundo, rei de todas as montanhas e inveja dos reis. "[NEWLINE] - Primeiro Brasão de Potosí'	),
	
	("pt_BR",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_CERRO_DE_POTOSI_CHAPTER_HISTORY_PARA_1",	
	"Localizada no sul da Bolívia, a montanha de Potosí produziu quase toda a prata extraída pelos espanhóis durante seus dias imperiais. Uma vez removido da montanha, foi levado por lhama e mula para a costa, onde foi então carregado para navios de tesouro que navegam de volta para a Europa. Quase 41.000 toneladas de prata pura foram extraídas ao longo de 200 anos, dos quais 8.200 foram diretamente para a coroa espanhola. Depois de 1800, as principais minas de prata foram esgotadas, mas a mineração de Potosi ainda continua hoje - algumas para a prata, mas agora principalmente para estanho."	),

-----------------------------------------------
-- CHOCOLATE HILLS
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_CHOCOLATE_HILLS_DESCRIPTION",			"Maravilha natural de 4 painéis. Fornece +2 de [ICON_CULTURE] Cultura, +2 de [ICON_PRODUCTION] Produção e +1 de [ICON_Food] Comida."	),
	("pt_BR",	"LOC_TM_FEATURE_CHOCOLATE_HILLS_EFFECT",				"Qualquer civilização que possua pelo menos um destes painéis exerce +25% de [ICON_TOURISM] Turismo sobre outras civilizações com que eles tenham uma Rota Comercial [ICON_TRADEROUTE]."	),
	("pt_BR",	"LOC_TM_FEATURE_CHOCOLATE_HILLS_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_CHOCOLATE_HILLS_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_CHOCOLATE_HILLS_EFFECT}"	),
	
-----------------------------------------------
-- CLIFFS OF DOVER
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_CLIFFS_DOVER_DESCRIPTION",				"Maravilha natural de 2 painéis. Aparece como um despenhadeiro. Fornece +3 de [ICON_CULTURE] Cultura, +1 de [ICON_Food] Comida, e +1 de [ICON_GOLD] Ouro."	),
	("pt_BR",	"LOC_TM_FEATURE_CLIFFS_DOVER_EFFECT",					"Portos recebem bônus de adjacência de despenhadeiros para qualquer civilização que possua pelo menos um destes painéis."	),
	("pt_BR",	"LOC_TM_FEATURE_CLIFFS_DOVER_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_CLIFFS_DOVER_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_CLIFFS_DOVER_EFFECT}"	),
	
	("pt_BR",	"LOC_MODIFIER_TM_FEATURE_CLIFFS_DOVER_ADJACENCY_DESCRIPTION",	"+{1_num} de [ICON_GOLD] Ouro de adjacência {1_Num : plural 1?cliff; other?cliffs;}."	),

-----------------------------------------------
-- CRATER LAKE
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_CRATER_LAKE_DESCRIPTION",			"Maravilha natural de 1 painel. Aparece como um Lago e fornece Água Doce. Fornece +4 de [ICON_FAITH] Fé e +1 de [ICON_Science] Ciência."	),
	("pt_BR",	"LOC_TM_FEATURE_CRATER_LAKE_EFFECT",				"Pode comprar qualquer edifício com [ICON_Faith] Fé na Cidade que possui este painel."	),
	("pt_BR",	"LOC_TM_FEATURE_CRATER_LAKE_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_CRATER_LAKE_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_CRATER_LAKE_EFFECT}"	),
	
-----------------------------------------------
-- DALLOL
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_DALLOL_DESCRIPTION",		"Maravilha natural de 1 painel. Fornece +2 de [ICON_Science] Ciência, +2 de [ICON_PRODUCTION] Produção e +1 de [ICON_GOLD] Ouro."	),
	("pt_BR",	"LOC_TM_FEATURE_DALLOL_EFFECT",				"Fornece uma cópia do recurso de luxo [ICON_RESOURCE_TM_SYLVITE] Silvita (não negociável), que fornece +6 [ICON_Amenities] de Amenidades, para qualquer Civilização que possua este painel."	),
	("pt_BR",	"LOC_TM_FEATURE_DALLOL_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_DALLOL_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_DALLOL_EFFECT}"	),
			
	("pt_BR",	'LOC_TM_FEATURE_DALLOL_QUOTE',	
	'"Há inferno, há escuridão, há o fosso sulfuroso - queima, escaldante, fedorento, consumo!" [NEWLINE] - William Shakespeare, King Lear'	),
	
	("pt_BR",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_DALLOL_CHAPTER_HISTORY_PARA_1",	
	"Dallol é um vulcão de Cone de Escória na Depressão Danakil, a nordeste da Cordilheira Erta Ale na Etiópia. Ele foi formado pela intrusão de magma basáltico em depósitos de sal do Mioceno e subsequente atividade hidrotermal. As erupções freáticas ocorreram em 1926, formando o vulcão Dallol, enquanto numerosas outras crateras de erupção pontuam as salinas próximas. Essas crateras são as mais baixas aberturas vulcânicas subaeriais conhecidas no mundo, a 45 m ou mais abaixo do nível do mar."	),
	("pt_BR",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_DALLOL_CHAPTER_HISTORY_PARA_2",	
	"Numerosas fontes termais descarregam salmoura e líquido ácido aqui. Pequenos gêiseres temporários, generalizados, produzem cones de sal. Os depósitos de Dallol incluem corpos significativos de potassa encontrados diretamente na superfície. O termo 'Dallol' foi cunhado pelo povo Afar e significa 'dissolução' ou 'desintegração', descrevendo uma paisagem de lagoas de ácido verde (valores de pH menores que 1) e planícies de deserto de óxido de ferro, enxofre e sal."	),

	("pt_BR",	"LOC_PEDIA_RESOURCES_PAGE_RESOURCE_TM_SYLVITE_CHAPTER_HISTORY_PARA_1",
	"Em Dallol, na Etiópia, diz-se que a produção de potássio atingiu 51.000 toneladas depois de 1917, e entre os anos 1925-29, uma empresa italiana extraiu 25.000 toneladas de Silvita. Em 1965, cerca de 10.000 buracos foram perfurados em 65 locais em toda a Dallol."	),
	("pt_BR",	"LOC_PEDIA_RESOURCES_PAGE_RESOURCE_TM_SYLVITE_CHAPTER_HISTORY_PARA_2",
	"Nomeado em homenagem ao químico holandês, François Sylvius de le Boe, a Silvita foi descrita pela primeira vez no Monte Vesúvio perto de Napoli em Itália. Encontrado em muitos depósitos de evaporitos em todo o mundo, Sylvite é um dos últimos minerais evaporíticos a precipitar fora da solução e, como tal, só é encontrado em áreas salinas muito secas. É usado para prismas e lentes espectroscópicas, mas seu principal uso é como fertilizante de potássio."	),

-----------------------------------------------
-- DEAD SEA
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_DEAD_SEA_DESCRIPTION",				"Maravilha natural de 2 painéis. Aparece como um Lago. Fornece +2 de [ICON_FAITH] Fé, +2 de [ICON_CULTURE] Cultura, e +1 de [ICON_GOLD] Ouro."	),
	("pt_BR",	"LOC_TM_FEATURE_DEAD_SEA_EFFECT",					"Unidades se curam um adicional de 10 HP quando [ICON_Fortified] Fortificadas para qualquer Civilização que possua pelo menos um destes painéis."	),
	("pt_BR",	"LOC_TM_FEATURE_DEAD_SEA_EFFECT_DESCRIPTION",		"{LOC_TM_FEATURE_DEAD_SEA_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_DEAD_SEA_EFFECT}"	),

-----------------------------------------------
-- DELICATE ARCH
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_DELICATE_ARCH_DESCRIPTION",			"Maravilha natural intransponível de 1 painel. Painéis adjacentes recebem +1 de [ICON_CULTURE] Cultura e +1 de [ICON_GOLD] Ouro."	),
	("pt_BR",	"LOC_TM_FEATURE_DELICATE_ARCH_EFFECT",				"Painéis são 20% mais baratos para compra para qualquer Civilização que possua este painel."	),
	("pt_BR",	"LOC_TM_FEATURE_DELICATE_ARCH_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_DELICATE_ARCH_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_DELICATE_ARCH_EFFECT}"	),

-----------------------------------------------
-- EVEREST
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_EVEREST_DESCRIPTION",			"Maravilha natural intransponível de 3 painéis. Aparece como uma Montanha. Painéis adjacentes recebem +2 de [ICON_FAITH] Fé."	),
	("pt_BR",	"LOC_TM_FEATURE_EVEREST_EFFECT",				"Unidades Religiosas ignoram penalidades de [ICON_Movement] Movimento de colinas e recebem +1 carga de evangelização para qualquer Civilização que possua pelo menos um destes painéis."	),
	("pt_BR",	"LOC_TM_FEATURE_EVEREST_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_EVEREST_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_EVEREST_EFFECT}"	),

-----------------------------------------------
-- EYE OF THE SAHARA
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_EYE_OF_THE_SAHARA_DESCRIPTION",			"Maravilha natural de 3 painéis. Fornece +2 de [ICON_PRODUCTION] Produção, +2 de [ICON_Science] Ciência, e +1 de [ICON_GOLD] Ouro."	),
	("pt_BR",	"LOC_TM_FEATURE_EYE_OF_THE_SAHARA_EFFECT",				"Qualquer Civilização que possua pelo menos um destes painéis recebe +1 Ponto de Era de Momentos Históricos se aquele Momento normalmente vale pelo menos mais +4 Pontos de Era."	),
	("pt_BR",	"LOC_TM_FEATURE_EYE_OF_THE_SAHARA_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_EYE_OF_THE_SAHARA_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_EYE_OF_THE_SAHARA_EFFECT}"	),

-----------------------------------------------
-- EYJAFJALLAJOKULL
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_EYJAFJALLAJOKULL_DESCRIPTION",				"Maravilha natural intransponível de 2 painéis. Aparece como uma Montanha. Painéis adjacentes recebem +1 de [ICON_CULTURE] Cultura e +1 de [ICON_Food] Comida."	),
	("pt_BR",	"LOC_TM_FEATURE_EYJAFJALLAJOKULL_EFFECT",					"Distritos especializados em painéis de Tundra ou Neve recebem +1 de [ICON_Food] Comida para qualquer Civilização que possua pelo menos um destes painéis."	),

	("pt_BR",	"LOC_TM_FEATURE_EYJAFJALLAJOKULL_XP2_DESCRIPTION",			"Maravilha natural intransponível de 2 painéis. Aparece como um Vulcão. Painéis adjacentes recebem +1 de [ICON_CULTURE] Cultura. Fornece bonus adicionais em erupções ao custo de [ICON_CITIZEN] População e dano à infraestrutura. Sempre Ativo."	),
	("pt_BR",	"LOC_TM_FEATURE_EYJAFJALLAJOKULL_EFFECT",					"Distritos especializados em painéis de Tundra ou Neve recebem +1 de [ICON_Food] Comida para qualquer Civilização que possua pelo menos um destes painéis."	),
	("pt_BR",	"LOC_TM_FEATURE_EYJAFJALLAJOKULL_EFFECT_XP2_DESCRIPTION",	"{LOC_TM_FEATURE_EYJAFJALLAJOKULL_XP2_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_EYJAFJALLAJOKULL_EFFECT}"	),

-----------------------------------------------
-- GALAPAGOS
-----------------------------------------------
	
	("pt_BR",	"LOC_TM_FEATURE_GALAPAGOS_DESCRIPTION",		"Maravilha natural intransponível de 2 painéis. Painéis adjacentes recebem +2 de [ICON_Science] Ciência."	),
	("pt_BR",	"LOC_TM_FEATURE_GALAPAGOS_EFFECT",				"Fornece uma cópia do recurso de luxo [ICON_RESOURCE_TM_TORTOISE] Tartarugas-das-galápagos (não negociável), que fornece +6 de [ICON_Amenities] Serviços, para qualquer Civilização que possua pelo menos um destes painéis."	),
	("pt_BR",	"LOC_TM_FEATURE_GALAPAGOS_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_GALAPAGOS_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_GALAPAGOS_EFFECT}"	),

	("pt_BR",	"LOC_PEDIA_RESOURCES_PAGE_RESOURCE_TM_TORTOISE_CHAPTER_HISTORY_PARA_1",
	"A tartaruga gigante de Galápagos é a maior espécie viva de tartaruga, pesando até 417 kg. Hoje, tartarugas gigantes existem em apenas dois arquipélagos remotos, nas Ilhas Galápagos e em Aldabra. Seus números diminuíram de mais de 250.000 no século 16 para cerca de 3.000 em 1970, devido à superexploração das espécies de carne e óleo. Acredita-se que a extinção da maioria das linhagens de tartaruga-gigante tenha sido causada pela predação por humanos, já que as tartarugas não possuem predadores naturais no remoto arquipélago de Galápagos."	),

-----------------------------------------------
-- GIANTS CAUSEWAY
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_GIANTS_CAUSEWAY_DESCRIPTION",			"Maravilha natural intransponível de 2 painéis. Painéis adjacentes recebem +2 de [ICON_CULTURE] Cultura."	),
	("pt_BR",	"LOC_TM_FEATURE_GIANTS_CAUSEWAY_EFFECT",				"Unidades terrestres treinadas em uma Cidade que possui pelo menos um destes painéis começam com uma [ICON_Promotion] Promoção."	),
	("pt_BR",	"LOC_TM_FEATURE_GIANTS_CAUSEWAY_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_GIANTS_CAUSEWAY_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_GIANTS_CAUSEWAY_EFFECT}"	),

-----------------------------------------------
-- GOBUSTAN
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_GOBUSTAN_DESCRIPTION",			"Maravilha natural de 3 painéis. Fornece +3 de [ICON_CULTURE] Cultura, +1 de [ICON_PRODUCTION] Produção, e +1 de [ICON_Science] Ciência."	),
	("pt_BR",	"LOC_TM_FEATURE_GOBUSTAN_EFFECT",				"Fontes Melhoradas de [ICON_RESOURCE_OIL] Petróleo acumulam 2 unidades adicionais por turno para qualquer Civilização que possua pelo menos um destes painéis."	),
	("pt_BR",	"LOC_TM_FEATURE_GOBUSTAN_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_GOBUSTAN_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_GOBUSTAN_EFFECT}"	),


-----------------------------------------------
-- GRAND MESA
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_GRAND_MESA_DESCRIPTION",		"Maravilha natural intransponível de 1 painel. Painéis adjacentes recebem +1 de [ICON_Food] Comida e +1 de [ICON_CULTURE] Cultura."	),
	("pt_BR",	"LOC_TM_FEATURE_GRAND_MESA_EFFECT",				"Unidades ignoram penalidades de [ICON_Movement] Movimento em Florestas ou Florestas Tropicais para qualquer Civilização que possua este painel."	),
	("pt_BR",	"LOC_TM_FEATURE_GRAND_MESA_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_GRAND_MESA_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_GRAND_MESA_EFFECT}"	),
	
	("pt_BR",	'LOC_TM_FEATURE_GRAND_MESA_QUOTE',	
	'"Conservação significa o uso sábio da terra e seus recursos para o bem duradouro dos homens. "[NEWLINE] - Gifford Pinchot'	),
	
	("pt_BR",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_GRAND_MESA_CHAPTER_HISTORY_PARA_1",	
	"A Grand Mesa é uma grande formação geológica no Colorado, nos Estados Unidos da América. A cerca de 1.500 metros acima do território circundante e com uma área de 1300 quilômetros quadrados, é a maior mesa do mundo. A Grand Mesa tem uma camada de basalto vulcânico no topo, que resiste à erosão. Não se elevou tanto, permanecendo em sua altura original, com o terreno circundante sendo corroído pela ação dos rios Colorado e Gunnison. A Floresta Nacional de Grand Mesa (originalmente chamada Battlement Mesa Forest Reserve) foi criada por Benjamin Harrison em 24 de dezembro de 1892. Foi a terceira reserva florestal criada nos Estados Unidos."	),

-----------------------------------------------
-- HA LONG BAY
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_HA_LONG_BAY_DESCRIPTION",			"Maravilha natural de 2 painéis. Fornece +2 de [ICON_CULTURE] Cultura, +2 de [ICON_Food] Comida e +1 de [ICON_PRODUCTION] Produção."	),
	("pt_BR",	"LOC_TM_FEATURE_HA_LONG_BAY_EFFECT",				"Portos fornecem +2 de [ICON_Housing] Habitação para qualquer Civilização que possua pelo menos um destes painéis."	),
	("pt_BR",	"LOC_TM_FEATURE_HA_LONG_BAY_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_HA_LONG_BAY_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_HA_LONG_BAY_EFFECT}"	),

-----------------------------------------------
-- IK-KIL
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_IK_KIL_DESCRIPTION",			"Maravilha natural intransponível de 1 painel. Fornece Água Doce. Painéis adjacentes recebem +1 de [ICON_Science] Ciência, e +1 de [ICON_FAITH] Fé."	),
	("pt_BR",	"LOC_TM_FEATURE_IK_KIL_EFFECT",					"+15% de [ICON_PRODUCTION] Produção para Maravilhas para qualquer Civilização que possua este painel."	),
	("pt_BR",	"LOC_TM_FEATURE_IK_KIL_EFFECT_DESCRIPTION",		"{LOC_TM_FEATURE_IK_KIL_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_IK_KIL_EFFECT}"	),

-----------------------------------------------
-- KAILASH
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_KAILASH_DESCRIPTION",			"Maravilha natural intransponível de 1 painel. Aparece como uma Montanha. Painéis adjacentes recebem +1 de [ICON_FAITH] Fé e +1 de [ICON_CULTURE] Cultura."	),
	("pt_BR",	"LOC_TM_FEATURE_KAILASH_EFFECT",				"Receive +1 de [ICON_CULTURE] Cultura para cada Cidade estrangeira que segue a [ICON_Religion] Religião da Civilização que possui este painel."	),
	("pt_BR",	"LOC_TM_FEATURE_KAILASH_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_KAILASH_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_KAILASH_EFFECT}"	),
		
	("pt_BR",	'LOC_TM_FEATURE_KAILASH_QUOTE',	
	'"Depois de ter assim instruído os piedosos, o Senhor Brahma foi embora com seus antepassados e líderes do povo que ele levou de seu próprio lugar para a residência do Senhor Shiva, Kailash, a melhor de todas as montanhas que é tão querida ao mestre. "[NEWLINE] - O Bhagavata Purana'	),
	
	("pt_BR",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_KAILASH_CHAPTER_HISTORY_PARA_1",	
	"O pico sagrado do Monte Kailash, encontrado no Himalaia do Tibete, é apreciado por um número de religiões, particularmente os seguidores do hinduísmo. Acredita-se ser a casa do Senhor Shiva, que habita na montanha em um estado de felicidade eterna. Acredita-se que o monte Kailash esteja entre as mais difíceis de todas as peregrinações religiosas, pois as duras condições dissuadem muitos pretensos peregrinos, e a montanha não é acessível por nenhuma forma de transporte moderno."	),

-----------------------------------------------
-- KILIMANJARO
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_KILIMANJARO_DESCRIPTION",				"Maravilha natural intransponível de 1 painel. Aparece como uma Montanha. Painéis adjacentes recebem +2 de [ICON_Food] Comida."	),
	("pt_BR",	"LOC_TM_FEATURE_KILIMANJARO_EFFECT",					"Recebe +1 [ICON_Citizen] População na cidade que possui este painel quando um distrito especializado é construído."	),
	
	("pt_BR",	"LOC_TM_FEATURE_KILIMANJARO_XP2_DESCRIPTION",			"Maravilha natural intransponível de 1 painel. Aparece como um Vulcão. Painéis adjacentes recebem +1 de [ICON_Food] Comida. Fornece bonus adicionais em erupções ao custo de [ICON_CITIZEN] População e dano à infraestrutura. Sempre Ativo."	),
	("pt_BR",	"LOC_TM_FEATURE_KILIMANJARO_EFFECT",					"Recebe +1 [ICON_Citizen] População na cidade que possui este painel quando um distrito especializado é construído."	),
	("pt_BR",	"LOC_TM_FEATURE_KILIMANJARO_EFFECT_XP2_DESCRIPTION",	"{LOC_TM_FEATURE_KILIMANJARO_XP2_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_KILIMANJARO_EFFECT}"	),


-----------------------------------------------
-- KRAKATOA
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_KRAKATOA_DESCRIPTION",		"Maravilha natural intransponível de 1 painel. Aparece como uma Montanha. Painéis adjacentes recebem +1 de [ICON_SCIENCE] Ciência e +1 de [ICON_CULTURE]  Cultura."	),
	("pt_BR",	"LOC_TM_FEATURE_KRAKATOA_EFFECT",			"A cidade que possui este painel recebe +2 de [ICON_SCIENCE] Ciência para cada distrito especializado. Se a cidade possui um Parque Nacional, recebe +3 de [ICON_SCIENCE] Ciência para cada distrito."	),
	("pt_BR",	"LOC_TM_FEATURE_KRAKATOA_EFFECT_XP1",				"Qualquer Civilização que possuir este painel recebe uma [ICON_TechBoosted] Eureka ao conquistar um [ICON_GreatAdmiral] Grande Almirante."	),

	("pt_BR",	"LOC_TM_FEATURE_KRAKATOA_XP2_DESCRIPTION",			"Maravilha natural intransponível de 1 painel. Aparece como um Vulcão. Painéis adjacentes recebem +1 de [ICON_Science] Ciência. Fornece bonus adicionais em erupções ao custo de [ICON_CITIZEN] População e dano à infraestrutura. Sempre Ativo."	),

	("pt_BR",	"LOC_TM_FEATURE_KRAKATOA_EFFECT_DESCRIPTION",		"{LOC_TM_FEATURE_KRAKATOA_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_KRAKATOA_EFFECT}"	),
	("pt_BR",	"LOC_TM_FEATURE_KRAKATOA_EFFECT_XP1_DESCRIPTION",	"{LOC_TM_FEATURE_KRAKATOA_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_KRAKATOA_EFFECT_XP1}"	),
	("pt_BR",	"LOC_TM_FEATURE_KRAKATOA_EFFECT_XP2_DESCRIPTION",	"{LOC_TM_FEATURE_KRAKATOA_XP2_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_KRAKATOA_EFFECT_XP1}"	),
	
	("pt_BR",	'LOC_TM_FEATURE_KRAKATOA_QUOTE',	
	'"Eu vi com espanto que a ilha de Krakatoa estava completamente queimada e estéril diante dos nossos olhos e que em quatro locais estava lançando grandes pedaços de fogo." [NEWLINE] - Johann Wilhelm Vogel'	),
	
	("pt_BR",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_KRAKATOA_CHAPTER_HISTORY_PARA_1",	
	"Krakatoa é uma ilha vulcânica localizada na Indonésia, entre as ilhas de Java e Sumatra. O vulcão explodiu violentamente em agosto de 1883 com uma força equivalente a 13.000 vezes o poder da bomba nuclear de Hiroshima. A explosão é amplamente considerada como o som mais alto já registrado. A erupção destruiu mais da metade da ilha e foi ouvida em partes da Austrália, a 3.200 quilômetros de distância. Cerca de 37.000 pessoas foram mortas pela erupção e subsequentes tsunamis. O vulcão tem emitido lava constantemente nos últimos 80 anos, reconstruindo o cone a uma taxa de cerca de 5 metros por ano."	),

	("pt_BR",	"LOC_RANDOM_EVENT_KRAKATOA_GENTLE_NAME",				"Erupção Suave"	),
	("pt_BR",	"LOC_RANDOM_EVENT_KRAKATOA_GENTLE_DESCRIPTION",			"Nuvens de fumaça da montanha de fogo que as pessoas chamam de Krakatoa. Isso poderia ser um presságio de que as coisas estão por vir?"	),
	("pt_BR",	"LOC_RANDOM_EVENT_KRAKATOA_CATASTROPHIC_NAME",			"Erupção Catastrófica"	),
	("pt_BR",	"LOC_RANDOM_EVENT_KRAKATOA_CATASTROPHIC_DESCRIPTION",	"Devemos ter abandonado nossos deuses, pois quando olhamos para o céu azul e pedimos chuva, foi o Krakatoa que atendeu com fogo."	),
	("pt_BR",	"LOC_RANDOM_EVENT_KRAKATOA_MEGACOLOSSAL_NAME",			"Erupção Megacolossal"	),
	("pt_BR",	"LOC_RANDOM_EVENT_KRAKATOA_MEGACOLOSSAL_DESCRIPTION",	"Amaldiçoado seja o chão sobre o qual Krakatoa projeta sua poderosa sombra. Tanto o fogo como a rocha foram lançado sobre nós. Pois do chão fomos levados para as cinzas que somos ... e para as cinzas retornamos."	),

-----------------------------------------------
-- LAKE RETBA
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_LAKE_RETBA_DESCRIPTION",			"Maravilha natural de 2 painéis. Aparece como um Lago. Fornece +2 de [ICON_CULTURE] Cultura, +2 de [ICON_GOLD] Ouro, +1 de [ICON_PRODUCTION] Produção."	),
	("pt_BR",	"LOC_TM_FEATURE_LAKE_RETBA_EFFECT",					"Qualquer Civilização que possua pelo menos um destes painéis recebe +2 de [ICON_GOLD] Ouro para cada cópia única de recurso de luxo que possua."	),
	("pt_BR",	"LOC_TM_FEATURE_LAKE_RETBA_EFFECT_DESCRIPTION",		"{LOC_TM_FEATURE_LAKE_RETBA_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_LAKE_RETBA_EFFECT}"	),

-----------------------------------------------
-- LAKE VICTORIA
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_LAKE_VICTORIA_DESCRIPTION",				"Maravilha natural de 4 painéis. Aparece como um Lago and fornece Água Doce. Fornece +3 de [ICON_Food] Comida, +1 de [ICON_CULTURE] Cultura, e +1 de [ICON_GOLD] Ouro."	),
	("pt_BR",	"LOC_TM_FEATURE_LAKE_VICTORIA_EFFECT",					"Qualquer Civilização que possua pelo menos um destes painéis recebe +15% [ICON_FoodSurplus] Growth in Cities not on their original [ICON_Capital] Capital's continent."	),
	("pt_BR",	"LOC_TM_FEATURE_LAKE_VICTORIA_EFFECT_DESCRIPTION",		"{LOC_TM_FEATURE_LAKE_VICTORIA_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_LAKE_VICTORIA_EFFECT}"	),
	
	("pt_BR",	'LOC_TM_FEATURE_LAKE_VICTORIA_QUOTE',	
	'"Vi que o velho pai Nilo sem dúvida se ergue na Victoria Nyanza e, como eu havia predito, aquele lago é a grande fonte do rio sagrado que embalava o primeiro expositor de nossa crença." [NEWLINE] - John Hanning Speke'	),
	
	("pt_BR",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_LAKE_VICTORIA_CHAPTER_HISTORY_PARA_1",	
	"Com uma superfície de mais de 68.800 quilômetros quadrados, o Lago Vitória é o maior lago da África, o segundo maior lago de água doce da Terra e o maior lago tropical do mundo. Dois grandes rios deixam o lago, o Nilo Branco e o Katonga. Os primeiros registros históricos do lago vêm de comerciantes árabes que buscam ouro, marfim e outras commodities dos nativos quando eles adentravam para o interior da costa. A busca por exploradores europeus pela fonte do Nilo levou à descoberta do lago pelo inglês John Speke em 1858, que o nomeou após a então monarca britânica."	),

-----------------------------------------------
-- LYSEFJORDEN
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_LYSEFJORDEN_DESCRIPTION",			"Maravilha natural de 3 painéis. Painéis adjacentes recebem +1 de [ICON_CULTURE] Cultura e +1 de [ICON_Science] Ciência"	),
	("pt_BR",	"LOC_TM_FEATURE_LYSEFJORDEN_EFFECT",				"Unidades Navais treinadas numa cidade que possua pelo menos um destes painéis começam com uma [ICON_Promotion] Promoção."	),
	("pt_BR",	"LOC_TM_FEATURE_LYSEFJORDEN_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_LYSEFJORDEN_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_LYSEFJORDEN_EFFECT}"	),

-----------------------------------------------
-- MATO TIPILA
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_DEVILSTOWER_DESCRIPTION",			"Maravilha natural intransponível de 1 painel. Painéis adjacentes recebem +1 de [ICON_FAITH] Fé e +1 de [ICON_PRODUCTION] Produção."	),
	("pt_BR",	"LOC_TM_FEATURE_DEVILSTOWER_EFFECT",				"Naturalistas são 50% mais baratos para qualquer Civilização que possua este painel."	),
	("pt_BR",	"LOC_TM_FEATURE_DEVILSTOWER_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_DEVILSTOWER_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_DEVILSTOWER_EFFECT}"	),

-----------------------------------------------
-- MATTERHORN
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_MATTERHORN_DESCRIPTION",			"Maravilha natural intransponível de 1 painel. Aparece como uma Montanha. Painéis adjacentes recebem +2 de [ICON_CULTURE] Cultura."	),
	("pt_BR",	"LOC_TM_FEATURE_MATTERHORN_EFFECT",					"Unidades ignoram penalidades de [ICON_Movement] Movimento de colinas e recebem +3 de [ICON_Strength] Força de Combate quando lutando em colinas para qualquer Civilização que possua este painel."	),
	("pt_BR",	"LOC_TM_FEATURE_MATTERHORN_EFFECT_DESCRIPTION",		"{LOC_TM_FEATURE_MATTERHORN_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_MATTERHORN_EFFECT}"	),

	("pt_BR",	"LOC_MODIFIER_TM_FEATURE_MATTERHORN_COMBAT_DESCRIPTION",		"+{1_Amount} de Bônus de Combate em Colinas (Matterhorn)"	),

-----------------------------------------------
-- MOSI_OA_TUNYA
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_MOSI_OA_TUNYA_DESCRIPTION",			"Maravilha natural intransponível de 1 painel. Fornece Água Doce. Painéis adjacentes recebem +2 de [ICON_Food] Comida."	),
	("pt_BR",	"LOC_TM_FEATURE_MOSI_OA_TUNYA_EFFECT",				"Recursos Bônus melhorados adjacentes a um rio fornecem +1 de [ICON_Food] Comida para a Civilização que possui este painel."	),
	("pt_BR",	"LOC_TM_FEATURE_MOSI_OA_TUNYA_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_MOSI_OA_TUNYA_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_MOSI_OA_TUNYA_EFFECT}"	),
	
	("pt_BR",	'LOC_TM_FEATURE_MOSI_OA_TUNYA_QUOTE',	
	'"Aproximando com reverência para a beira, espiei para baixo na grande fenda e vi uma corrente de mil metros de largura saltando por 30 metros, e então sendo subitamente comprimida em um espaço de quinze ou vinte jardas, a visão mais maravilhosa que eu tinha testemunhado na África. "[NEWLINE] - David Livingstone'	),
	
	("pt_BR",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_MOSI_OA_TUNYA_CHAPTER_HISTORY_PARA_1",	
	"O Mosi-oa-Tunya, também conhecido como Cataratas de Vitória, está entre as cachoeiras mais espetaculares do mundo. O Rio Zambeze, que tem mais de 2 quilômetros de largura neste ponto, mergulha ruidosamente por uma série de desfiladeiros de basalto e cria uma névoa iridescente que pode ser vista a mais de 50 km de distância. Seu nome, que se traduz como 'A fumaça que troveja', vem da língua Kololo ou Lozi usada em toda a Zâmbia e em partes do Zimbábue, embora seja mais conhecida mundialmente como Cataratas de Vitória, devido ao missionário escocês e explorador, David Livingstone, que talvez seja mais famoso por dar um nome a uma cachoeira que já tinha um."),

-----------------------------------------------
-- MOTLATSE CANYON
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_MOTLATSE_CANYON_DESCRIPTION",			"Maravilha natural intransponível de 4 painéis. Painéis adjacentes recebem +1 de [ICON_CULTURE] Cultura e +1 de [ICON_Science] Ciência."	),
	("pt_BR",	"LOC_TM_FEATURE_MOTLATSE_CANYON_EFFECT",				"Painéis de rio com apelo de tirar o fôlego fornecem +1 de [ICON_GOLD] Ouro para qualquer Civilização que possua pelo menos um destes painéis."	),
	("pt_BR",	"LOC_TM_FEATURE_MOTLATSE_CANYON_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_MOTLATSE_CANYON_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_MOTLATSE_CANYON_EFFECT}"	),

	("pt_BR",	'LOC_TM_FEATURE_MOTLATSE_CANYON_QUOTE',	
	'"Acredito que a África do Sul é o lugar mais bonito da Terra. Admito que sou parcial, mas acho que até mesmo o crítico mais escrupuloso concordaria que fomos abençoados com uma terra verdadeiramente maravilhosa" [NEWLINE] - Nelson Mandela'	),
	
	("pt_BR",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_MOTLATSE_CANYON_CHAPTER_HISTORY_PARA_1",	
	"O Canyon Motlatse é um elemento natural significativa da África do Sul, localizado em Mpumalanga, e formando a parte norte da escarpa Drakensberg. Localizado na Reserva Natural do Blyde River Canyon, tem 25 km de comprimento e tem, em média, cerca de 750 metros de profundidade, ostentando algumas das mais profundas falésias íngremes de qualquer canyon do planeta."	),
	("pt_BR",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_MOTLATSE_CANYON_CHAPTER_HISTORY_PARA_2",	
	"Embora seja difícil comparar cânions em todo o mundo, o Blyde River Canyon é um dos maiores desfiladeiros da Terra, e pode ser o maior desfiladeiro verde devido à sua folhagem subtropical exuberante. Ele suporta uma grande diversidade de flora e fauna, incluindo numerosas espécies de peixes e antílopes, bem como hipopótamos, crocodilos e todas as espécies de primatas que podem ser vistas na África do Sul, tornando-se uma região muito popular para o turismo."	),

-----------------------------------------------
-- NAMIB
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_NAMIB_DESCRIPTION",			"Maravilha natural de 3 painéis. Fornece +3 de [ICON_CULTURE] Cultura e +2 de [ICON_GOLD] Ouro."	),
	("pt_BR",	"LOC_TM_FEATURE_NAMIB_EFFECT",				"[ICON_TRADEROUTE] Rotas Comerciais estrangeiras que passam por suas cidades fornecem +1 de [ICON_CULTURE] Cultura para qualquer Civilização que possua pelo menos um destes painéis."	),
	("pt_BR",	"LOC_TM_FEATURE_NAMIB_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_NAMIB_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_NAMIB_EFFECT}"	),
	
	("pt_BR",	'LOC_TM_FEATURE_NAMIB_QUOTE',	
	'"Adoro ouvir o som das dunas de areia, sou um daqueles que percebem o ritmo de uma paisagem gravada em muitas pinturas, sou um dos milhares que sabem que estou finalmente em casa" [NEWLINE] - Mvula Ya Nangolo'	),
	
	("pt_BR",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_NAMIB_CHAPTER_HISTORY_PARA_1",	
	"O Namibe é um deserto costeiro no sul da África, cujo nome é de origem Nama e significa ""vasto lugar"". A Namib se estende por mais de 2.000 km ao longo das costas atlânticas de Angola, Namíbia e África do Sul. Tendo suportado condições áridas ou semi-áridas durante cerca de 55-80 milhões de anos, o Namib pode ser o deserto mais antigo do mundo, contendo algumas das regiões mais secas do mundo. Devido à sua aridez, o Namib é quase totalmente desabitado, exceto por um pequeno número de assentamentos espalhados, que historicamente serviram como postos de comércio para as rotas de comerciantes e missionários que atravessam o deserto."	),

-----------------------------------------------
-- OLD FAITHFUL
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_OLD_FAITHFUL_DESCRIPTION",			"Maravilha natural de 1 painel. Fornece +3 de [ICON_Science] Ciência, +1 de [ICON_FAITH] Fé, e +1 de [ICON_GOLD] Ouro."	),
	("pt_BR",	"LOC_TM_FEATURE_OLD_FAITHFUL_EFFECT",				"Campus geram uma bomba cultural em qualquer cidade. +100% de bonus de adjacência para Campus se a cidade possuir um Parque Nacional."	),
	("pt_BR",	"LOC_TM_FEATURE_OLD_FAITHFUL_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_OLD_FAITHFUL_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_OLD_FAITHFUL_EFFECT}"	),
	
	("pt_BR",	'LOC_TM_FEATURE_OLD_FAITHFUL_QUOTE',	
	'"Ele jorrou em intervalos regulares nove vezes durante a nossa estadia, as colunas de água fervente sendo jogadas de noventa para cento e vinte e cinco pés a cada descarga, que durou de quinze a vinte minutos. Nós lhe demos o nome de Velho Fiel. "[NEWLINE] - Nathaniel P. Langford'	),
	
	("pt_BR",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_OLD_FAITHFUL_CHAPTER_HISTORY_PARA_1",	
	"O Velho Fiel, ou Old Faithful, é um gêiser encontrado no Parque Nacional de Yellowstone, em Wyoming, EUA. Visto pela primeira vez pelos europeus em 1870 (e pelos nativos cerca de 10 mil anos antes disso), o Old Faithful foi assim nomeado devido à regularidade de sua erupção. O gêiser lança uma coluna de água fervente a uma altura de cerca de 30-50 metros (100-175 pés) a cada 60-90 minutos (o intervalo determinado pela ferocidade da erupção anterior). Gêiseres ocorrem quando a água subterrânea atinge o magma (rocha fundida). A água é instantaneamente transformada em vapor, que abre a abertura disponível mais próxima a uma pressão tremendamente alta. Old Faithful e os outros 250 gêiseres em Yellowstone são apreciados por cerca de três milhões de visitantes por ano."	),

-----------------------------------------------
-- OUNIANGA
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_OUNIANGA_DESCRIPTION",			"Maravilha natural de 2 painéis. Fornece Água Doce. Fornece +2 de [ICON_Food] Comida, +2 de [ICON_CULTURE] Cultura, e +1 de [ICON_GOLD] Ouro."	),
	("pt_BR",	"LOC_TM_FEATURE_OUNIANGA_EFFECT",				"Oásis fornecem bônus grande de adjacência para Distritos Especializados para qualquer Civilização que possua pelo menos um destes painéis."	),
	("pt_BR",	"LOC_TM_FEATURE_OUNIANGA_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_OUNIANGA_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_OUNIANGA_EFFECT}"	),

	("pt_BR",	"LOC_ADJ_OUNIANGA_FAITH_DESCRIPTION",			"+{1_num} de [ICON_FAITH] Fé de Oásis {1_Num : plural 1?adjacente; other?adjacentes;} (Ounianga)."	),
	("pt_BR",	"LOC_ADJ_OUNIANGA_SCIENCE_DESCRIPTION",			"+{1_num} de [ICON_Science] Ciência from Oásis {1_Num : plural 1?adjacente; other?adjacentes;} (Ounianga)."	),
	("pt_BR",	"LOC_ADJ_OUNIANGA_CULTURE_DESCRIPTION",			"+{1_num} de [ICON_CULTURE] Cultura from Oásis {1_Num : plural 1?adjacente; other?adjacentes;} (Ounianga)."	),
	("pt_BR",	"LOC_ADJ_OUNIANGA_GOLD_DESCRIPTION",			"+{1_num} de [ICON_GOLD] Ouro from Oásis {1_Num : plural 1?adjacente; other?adjacentes;} (Ounianga)."	),
	("pt_BR",	"LOC_ADJ_OUNIANGA_PRODUCTION_DESCRIPTION",		"+{1_num} de [ICON_PRODUCTION] Produção from Oásis {1_Num : plural 1?adjacente; other?adjacentes;} (Ounianga)."	),
	
	("pt_BR",	'LOC_TM_FEATURE_OUNIANGA_QUOTE',	
	'"No início, a língua do deserto era a grama que descia contra a parede do vento, palmas altas balançando na estação de semeadura e cinzas transportadas pelo ar para a recepção azul da areia quente. Ela era nossa primeira fonte, nossa mãe, que nos segurou, depois nos entregou à era das cidades em espera. "[NEWLINE] - Al-Munsif al-Wahaybi'	),
	
	("pt_BR",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_OUNIANGA_CHAPTER_HISTORY_PARA_1",	
	"Os lagos de Ounianga são uma série de dezoito lagos interconectados na região hiper-árida de Ennedi, no deserto do Saara, ocupando uma bacia nas montanhas de West Tibesti e Ennedi East. Constitui uma excepcional paisagem natural de grande beleza com cores e formas marcantes. Os lagos salinos, hiper-salinos e de água doce são fornecidos por águas subterrâneas e são encontrados em dois grupos distantes 40 km. Ounianga Kebir compreende quatro lagos, o maior dos quais, Yoan, abrange uma área de 358 ha e tem 27 m de profundidade. Suas águas altamente salgadas sustentam apenas algas e alguns microrganismos. O segundo grupo, Ounianga Serir, compreende catorze lagos separados por dunas de areia. Palhetas flutuantes cobrem quase metade da superfície desses lagos, reduzindo a evaporação. O lago Teli tem a maior área de superfície, mas tem menos de 10 m de profundidade. Com sua água doce de alta qualidade, alguns desses lagos abrigam a fauna aquática, particularmente peixes."	),

-----------------------------------------------
-- PAMUKKALE
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_PAMUKKALE_DESCRIPTION",				"Maravilha natural intransponível de 2 painéis. Fornece Água Doce. Painéis adjacentes recebem +1 de [ICON_CULTURE] Cultura e +1 de [ICON_GOLD] Ouro."	),
	("pt_BR",	"LOC_TM_FEATURE_PAMUKKALE_EFFECT",					"Contruções regionais em Complexos de Entretenimento e distritos fornecem +1 de [ICON_AMENITIES] Serviços para as cidades na área de efeito para qualquer Civilização que possua pelo menos um destes painéis."	),
	("pt_BR",	"LOC_TM_FEATURE_PAMUKKALE_EFFECT_DESCRIPTION",		"{LOC_TM_FEATURE_PAMUKKALE_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_PAMUKKALE_EFFECT}"	),

-----------------------------------------------
-- PANTANAL
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_PANTANAL_DESCRIPTION",				"Maravilha natural de 4 painéis. Aparece como um Pântano. Fornece +3 de [ICON_Food] Comida e +2 de [ICON_CULTURE] Cultura."	),
	("pt_BR",	"LOC_TM_FEATURE_PANTANAL_EFFECT",					"Painéis de Pântano fornecem bônus de adjacência padrão para Distritos Especializados para qualquer Civilização que possua pelo menos um destes painéis."	),
	("pt_BR",	"LOC_TM_FEATURE_PANTANAL_EFFECT_DESCRIPTION",		"{LOC_TM_FEATURE_PANTANAL_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_PANTANAL_EFFECT}"	),

	("pt_BR",	"LOC_ADJ_PANTANAL_FAITH_DESCRIPTION",				"+{1_num} de [ICON_FAITH] Fé de {1_Num : plural 1?Pântano adjacente; other?Pântanos adjacentes;} (Pantanal)."	),
	("pt_BR",	"LOC_ADJ_PANTANAL_SCIENCE_DESCRIPTION",				"+{1_num} de [ICON_Science] Ciência de {1_Num : plural 1?Pântano adjacente; other?Pântanos adjacentes;} (Pantanal)."	),
	("pt_BR",	"LOC_ADJ_PANTANAL_CULTURE_DESCRIPTION",				"+{1_num} de [ICON_CULTURE] Cultura de {1_Num : plural 1?Pântano adjacente; other?Pântanos adjacentes;} (Pantanal)."	),
	("pt_BR",	"LOC_ADJ_PANTANAL_GOLD_DESCRIPTION",				"+{1_num} de [ICON_GOLD] Ouro de {1_Num : plural 1?Pântano adjacente; other?Pântanos adjacentes;} (Pantanal)."	),
	("pt_BR",	"LOC_ADJ_PANTANAL_PRODUCTION_DESCRIPTION",			"+{1_num} de [ICON_PRODUCTION] Produção de {1_Num : plural 1?Pântano adjacente; other?Pântanos adjacentes;} (Pantanal)."	),

-----------------------------------------------
-- PIOPIOTAHI
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_PIOPIOTAHI_DESCRIPTION",		"Maravilha natural intransponível de 3 painéis. Painéis adjacentes recebem +1 de [ICON_CULTURE] Cultura e +1 de [ICON_GOLD] Ouro."	),
	("pt_BR",	"LOC_TM_FEATURE_PIOPIOTAHI_EFFECT",				"[ICON_Amenities] Serviços fornecidos por construções regionais se estendem 3 painéis mais longe para qualquer Civilização que possua pelo menos um destes painéis."	),
	("pt_BR",	"LOC_TM_FEATURE_PIOPIOTAHI_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_PIOPIOTAHI_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_PIOPIOTAHI_EFFECT}"	),
	
-----------------------------------------------
-- ROCK OF GIBRALTAR
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_GIBRALTAR_DESCRIPTION",			"Maravilha natural intransponível de 1 painel. Painéis adjacentes recebem +1 de [ICON_Food] Comida e +1 de [ICON_GOLD] Ouro."	),
	("pt_BR",	"LOC_TM_FEATURE_GIBRALTAR_EFFECT",				"Acampamentos e Portos recebem +2 Pontos de [ICON_GreatPerson] Grande Personalidade do seu tipo respectivo na cidade que possui este painel."	),
	("pt_BR",	"LOC_TM_FEATURE_GIBRALTAR_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_GIBRALTAR_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_GIBRALTAR_EFFECT}"	),

	("pt_BR",	'LOC_TM_FEATURE_GIBRALTAR_QUOTE',	
	'"Olhem em volta, meus garotos, e vejam como a Rocha parece linda com a luz do fogo glorioso" [NEWLINE] - George Augustus Eliott'	),
	
	("pt_BR",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_GIBRALTAR_CHAPTER_HISTORY_PARA_1",	
	"Gibraltar é uma península que contém uma notável formação rochosa na foz do Mar Mediterrâneo. Capturado da Espanha pelos ingleses e holandeses em 1704 e cedido à Inglaterra em 1713, Gibraltar tem sido uma possessão britânica desde então (para grande aborrecimento da Espanha, que o quer de volta). Comandando a entrada do Atlântico a partir do Mediterrâneo, Gibraltar é uma importante base naval britânica há trezentos anos. A maior parte de Gibraltar é coberta pela 'Rocha', uma enorme formação de xisto, arenito e calcário impulsionada pelo poder inimaginável da tectônica de placas. A rocha tem cerca de 430 metros de altura. Houve uma época em que Gibraltar era uma enorme fortaleza que permitia à Grã-Bretanha dominar a estreita passagem Mediterrâneo-Atlântico, mas hoje a ilha é mais uma reserva natural e um destino turístico do que uma base militar."	),

-----------------------------------------------
-- RORAIMA
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_RORAIMA_DESCRIPTION",			"Maravilha natural intransponível de 4 painéis. Aparece como uma Montanha. Painéis adjacentes recebem +1 de [ICON_FAITH] Fé e +1 de [ICON_Science] Ciência."	),
	("pt_BR",	"LOC_TM_FEATURE_RORAIMA_EFFECT",				"Painéis de Floresta Tropical possuídos por qualquer Civilização que possua pelo menos um destes painéis não reduzem o apelo de painéis adjacentes."	),
	("pt_BR",	"LOC_TM_FEATURE_RORAIMA_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_RORAIMA_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_RORAIMA_EFFECT}"	),

-----------------------------------------------
-- SAHARA EL BEYDA
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_SAHARA_EL_BEYDA_DESCRIPTION",			"Maravilha natural de 4 painéis. Fornece +3 de [ICON_GOLD] Ouro, +1 de [ICON_Science] Ciência, e +1 de [ICON_CULTURE] Cultura."	),
	("pt_BR",	"LOC_TM_FEATURE_SAHARA_EL_BEYDA_EFFECT",				"CIdades são imunes a dano de Tempestades de Areia para qualquer Civilização que possua pelo menos um destes painéis."	),
	("pt_BR",	"LOC_TM_FEATURE_SAHARA_EL_BEYDA_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_SAHARA_EL_BEYDA_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_SAHARA_EL_BEYDA_EFFECT}"	),

-----------------------------------------------
-- SALAR DE UYUNI
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_SALAR_DE_UYUNI_DESCRIPTION",		"Maravilha natural de 4 painéis. Fornece +2 de [ICON_Science] Ciência, +1 de [ICON_PRODUCTION] Produção, e +2 de [ICON_GOLD] Ouro."	),
	("pt_BR",	"LOC_TM_FEATURE_SALAR_DE_UYUNI_EFFECT",				"Fornece uma cópia do recurso de Luxo [ICON_RESOURCE_TM_LITHIUM] Lítio (não negociável), que fornece +6 de [ICON_Amenities] Serviços, a qualquer jogador que possua pelo menos um destes painéis."	),
	("pt_BR",	"LOC_TM_FEATURE_SALAR_DE_UYUNI_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_SALAR_DE_UYUNI_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_SALAR_DE_UYUNI_EFFECT}"	),

	("pt_BR",	'LOC_TM_FEATURE_SALAR_DE_UYUNI_QUOTE',	
	'"Eu tremi naquelas solidões quando ouvi a voz do sal no deserto." [NEWLINE] - Pablo Neruda'	),
	
	("pt_BR",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_SALAR_DE_UYUNI_CHAPTER_HISTORY_PARA_1",	
	"Situado no sudoeste da Bolívia, perto da fronteira chilena e do deserto de Atacama, encontra-se o Salar de Uyuni; o maior salar da Terra, com 10.582 quilômetros quadrados, cerca de 100 vezes o tamanho dos Bonneville Salt Flats, nos Estados Unidos. O Salar foi formado como resultado de transformações entre vários lagos pré-históricos. Coberto por alguns metros de crosta de sal, tem um nivelamento extraordinário com as variações de elevação médias dentro de um metro em toda a área do Salar. A grande área, o céu limpo e a planicidade excepcional da superfície fazem dele um objeto ideal para calibrar os altímetros dos satélites de observação da Terra."	),

	("pt_BR",	"LOC_PEDIA_RESOURCES_PAGE_RESOURCE_TM_LITHIUM_CHAPTER_HISTORY_PARA_1",
	"O lítio, do grego pedra lithos, é um metal macio branco-prateado que possui propriedades altamente reativas. O lítio e seus compostos têm várias aplicações industriais, incluindo vidro e cerâmica resistentes ao calor, lubrificantes de graxa de lítio, aditivos de fluxo para produção de ferro, aço e alumínio, baterias de lítio e baterias de íons de lítio. Salar de Uyuni, no sudoeste da Bolívia, contém 50% a 70% das reservas de lítio conhecidas no mundo, que estão em processo de extração."	),

-----------------------------------------------
-- SINAI
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_SINAI_DESCRIPTION",			"Maravilha natural intransponível de 1 painel. Aparece como uma Montanha. Painéis adjacentes recebem +2 de [ICON_FAITH] Fé."	),
	("pt_BR",	"LOC_TM_FEATURE_SINAI_EFFECT",				"Locais Sagrados fornecem +1 Ponto de [ICON_GreatPerson] Grande Personalidade para [ICON_GreatProphet] Grandes Profetas ao jogador que possui este painel. Unidades religiosas recebem +10 de [ICON_Strength] Força de Combate Teológico."	),
	("pt_BR",	"LOC_TM_FEATURE_SINAI_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_SINAI_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_SINAI_EFFECT}"	),
	
	("pt_BR",	'LOC_TM_FEATURE_SINAI_QUOTE',	
	'"Quando o Senhor terminou de falar com Moisés no Monte Sinai, deu-lhe as duas tábuas da lei da aliança, as tábuas de pedra inscritas pelo dedo de Deus." [NEWLINE] - Êxodo 31:18'	),
	
	("pt_BR",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_SINAI_CHAPTER_HISTORY_PARA_1",	
	"Encontrado na Península do Sinai no Egito, o Monte Sinai está entre os locais sagrados mais reverenciados reconhecidos pelos seguidores do judaísmo, cristianismo e islamismo. Acredita-se que o Monte Sinai seja o local onde Moisés primeiro recebeu os Dez Mandamentos de Deus durante o êxodo dos israelitas do Egito, tornando o pico um local importante para os peregrinos religiosos de todo o mundo."	),

-----------------------------------------------
-- SRI PADA
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_SRI_PADA_DESCRIPTION",			"Maravilha natural intransponível de 1 painel. Aparece como uma Montanha. Painéis adjacentes recebem +1 de [ICON_Food] Comida e +1 de [ICON_FAITH] Fé."	),
	("pt_BR",	"LOC_TM_FEATURE_SRI_PADA_EFFECT",				"Unidades Religiosas de qualquer Civilização que possui este painel fornecem [ICON_CULTURE] Cultura ao converter uma Cidade para a sua [ICON_Religion] Religião pela primeira vez."	),
	("pt_BR",	"LOC_TM_FEATURE_SRI_PADA_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_SRI_PADA_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_SRI_PADA_EFFECT}"	),
	
	("pt_BR",	'LOC_TM_FEATURE_SRI_PADA_QUOTE',	
	'"Uma visão extraordinariamente maravilhosa, dotada de supremo esplendor." [NEWLINE] - O Mahabharata'	),
	
	("pt_BR",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_SRI_PADA_CHAPTER_HISTORY_PARA_1",	
	"Elevando-se acima do Sri Lanka, Sri Pada é um grande pico de montanha com uma incomum forma cônica que é considerada sagrada por várias religiões pela pegada encontrada em seu pico. Esta pegada, uma grande depressão encontrada em uma formação rochosa no topo, foi atribuída a Buda, Shiva e à figura bíblica Adão, levando a uma reverência entre os seguidores do budismo, do hinduísmo e do islamismo. Todos os anos, milhares de peregrinos viajam por horas subindo a montanha para prestar suas homenagens no local sagrado."	),

-----------------------------------------------
-- TORRES DEL PAINE
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_TORRES_DEL_PAINE_DESCRIPTION",			"Maravilha natural intransponível de 2 painéis. Dobra os recursos nos painéis adjacentes."	),
	("pt_BR",	"LOC_TM_FEATURE_TORRES_DEL_PAINE_EFFECT",				"Qualquer cidade que possui pelo menos um destes painéis pode construir um Distrito a mais do que a sua [ICON_Citizen] População normalmente permitiria."	),
	("pt_BR",	"LOC_TM_FEATURE_TORRES_DEL_PAINE_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_TORRES_DEL_PAINE_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_TORRES_DEL_PAINE_EFFECT}"	),

-----------------------------------------------
-- TSINGY
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_TSINGY_DESCRIPTION",			"Maravilha natural intransponível de 1 painel. Painéis adjacentes recebem +1 de [ICON_CULTURE] Cultura e +1 de [ICON_Science] Ciência."	),
	("pt_BR",	"LOC_TM_FEATURE_TSINGY_EFFECT",					"Teatros geram uma bomba cultural em qualquer cidade. +100% de bonus de adjacência para Teatros se a cidade possuir um Parque Nacional."	),
	("pt_BR",	"LOC_TM_FEATURE_TSINGY_EFFECT_DESCRIPTION",		"{LOC_TM_FEATURE_TSINGY_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_TSINGY_EFFECT}"	),

-----------------------------------------------
-- UBSUNUR HOLLOW
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_UBSUNUR_HOLLOW_DESCRIPTION",		"Maravilha natural de 4 painéis. Aparece como um Pântano. Fornece +2 de [ICON_FAITH] Fé, +1 de [ICON_Food] Comida, e +2 de [ICON_PRODUCTION] Produção."	),
	("pt_BR",	"LOC_TM_FEATURE_UBSUNUR_HOLLOW_EFFECT",				"Qualquer civilização que possuir pelo menos um destes painéis recebe uma [ICON_CivicBoosted] Inspiração ao receber um [ICON_GreatGeneral] Grande General."	),
	("pt_BR",	"LOC_TM_FEATURE_UBSUNUR_HOLLOW_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_UBSUNUR_HOLLOW_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_UBSUNUR_HOLLOW_EFFECT}"	),

-----------------------------------------------
-- ULURU
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_ULURU_DESCRIPTION",			"Maravilha natural intransponível de 1 painel. Painéis adjacentes recebem +1 de [ICON_CULTURE] Cultura e +1 de [ICON_FAITH] Fé."	),
	("pt_BR",	"LOC_TM_FEATURE_ULURU_EFFECT",				"Distritos Especializados construídos em painéis de desertos recebem +1 de [ICON_Food] Comida para qualquer Civilização que possua este painel."	),

-----------------------------------------------
-- VESUVIUS
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_VESUVIUS_DESCRIPTION",				"Maravilha natural intransponível de 1 painel. Aparece como um Vulcão. Painéis adjacentes recebem +1 de [ICON_PRODUCTION] Produção. Fornece bonus adicionais em erupções ao custo de [ICON_CITIZEN] População e dano à infraestrutura. Sempre Ativo."	),
	("pt_BR",	"LOC_TM_FEATURE_VESUVIUS_EFFECT",					"Locais de Antiguidades recebem +4 de [ICON_CULTURE] Cultura, and [ICON_GREATWORK_ARTIFACT] Artefatos recebem +2 de [ICON_CULTURE] Cultura e +2 de [ICON_TOURISM] Turismo para qualquer Civilização que possua este painel."	),
	("pt_BR",	"LOC_TM_FEATURE_VESUVIUS_EFFECT_DESCRIPTION",		"{LOC_TM_FEATURE_VESUVIUS_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_VESUVIUS_EFFECT}"	),

-----------------------------------------------
-- VREDEFORT DOME
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_VREDEFORT_DOME_DESCRIPTION",		"Maravilha natural de 2 painéis. Fornece +2 de [ICON_Food] Comida, +2 de [ICON_Science] Ciência, e +1 de [ICON_CULTURE] Cultura."	),
	("pt_BR",	"LOC_TM_FEATURE_VREDEFORT_DOME_EFFECT",				"Fazendas recebem +1 de [ICON_Food] Comida quando adjacentes a outra Fazenda para qualquer Civilização que possua pelo menos um destes painéis."	),
	("pt_BR",	"LOC_TM_FEATURE_VREDEFORT_DOME_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_VREDEFORT_DOME_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_VREDEFORT_DOME_EFFECT}"	),
	
	("pt_BR",	'LOC_TM_FEATURE_VREDEFORT_DOME_QUOTE',	
	'"Quando os geólogos vagaram pela primeira vez no espetacular anel de colinas ao longo do rio Vaal, ao norte de Vredefort, há quase 150 anos, eles imediatamente reconheceram que as rochas excepcionalmente destruídas e erguidas testemunharam um evento excepcionalmente violento no passado distante." [NEWLINE] - Wolf Uwe Reimold'	),
	
	("pt_BR",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_VREDEFORT_DOME_CHAPTER_HISTORY_PARA_1",	
	"O Domo de Vredefort é a maior cratera de impacto verificada na Terra, com mais de 300 km de diâmetro quando foi formada. O que resta dele está localizado na atual província do Estado Livre da África do Sul, onde a agricultura cultivada domina a paisagem. Estima-se que a cratera tenha mais de 2 bilhões de anos, com impacto na Era Paleoproterozóica, tornando-se a segunda mais antiga cratera conhecida na Terra."	),

-----------------------------------------------
-- WULINGYUAN
-----------------------------------------------
	
	("pt_BR",	"LOC_TM_FEATURE_WULINGYUAN_DESCRIPTION",		"Maravilha natural intransponível de 2 painéis. Painéis adjacentes recebem +2 de [ICON_CULTURE] Cultura"	),
	("pt_BR",	"LOC_TM_FEATURE_WULINGYUAN_EFFECT",				"[ICON_GreatWork_Writing] Grandes Obras de Escrita recebem +2 de [ICON_CULTURE] Cultura e +2 de [ICON_TOURISM] Turismo para qualquer Civilização que possua pelo menos um destes painéis."	),
	("pt_BR",	"LOC_TM_FEATURE_WULINGYUAN_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_WULINGYUAN_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_WULINGYUAN_EFFECT}"	),
	
	("pt_BR",	'LOC_TM_FEATURE_WULINGYUAN_QUOTE',	
	'"De dez mil vales as árvores tocam o céu, em mil picos os cucos estão chamando e, depois de uma noite de chuva na montanha, de cada cimeira vêm centenas de cascatas de seda." [NEWLINE] - Wang Wei'	),
	
	("pt_BR",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_WULINGYUAN_CHAPTER_HISTORY_PARA_1",	
	"Wulingyuan é um local pitoresco e histórico no centro-sul da China. É conhecido por mais de 3.000 pilares e picos de arenito de quartzito, muitos com mais de 200 metros de altura, além de ravinas, desfiladeiros, piscinas, lagos, rios e cachoeiras. Possui 40 cavernas e duas pontes naturais, Xianrenqiao (ponte dos imortais) e Tianqiashengkong (ponte do outro lado do céu)."	),

-----------------------------------------------
-- YOSEMITE
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_YOSEMITE_DESCRIPTION",			"Maravilha natural intransponível de 2 painéis. Painéis adjacentes recebem +1 de [ICON_GOLD] Ouro e +1 de [ICON_Science] Ciência."	),
	("pt_BR",	"LOC_TM_FEATURE_YOSEMITE_EFFECT",				"Painéis de Foresta de qualquer Civilização que possua pelo menos um destes painéis fornecem +1 de Apelo adicional para painéis adjacentes."	),
	("pt_BR",	"LOC_TM_FEATURE_YOSEMITE_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_YOSEMITE_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_YOSEMITE_EFFECT}"	),

-----------------------------------------------
-- ZHANGYE DANXIA
-----------------------------------------------

	("pt_BR",	"LOC_TM_FEATURE_ZHANGYE_DANXIA_DESCRIPTION",		"Maravilha natural intransponível de 3 painéis. Aparece como uma Montanha. Painéis adjacentes recebem +2 de [ICON_Science] Ciência."	),
	("pt_BR",	"LOC_TM_FEATURE_ZHANGYE_DANXIA_EFFECT",				"Centros Comerciais e Campus em uma Cidade que possui pelo menos um destes painéis recebem +2 Pontos de [ICON_GreatPerson] Grande Personalidade de seus tipos respectivos."	),
	("pt_BR",	"LOC_TM_FEATURE_ZHANGYE_DANXIA_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_ZHANGYE_DANXIA_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_ZHANGYE_DANXIA_EFFECT}"	),

-----------------------------------------------
-- MISC - District Adjacency
-----------------------------------------------

	("pt_BR",	"LOC_TM_ADJ_NW_FAITH_DESCRIPTION",			"+{1_num} de [ICON_FAITH] Fé de {1_Num : plural 1?painel de Maravilha Natural adjacente; other?painéis de Maravilha Natural adjacentes;}."	),
	("pt_BR",	"LOC_TM_ADJ_NW_SCIENCE_DESCRIPTION",		"+{1_num} de [ICON_Science] Ciência de {1_Num : plural 1?painel de Maravilha Natural adjacente; other?painéis de Maravilha Natural adjacentes;}."	),
	("pt_BR",	"LOC_TM_ADJ_NW_CULTURE_DESCRIPTION",		"+{1_num} de [ICON_CULTURE] Cultura de {1_Num : plural 1?painel de Maravilha Natural adjacente; other?painéis de Maravilha Natural adjacentes;}."	),
	("pt_BR",	"LOC_TM_ADJ_NW_PRODUCTION_DESCRIPTION",		"+{1_num} de [ICON_PRODUCTION] Produção de {1_Num : plural 1?painel de Maravilha Natural adjacente; other?painéis de Maravilha Natural adjacentes;}."	),
	("pt_BR",	"LOC_TM_ADJ_NW_GOLD_DESCRIPTION",			"+{1_num} de [ICON_GOLD] Ouro de {1_Num : plural 1?painel de Maravilha Natural adjacente; other?painéis de Maravilha Natural adjacentes;}."	),

-----------------------------------------------
-- MISC - Naturlist
-----------------------------------------------

	("pt_BR",	"LOC_TM_UNIT_NATURALIST_DESCRIPTION",			"Uma unidade civil de final de jogo que pode criar um único Parque Nacional para atrair [ICON_Tourism] turistas. Pode ser adquirido com [ICON_GOLD] Ouro ou [ICON_FAITH] Fé."	);