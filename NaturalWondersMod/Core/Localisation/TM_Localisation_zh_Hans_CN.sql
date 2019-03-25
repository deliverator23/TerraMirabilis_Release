/*
	Localisation
	Language: Chinese ("zh_Hans_CN")
	Credits: boynextdoor
	
	Guide:
	~ Make a copy of this file on your local drive. This is to ensure that your work isn't overwritten when the mod gets updated on Steam.
	~ Do not change anything in UPPERCASE text, including [ICONS]. These are important references.
	~ Keep your changes inside the "quotation marks"
		
	Thank you for your help :) just ask us if you have any questions.
*/

INSERT OR REPLACE INTO LocalizedText (Language, Tag, Text)
VALUES

-----------------------------------------------
-- BARRIER REEF大堡礁
-----------------------------------------------

	("zh_Hans_CN",	"LOC_TM_FEATURE_BARRIER_REEF_DESCRIPTION",		"两格自然奇观. 单元格 +2 [ICON_FOOD] 食物, +1 [ICON_GOLD] 金币, +2 [ICON_SCIENCE] 科研."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_BARRIER_REEF_EFFECT",			"当你占有至少一格时你的海洋改良设施 +1 [ICON_GOLD] 金币"	),
	
-----------------------------------------------
-- BARRINGER CRATER
-----------------------------------------------

	("zh_Hans_CN",	"LOC_FEATURE_BARRINGER_CRATER_NAME",				"巴林杰陨石坑"	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_BARRINGER_CRATER_DESCRIPTION",		"一格自然奇观. 单元格 +3 [ICON_SCIENCE] 科研、+2 [ICON_GOLD] 金币."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_BARRINGER_CRATER_EFFECT",			"拥有此奇观的城市的太空竞赛项目提供 +20% [ICON_PRODUCTION] 产能."	),
	
	("zh_Hans_CN",	'LOC_TM_FEATURE_BARRINGER_CRATER_QUOTE',
	'"事实上，我们现在可以证明，这个陨石坑是由于一个地外天体，可能是一个金属小行星与地球碰撞造成的。."[NEWLINE]- Daniel Barringer'	),
	
	("zh_Hans_CN",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_BARRINGER_CRATER_CHAPTER_HISTORY_PARA_1",	
	"巴林杰陨石坑是2~5万年前重约7万吨的陨石撞入地球，形成的陨石坑。陨石坑宽1264米，深174米，坑的内壁笔直陡峭。位于亚利桑那州弗拉格斯塔夫东部约40英里的地方。."	),

-----------------------------------------------
-- BIOLUMINESCENT BAY
-----------------------------------------------

	("zh_Hans_CN",	"LOC_FEATURE_BIOLUMINESCENT_BAY_NAME",					"法哈多荧光海湾"	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_BIOLUMINESCENT_BAY_DESCRIPTION",		"一格自然奇观. 产出 +2 [ICON_SCIENCE] 科研, +2 [ICON_CULTURE] 文化,、+1 [ICON_GOLD] 金币."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_BIOLUMINESCENT_BAY_EFFECT",				"拥有此奇观的文明的国际贸易路线从渔船获得 +1 [ICON_GOLD] 金币."	),
	
	("zh_Hans_CN",	'LOC_TM_FEATURE_BIOLUMINESCENT_BAY_QUOTE',
	'"火、闪电、星星或生物发出的光引起任何人的注意。在生物发光的例子中，有一种奇怪的发光，魔幻而又神秘。."[NEWLINE]- 卡西乌斯·斯蒂瓦尼'	),
	
	("zh_Hans_CN",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_BIOLUMINESCENT_BAY_CHAPTER_HISTORY_PARA_1",	
	"荧光海实际上是一种生物发光现象。所谓生物发光现象，是指生物通过体内的一定化学反应，将化学能转化为光能而释放的过程。萤火虫的发光就是最为人所知的一种生物发光现象。全世界有七个地方出现荧光海滩，三个在波多黎各，两个在澳大利亚，一个在马尔代夫，一个在中国河北秦皇岛 ，2014年，中国大连也出现了荧光海，最著名的就是波多黎各法哈多荧光海湾."	),
	("zh_Hans_CN",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_BIOLUMINESCENT_BAY_CHAPTER_HISTORY_PARA_2",	
	"海水中能够发光的生物种类相当多样，从单细胞的甲藻类，到腔肠动物诸如发光水母、环节动物如海生多毛类、软体动物如各种发光头足类、以至于节肢动物的磷虾和海萤等。从大连这次“荧光海滩”现象来看，可以排除体型较大水母和头足类，而海萤等节肢动物无法产生如此强烈的荧光，因此最有可能的是甲藻类单细胞生物繁殖所致."	),

-----------------------------------------------
-- CERRO DE POTOSI
-----------------------------------------------

	("zh_Hans_CN",	"LOC_FEATURE_CERRO_DE_POTOSI_NAME",				"富饶山"	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_CERRO_DE_POTOSI_DESCRIPTION",	"一格无法逾越的自然奇观. 以山脉形式出现. 相邻单元格 +1 [ICON_PRODUCTION] 产能、+1 [ICON_GOLD] 金币."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_CERRO_DE_POTOSI_EFFECT",		"拥有此奇观的城市的国际 [ICON_TRADEROUTE] 贸易路线 +4 [ICON_GOLD] 金币."	),
	
	("zh_Hans_CN",	'LOC_TM_FEATURE_CERRO_DE_POTOSI_QUOTE',	
	'"我是富有的波托西，世界之宝，群山之王，万王之羡."[NEWLINE]- First Coat of Arms of Potosi'	),
	
	("zh_Hans_CN",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_CERRO_DE_POTOSI_CHAPTER_HISTORY_PARA_1",	
	"”富饶山”指位于玻利维亚南部的波多西山，殖民时代西班牙几乎所有的白银都出产在那里。波多西山出产的白银先由羊驼和骡子运到海滨，然后用大帆船运往欧洲。两百年间的开采总量高达4.1万吨纯银，其中8200吨成为西班牙王室的财产。1800年后，波多西山银矿的主矿脉濒于枯竭，但直到今天当地的矿井还在继续开采——一部分是白银，但大部分则是锡."	),

-----------------------------------------------
-- CLIFFS OF DOVER多佛白崖
-----------------------------------------------

	("zh_Hans_CN",	"LOC_TM_FEATURE_CLIFFS_DOVER_DESCRIPTION",		"两格自然奇观. 以悬崖地形出现. 单元格 +3 [ICON_CULTURE] 文化, +1 [ICON_FOOD] 食物,、+1 [ICON_GOLD] 金币."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_CLIFFS_DOVER_EFFECT",			"拥有此奇观地块的城市的港口从礁石获取少量邻接加成."	),

	("zh_Hans_CN",	"LOC_MODIFIER_TM_FEATURE_CLIFFS_DOVER_ADJACENCY_DESCRIPTION",	"+{1_num} [ICON_GOLD] 金币 来自邻接 {1_Num : plural 1?cliff; other?cliffs;}."	),

-----------------------------------------------
-- CRATER LAKE火山口湖
-----------------------------------------------

	("zh_Hans_CN",	"LOC_TM_FEATURE_CRATER_LAKE_DESCRIPTION",	"一格自然奇观. 以湖泊形式出现并且提供淡水. 单元格 +4 [ICON_FAITH] 信仰、+1 [ICON_SCIENCE] 科研."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_CRATER_LAKE_EFFECT",		"拥有此奇观的城市可以用 [ICON_FAITH] 信仰购买建筑."	),

-----------------------------------------------
-- DALLOL
-----------------------------------------------

	("zh_Hans_CN",	"LOC_FEATURE_DALLOL_NAME",					"达罗尔火山"	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_DALLOL_DESCRIPTION",		"一格自然奇观. 提供 +2 [ICON_SCIENCE] 科研, +2 [ICON_PRODUCTION] 产能、+1 [ICON_GOLD] 金币."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_DALLOL_EFFECT",				"拥有此单元的城市获得一份奢侈资源 [ICON_RESOURCE_TM_SYLVITE] 钾盐 (不可交♂易), 提供 +6 [ICON_Amenities] 宜居度."	),
	
	("zh_Hans_CN",	'LOC_TM_FEATURE_DALLOL_QUOTE',	
	'"There is hell, there is darkness, there is the sulfurous pit— burning, scalding, stench, consumption!"[NEWLINE]- 莎士比亚'	),
	
	("zh_Hans_CN",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_DALLOL_CHAPTER_HISTORY_PARA_1",	
	"达洛尔火山是埃塞俄比亚境内的一个火山口，由玄武岩岩浆在中新世盐矿床和随后的热液活动的侵扰造就，多次喷发在盐碱地中形成了众多火山坑。达洛尔是世界海拔最低的火山口，海拔高度在海平面以下45米。."	),
	("zh_Hans_CN",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_DALLOL_CHAPTER_HISTORY_PARA_2",	
	"硫磺、盐和其它矿物质使达罗尔火山口五彩缤纷。达罗尔火山位于埃塞俄比亚达纳基尔凹地，是地球上最热的地方。达罗尔火山低于海平面48米，也是世界上最低的火山."	),

	("zh_Hans_CN",	"LOC_RESOURCE_TM_SYLVITE_NAME",	"Sylvite"	),
	("zh_Hans_CN",	"LOC_PEDIA_RESOURCES_PAGE_RESOURCE_TM_SYLVITE_CHAPTER_HISTORY_PARA_1",
	"在埃塞俄比亚的达洛尔，据说1917年后钾盐产量达到了5.1万公吨，在1925-29年间，一家意大利公司开采了2.5万吨钾盐。到1965年，在达拉尔的65个地方钻了大约10000个孔。."	),
	("zh_Hans_CN",	"LOC_PEDIA_RESOURCES_PAGE_RESOURCE_TM_SYLVITE_CHAPTER_HISTORY_PARA_2",
	"钾盐，是指天然含钾矿物。包括钾石岩、钾盐镁矾、光卤石、硫酸镁石和氯化钾等。钾盐一般都是可溶性的，有很高的纯度。钾盐矿存在于地壳表层或将要干涸的湖泊和海洋的卤水中，最重要的钾盐矿发现于德国、俄罗斯、加拿大、意大利、法国、西班牙和美国。名称来源源于一位德国化学家的名字Sylvite."	),

-----------------------------------------------
-- DEAD SEA死海
-----------------------------------------------

	("zh_Hans_CN",	"LOC_TM_FEATURE_DEAD_SEA_DESCRIPTION",		"两格自然奇观. 以湖泊形式出现. 单元格 +2 [ICON_FAITH] 信仰, +2 [ICON_CULTURE] 文化,、+1 [ICON_GOLD] 金币."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_DEAD_SEA_EFFECT",			"拥有此奇观的城市生产的单位 [ICON_Fortified] 驻扎时额外+10 hp."	),

-----------------------------------------------
-- DELICATE ARCH金拱门
-----------------------------------------------

	("zh_Hans_CN",	"LOC_TM_FEATURE_DELICATE_ARCH_DESCRIPTION",		"一格无法逾越的自然奇观. 相邻单元格 +1 [ICON_CULTURE] 文化、+1 [ICON_GOLD] 金币."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_DELICATE_ARCH_EFFECT",			"拥有此奇观的文明购买单元格时-20%off."	),

-----------------------------------------------
-- EVEREST珠峰
-----------------------------------------------

	("zh_Hans_CN",	"LOC_TM_FEATURE_EVEREST_DESCRIPTION",		"三格无法逾越的自然奇观. 以山脉形式出现. 相邻单元格 +2 [ICON_FAITH] 信仰."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_EVEREST_EFFECT",			"拥有此奇观的城市生产的宗教单位在丘陵 [ICON_MOVEMENT] 移动时无视地形影响，且额外+1s."	),

-----------------------------------------------
-- EYE OF THE SAHARA撒哈拉之眼
-----------------------------------------------

	("zh_Hans_CN",	"LOC_TM_FEATURE_EYE_OF_THE_SAHARA_DESCRIPTION",		"三格自然奇观. 单元格 +2 [ICON_PRODUCTION] 产能, +2 [ICON_SCIENCE] 科研,、+1 [ICON_GOLD] 金币."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_EYE_OF_THE_SAHARA_EFFECT",			"至少拥有一格此奇观的文明在至少+4时代分的历史时刻时额外获得 +2时代分."	),

-----------------------------------------------
-- EYJAFJALLAJOKULL艾雅法拉火山
-----------------------------------------------

	("zh_Hans_CN",	"LOC_TM_FEATURE_EYJAFJALLAJOKULL_DESCRIPTION",		"两格无法逾越的自然奇观. 以山脉形式出现. 相邻单元格 +1 [ICON_CULTURE] 文化、+1 [ICON_FOOD] 食物."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_EYJAFJALLAJOKULL_EFFECT",			"拥有此奇观的城市位于冻土或雪地的独特区域 +1 [ICON_FOOD] 食物."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_EYJAFJALLAJOKULL_XP2_DESCRIPTION",			"两格不可通过自然奇观，视为火山，临近单元格 +1 [ICON_CULTURE] 文化. 在火山爆发时提供额外收益，代价是 [ICON_CITIZEN] 人口和改良设施损失. 一直活跃."	),

-----------------------------------------------
-- GALAPAGOS加拉帕戈斯群岛
-----------------------------------------------
	
	("zh_Hans_CN",	"LOC_TM_FEATURE_GALAPAGOS_DESCRIPTION",		"两格无法逾越的自然奇观. 相邻单元格 +2 [ICON_SCIENCE] 科研."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_GALAPAGOS_EFFECT",			"至少拥有一格此奇观的文明免费获得一个 [ICON_RESOURCE_TM_TORTOISE] 象龟（非卖品），可以提供 +6 [ICON_AMENITIES] 宜居度."	),

	("zh_Hans_CN",	"LOC_RESOURCE_TM_TORTOISE_NAME",	"Tortoise"	),
	("zh_Hans_CN",	"LOC_PEDIA_RESOURCES_PAGE_RESOURCE_TM_TORTOISE_CHAPTER_HISTORY_PARA_1",
	"Galapagos群岛，意为“大龟群岛”，是厄瓜多尔位于太平洋、距陆地本土1200公里的一个省，由十几个火山岩岛屿组成，人口不足2万。该群岛以海洋动植物物种繁多、保护良好而闻名于世，著名科学家达尔文曾在该岛为他的“进化论”找到论证的依据。1997年联合国教科文组织推认大龟群岛为“人类自然遗产”。近年来，大龟群岛日益成为世界各地游客光顾的热点，年踏访人数达30万以上."	),

-----------------------------------------------
-- GIANTS CAUSEWAY 巨人堤
-----------------------------------------------

	("zh_Hans_CN",	"LOC_TM_FEATURE_GIANTS_CAUSEWAY_DESCRIPTION",	"两格无法逾越的自然奇观. 相邻单元格 +2 [ICON_CULTURE] 文化."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_GIANTS_CAUSEWAY_EFFECT",		"至少拥有一格此奇观的城市训练的陆地单位+1次 [ICON_PROMOTION] 晋升."	),

 -----------------------------------------------
-- GOBUSTAN戈布斯坦壁画
-----------------------------------------------

	("zh_Hans_CN",	"LOC_TM_FEATURE_GOBUSTAN_DESCRIPTION",			"三格自然奇观. 产出 +3 [ICON_CULTURE] 文化, +1 [ICON_PRODUCTION] 产能,、+1 [ICON_SCIENCE] 科研."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_GOBUSTAN_EFFECT",				"拥有此奇观单元格的文明[ICON_RESOURCE_OIL] 石油油井每回合产出+2s."	),

-----------------------------------------------
-- GRAND MESA
-----------------------------------------------

	("zh_Hans_CN",	"LOC_FEATURE_GRAND_MESA_NAME",				"大平顶山"	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_GRAND_MESA_DESCRIPTION",	"一格无法逾越的自然奇观. 相邻单元格 +1 [ICON_FOOD] 食物、+1 [ICON_CULTURE] 文化."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_GRAND_MESA_EFFECT",			"拥有此奇观的城市生产的单位在森林和雨林 [ICON_MOVEMENT] 移动时无视地形影响."	),
	
	("zh_Hans_CN",	'LOC_TM_FEATURE_GRAND_MESA_QUOTE',	
	'"保护意味着明智地利用地球和它的资源来为人类带来持久的利益。."[NEWLINE]- Gifford Pinchot'	),
	
	("zh_Hans_CN",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_GRAND_MESA_CHAPTER_HISTORY_PARA_1",	
	"大平顶山是位于美国西部的科罗拉多州的一处大型地质构造。这是世界上最大的平顶山，方圆500平方英里（1300平方公里），比周围区域高5000英尺（1500米）。大平顶山的山顶覆盖了一层火山岩，可以很好地抵御侵蚀。当周边区域都被科罗拉多河和甘尼森河的流水侵蚀时，大平顶山仍然保持原来的高度，并没有多少变化。"	),

-----------------------------------------------
-- HA LONG BAY下龙湾
-----------------------------------------------

	("zh_Hans_CN",	"LOC_TM_FEATURE_HA_LONG_BAY_DESCRIPTION",	"两格自然奇观. 单元格 +2 [ICON_CULTURE] 文化, +2 [ICON_FOOD] 食物、+1 [ICON_PRODUCTION] 产能."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_HA_LONG_BAY_EFFECT",		"至少拥有一格此奇观的文明的港口提供 +2 [ICON_HOUSING] 住房."	),

-----------------------------------------------
-- IK-KIL墨西哥天坑
-----------------------------------------------

	("zh_Hans_CN",	"LOC_TM_FEATURE_IK_KIL_DESCRIPTION",			"一格不可通过自然奇观. 提供淡水，相邻格 +1 [ICON_SCIENCE] 科研,、+1 [ICON_FAITH] 信仰."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_IK_KIL_EFFECT",					"拥有此单元的文明建造奇观+15% [ICON_PRODUCTION] 产能."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_IK_KIL_EFFECT_DESCRIPTION",		"{LOC_TM_FEATURE_IK_KIL_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_IK_KIL_EFFECT}"	),

-----------------------------------------------
-- KAILASH
-----------------------------------------------

	("zh_Hans_CN",	"LOC_FEATURE_KAILASH_NAME",				"冈底斯山"	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_KAILASH_DESCRIPTION",	"一格无法逾越的自然奇观. 以山脉形式出现. 相邻单元格 +1 [ICON_FAITH] 信仰、+1 [ICON_CULTURE] 文化."	),
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
	("zh_Hans_CN",	"LOC_TM_FEATURE_KRAKATOA_DESCRIPTION",		"一格无法逾越的自然奇观. 以火山形式出现. 相邻单元格 +1 [ICON_SCIENCE] 科研、+1 [ICON_CULTURE] 文化."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_KRAKATOA_XP2_DESCRIPTION",			"一格不可通过的奇观. 视为火山. 相邻单元格 +1 [ICON_SCIENCE] 科研. 总是活跃，喷发后获得收益，那么代价是什么呢."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_KRAKATOA_EFFECT",			"拥有此奇观的城市的每个区域获得 +2 [ICON_SCIENCE] 科研, 如果该城有国家公园，则是+3."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_KRAKATOA_EFFECT_XP1",		"拥有此奇观的文明每当获得一个 [ICON_GREATADMIRAL] 海军上将时赠送一个 [ICON_TechBoosted] 尤里卡."	),
	
	("zh_Hans_CN",	'LOC_TM_FEATURE_KRAKATOA_QUOTE',	
	'"我惊奇地看到，克拉卡托岛在我们眼前完全被烧焦，一片荒芜，四处起火。."[NEWLINE]- Johann Wilhelm Vogel'	),
	
	("zh_Hans_CN",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_KRAKATOA_CHAPTER_HISTORY_PARA_1",	
	"喀拉喀托火山位于印度尼西亚巽他海峡中，拉卡塔岛附近。1883年等级为VEI-6的大爆发释放出21立方公里的火山灰，远在毛里求斯岛都能够听到这次喷发的剧烈声响，是人类历史上最大的火山喷发之一。该次喷发以及引发的海啸摧毁了数百个村庄和城市，36417人死于非命。原有的喀拉喀托火山的三分之二在爆发中消失，新的火山活动自1927年又产生了一个不断成长的火山岛。."	),

-----------------------------------------------
-- LAKE RETBA玫瑰湖
-----------------------------------------------

	("zh_Hans_CN",	"LOC_TM_FEATURE_LAKE_RETBA_DESCRIPTION",	"两格自然奇观. 以湖泊形式出现. 单元格 +2 [ICON_CULTURE] 文化, +2 [ICON_GOLD] 金币, +1 [ICON_PRODUCTION] 产能."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_LAKE_RETBA_EFFECT",			"至少拥有一格此奇观的文明拥有的奢侈品的复制品额外+2 [ICON_GOLD] 金币."	),

-----------------------------------------------
-- LAKE VICTORIA
-----------------------------------------------

	("zh_Hans_CN",	"LOC_FEATURE_LAKE_VICTORIA_NAME",				"维多利亚湖"	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_LAKE_VICTORIA_DESCRIPTION",		"四格自然奇观. 以湖泊形式出现并且提供淡水. 单元格 +3 [ICON_FOOD] 食物, +1 [ICON_CULTURE] 文化,、+1 [ICON_GOLD] 金币."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_LAKE_VICTORIA_EFFECT",			"至少拥有一格此奇观的文明不在原始 [ICON_CAPITAL] 所在大陆的城市 +15% [ICON_FOODSURPLUS] 增长."	),
	
	("zh_Hans_CN",	'LOC_TM_FEATURE_LAKE_VICTORIA_QUOTE',	
	'"我看到老尼罗河神父毫无疑问地从维多利亚尼亚扎河升起，正如我预言的那样，那湖是圣河的源头，圣河孕育了我们宗教信仰的第一个阐释者."[NEWLINE]- John Hanning Speke'	),
	
	("zh_Hans_CN",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_LAKE_VICTORIA_CHAPTER_HISTORY_PARA_1",	
	"维多利亚湖（VictoriaNyanza）位于东非高原，大部分在坦桑尼亚和乌干达两国境内，一小部分属于肯尼亚。1860-1863年英国探险家约翰·汉宁·斯皮克和格兰特到此处调查尼罗河的源头时，以英国女王维多利亚的名字命名该湖泊。湖泊介于东非大裂谷及其西支之间，居裂谷间浅宽盆地的北部，湖盆是由于地面凹陷而形成的，所以维多利亚湖的成因与东非高原上的其它大湖是完全不同的。该湖的面积69400km²，是非洲最大湖泊，世界第二大淡水湖。湖面海拔1134米，鱼类资源丰富。."	),

-----------------------------------------------
-- LYSEFJORDEN
-----------------------------------------------

	("zh_Hans_CN",	"LOC_TM_FEATURE_LYSEFJORDEN_DESCRIPTION",	"三格自然奇观. 相邻单元格 +1 [ICON_CULTURE] 文化、+1 [ICON_SCIENCE] 科研"	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_LYSEFJORDEN_EFFECT",		"至少拥有一格此奇观的城市训练的海军单位+1次 [ICON_PROMOTION] 晋升."	),

-----------------------------------------------
-- MATTERHORN
-----------------------------------------------

	("zh_Hans_CN",	"LOC_TM_FEATURE_MATTERHORN_DESCRIPTION",	"一格无法逾越的自然奇观. 以山脉形式出现. 相邻单元格 +2 [ICON_CULTURE] 文化."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_MATTERHORN_EFFECT",			"拥有此奇观的城市生产的单位在丘陵 [ICON_MOVEMENT] 移动时无视地形影响, 且提供 +3 [ICON_STRENGTH] 攻击力."	),

	("zh_Hans_CN",	"LOC_MODIFIER_TM_FEATURE_MATTERHORN_COMBAT_DESCRIPTION",	"+{1_Amount} 攻击力当位于丘陵 (马特洪峰)"	),

-----------------------------------------------
-- MATO TIPILA魔鬼塔
-----------------------------------------------

	("zh_Hans_CN",	"LOC_TM_FEATURE_DEVILSTOWER_DESCRIPTION",			"一格不可通过的奇观. 相邻单元格 +1 [ICON_FAITH] 信仰、+1 [ICON_PRODUCTION] 产能."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_DEVILSTOWER_EFFECT",				"拥有此单元的文明购买自然学家- 50% off."	),

-----------------------------------------------
-- MOSI_OA_TUNYA
-----------------------------------------------

	("zh_Hans_CN",	"LOC_FEATURE_MOSI_OA_TUNYA_NAME",					"维多利亚瀑布"	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_MOSI_OA_TUNYA_DESCRIPTION",			"两格不可通过的奇观. 提供淡水. 相邻单元格 +2 [ICON_FOOD] 食物."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_MOSI_OA_TUNYA_EFFECT",				"有此奇观的文明沿河加成资源改良 +1 [ICON_FOOD] 食物 ."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_MOSI_OA_TUNYA_EFFECT_DESCRIPTION",	"{LOC_TM_FEATURE_MOSI_OA_TUNYA_DESCRIPTION}[NEWLINE][NEWLINE]{LOC_TM_FEATURE_MOSI_OA_TUNYA_EFFECT}"	),
	
	("zh_Hans_CN",	'LOC_TM_FEATURE_MOSI_OA_TUNYA_QUOTE',	
	'"这是我在非洲见过的最壮丽景色......除了一团白色云雾之外，什么也看不见。那白练就像是成千上万的小流星，全朝一个方向飞驰，每颗流星后都留下一道飞沫."[NEWLINE]- 戴维·利文斯敦'	),
	
	("zh_Hans_CN",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_MOSI_OA_TUNYA_CHAPTER_HISTORY_PARA_1",	
	"维多利亚瀑布，又称莫西奥图尼亚瀑布，位于非洲赞比西河中游，赞比亚与津巴布韦接壤处。宽1700多米(5,500多英尺)，最高处108米(355英尺)，为世界著名瀑布奇观之一。欧洲探险家，戴维·利文斯敦1855年在旅途中发现它，并以英国女王的名字为其命名。维多利亚瀑布1989年被列入《世界遗产名录》."	),

-----------------------------------------------
-- MOTLATSE CANYON
-----------------------------------------------

	("zh_Hans_CN",	"LOC_FEATURE_MOTLATSE_CANYON_NAME",				"布莱德河峡谷"	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_MOTLATSE_CANYON_DESCRIPTION",	"四格无法逾越的自然奇观. 相邻单元格 +1 [ICON_CULTURE] 文化、+1 [ICON_SCIENCE] 科研."	),
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
-- NAMIB
-----------------------------------------------

	("zh_Hans_CN",	"LOC_FEATURE_NAMIB_NAME",					"纳米比沙漠"	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_NAMIB_DESCRIPTION",			"两格自然奇观. 相邻单元格 +1 [ICON_CULTURE] 文化、+1 [ICON_GOLD] 金币."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_NAMIB_EFFECT",				"拥有此奇观的文明的国外贸易路线 [ICON_TRADEROUTE] 通过你的城市时 +1 [ICON_CULTURE] 文化 ."	),
	
	("zh_Hans_CN",	'LOC_TM_FEATURE_NAMIB_QUOTE',	
	'"我喜欢听沙丘发出的声音，我是那些能感知许多绘画中记录的风景节奏的人之一，我是成千上万知道我终于到家的人之一。."[NEWLINE]- Mvula Ya Nangolo'	),
	
	("zh_Hans_CN",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_NAMIB_CHAPTER_HISTORY_PARA_1",	
	"纳米比沙漠是位于非洲西南部的纳米比亚境内大西洋海岸线，非洲最大的纳米比—诺克陆夫国家公园内。成形于八千万年前的纳米比沙漠被认为是现存世界上最古老的沙漠，纳米比沙漠让纳米比亚国家取了这一国家名字。狂风吹出的沙丘散布在塞斯瑞姆(Sesriem)和索苏维来(Sossusvlei)沙丘地区之间。纳米布是一片凉爽的海岸荒漠，在那马语里的大概意思为“不毛之地”。纳米比沙漠向来便以艳丽的红色沙丘闻名。."	),

-----------------------------------------------
-- OLD FAITHFUL
-----------------------------------------------

	("zh_Hans_CN",	"LOC_FEATURE_OLD_FAITHFUL_NAME",				"老忠实泉"	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_OLD_FAITHFUL_DESCRIPTION",		"一格自然奇观. 单元格 +3 [ICON_SCIENCE] 科研, +1 [ICON_FAITH] 信仰,、+1 [ICON_GOLD] 金币."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_OLD_FAITHFUL_EFFECT",			"学院区域拥有文化炸弹，拥有国家公园的城市学院区相邻加成翻倍."	),
	
	("zh_Hans_CN",	'LOC_TM_FEATURE_OLD_FAITHFUL_QUOTE',	
	'"在我们逗留期间，它每隔九次有规律地喷水，每次喷出的沸水柱从九十英尺扔到一百二十五英尺，持续十五到二十分钟。我们给它起了老忠实的名字."[NEWLINE]- Nathaniel P. Langford'	),
	
	("zh_Hans_CN",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_OLD_FAITHFUL_CHAPTER_HISTORY_PARA_1",	
	"老忠实泉是美国怀俄明州黄石国家公园的一处间歇泉。欧洲人第一次发现老忠实泉是在1870年（早在一万多年美国土著就已发现了）。之所以命名为老忠实泉是因为它喷发特别有规律。每隔60至90分钟，老忠实泉就会喷发出一条大约100到175英尺高的热水柱（间歇取决于上一次喷发的激烈度）。当地下水遇到岩浆（熔化了的岩石），遇热变成蒸汽，在极高压下从最近的地表开口出喷涌而出，便形成了间歇泉。每一年老忠实泉与黄石国家公园里的其他250处间歇泉都吸引了近三百万游客前来观赏这一壮丽景观."	),
 
-----------------------------------------------
-- OUNIANGA
-----------------------------------------------

	("zh_Hans_CN",	"LOC_FEATURE_OUNIANGA_NAME",					"乌尼昂加湖泊群"	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_OUNIANGA_DESCRIPTION",			"两格自然奇观. 提供淡水. 提供 +2 [ICON_FOOD] 食物, +2 [ICON_CULTURE] 文化,、+1 [ICON_GOLD] 金币."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_OUNIANGA_EFFECT",				"乌尼昂加湖泊群为拥有此奇观的文明的区域提供标准邻接加成."	),

	("zh_Hans_CN",	"LOC_ADJ_OUNIANGA_FAITH_DESCRIPTION",			"+{1_num} [ICON_FAITH] 信仰 来自邻接 {1_Num : plural 1?Oasis; other?Oases;} (乌尼昂加湖泊群)."	),
	("zh_Hans_CN",	"LOC_ADJ_OUNIANGA_SCIENCE_DESCRIPTION",			"+{1_num} [ICON_SCIENCE] 科研 来自邻接 {1_Num : plural 1?Oasis; other?Oases;} (乌尼昂加湖泊群)."	),
	("zh_Hans_CN",	"LOC_ADJ_OUNIANGA_CULTURE_DESCRIPTION",			"+{1_num} [ICON_CULTURE] 文化 来自邻接 {1_Num : plural 1?Oasis; other?Oases;} (乌尼昂加湖泊群)."	),
	("zh_Hans_CN",	"LOC_ADJ_OUNIANGA_GOLD_DESCRIPTION",			"+{1_num} [ICON_GOLD] 金币 来自邻接 {1_Num : plural 1?Oasis; other?Oases;} (乌尼昂加湖泊群)."	),
	("zh_Hans_CN",	"LOC_ADJ_OUNIANGA_PRODUCTION_DESCRIPTION",		"+{1_num} [ICON_PRODUCTION] 产能 来自邻接 {1_Num : plural 1?Oasis; other?Oases;} (乌尼昂加湖泊群)."	),
	
	("zh_Hans_CN",	'LOC_TM_FEATURE_OUNIANGA_QUOTE',	
	'"起初，沙漠的语言是草在风的墙壁上绽放，高大的棕榈树在播种季节摇曳，空气中携带着煤渣，迎接暖沙的蓝色欢迎。她是我们的第一个喷泉，我们的母亲，抱着我们，然后把我们送到等待的城市时代。."[NEWLINE]- Al-Munsif al-Wahaybi'	),
	
	("zh_Hans_CN",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_OUNIANGA_CHAPTER_HISTORY_PARA_1",	
	"乌尼昂加湖泊群是位于乍得西北部，占地628.08平方千米，由撒哈拉沙漠极度干旱的恩内迪地区18座相互连通的湖泊构成。绚丽的色彩与形状构成了一幅壮丽的自然景观。咸水湖、超咸水湖及淡水湖，均由地下水供应水源，两组湖泊群彼此分离，相距40km。乌尼昂加-克比尔湖群共有4个湖泊，其中最大的约安湖，面积3.58平方千米,水深27m."	),

-----------------------------------------------
-- PAMUKKALE
-----------------------------------------------

	("zh_Hans_CN",	"LOC_TM_FEATURE_PAMUKKALE_DESCRIPTION",				"两格不可通过的奇观. 提供淡水. 相邻单元格 +1 [ICON_CULTURE] 文化、+1 [ICON_GOLD] 金币."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_PAMUKKALE_EFFECT",					"有此奇观的文明娱乐区和水上公园区域建筑 +1 [ICON_AMENITIES] 宜居度."	),

-----------------------------------------------
-- PANTANAL
-----------------------------------------------

	("zh_Hans_CN",	"LOC_TM_FEATURE_PANTANAL_DESCRIPTION",			"四格自然奇观.作为沼泽出现. 提供 +3 [ICON_FOOD] 食物、+2 [ICON_CULTURE] 文化."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_PANTANAL_EFFECT",				"拥有此奇观的文明的区域从沼泽获得标准区域邻接加成."	),
	
	("zh_Hans_CN",	"LOC_ADJ_PANTANAL_FAITH_DESCRIPTION",			"+{1_num} [ICON_FAITH] 信仰 来自邻接  {1_Num : plural 1?Marsh; other?Marsh;} (Pantanal)."	),
	("zh_Hans_CN",	"LOC_ADJ_PANTANAL_SCIENCE_DESCRIPTION",			"+{1_num} [ICON_SCIENCE] 科研 来自邻接  {1_Num : plural 1?Marsh; other?Marsh;} (Pantanal)."	),
	("zh_Hans_CN",	"LOC_ADJ_PANTANAL_CULTURE_DESCRIPTION",			"+{1_num} [ICON_CULTURE] 文化 来自邻接  {1_Num : plural 1?Marsh; other?Marsh;} (Pantanal)."	),
	("zh_Hans_CN",	"LOC_ADJ_PANTANAL_GOLD_DESCRIPTION",			"+{1_num} [ICON_GOLD] 金币 来自邻接  {1_Num : plural 1?Marsh; other?Marsh;} (Pantanal)."	),
	("zh_Hans_CN",	"LOC_ADJ_PANTANAL_PRODUCTION_DESCRIPTION",		"+{1_num} [ICON_PRODUCTION] 产能 来自邻接  {1_Num : plural 1?Marsh; other?Marsh;} (Pantanal)."	),

-----------------------------------------------
-- PIOPIOTAHI
-----------------------------------------------

	("zh_Hans_CN",	"LOC_TM_FEATURE_PIOPIOTAHI_DESCRIPTION",	"三格无法逾越的自然奇观. 相邻单元格 +1 [ICON_CULTURE] 文化、+1 [ICON_GOLD] 金币."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_PIOPIOTAHI_EFFECT",			"至少拥有一格此奇观的文明从宗教建筑获得的[ICON_AMENITIES] 宜居度辐射范围额外增加3格."	),
	
-----------------------------------------------
-- ROCK OF GIBRALTAR
-----------------------------------------------

	("zh_Hans_CN",	"LOC_FEATURE_GIBRALTAR_NAME",				"直布罗陀巨岩"	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_GIBRALTAR_DESCRIPTION",		"一格无法逾越的自然奇观. 相邻单元格 +1 [ICON_FOOD] 食物、+1 [ICON_GOLD] 金币."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_GIBRALTAR_EFFECT",			"拥有此奇观的城市的军营和港口额外提供 +2 [ICON_GREATPERSON] 伟人点数."	),

	("zh_Hans_CN",	'LOC_TM_FEATURE_GIBRALTAR_QUOTE',	
	'"我的孩子们，看看四周，看到那辉煌的火焰的光芒，岩石显得多么美丽。."[NEWLINE]- George Augustus Eliott'	),
	
	("zh_Hans_CN",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_GIBRALTAR_CHAPTER_HISTORY_PARA_1",	
	"在地中海出海口的直布罗陀半岛上，有一块引人注目的巨岩。直布罗陀由英国和荷兰人在1704年共同从西班牙手中夺得，并于1713年割让给英国。从那时起直布罗陀就一直是英国的殖民地（西班牙对此不满一直想要收回）。直布罗陀对地中海通往大西洋的入海口居高临下，在300年里一直是重要的英国海军基地。
直布罗陀的大部分区域被这块“岩石”覆盖，它是由页岩、沙石和石灰岩在难以想象的板块构造的强大力量作用下形成的，高约1400英尺（430米）。曾几何时，直布罗陀是英国统治地中海-大西洋狭窄出海口的巨型要塞，而时至今日，这个半岛的主要作用不再是军事基地，更多的则是作为自然保护区吸引游客前来。."	),

-----------------------------------------------
-- RORAIMA
-----------------------------------------------

	("zh_Hans_CN",	"LOC_TM_FEATURE_RORAIMA_DESCRIPTION",	"四格无法逾越的自然奇观. 以山脉形式出现. 相邻单元格 +1 [ICON_FAITH] 信仰、+1 [ICON_SCIENCE] 科研."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_RORAIMA_EFFECT",		"至少拥有一格此奇观的文明的雨林不再降低地块魅力."	),

-----------------------------------------------
-- SAHARA EL BEYDA
-----------------------------------------------

	("zh_Hans_CN",	"LOC_TM_FEATURE_SAHARA_EL_BEYDA_DESCRIPTION",			"四格自然奇观，提供 +3 [ICON_GOLD] 金币, +1 [ICON_SCIENCE] 科研,、+1 [ICON_CULTURE] 文化."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_SAHARA_EL_BEYDA_EFFECT",				"有此奇观的文明城市免收沙尘暴影响."	),

-----------------------------------------------
-- SALAR DE UYUNI
-----------------------------------------------

	("zh_Hans_CN",	"LOC_FEATURE_SALAR_DE_UYUNI_NAME",				"乌尤尼盐沼"	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_SALAR_DE_UYUNI_DESCRIPTION",	"四格自然奇观. 单元格 +2 [ICON_SCIENCE] 科研, +1 [ICON_PRODUCTION] 产能,、+2 [ICON_GOLD] 金币."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_SALAR_DE_UYUNI_EFFECT",			"至少拥有一格此奇观的文明免费获得一个 [ICON_RESOURCE_TM_LITHIUM] 锂盐 (非卖品)，可以提供 +6 [ICON_AMENITIES] 宜居度."	),

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
	("zh_Hans_CN",	"LOC_TM_FEATURE_SRI_PADA_DESCRIPTION",		"一格无法逾越的自然奇观. 以山脉形式出现. 相邻单元格 +1 [ICON_FOOD] 食物、+1 [ICON_FAITH] 信仰."	),
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

	("zh_Hans_CN",	"LOC_TM_FEATURE_TSINGY_DESCRIPTION",	"一格无法逾越的自然奇观. 相邻单元格 +1 [ICON_CULTURE] 文化、+1 [ICON_SCIENCE] 科研."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_TSINGY_EFFECT",			"剧院区域提供文化炸弹，城市有国家公园时剧院广场邻接加成翻倍."	),

-----------------------------------------------
-- UBSUNUR HOLLOW
-----------------------------------------------

	("zh_Hans_CN",	"LOC_TM_FEATURE_UBSUNUR_HOLLOW_DESCRIPTION",	"四格自然奇观. 作为沼泽出现. 单元格 +2 [ICON_FAITH] 信仰, +1 [ICON_FOOD] 食物,、+2 [ICON_PRODUCTION] 产能."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_UBSUNUR_HOLLOW_EFFECT",			"至少拥有一格此奇观的文明每当获得 [ICON_GREATGENERAL] 大将军时赠送一个免费 [ICON_CivicBoosted] 灵感."	),

-----------------------------------------------
-- ULURU
-----------------------------------------------

	("zh_Hans_CN",	"LOC_TM_FEATURE_ULURU_DESCRIPTION",		"一格无法逾越的自然奇观. 相邻单元格 +1 [ICON_CULTURE] 文化、+1 [ICON_FAITH] 信仰."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_ULURU_EFFECT",			"拥有此奇观的城市位于沙漠上的区域 +1 [ICON_FOOD] 食物."	),

-----------------------------------------------
-- VESUVIUS
-----------------------------------------------

	("zh_Hans_CN",	"LOC_TM_FEATURE_VESUVIUS_DESCRIPTION",				"一格不可通过的奇观. 视为火山. 相邻单元格 +1 [ICON_PRODUCTION] 产能. 总是活跃，喷发后获得收益，那么代价是什么呢."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_VESUVIUS_EFFECT",					"拥有此奇观的文明古迹单元格 +4 [ICON_CULTURE] 文化, 文物[ICON_GREATWORK_ARTIFACT] 提供 +2 [ICON_CULTURE] 文化、+2 [ICON_TOURISM] 旅游."	),

-----------------------------------------------
-- VREDEFORT DOME
-----------------------------------------------

	("zh_Hans_CN",	"LOC_FEATURE_VREDEFORT_DOME_NAME",					"弗里德堡陨石坑"	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_VREDEFORT_DOME_DESCRIPTION",		"两格自然奇观. 提供 +2 [ICON_FOOD] 食物, +2 [ICON_SCIENCE] 科研,、+1 [ICON_CULTURE] 文化."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_VREDEFORT_DOME_EFFECT",				"拥有此奇观的文明农田与农田相邻时 +1 [ICON_FOOD] 食物."	),
	
	("zh_Hans_CN",	'LOC_TM_FEATURE_VREDEFORT_DOME_QUOTE',	
	'"近150年前，当地质学家第一次漫步于跨越佛雷德福北部瓦尔河的壮观山环时，他们立刻意识到，异常破碎和隆起的岩石见证了遥远过去发生的一次异常剧烈的事件。."[NEWLINE]- Wolf Uwe Reimold'	),
	
	("zh_Hans_CN",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_VREDEFORT_DOME_CHAPTER_HISTORY_PARA_1",	
	"弗里德堡陨石坑是位于南非中部向由邦省西北,在约翰内斯堡西南约120km的地方，核心保护面积300平方千米。遗产地是范围更大的受陨星冲击影响结构的代表性组成部分，其生成年代可以追溯到20.23亿年前，是地球表面被发现的最古老的陨石坑。半径长达190km,因此是面积最大、受侵蚀最深的陨石坑。弗里德堡陨石坑见证了地球上最大规模的单一能量释放事件,是一个绝无仅有的典范，为冲击地表以下的陨石坑提供了一个完整的地质剖面。."	),

-----------------------------------------------
-- WULINGYUAN
-----------------------------------------------
	
	("zh_Hans_CN",	"LOC_FEATURE_WULINGYUAN_NAME",				"武陵源"	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_WULINGYUAN_DESCRIPTION",	"两格无法逾越的自然奇观. 相邻单元格 +2 [ICON_CULTURE] 文化"	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_WULINGYUAN_EFFECT",			"至少拥有一格此奇观的文明的 [ICON_GreatWork_Writing] 著作 +2 [ICON_CULTURE] 文化 ， +2 [ICON_TOURISM] 旅游."	),
	
	("zh_Hans_CN",	'LOC_TM_FEATURE_WULINGYUAN_QUOTE',	
	'"把张家界建设成为国内外知名的旅游胜地."[NEWLINE]- 长者亲笔题词'	),
	
	("zh_Hans_CN",	"LOC_PEDIA_FEATURES_PAGE_FEATURE_WULINGYUAN_CHAPTER_HISTORY_PARA_1",	
	"武陵源风景名胜区位于中国中部湖南省西北部，位于东110°20'30～110°41'15、北纬29°16'25～29°24'25之间，由张家界市的张家界国家森林公园、慈利县的索溪峪自然保护区和桑植县的天子山自然保护区组合而成，后又发现了杨家界新景区，总面积500平方公里。."	),

-----------------------------------------------
-- YOSEMITE
-----------------------------------------------

	("zh_Hans_CN",	"LOC_TM_FEATURE_YOSEMITE_DESCRIPTION",		"两格无法逾越的自然奇观. 相邻单元格 +1 [ICON_GOLD] 金币、+1 [ICON_SCIENCE] 科研."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_YOSEMITE_EFFECT",			"至少拥有一格此奇观的文明的森林为临近单元格额外 +1 吸引力."	),

-----------------------------------------------
-- ZHANGYE DANXIA
-----------------------------------------------

	("zh_Hans_CN",	"LOC_TM_FEATURE_ZHANGYE_DANXIA_DESCRIPTION",	"三格无法逾越的自然奇观. 以山脉形式出现. 相邻单元格 +2 [ICON_SCIENCE] 科研."	),
	("zh_Hans_CN",	"LOC_TM_FEATURE_ZHANGYE_DANXIA_EFFECT",			"至少拥有一格此奇观的城市的商业中心和学院提供 +2 [ICON_GREATPERSON] 对应伟人点数."	),

-----------------------------------------------
-- MISC - District Adjacency
-----------------------------------------------

	("zh_Hans_CN",	"LOC_TM_ADJ_NW_FAITH_DESCRIPTION",			"+{1_num} [ICON_FAITH] 信仰 来自邻接 {1_Num : plural 1?Natural Wonder; other?Natural Wonder plots;}."	),
	("zh_Hans_CN",	"LOC_TM_ADJ_NW_SCIENCE_DESCRIPTION",		"+{1_num} [ICON_SCIENCE] 科研 来自邻接 {1_Num : plural 1?Natural Wonder; other?Natural Wonder plots;}."	),
	("zh_Hans_CN",	"LOC_TM_ADJ_NW_CULTURE_DESCRIPTION",		"+{1_num} [ICON_CULTURE] 文化 来自邻接 {1_Num : plural 1?Natural Wonder; other?Natural Wonder plots;}."	),
	("zh_Hans_CN",	"LOC_TM_ADJ_NW_PRODUCTION_DESCRIPTION",		"+{1_num} [ICON_PRODUCTION] 产能 来自邻接 {1_Num : plural 1?Natural Wonder; other?Natural Wonder plots;}."	),
	("zh_Hans_CN",	"LOC_TM_ADJ_NW_GOLD_DESCRIPTION",			"+{1_num} [ICON_GOLD] 金币 来自邻接 {1_Num : plural 1?Natural Wonder; other?Natural Wonder plots;}."	),

-----------------------------------------------
-- MISC - Naturlist
-----------------------------------------------

	("zh_Hans_CN",	"LOC_TM_UNIT_NATURALIST_DESCRIPTION",	"可以建造国家公园来吸引 [ICON_TOURISM] 游客. 只能用 [ICON_GOLD] 金币购买."	);
