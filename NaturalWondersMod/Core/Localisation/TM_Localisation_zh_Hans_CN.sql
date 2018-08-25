/*
	Localisation
	Language: Chinese ("zh_Hans_CN")
	Credits: boynextdoor
	
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

	("zh_Hans_CN",	"LOC_TM_FEATURE_BARRIER_REEF_DESCRIPTION",		"两格自然奇观. 单元格 +2 [ICON_FOOD] 食物, +1 [ICON_GOLD] 金币, +2 [ICON_SCIENCE] 科研."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_BARRIER_REEF_EFFECT",			"当你占有至少一格时你的海洋改良设施 +1 [ICON_GOLD] 金币"	),
	
-----------------------------------------------
-- BARRINGER CRATER
-----------------------------------------------

	("zh_Hans_CN",	"LOC_FEATURE_BARRINGER_CRATER_NAME",				"巴林杰陨石坑"	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_BARRINGER_CRATER_DESCRIPTION",		"一格自然奇观. 单元格 +3 [ICON_SCIENCE] 科研 and +2 [ICON_GOLD] 金币."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_BARRINGER_CRATER_EFFECT",			"拥有此奇观的城市的太空竞赛项目提供 +20% [ICON_PRODUCTION] 产能."	),
	
	("zh_Hans_CN",	'LOC_TM_FEATURE_BARRINGER_CRATER_QUOTE',
	'"事实上，我们现在可以证明，这个陨石坑是由于一个地外天体，可能是一个金属小行星与地球碰撞造成的。."[NEWLINE]- Daniel Barringer'	),
	
	("zh_Hans_CN",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_BARRINGER_CRATER_CHAPTER_HISTORY_PARA_1",	
	"巴林杰陨石坑是2~5万年前重约7万吨的陨石撞入地球，形成的陨石坑。陨石坑宽1264米，深174米，坑的内壁笔直陡峭。位于亚利桑那州弗拉格斯塔夫东部约40英里的地方。."	),

-----------------------------------------------
-- CERRO DE POTOSI
-----------------------------------------------

	("zh_Hans_CN",	"LOC_FEATURE_CERRO_DE_POTOSI_NAME",				"富饶山"	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_CERRO_DE_POTOSI_DESCRIPTION",	"一格无法逾越的自然奇观. 以山脉形式出现. 相邻单元格 +1 [ICON_PRODUCTION] 产能 and +1 [ICON_GOLD] 金币."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_CERRO_DE_POTOSI_EFFECT",		"拥有此奇观的城市的国际 [ICON_TRADEROUTE] 贸易路线 +4 [ICON_GOLD] 金币."	),
	
	("zh_Hans_CN",	'LOC_TM_FEATURE_CERRO_DE_POTOSI_QUOTE',	
	'"我是富有的波托西，世界之宝，群山之王，万王之羡."[NEWLINE]- First Coat of Arms of Potosi'	),
	
	("zh_Hans_CN",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_CERRO_DE_POTOSI_CHAPTER_HISTORY_PARA_1",	
	"”富饶山”指位于玻利维亚南部的波多西山，殖民时代西班牙几乎所有的白银都出产在那里。波多西山出产的白银先由羊驼和骡子运到海滨，然后用大帆船运往欧洲。两百年间的开采总量高达4.1万吨纯银，其中8200吨成为西班牙王室的财产。1800年后，波多西山银矿的主矿脉濒于枯竭，但直到今天当地的矿井还在继续开采——一部分是白银，但大部分则是锡."	),

-----------------------------------------------
-- CLIFFS OF DOVER
-----------------------------------------------

	("zh_Hans_CN",	"LOC_TM_FEATURE_CLIFFS_DOVER_DESCRIPTION",		"两格自然奇观. 以悬崖地形出现. 单元格 +3 [ICON_CULTURE] 文化, +1 [ICON_FOOD] 食物, and +1 [ICON_GOLD] 金币."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_CLIFFS_DOVER_EFFECT",			"拥有此奇观地块的城市的港口从礁石获取少量邻接加成."	),

	("zh_Hans_CN",	"LOC_MODIFIER_TM_FEATURE_CLIFFS_DOVER_ADJACENCY_DESCRIPTION",	"+{1_num} [ICON_GOLD] 金币 来自邻接 {1_Num : plural 1?cliff; other?cliffs;}."	),

-----------------------------------------------
-- CRATER LAKE
-----------------------------------------------

	("zh_Hans_CN",	"LOC_TM_FEATURE_CRATER_LAKE_DESCRIPTION",	"一格自然奇观. 以湖泊形式出现并且提供淡水. 单元格 +4 [ICON_FAITH] 信仰 and +1 [ICON_SCIENCE] 科研."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_CRATER_LAKE_EFFECT",		"拥有此奇观的城市可以用 [ICON_FAITH] 信仰购买建筑."	),

-----------------------------------------------
-- DEAD SEA
-----------------------------------------------

	("zh_Hans_CN",	"LOC_TM_FEATURE_DEAD_SEA_DESCRIPTION",		"两格自然奇观. 以湖泊形式出现. 单元格 +2 [ICON_FAITH] 信仰, +2 [ICON_CULTURE] 文化, and +1 [ICON_GOLD] 金币."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_DEAD_SEA_EFFECT",			"拥有此奇观的城市生产的单位 [ICON_Fortified] 驻扎时额外+10 hp."	),

-----------------------------------------------
-- DELICATE ARCH
-----------------------------------------------

	("zh_Hans_CN",	"LOC_TM_FEATURE_DELICATE_ARCH_DESCRIPTION",		"一格无法逾越的自然奇观. 相邻单元格 +1 [ICON_CULTURE] 文化 and +1 [ICON_GOLD] 金币."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_DELICATE_ARCH_EFFECT",			"拥有此奇观的文明购买单元格时-20%off."	),

-----------------------------------------------
-- EVEREST
-----------------------------------------------

	("zh_Hans_CN",	"LOC_TM_FEATURE_EVEREST_DESCRIPTION",		"三格无法逾越的自然奇观. 以山脉形式出现. 相邻单元格 +2 [ICON_FAITH] 信仰."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_EVEREST_EFFECT",			"拥有此奇观的城市生产的宗教单位在丘陵 [ICON_MOVEMENT] 移动时无视地形影响，且额外+1s."	),

-----------------------------------------------
-- EYE OF THE SAHARA
-----------------------------------------------

	("zh_Hans_CN",	"LOC_TM_FEATURE_EYE_OF_THE_SAHARA_DESCRIPTION",		"三格自然奇观. 单元格 +2 [ICON_PRODUCTION] 产能, +2 [ICON_SCIENCE] 科研, and +1 [ICON_GOLD] 金币."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_EYE_OF_THE_SAHARA_EFFECT",			"至少拥有一格此奇观的文明在至少+4时代分的历史时刻时额外获得 +2时代分."	),

-----------------------------------------------
-- EYJAFJALLAJOKULL
-----------------------------------------------

	("zh_Hans_CN",	"LOC_TM_FEATURE_EYJAFJALLAJOKULL_DESCRIPTION",		"两格无法逾越的自然奇观. 以山脉形式出现. 相邻单元格 +1 [ICON_CULTURE] 文化 and +1 [ICON_FOOD] 食物."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_EYJAFJALLAJOKULL_EFFECT",			"拥有此奇观的城市位于冻土或雪地的独特区域 +1 [ICON_FOOD] 食物."	),

-----------------------------------------------
-- GALAPAGOS
-----------------------------------------------
	
	("zh_Hans_CN",	"LOC_TM_FEATURE_GALAPAGOS_DESCRIPTION",		"两格无法逾越的自然奇观. 相邻单元格 +2 [ICON_SCIENCE] 科研."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_GALAPAGOS_EFFECT",			"至少拥有一格此奇观的文明免费获得一个 [ICON_RESOURCE_TM_TORTOISE] 乌龟（非卖品），可以提供 +6 [ICON_AMENITIES] 宜居度."	),

	("zh_Hans_CN",	"LOC_RESOURCE_TM_TORTOISE_NAME",	"Tortoise"	),
	("zh_Hans_CN",	"LOC_PEDIA_RESOURCES_PAGE_RESOURCE_TM_TORTOISE_CHAPTER_HISTORY_PARA_1",
	"Galapagos群岛，意为“大龟群岛”，是厄瓜多尔位于太平洋、距陆地本土1200公里的一个省，由十几个火山岩岛屿组成，人口不足2万。该群岛以海洋动植物物种繁多、保护良好而闻名于世，著名科学家达尔文曾在该岛为他的“进化论”找到论证的依据。1997年联合国教科文组织推认大龟群岛为“人类自然遗产”。近年来，大龟群岛日益成为世界各地游客光顾的热点，年踏访人数达30万以上."	),

-----------------------------------------------
-- GIANTS CAUSEWAY
-----------------------------------------------

	("zh_Hans_CN",	"LOC_TM_FEATURE_GIANTS_CAUSEWAY_DESCRIPTION",	"两格无法逾越的自然奇观. 相邻单元格 +2 [ICON_CULTURE] 文化."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_GIANTS_CAUSEWAY_EFFECT",		"至少拥有一格此奇观的城市训练的陆地单位+1次 [ICON_PROMOTION] 晋升."	),

-----------------------------------------------
-- GRAND MESA
-----------------------------------------------

	("zh_Hans_CN",	"LOC_FEATURE_GRAND_MESA_NAME",				"大平顶山"	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_GRAND_MESA_DESCRIPTION",	"一格无法逾越的自然奇观. 相邻单元格 +1 [ICON_FOOD] 食物 and +1 [ICON_CULTURE] 文化."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_GRAND_MESA_EFFECT",			"拥有此奇观的城市生产的单位在森林和雨林 [ICON_MOVEMENT] 移动时无视地形影响."	),
	
	("zh_Hans_CN",	'LOC_TM_FEATURE_GRAND_MESA_QUOTE',	
	'"保护意味着明智地利用地球和它的资源来为人类带来持久的利益。."[NEWLINE]- Gifford Pinchot'	),
	
	("zh_Hans_CN",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_GRAND_MESA_CHAPTER_HISTORY_PARA_1",	
	"大平顶山是位于美国西部的科罗拉多州的一处大型地质构造。这是世界上最大的平顶山，方圆500平方英里（1300平方公里），比周围区域高5000英尺（1500米）。大平顶山的山顶覆盖了一层火山岩，可以很好地抵御侵蚀。当周边区域都被科罗拉多河和甘尼森河的流水侵蚀时，大平顶山仍然保持原来的高度，并没有多少变化。"	),

-----------------------------------------------
-- HA LONG BAY
-----------------------------------------------

	("zh_Hans_CN",	"LOC_TM_FEATURE_HA_LONG_BAY_DESCRIPTION",	"两格自然奇观. 单元格 +2 [ICON_CULTURE] 文化, +2 [ICON_FOOD] 食物 and +1 [ICON_PRODUCTION] 产能."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_HA_LONG_BAY_EFFECT",		"至少拥有一格此奇观的文明的港口提供 +2 [ICON_HOUSING] 住房."	),

-----------------------------------------------
-- KAILASH
-----------------------------------------------

	("zh_Hans_CN",	"LOC_FEATURE_KAILASH_NAME",				"冈底斯山"	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_KAILASH_DESCRIPTION",	"一格无法逾越的自然奇观. 以山脉形式出现. 相邻单元格 +1 [ICON_FAITH] 信仰 and +1 [ICON_CULTURE] 文化."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_KAILASH_EFFECT",		"拥有此奇观的城市从每个信奉该文明宗教的国外城市获得 +1 [ICON_CULTURE] 文化."	),
		
	("zh_Hans_CN",	'LOC_TM_FEATURE_KAILASH_QUOTE',	
	'"冈底斯山为群山之王，高不可攀，直耸云霄，山脉雪峰林立，天寒地冻。山上时常可见冰凌晶莹、冰笋、冰蘑菇冰清玉洁，山洞如同水晶宫，山峰之间多有凌空横架的冰桥。"[NEWLINE]- 《底斯山湖志》'	),
	
	("zh_Hans_CN",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_KAILASH_CHAPTER_HISTORY_PARA_1",	
	"冈底斯山脉西起喀拉昆仓山脉东南部的萨色尔山脊（北纬34°15，东经′78°20′），东延伸至纳木错西南（约北纬29°20′，东经89°10′），与念青唐古拉山脉衔接。海拔一般5500～6000米。西段呈东南走向，主要支脉阿隆干累山以同一走向并列于主脉北侧，山体宽约60～70公里。位于该段的主峰──冈仁波齐峰（梵文又称开拉斯峰），乃佛教著名圣山，在佛经中称为“底息”，为信徒朝拜巡礼之地."	),

-----------------------------------------------
-- KILIMANJARO
-----------------------------------------------

	("zh_Hans_CN",	"LOC_TM_FEATURE_KILIMANJARO_DESCRIPTION",	"一格无法逾越的自然奇观. 以山脉形式出现. 相邻单元格 +2 [ICON_FOOD] 食物."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_KILIMANJARO_EFFECT",		"拥有此奇观的城市建造一个特色区域后 +1 [ICON_Citizen] 人口."	),

-----------------------------------------------
-- KRAKATOA
-----------------------------------------------

	("zh_Hans_CN",	"LOC_FEATURE_KRAKATOA_NAME",				"喀拉喀托火山"	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_KRAKATOA_DESCRIPTION",		"一格无法逾越的自然奇观. 以山脉形式出现. 相邻单元格 +1 [ICON_SCIENCE] 科研 and +1 [ICON_CULTURE] 文化."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_KRAKATOA_EFFECT",			"拥有此奇观的城市的每个区域获得 +2 [ICON_SCIENCE] 科研, 如果该城有国家公园，则是+3."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_KRAKATOA_EFFECT_XP1",		"拥有此奇观的文明每当获得一个 [ICON_GREATADMIRAL] 海军上将时赠送一个 [ICON_TechBoosted] 尤里卡."	),
	
	("zh_Hans_CN",	'LOC_TM_FEATURE_KRAKATOA_QUOTE',	
	'"我惊奇地看到，克拉卡托岛在我们眼前完全被烧焦，一片荒芜，四处起火。."[NEWLINE]- Johann Wilhelm Vogel'	),
	
	("zh_Hans_CN",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_KRAKATOA_CHAPTER_HISTORY_PARA_1",	
	"喀拉喀托火山位于印度尼西亚巽他海峡中，拉卡塔岛附近。1883年等级为VEI-6的大爆发释放出21立方公里的火山灰，远在毛里求斯岛都能够听到这次喷发的剧烈声响，是人类历史上最大的火山喷发之一。该次喷发以及引发的海啸摧毁了数百个村庄和城市，36417人死于非命。原有的喀拉喀托火山的三分之二在爆发中消失，新的火山活动自1927年又产生了一个不断成长的火山岛。."	),

-----------------------------------------------
-- LAKE RETBA
-----------------------------------------------

	("zh_Hans_CN",	"LOC_TM_FEATURE_LAKE_RETBA_DESCRIPTION",	"两格自然奇观. 以湖泊形式出现. 单元格 +2 [ICON_CULTURE] 文化, +2 [ICON_GOLD] 金币, +1 [ICON_PRODUCTION] 产能."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_LAKE_RETBA_EFFECT",			"至少拥有一格此奇观的文明拥有的奢侈品的复制品额外+2 [ICON_GOLD] 金币."	),

-----------------------------------------------
-- LAKE VICTORIA
-----------------------------------------------

	("zh_Hans_CN",	"LOC_FEATURE_LAKE_VICTORIA_NAME",				"维多利亚湖"	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_LAKE_VICTORIA_DESCRIPTION",		"四格自然奇观. 以湖泊形式出现并且提供淡水. 单元格 +3 [ICON_FOOD] 食物, +1 [ICON_CULTURE] 文化, and +1 [ICON_GOLD] 金币."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_LAKE_VICTORIA_EFFECT",			"至少拥有一格此奇观的文明不在原始 [ICON_CAPITAL] 所在大陆的城市 +15% [ICON_FOODSURPLUS] 增长."	),
	
	("zh_Hans_CN",	'LOC_TM_FEATURE_LAKE_VICTORIA_QUOTE',	
	'"我看到老尼罗河神父毫无疑问地从维多利亚尼亚扎河升起，正如我预言的那样，那湖是圣河的源头，圣河孕育了我们宗教信仰的第一个阐释者."[NEWLINE]- John Hanning Speke'	),
	
	("zh_Hans_CN",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_LAKE_VICTORIA_CHAPTER_HISTORY_PARA_1",	
	"维多利亚湖（VictoriaNyanza）位于东非高原，大部分在坦桑尼亚和乌干达两国境内，一小部分属于肯尼亚。1860-1863年英国探险家约翰·汉宁·斯皮克和格兰特到此处调查尼罗河的源头时，以英国女王维多利亚的名字命名该湖泊。湖泊介于东非大裂谷及其西支之间，居裂谷间浅宽盆地的北部，湖盆是由于地面凹陷而形成的，所以维多利亚湖的成因与东非高原上的其它大湖是完全不同的。该湖的面积69400km²，是非洲最大湖泊，世界第二大淡水湖。湖面海拔1134米，鱼类资源丰富。."	),

-----------------------------------------------
-- LYSEFJORDEN
-----------------------------------------------

	("zh_Hans_CN",	"LOC_TM_FEATURE_LYSEFJORDEN_DESCRIPTION",	"两格自然奇观. 相邻单元格 +1 [ICON_CULTURE] 文化 and +1 [ICON_SCIENCE] 科研"	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_LYSEFJORDEN_EFFECT",		"至少拥有一格此奇观的城市训练的海军单位+1次 [ICON_PROMOTION] 晋升."	),

-----------------------------------------------
-- MATTERHORN
-----------------------------------------------

	("zh_Hans_CN",	"LOC_TM_FEATURE_MATTERHORN_DESCRIPTION",	"一格无法逾越的自然奇观. 以山脉形式出现. 相邻单元格 +2 [ICON_CULTURE] 文化."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_MATTERHORN_EFFECT",			"拥有此奇观的城市生产的单位在丘陵 [ICON_MOVEMENT] 移动时无视地形影响, 且提供 +3 [ICON_STRENGTH] 攻击力."	),

	("zh_Hans_CN",	"LOC_MODIFIER_TM_FEATURE_MATTERHORN_COMBAT_DESCRIPTION",	"+{1_Amount} 攻击力当位于丘陵 (马特洪峰)"	),

-----------------------------------------------
-- MOTLATSE CANYON
-----------------------------------------------

	("zh_Hans_CN",	"LOC_FEATURE_MOTLATSE_CANYON_NAME",				"布莱德河峡谷"	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_MOTLATSE_CANYON_DESCRIPTION",	"四格无法逾越的自然奇观. 相邻单元格 +1 [ICON_CULTURE] 文化 and +1 [ICON_SCIENCE] 科研."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_MOTLATSE_CANYON_EFFECT",		"至少拥有一格此奇观的文明位于+4以上魅力地块上的区域额外提供 +1 对应伟人点数."	),
	
	("zh_Hans_CN",	"LOC_ADJ_MOTLATSE_FAITH_DESCRIPTION",			"+{1_num} [ICON_FAITH] 信仰 来自地块魅力. (Motlatse Canyon)"	),
	("zh_Hans_CN",	"LOC_ADJ_MOTLATSE_SCIENCE_DESCRIPTION",			"+{1_num} [ICON_SCIENCE] 科研 来自地块魅力. (Motlatse Canyon)"	),
	("zh_Hans_CN",	"LOC_ADJ_MOTLATSE_CULTURE_DESCRIPTION",			"+{1_num} [ICON_CULTURE] 文化 来自地块魅力. (Motlatse Canyon)"	),
	("zh_Hans_CN",	"LOC_ADJ_MOTLATSE_PRODUCTION_DESCRIPTION",		"+{1_num} [ICON_PRODUCTION] 产能 来自地块魅力. (Motlatse Canyon)"	),
	("zh_Hans_CN",	"LOC_ADJ_MOTLATSE_GOLD_DESCRIPTION",			"+{1_num} [ICON_GOLD] 金币 来自地块魅力. (Motlatse Canyon)"	),

	("zh_Hans_CN",	'LOC_TM_FEATURE_MOTLATSE_CANYON_QUOTE',	
	'"我相信南非是地球上最美丽的地方。诚然，我是有偏见的，但我认为即使是最严谨的批评家也会同意我们拥有一个真正美妙的土地。."[NEWLINE]- Nelson Mandela'	),
	
	("zh_Hans_CN",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_MOTLATSE_CANYON_CHAPTER_HISTORY_PARA_1",	
	"布菜德河峡谷是姆普马兰加省仅次于姆普马兰加国家公园的观光景点，位于南非克鲁格国家公园西边的布莱德河峡谷自然保护区."	),
	("zh_Hans_CN",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_MOTLATSE_CANYON_CHAPTER_HISTORY_PARA_2",	
	"布莱德河峡谷(BlydeRivercanyon)是由于河流冲刷龙山山脉，切穿陡坡而自然天成，而峡谷最清楚的目标，是三座圆锥巨岩排列组成的状似圆形茅草屋(ThreeRondavels)，由对岸遥看，俨然像三姐妹矗立，很壮观!布莱德河在山区刻画出一道深遂的峡谷，河谷上方有许多观景台，这里是自然保护区，免收门票，但有时间管制，峡谷绵延八百多米，其间瀑布、奇石景观特殊，千年滴水穿石的奇特景观，不得不赞叹大自然的鬼斧神刀."	),

-----------------------------------------------
-- OLD FAITHFUL
-----------------------------------------------

	("zh_Hans_CN",	"LOC_FEATURE_OLD_FAITHFUL_NAME",				"老忠实泉"	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_OLD_FAITHFUL_DESCRIPTION",		"一格自然奇观. 单元格 +3 [ICON_SCIENCE] 科研, +1 [ICON_FAITH] 信仰, and +1 [ICON_GOLD] 金币."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_OLD_FAITHFUL_EFFECT",			"学院区域拥有文化炸弹，拥有国家公园的城市学院区相邻加成翻倍."	),
	
	("zh_Hans_CN",	'LOC_TM_FEATURE_OLD_FAITHFUL_QUOTE',	
	'"在我们逗留期间，它每隔九次有规律地喷水，每次喷出的沸水柱从九十英尺扔到一百二十五英尺，持续十五到二十分钟。我们给它起了老忠实的名字."[NEWLINE]- Nathaniel P. Langford'	),
	
	("zh_Hans_CN",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_OLD_FAITHFUL_CHAPTER_HISTORY_PARA_1",	
	"老忠实泉是美国怀俄明州黄石国家公园的一处间歇泉。欧洲人第一次发现老忠实泉是在1870年（早在一万多年美国土著就已发现了）。之所以命名为老忠实泉是因为它喷发特别有规律。每隔60至90分钟，老忠实泉就会喷发出一条大约100到175英尺高的热水柱（间歇取决于上一次喷发的激烈度）。当地下水遇到岩浆（熔化了的岩石），遇热变成蒸汽，在极高压下从最近的地表开口出喷涌而出，便形成了间歇泉。每一年老忠实泉与黄石国家公园里的其他250处间歇泉都吸引了近三百万游客前来观赏这一壮丽景观."	),

-----------------------------------------------
-- PANTANAL
-----------------------------------------------

	("zh_Hans_CN",	"LOC_TM_FEATURE_PANTANAL_DESCRIPTION",			"四格自然奇观.作为沼泽出现. 提供 +3 [ICON_FOOD] 食物 and +2 [ICON_CULTURE] 文化."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_PANTANAL_EFFECT",				"拥有此奇观的文明的区域从沼泽获得标准区域邻接加成."	),
	
	("zh_Hans_CN",	"LOC_ADJ_PANTANAL_FAITH_DESCRIPTION",			"+{1_num} [ICON_FAITH] 信仰 来自邻接  {1_Num : plural 1?Marsh; other?Marsh;} (Pantanal)."	),
	("zh_Hans_CN",	"LOC_ADJ_PANTANAL_SCIENCE_DESCRIPTION",			"+{1_num} [ICON_SCIENCE] 科研 来自邻接  {1_Num : plural 1?Marsh; other?Marsh;} (Pantanal)."	),
	("zh_Hans_CN",	"LOC_ADJ_PANTANAL_CULTURE_DESCRIPTION",			"+{1_num} [ICON_CULTURE] 文化 来自邻接  {1_Num : plural 1?Marsh; other?Marsh;} (Pantanal)."	),
	("zh_Hans_CN",	"LOC_ADJ_PANTANAL_GOLD_DESCRIPTION",			"+{1_num} [ICON_GOLD] 金币 来自邻接  {1_Num : plural 1?Marsh; other?Marsh;} (Pantanal)."	),
	("zh_Hans_CN",	"LOC_ADJ_PANTANAL_PRODUCTION_DESCRIPTION",		"+{1_num} [ICON_PRODUCTION] 产能 来自邻接  {1_Num : plural 1?Marsh; other?Marsh;} (Pantanal)."	),

-----------------------------------------------
-- PIOPIOTAHI
-----------------------------------------------

	("zh_Hans_CN",	"LOC_TM_FEATURE_PIOPIOTAHI_DESCRIPTION",	"三格无法逾越的自然奇观. 相邻单元格 +1 [ICON_CULTURE] 文化 and +1 [ICON_GOLD] 金币."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_PIOPIOTAHI_EFFECT",			"至少拥有一格此奇观的文明从宗教建筑获得的[ICON_AMENITIES] 宜居度辐射范围额外增加3格."	),
	
-----------------------------------------------
-- ROCK OF GIBRALTAR
-----------------------------------------------

	("zh_Hans_CN",	"LOC_FEATURE_GIBRALTAR_NAME",				"直布罗陀巨岩"	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_GIBRALTAR_DESCRIPTION",		"一格无法逾越的自然奇观. 相邻单元格 +1 [ICON_FOOD] 食物 and +1 [ICON_GOLD] 金币."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_GIBRALTAR_EFFECT",			"拥有此奇观的城市的军营和港口额外提供 +2 [ICON_GREATPERSON] 伟人点数."	),

	("zh_Hans_CN",	'LOC_TM_FEATURE_GIBRALTAR_QUOTE',	
	'"我的孩子们，看看四周，看到那辉煌的火焰的光芒，岩石显得多么美丽。."[NEWLINE]- George Augustus Eliott'	),
	
	("zh_Hans_CN",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_GIBRALTAR_CHAPTER_HISTORY_PARA_1",	
	"在地中海出海口的直布罗陀半岛上，有一块引人注目的巨岩。直布罗陀由英国和荷兰人在1704年共同从西班牙手中夺得，并于1713年割让给英国。从那时起直布罗陀就一直是英国的殖民地（西班牙对此不满一直想要收回）。直布罗陀对地中海通往大西洋的入海口居高临下，在300年里一直是重要的英国海军基地。
直布罗陀的大部分区域被这块“岩石”覆盖，它是由页岩、沙石和石灰岩在难以想象的板块构造的强大力量作用下形成的，高约1400英尺（430米）。曾几何时，直布罗陀是英国统治地中海-大西洋狭窄出海口的巨型要塞，而时至今日，这个半岛的主要作用不再是军事基地，更多的则是作为自然保护区吸引游客前来。."	),

-----------------------------------------------
-- RORAIMA
-----------------------------------------------

	("zh_Hans_CN",	"LOC_TM_FEATURE_RORAIMA_DESCRIPTION",	"四格无法逾越的自然奇观. 以山脉形式出现. 相邻单元格 +1 [ICON_FAITH] 信仰 and +1 [ICON_SCIENCE] 科研."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_RORAIMA_EFFECT",		"至少拥有一格此奇观的文明的雨林不再降低地块魅力."	),

-----------------------------------------------
-- SALAR DE UYUNI
-----------------------------------------------

	("zh_Hans_CN",	"LOC_FEATURE_SALAR_DE_UYUNI_NAME",				"乌尤尼盐沼"	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_SALAR_DE_UYUNI_DESCRIPTION",	"四格自然奇观. 单元格 +2 [ICON_SCIENCE] 科研, +1 [ICON_PRODUCTION] 产能, and +2 [ICON_GOLD] 金币."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_SALAR_DE_UYUNI_EFFECT",			"至少拥有一格此奇观的文明免费获得一个 [ICON_RESOURCE_TM_LITHIUM] 锂矿 (非卖品)，可以提供 +6 [ICON_AMENITIES] 宜居度."	),

	("zh_Hans_CN",	'LOC_TM_FEATURE_SALAR_DE_UYUNI_QUOTE',	
	'"当我听到沙漠中的盐的声音时，我在孤独中颤抖。."[NEWLINE]- Pablo Neruda'	),
	
	("zh_Hans_CN",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_SALAR_DE_UYUNI_CHAPTER_HISTORY_PARA_1",	
	"乌尤尼盐沼在玻利维亚波托西省西部高原内，海拔3,656米（11,995英尺），长150公里，宽130公里，面积9,065平方公里，为世界最大的盐层覆盖的荒原，有“天空之镜”的美称。边缘有盐场，主要盐场间有公路相通。."	),

	("zh_Hans_CN",	"LOC_RESOURCE_TM_LITHIUM_NAME",	"Lithium"	),
	("zh_Hans_CN",	"LOC_PEDIA_RESOURCES_PAGE_RESOURCE_TM_LITHIUM_CHAPTER_HISTORY_PARA_1",
	"据美国地质勘探局的汇报说乌尤尼盐沼下的锂储量大得惊人，几乎占有全世界锂的一半。如果把锂矿资源完全开发出来，南美穷国玻利维亚将富可匹敌中东巨头沙特阿拉伯。但是玻利维亚总统埃沃·莫拉莱斯拒绝了多家汽车公司提出的近10亿美元的投资开发计划，他说：“我们不会让15世纪发生在这个国家的悲剧重演，不会让外资夺走属于我们自己的自然资源，而我们的人民仍生活在贫困当中。”玻利维亚政府正在小规模的开发乌尤尼盐沼的锂矿资源，“必须按照我们的时间表进行。”总统再次声明。."	),

-----------------------------------------------
-- SINAI
-----------------------------------------------

	("zh_Hans_CN",	"LOC_FEATURE_SINAI_NAME",				"西奈山"	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_SINAI_DESCRIPTION",		"一格无法逾越的自然奇观. 以山脉形式出现. 相邻单元格 +2 [ICON_FAITH] 信仰."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_SINAI_EFFECT",			"拥有此奇观的文明的圣地额外 +1 [ICON_GREATPERSON] 伟人点数. 该城市的宗教单位提供 +10 宗教 [ICON_STRENGTH] 战斗力."	),
	
	("zh_Hans_CN",	'LOC_TM_FEATURE_SINAI_QUOTE',	
	'"耶和华在西乃山上对摩西说完了话，就把两块约律法的版交给摩西，就是神用指头刻的石版。."[NEWLINE]- Exodus 31:18'	),
	
	("zh_Hans_CN",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_SINAI_CHAPTER_HISTORY_PARA_1",	
	"位于埃及西奈半岛的西奈山名列最受犹太教、基督教和伊斯兰教信徒尊崇的圣地。西奈山据说是摩西在带领犹太人出埃及途中，最早从上帝手中领受十诫的地方。这座山由此成为了全球宗教朝圣者的一个重要地标。."	),

-----------------------------------------------
-- SRI PADA
-----------------------------------------------

	("zh_Hans_CN",	"LOC_FEATURE_SRI_PADA_NAME",				"圣足山"	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_SRI_PADA_DESCRIPTION",		"一格无法逾越的自然奇观. 以山脉形式出现. 相邻单元格 +1 [ICON_FOOD] 食物 and +1 [ICON_FAITH] 信仰."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_SRI_PADA_EFFECT",			"拥有此奇观的城市生产的宗教单位首次转变城市 [ICON_RELIGION] 信仰时获得 [ICON_CULTURE] 文化值."	),
	
	("zh_Hans_CN",	'LOC_TM_FEATURE_SRI_PADA_QUOTE',	
	'"极其壮观的景象，具有最高的光辉。."[NEWLINE]- The Mahabharata'	),
	
	("zh_Hans_CN",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_SRI_PADA_CHAPTER_HISTORY_PARA_1",	
	"高耸于斯里兰卡的圣足山（又名“亚当峰”），拥有奇特的圆锥形外表，因为在山峰上发现的“足印”而被诸多宗教一直尊为圣山。这个所谓的足印——一个在山巅的岩石上被发现的大坑，被归因于佛陀、湿婆神以及《圣经》中的亚当，使得这座山在佛教、印度教以及伊斯兰教的信徒中广受尊崇。每年都有成千上万的朝圣者跋山涉水攀上山顶，向圣地致以他们的崇高敬意。."	),

-----------------------------------------------
-- TORRES DEL PAINE
-----------------------------------------------

	("zh_Hans_CN",	"LOC_TM_FEATURE_TORRES_DEL_PAINE_DESCRIPTION",		"两格无法逾越的自然奇观. 邻接单元格地形产出翻倍."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_TORRES_DEL_PAINE_EFFECT",			"拥有此奇观的城市可额外建造一个区域."	),

-----------------------------------------------
-- TSINGY
-----------------------------------------------

	("zh_Hans_CN",	"LOC_TM_FEATURE_TSINGY_DESCRIPTION",	"一格无法逾越的自然奇观. 相邻单元格 +1 [ICON_CULTURE] 文化 and +1 [ICON_SCIENCE] 科研."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_TSINGY_EFFECT",			"剧院区域提供文化炸弹，城市有国家公园时剧院广场邻接加成翻倍."	),

-----------------------------------------------
-- UBSUNUR HOLLOW
-----------------------------------------------

	("zh_Hans_CN",	"LOC_TM_FEATURE_UBSUNUR_HOLLOW_DESCRIPTION",	"四格自然奇观. 作为沼泽出现. 单元格 +2 [ICON_FAITH] 信仰, +1 [ICON_FOOD] 食物, and +2 [ICON_PRODUCTION] 产能."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_UBSUNUR_HOLLOW_EFFECT",			"至少拥有一格此奇观的文明每当获得 [ICON_GREATGENERAL] 大将军时赠送一个免费 [ICON_CivicBoosted] 灵感."	),

-----------------------------------------------
-- ULURU
-----------------------------------------------

	("zh_Hans_CN",	"LOC_TM_FEATURE_ULURU_DESCRIPTION",		"一格无法逾越的自然奇观. 相邻单元格 +1 [ICON_CULTURE] 文化 and +1 [ICON_FAITH] 信仰."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_ULURU_EFFECT",			"拥有此奇观的城市位于沙漠上的区域 +1 [ICON_FOOD] 食物."	),

-----------------------------------------------
-- WULINGYUAN
-----------------------------------------------
	
	("zh_Hans_CN",	"LOC_FEATURE_WULINGYUAN_NAME",				"武陵源"	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_WULINGYUAN_DESCRIPTION",	"两格无法逾越的自然奇观. 相邻单元格 +2 [ICON_CULTURE] 文化"	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_WULINGYUAN_EFFECT",			"至少拥有一格此奇观的文明的 [ICON_GreatWork_Writing] 著作 +2 [ICON_CULTURE] 文化 ， +50% [ICON_TOURISM] 旅游."	),
	
	("zh_Hans_CN",	'LOC_TM_FEATURE_WULINGYUAN_QUOTE',	
	'"把张家界建设成为国内外知名的旅游胜地."[NEWLINE]- 长者亲笔题词'	),
	
	("zh_Hans_CN",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_WULINGYUAN_CHAPTER_HISTORY_PARA_1",	
	"武陵源风景名胜区位于中国中部湖南省西北部，位于东110°20'30～110°41'15、北纬29°16'25～29°24'25之间，由张家界市的张家界国家森林公园、慈利县的索溪峪自然保护区和桑植县的天子山自然保护区组合而成，后又发现了杨家界新景区，总面积500平方公里。."	),

-----------------------------------------------
-- YOSEMITE
-----------------------------------------------

	("zh_Hans_CN",	"LOC_TM_FEATURE_YOSEMITE_DESCRIPTION",		"两格无法逾越的自然奇观. 相邻单元格 +1 [ICON_GOLD] 金币 and +1 [ICON_SCIENCE] 科研."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_YOSEMITE_EFFECT",			"至少拥有一格此奇观的文明的森林为临近单元格额外 +1 吸引力."	),

-----------------------------------------------
-- ZHANGYE DANXIA
-----------------------------------------------

	("zh_Hans_CN",	"LOC_TM_FEATURE_ZHANGYE_DANXIA_DESCRIPTION",	"三格无法逾越的自然奇观. 以山脉形式出现. 相邻单元格 +2 [ICON_SCIENCE] 科研."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_ZHANGYE_DANXIA_EFFECT",			"至少拥有一格此奇观的城市的商业中心和学院提供 +2 [ICON_GREATPERSON] 对应伟人点数."	),

-----------------------------------------------
-- MISC - District Adjacency
-----------------------------------------------

	("zh_Hans_CN",	"LOC_TM_ADJ_NW_FAITH_DESCRIPTION",			"+{1_num} [ICON_FAITH] 信仰 from the adjacent {1_Num : plural 1?Natural Wonder; other?Natural Wonder plots;}."	),
	("zh_Hans_CN",	"LOC_TM_ADJ_NW_SCIENCE_DESCRIPTION",		"+{1_num} [ICON_SCIENCE] 科研 from the adjacent {1_Num : plural 1?Natural Wonder; other?Natural Wonder plots;}."	),
	("zh_Hans_CN",	"LOC_TM_ADJ_NW_CULTURE_DESCRIPTION",		"+{1_num} [ICON_CULTURE] 文化 from the adjacent {1_Num : plural 1?Natural Wonder; other?Natural Wonder plots;}."	),
	("zh_Hans_CN",	"LOC_TM_ADJ_NW_PRODUCTION_DESCRIPTION",		"+{1_num} [ICON_PRODUCTION] 产能 from the adjacent {1_Num : plural 1?Natural Wonder; other?Natural Wonder plots;}."	),
	("zh_Hans_CN",	"LOC_TM_ADJ_NW_GOLD_DESCRIPTION",			"+{1_num} [ICON_GOLD] 金币 from the adjacent {1_Num : plural 1?Natural Wonder; other?Natural Wonder plots;}."	),

-----------------------------------------------
-- MISC - Naturlist
-----------------------------------------------

	("zh_Hans_CN",	"LOC_TM_UNIT_NATURALIST_DESCRIPTION",	"可以建造国家公园来吸引 [ICON_TOURISM] 游客. 只能用 [ICON_GOLD] 金币购买."	),

-----------------------------------------------
-- MOD SUPPORT
-----------------------------------------------

	("zh_Hans_CN",	"LOC_TM_FEATURE_FUJI_DESCRIPTION",		"一格无法逾越的自然奇观. 以山脉形式出现. 相邻单元格 +1 [ICON_CULTURE] 文化 and +1 [ICON_FAITH] 信仰. 相邻区域 +2 [ICON_GREATPERSON] 对应伟人点数."	);
