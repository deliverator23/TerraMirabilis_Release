/*
    Localisation
    Language: Japanese ("ja_JP")
    Credits: Sub6
     
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
 
    ("ja_JP",   "LOC_TM_FEATURE_BARRIER_REEF_DESCRIPTION",      "2タイルの自然遺産。沿岸地形に見られる。 [ICON_Food] 食料+2、 [ICON_Science] 科学力+2、 [ICON_Gold] ゴールド+1。"  ),
    ("ja_JP",   "LOC_TM_FEATURE_BARRIER_REEF_EFFECT",           "このタイルを1つ以上領有する文明は、改善した海洋資源に [ICON_Gold] ゴールド+1を得る。"    ),
     
-----------------------------------------------
-- BARRINGER CRATER
-----------------------------------------------
 
    ("ja_JP",   "LOC_FEATURE_BARRINGER_CRATER_NAME",                "バリンジャー・クレーター"  ),
    ("ja_JP",   "LOC_TM_FEATURE_BARRINGER_CRATER_DESCRIPTION",      "1タイルの自然遺産。 [ICON_Science] 科学力+3、 [ICON_Gold] ゴールド+2。"  ),
    ("ja_JP",   "LOC_TM_FEATURE_BARRINGER_CRATER_EFFECT",           "このタイルを領有する都市で、宇宙競争プロジェクトに対する [ICON_Production] 生産力+20%。"   ),
     
    ("ja_JP",   'LOC_TM_FEATURE_BARRINGER_CRATER_QUOTE',
    '「このクレーターは地球外の物体が衝突してできたものだと証明できる。おそらく、小さな金属隕石が衝突したのだろう。」[NEWLINE]– ダニエル・モロー・バリンジャー'    ),
     
    ("ja_JP",   "LOC_PEDIA_FEATURES_PAGE_FEATURE_BARRINGER_CRATER_CHAPTER_HISTORY_PARA_1",  
    "バリンジャー・クレーターは、アメリカのアリゾナ州にある巨大な隕石孔である。科学者によれば、約1.2キロメートルの直径を持つこのクレーターは、およそ5万年前に16万トンの鉄隕石が時速約4万キロで落下したことで作られたとのことである。"   ),
 
-----------------------------------------------
-- CERRO DE POTOSI
-----------------------------------------------
 
    ("ja_JP",   "LOC_FEATURE_CERRO_DE_POTOSI_NAME",             "ポトシ"   ),
    ("ja_JP",   "LOC_TM_FEATURE_CERRO_DE_POTOSI_DESCRIPTION",   "1タイルの自然遺産。通行不可。山岳。隣接するタイルに [ICON_Production] 生産力+1、 [ICON_Gold] ゴールド+1。"   ),
    ("ja_JP",   "LOC_TM_FEATURE_CERRO_DE_POTOSI_EFFECT",        "このタイルを領有する都市から出発する国家間の [ICON_TradeRoute] 交易路に対し、 [ICON_Gold] ゴールド+4。"  ),
     
    ("ja_JP",   'LOC_TM_FEATURE_CERRO_DE_POTOSI_QUOTE', 
    '「我は豊かなるポトシ。世界の財宝にして全ての山の王。諸王の羨望の的。」[NEWLINE]– ポトシの紋章'  ),
     
    ("ja_JP",   "LOC_PEDIA_FEATURES_PAGE_FEATURE_CERRO_DE_POTOSI_CHAPTER_HISTORY_PARA_1",   
    "ボリビア南部に位置する山、ポトシは、埋蔵していた銀のほとんどを、帝国時代のスペインによって取り尽くされた鉱山である。ポトシで採掘された銀は、ラマやラバを使って財宝船が待ち受ける海岸へと運ばれた後、ヨーロッパへと運搬された。200年の間に約41,000トンの純銀が採掘され、そのうち8,200トンは直接スペイン王の元へと運ばれた。1800年を過ぎた頃には、ポトシの主要な銀脈は全て枯渇していたが、採掘は現在も続いている。今でも多少の銀は採れるものの、採掘のほとんどがスズを目的としたものである。"    ),
 
-----------------------------------------------
-- CLIFFS OF DOVER
-----------------------------------------------
 
    ("ja_JP",   "LOC_TM_FEATURE_CLIFFS_DOVER_DESCRIPTION",      "2タイルの自然遺産。崖。 [ICON_Culture] 文化力+3、 [ICON_Food] 食料+1、 [ICON_Gold] ゴールド+1。"  ),
    ("ja_JP",   "LOC_TM_FEATURE_CLIFFS_DOVER_EFFECT",           "このタイルを1つ以上領有する文明は、港区域が崖から少量の隣接ボーナスを得る。"    ),
 
    ("ja_JP",   "LOC_MODIFIER_TM_FEATURE_CLIFFS_DOVER_ADJACENCY_DESCRIPTION",   "隣接する崖により [ICON_Gold] ゴールド+{1_num}。"    ),
 
-----------------------------------------------
-- CRATER LAKE
-----------------------------------------------
 
    ("ja_JP",   "LOC_TM_FEATURE_CRATER_LAKE_DESCRIPTION",   "1タイルの自然遺産。湖。淡水をもたらす。 [ICON_Faith] 信仰力+4、 [ICON_Science] 科学力+1。"    ),
    ("ja_JP",   "LOC_TM_FEATURE_CRATER_LAKE_EFFECT",        "このタイルを領有する都市では、 [ICON_Faith] 信仰力を用いて建造物を購入できる。"    ),
 
-----------------------------------------------
-- DEAD SEA
-----------------------------------------------
 
    ("ja_JP",   "LOC_TM_FEATURE_DEAD_SEA_DESCRIPTION",      "2タイルの自然遺産。湖。 [ICON_Faith] 信仰力+2、 [ICON_Culture] 文化力+2、 [ICON_Gold] ゴールド+1。"    ),
    ("ja_JP",   "LOC_TM_FEATURE_DEAD_SEA_EFFECT",           "このタイルを1つ以上領有する都市で生産するユニットは、 [ICON_Fortified] 防御時に追加で10HP回復する。" ),
 
-----------------------------------------------
-- DELICATE ARCH
-----------------------------------------------
 
    ("ja_JP",   "LOC_TM_FEATURE_DELICATE_ARCH_DESCRIPTION",     "1タイルの自然遺産。通行不可。隣接するタイルに [ICON_Faith] 信仰力+1、 [ICON_Gold] ゴールド+1。"   ),
    ("ja_JP",   "LOC_TM_FEATURE_DELICATE_ARCH_EFFECT",          "このタイルを1つ以上領有する文明は、タイルの購入費用が20%軽減される。"  ),
 
-----------------------------------------------
-- EVEREST
-----------------------------------------------
 
    ("ja_JP",   "LOC_TM_FEATURE_EVEREST_DESCRIPTION",       "3タイルの自然遺産。通行不可。山岳。隣接するタイルに [ICON_Faith] 信仰力+2。"    ),
    ("ja_JP",   "LOC_TM_FEATURE_EVEREST_EFFECT",            "このタイルを1つ以上領有する都市で生産する宗教ユニットは、布教回数が1回追加されるとともに、丘陵で [ICON_Movement] 移動ペナルティを負わない。"   ),
 
-----------------------------------------------
-- EYE OF THE SAHARA
-----------------------------------------------
 
    ("ja_JP",   "LOC_TM_FEATURE_EYE_OF_THE_SAHARA_DESCRIPTION",     "3タイルの自然遺産。 [ICON_Production] 生産力+2、 [ICON_Science] 科学力+2、 [ICON_Gold] ゴールド+1。" ),
    ("ja_JP",   "LOC_TM_FEATURE_EYE_OF_THE_SAHARA_EFFECT",          "このタイルを1つ以上領有する文明は、時代スコア4以上の歴史的瞬間が発生するときに時代スコアがさらに+2される。"   ),
 
-----------------------------------------------
-- EYJAFJALLAJOKULL
-----------------------------------------------
 
    ("ja_JP",   "LOC_TM_FEATURE_EYJAFJALLAJOKULL_DESCRIPTION",      "2タイルの自然遺産。通行不可。山岳。隣接するタイルに [ICON_Culture] 文化力+1、 [ICON_Food] 食料+1。"    ),
    ("ja_JP",   "LOC_TM_FEATURE_EYJAFJALLAJOKULL_EFFECT",           "このタイルを1つ以上領有する文明は、ツンドラや雪原上に建設する専門区域から [ICON_Food] 食料+1を得る。"    ),
 
-----------------------------------------------
-- GALAPAGOS
-----------------------------------------------
     
    ("ja_JP",   "LOC_TM_FEATURE_GALAPAGOS_DESCRIPTION",     "2タイルの自然遺産。通行不可。隣接するタイルに [ICON_Science] 科学力+2。" ),
    ("ja_JP",   "LOC_TM_FEATURE_GALAPAGOS_EFFECT",          "このタイルを1つ以上領有する文明は、高級資源の [ICON_RESOURCE_TM_TORTOISE] リクガメを1つ得る。この高級資源は [ICON_Amenities] 快適性+6をもたらすが、取り引きできない。"  ),
 
    ("ja_JP",   "LOC_RESOURCE_TM_TORTOISE_NAME",    "リクガメ"  ),
    ("ja_JP",   "LOC_PEDIA_RESOURCES_PAGE_RESOURCE_TM_TORTOISE_CHAPTER_HISTORY_PARA_1",
    "ガラパゴスゾウガメは現存するリクガメの中で最も巨大な種である。その体重は最大417キログラムに及ぶ。現在、ゾウガメが生息しているのは、ガラパゴス諸島とアルダブラ環礁のみである。16世紀には25万匹いたが、肉や油を求めて乱獲された結果、1970年には3000匹ほどに減少した。ガラパゴス諸島にはゾウガメの天敵が存在しないため、多くのゾウガメ種が絶滅した原因は人間にあると考えられている。"  ),
 
-----------------------------------------------
-- GIANTS CAUSEWAY
-----------------------------------------------
 
    ("ja_JP",   "LOC_TM_FEATURE_GIANTS_CAUSEWAY_DESCRIPTION",   "2タイルの自然遺産。通行不可。隣接するタイルに [ICON_Culture] 文化力+2。" ),
    ("ja_JP",   "LOC_TM_FEATURE_GIANTS_CAUSEWAY_EFFECT",        "このタイルを1つ以上領有する都市で生産する陸上ユニットに [ICON_Promotion] レベルアップが1つ無償でもたらされる。" ),
 
-----------------------------------------------
-- GRAND MESA
-----------------------------------------------
 
    ("ja_JP",   "LOC_FEATURE_GRAND_MESA_NAME",              "グランド・メサ"   ),
    ("ja_JP",   "LOC_TM_FEATURE_GRAND_MESA_DESCRIPTION",    "1タイルの自然遺産。通行不可。隣接するタイルに [ICON_Food] 食料+1、 [ICON_Culture] 文化力+1。"   ),
    ("ja_JP",   "LOC_TM_FEATURE_GRAND_MESA_EFFECT",         "このタイルを領有する都市で生産するユニットは、 森林や熱帯雨林で [ICON_Movement] 移動ペナルティを負わない。"    ),
     
    ("ja_JP",   'LOC_TM_FEATURE_GRAND_MESA_QUOTE',  
    '「環境保護とは、将来の人類のために大地とその資源を賢く活用するということを意味する。」[NEWLINE]– ギフォード・ピンショー' ),
     
    ("ja_JP",   "LOC_PEDIA_FEATURES_PAGE_FEATURE_GRAND_MESA_CHAPTER_HISTORY_PARA_1",    
    "グランド・メサは、アメリカのコロラド州にある巨大な累層である。周囲の土地から1,500メートルほどせり上がった台地は、約1,300平方キロメートルの面積を持ち、世界最大のメサを形成している。グランド・メサの一番上には、侵食に強い火山岩の一種、玄武岩の層がある。そのため周辺の土地がコロラド川とガニソン川に浸食されていくなか、この場所だけが昔と同じ高さのまま残り、現在のような姿になったのである。" ),
 
-----------------------------------------------
-- HA LONG BAY
-----------------------------------------------
 
    ("ja_JP",   "LOC_TM_FEATURE_HA_LONG_BAY_DESCRIPTION",   "2タイルの自然遺産。 [ICON_Culture] 文化力+2、 [ICON_Food] 食料+2、 [ICON_Production] 生産力+1。"   ),
    ("ja_JP",   "LOC_TM_FEATURE_HA_LONG_BAY_EFFECT",        "このタイルを1つ以上領有する文明は、港区域から [ICON_Housing] 住宅+2を得る。"   ),
 
-----------------------------------------------
-- KAILASH
-----------------------------------------------
 
    ("ja_JP",   "LOC_FEATURE_KAILASH_NAME",             "カイラス山" ),
    ("ja_JP",   "LOC_TM_FEATURE_KAILASH_DESCRIPTION",   "1タイルの自然遺産。通行不可。山岳。隣接するタイルに [ICON_Faith] 信仰力+1、 [ICON_Culture] 文化力+1。"  ),
    ("ja_JP",   "LOC_TM_FEATURE_KAILASH_EFFECT",        "このタイルを領有する文明は、自らの [ICON_Religion] 宗教を信奉する他国都市1つにつき [ICON_Culture] 文化力+1を得る。"   ),
         
    ("ja_JP",   'LOC_TM_FEATURE_KAILASH_QUOTE', 
    '「シヴァ神が住まう至上の山。」[NEWLINE]– バーガヴァタ・プラーナ' ),
     
    ("ja_JP",   "LOC_PEDIA_FEATURES_PAGE_FEATURE_KAILASH_CHAPTER_HISTORY_PARA_1",   
    "チベットのヒマラヤ山脈に属する霊峰カイラスは、数多くの宗教の信徒、とりわけヒンドゥー教の信徒から聖地と崇められている。彼らによれば、この山にはシヴァ神が住み、永遠の至福に包まれているのだという。カイラス山はあらゆる巡礼地の中でもきわめて到達困難な場所とされる。なぜなら、厳しい自然環境が生半可な巡礼志願者を寄せつけない上、現代の輸送手段のいずれをもってしてもこの山に近づけないからである。"    ),
 
-----------------------------------------------
-- KILIMANJARO
-----------------------------------------------
 
    ("ja_JP",   "LOC_TM_FEATURE_KILIMANJARO_DESCRIPTION",   "1タイルの自然遺産。通行不可。山岳。隣接するタイルに [ICON_Food] 食料+2。"  ),
    ("ja_JP",   "LOC_TM_FEATURE_KILIMANJARO_EFFECT",        "このタイルを領有する都市は、その都市で専門区域が完成するたびに [ICON_Citizen] 人口+1を得る。"   ),
 
-----------------------------------------------
-- KRAKATOA
-----------------------------------------------
 
    ("ja_JP",   "LOC_FEATURE_KRAKATOA_NAME",                "クラカタウ" ),
    ("ja_JP",   "LOC_TM_FEATURE_KRAKATOA_DESCRIPTION",      "1タイルの自然遺産。通行不可。山岳。隣接するタイルに [ICON_Science] 科学力+1、 [ICON_Culture] 文化力+1。"    ),
    ("ja_JP",   "LOC_TM_FEATURE_KRAKATOA_EFFECT",           "このタイルを領有する都市は、その都市にある専門区域1つにつき [ICON_Science] 科学力+2を得る (その都市に国立公園がある場合は+3)。"   ),
    ("ja_JP",   "LOC_TM_FEATURE_KRAKATOA_EFFECT_XP1",       "このタイルを領有する文明は、 [ICON_GreatAdmiral] 大提督を得るたびに [ICON_TechBoosted] ひらめきが1回発動する。"  ),
     
    ("ja_JP",   'LOC_TM_FEATURE_KRAKATOA_QUOTE',    
    '「私は驚きの光景を目の当たりにした。眼前のクラカタウ島は4箇所から大きな炎を吹き上げ、島全体を焼き尽くしていた。」[NEWLINE]– ヨハン・ウィルヘルム・ボーゲル'   ),
     
    ("ja_JP",   "LOC_PEDIA_FEATURES_PAGE_FEATURE_KRAKATOA_CHAPTER_HISTORY_PARA_1",  
    "クラカタウは、ジャワ島とスマトラ島の間に位置する、インドネシアの火山島である。1883年8月に起きた大噴火のエネルギーは、広島に落とされた原爆の13,000倍に匹敵する。この噴火により島の半分が吹き飛び、その轟音は3,200キロ離れたオーストラリアにも届くほどだった。この噴火では、噴火とそれによって引き起こされた津波により、約37,000人が死亡した。火山はこの80年間、溶岩を吐き出し続け、山頂は1年で約4.5メートルずつ高くなっているという。"  ),
 
-----------------------------------------------
-- LAKE RETBA
-----------------------------------------------
 
    ("ja_JP",   "LOC_TM_FEATURE_LAKE_RETBA_DESCRIPTION",    "2タイルの自然遺産。湖。 [ICON_Culture] 文化力+2、 [ICON_Gold] ゴールド+2、 [ICON_Production] 生産力+1。"   ),
    ("ja_JP",   "LOC_TM_FEATURE_LAKE_RETBA_EFFECT",         "このタイルを1つ以上領有する文明は、所有する高級資源1種類につき [ICON_Gold] ゴールド+2を得る。"   ),
 
-----------------------------------------------
-- LAKE VICTORIA
-----------------------------------------------
 
    ("ja_JP",   "LOC_FEATURE_LAKE_VICTORIA_NAME",               "ヴィクトリア湖"   ),
    ("ja_JP",   "LOC_TM_FEATURE_LAKE_VICTORIA_DESCRIPTION",     "4タイルの自然遺産。湖。淡水をもたらす。 [ICON_Food] 食料+3、 [ICON_Culture] 文化力+1、 [ICON_Gold] ゴールド+1。"  ),
    ("ja_JP",   "LOC_TM_FEATURE_LAKE_VICTORIA_EFFECT",          "このタイルを1つ以上領有する文明は、 [ICON_Capital] 首都と異なる大陸にある都市で [ICON_FoodSurplus] 成長速度+15%を得る。"  ),
     
    ("ja_JP",   'LOC_TM_FEATURE_LAKE_VICTORIA_QUOTE',   
    '「私の予想通り、ヴィクトリア・ニアンザが父なるナイルの源流であることは疑いない。我々の信仰を最初に説いた聖なる川は、ここから生まれたのだ。」[NEWLINE]– ジョン・ハニング・スピーク'    ),
     
    ("ja_JP",   "LOC_PEDIA_FEATURES_PAGE_FEATURE_LAKE_VICTORIA_CHAPTER_HISTORY_PARA_1", 
    "湖水面積26,000平方マイル（約67,340平方キロメートル）を超えるヴィクトリア湖は、アフリカ最大の湖であり、淡水湖としては世界で2番目に大きく、熱帯地方の湖としては世界最大である。また、白ナイルとカトンガという2つの大河の水源でもある。記録に現れるのは、金や象牙、あるいは原住民から手に入るその他の商材を求めて内陸に分け入ったアラビアの交易商人たちが手記に記したのが最初とされる。19世紀にはヨーロッパ人探検家によるナイル川の水源を探る調査が盛んに行われ、1858年、イギリス人ジョン・スピークがこの湖を発見、当時の英国女王の名にちなんでヴィクトリア湖と名付けた。" ),
 
-----------------------------------------------
-- LYSEFJORDEN
-----------------------------------------------
 
    ("ja_JP",   "LOC_TM_FEATURE_LYSEFJORDEN_DESCRIPTION",   "2タイルの自然遺産。隣接するタイルに [ICON_Culture] 文化力+1、 [ICON_Science] 科学力+1。"    ),
    ("ja_JP",   "LOC_TM_FEATURE_LYSEFJORDEN_EFFECT",        "このタイルを領有する都市で生産する海洋ユニットに [ICON_Promotion] レベルアップが1つ無償でもたらされる。" ),
 
-----------------------------------------------
-- MATTERHORN
-----------------------------------------------
 
    ("ja_JP",   "LOC_TM_FEATURE_MATTERHORN_DESCRIPTION",    "1タイルの自然遺産。通行不可。山岳。隣接するタイルに [ICON_Culture] 文化力+2。"  ),
    ("ja_JP",   "LOC_TM_FEATURE_MATTERHORN_EFFECT",         "このタイルを領有する都市で生産する陸上ユニットは、丘陵で [ICON_Strength] 戦闘力+3を得るとともに、丘陵で [ICON_Movement] 移動ペナルティを負わない。"   ),
 
    ("ja_JP",   "LOC_MODIFIER_TM_FEATURE_MATTERHORN_COMBAT_DESCRIPTION",    "丘陵で+{1_Amount} (マッターホルン)"  ),
 
-----------------------------------------------
-- MOTLATSE CANYON
-----------------------------------------------
 
    ("ja_JP",   "LOC_FEATURE_MOTLATSE_CANYON_NAME",             "モトラツィ・キャニオン"   ),
    ("ja_JP",   "LOC_TM_FEATURE_MOTLATSE_CANYON_DESCRIPTION",   "4タイルの自然遺産。通行不可。隣接するタイルに [ICON_Culture] 文化力+1、 [ICON_Science] 科学力+1。"   ),
    ("ja_JP",   "LOC_TM_FEATURE_MOTLATSE_CANYON_EFFECT",        "このタイルを1つ以上領有する文明は、アピール「最高」以上の場所に建設する専門区域に産出量が+1される。"   ),
     
    ("ja_JP",   "LOC_ADJ_MOTLATSE_FAITH_DESCRIPTION",           "タイルのアピールにより [ICON_Faith] 信仰力+{1_num} (モトラツィ・キャニオン)。"   ),
    ("ja_JP",   "LOC_ADJ_MOTLATSE_SCIENCE_DESCRIPTION",         "タイルのアピールにより [ICON_Science] 科学力+{1_num} (モトラツィ・キャニオン)。" ),
    ("ja_JP",   "LOC_ADJ_MOTLATSE_CULTURE_DESCRIPTION",         "タイルのアピールにより [ICON_Culture] 文化力+{1_num} (モトラツィ・キャニオン)。" ),
    ("ja_JP",   "LOC_ADJ_MOTLATSE_PRODUCTION_DESCRIPTION",      "タイルのアピールにより [ICON_Production] 生産力+{1_num} (モトラツィ・キャニオン)。"  ),
    ("ja_JP",   "LOC_ADJ_MOTLATSE_GOLD_DESCRIPTION",            "タイルのアピールにより [ICON_Gold] ゴールド+{1_num} (モトラツィ・キャニオン)。"   ),
 
    ("ja_JP",   'LOC_TM_FEATURE_MOTLATSE_CANYON_QUOTE', 
    '「私は南アフリカこそ地上で最も美しい場所であると信じている。贔屓目であることは認めるが、我々がまこと素晴らしい大地に恵まれていることは否定できないだろう。」[NEWLINE]– ネルソン・マンデラ'    ),
     
    ("ja_JP",   "LOC_PEDIA_FEATURES_PAGE_FEATURE_MOTLATSE_CANYON_CHAPTER_HISTORY_PARA_1",   
    "モトラツィ・キャニオンは南アフリカのムプマランガ州にある重要な地形であり、ドラケンスバーグ山地の北側を形成している。ブライドリバー・キャニオン自然保護区に存在しており、長さは25キロメートル、深さは平均750メートルに及び、地球上で有数の深い絶壁を持っている。"    ),
    ("ja_JP",   "LOC_PEDIA_FEATURES_PAGE_FEATURE_MOTLATSE_CANYON_CHAPTER_HISTORY_PARA_2",   
    "世界の渓谷と比較するのは困難であるが、ブライドリバー・キャニオンは世界で最も巨大な渓谷の1つである。亜熱帯地帯にあることもあって、緑地の渓谷としては世界最大かもしれない。多数の魚、アンテロープ、カバ、ワニの他、南アフリカの霊長類など多様な動植物相を備えており、人気の観光スポットとなっている。"    ),
 
-----------------------------------------------
-- OLD FAITHFUL
-----------------------------------------------
 
    ("ja_JP",   "LOC_FEATURE_OLD_FAITHFUL_NAME",                "オールド・フェイスフル"   ),
    ("ja_JP",   "LOC_TM_FEATURE_OLD_FAITHFUL_DESCRIPTION",      "1タイルの自然遺産。 [ICON_Science] 科学力+3、 [ICON_Faith] 信仰力+1、 [ICON_Gold] ゴールド+1。"  ),
    ("ja_JP",   "LOC_TM_FEATURE_OLD_FAITHFUL_EFFECT",           "このタイルを領有する文明では、キャンパス区域が完成するたびに文化爆弾が発動する。また、国立公園がある都市でキャンパス区域の隣接ボーナスが2倍になる。"    ),
     
    ("ja_JP",   'LOC_TM_FEATURE_OLD_FAITHFUL_QUOTE',    
    '「我々の滞在中、この間欠泉は一定の間隔を挟んで9回蒸気を噴出した。水柱は毎回90フィートから125フィートに達し、15分から20分持続した。規則に忠実なその性質に鑑み、我々はこの間欠泉を”オールド・フェイスフル”と名付けた。」[NEWLINE]– ナサニエル・P・ラングフォード'   ),
     
    ("ja_JP",   "LOC_PEDIA_FEATURES_PAGE_FEATURE_OLD_FAITHFUL_CHAPTER_HISTORY_PARA_1",  
    "オールド・フェイスフルは、アメリカ合衆国のワイオミング州イエローストーン国立公園にある間欠泉である。1870年にヨーロッパ人によって初めて発見された(先住民族の間では、すでにその約1万年前からよく知られていたという)。規則正しく熱湯を噴き出す姿から、フェイスフル(＝忠実な)と名付けられた。この間欠泉は60分から90分(間隔は直前の噴出の大きさによって決まる)ごとに、30メートルから50メートルの高さまで熱湯を噴出する。噴出は地下水がマグマ(溶岩)に触れることで発生する。水は一瞬にして水蒸気となり、とてつもない圧力によって押し出され、一番近い穴から外へと噴出する。イエローストーンにあるオールド・フェイスフルと他の250の間欠泉は、毎年300万人の旅行者を楽しませている。"    ),
 
-----------------------------------------------
-- PANTANAL
-----------------------------------------------
 
    ("ja_JP",   "LOC_TM_FEATURE_PANTANAL_DESCRIPTION",          "4タイルの自然遺産。湿原。 [ICON_Food] 食料+3、 [ICON_Culture] 文化力+2。" ),
    ("ja_JP",   "LOC_TM_FEATURE_PANTANAL_EFFECT",               "このタイルを1つ以上領有する文明は、専門区域が湿原から通常の隣接ボーナスを得る。"  ),
     
    ("ja_JP",   "LOC_ADJ_PANTANAL_FAITH_DESCRIPTION",           "隣接する湿原により [ICON_Faith] 信仰力+{1_num} (パンタナル)。"   ),
    ("ja_JP",   "LOC_ADJ_PANTANAL_SCIENCE_DESCRIPTION",         "隣接する湿原により [ICON_Science] 科学力+{1_num} (パンタナル)。" ),
    ("ja_JP",   "LOC_ADJ_PANTANAL_CULTURE_DESCRIPTION",         "隣接する湿原により [ICON_Culture] 文化力+{1_num} (パンタナル)。" ),
    ("ja_JP",   "LOC_ADJ_PANTANAL_GOLD_DESCRIPTION",            "隣接する湿原により [ICON_Gold] ゴールド+{1_num} (パンタナル)。"   ),
    ("ja_JP",   "LOC_ADJ_PANTANAL_PRODUCTION_DESCRIPTION",      "隣接する湿原により [ICON_Production] 生産力+{1_num} (パンタナル)。"  ),
 
-----------------------------------------------
-- PIOPIOTAHI
-----------------------------------------------
 
    ("ja_JP",   "LOC_TM_FEATURE_PIOPIOTAHI_DESCRIPTION",    "3タイルの自然遺産。通行不可。隣接するタイルに [ICON_Culture] 文化力+1、 [ICON_Gold] ゴールド+1。" ),
    ("ja_JP",   "LOC_TM_FEATURE_PIOPIOTAHI_EFFECT",         "このタイルを領有する文明は、地域効果をもたらす建造物からの [ICON_Amenities] 快適性がさらに3タイル遠くにまで及ぶ。"    ),
     
-----------------------------------------------
-- ROCK OF GIBRALTAR
-----------------------------------------------
 
    ("ja_JP",   "LOC_FEATURE_GIBRALTAR_NAME",               "ジブラルタルの岩山" ),
    ("ja_JP",   "LOC_TM_FEATURE_GIBRALTAR_DESCRIPTION",     "1タイルの自然遺産。通行不可。隣接するタイルに [ICON_Food] 食料+1、 [ICON_Gold] ゴールド+1。" ),
    ("ja_JP",   "LOC_TM_FEATURE_GIBRALTAR_EFFECT",          "このタイルを領有する都市は、兵営区域から [ICON_GreatGeneral] 大将軍ポイント+2、港区域から [ICON_GreatAdmiral] 大提督ポイント+2を得る。"    ),
 
    ("ja_JP",   'LOC_TM_FEATURE_GIBRALTAR_QUOTE',   
    '「少年たちよ、輝く火に照らされた、かの美しき岩山を見よ。」[NEWLINE]– ジョージ・オーガスタス・エリオット' ),
     
    ("ja_JP",   "LOC_PEDIA_FEATURES_PAGE_FEATURE_GIBRALTAR_CHAPTER_HISTORY_PARA_1", 
    "ジブラルタルは地中海の入り口に位置する、特徴的な岩山を持つ半島である。1704年にイギリスとオランダがスペインから奪った後に、1713年にイギリスに割譲されて以来、ジブラルタルはイギリスの領土となっている(スペインはこれを不服とし、返還を求めている)。地中海から大西洋へと続く海路を見渡すことができるため、300年に渡ってイギリス海軍の重要な拠点となっている。ジブラルタルの大部分は「ザ・ロック」と呼ばれる岩山に覆われている。ザ・ロックは、項岩や砂岩、そして石灰岩から成る岩層が強大なプレートの活動によって隆起したもので、その高さは約430メートルにもなる。かつてイギリスは、ジブラルタルという巨大な要塞を利用して地中海から大西洋へと続く狭い航路を牛耳っていたが、現在この半島は軍隊の基地というよりも、自然保護や旅行者の訪れる観光地として有名である。"   ),
 
-----------------------------------------------
-- RORAIMA
-----------------------------------------------
 
    ("ja_JP",   "LOC_TM_FEATURE_RORAIMA_DESCRIPTION",   "4タイルの自然遺産。通行不可。山岳。隣接するタイルに [ICON_Faith] 信仰力+1、 [ICON_Science] 科学力+1。"  ),
    ("ja_JP",   "LOC_TM_FEATURE_RORAIMA_EFFECT",        "このタイルを1つ以上領有する文明では、隣接する熱帯雨林によってはアピールが低下しない。"   ),
 
-----------------------------------------------
-- SALAR DE UYUNI
-----------------------------------------------
 
    ("ja_JP",   "LOC_FEATURE_SALAR_DE_UYUNI_NAME",              "ウユニ塩原" ),
    ("ja_JP",   "LOC_TM_FEATURE_SALAR_DE_UYUNI_DESCRIPTION",    "4タイルの自然遺産。 [ICON_Science] 科学力+2、 [ICON_Production] 生産力+1、 [ICON_Gold] ゴールド+2。" ),
    ("ja_JP",   "LOC_TM_FEATURE_SALAR_DE_UYUNI_EFFECT",         "このタイルを1つ以上領有する文明は、高級資源の [ICON_RESOURCE_TM_LITHIUM] リチウムを1つ得る。この高級資源は [ICON_Amenities] 快適性+6をもたらすが、取り引きできない。"   ),
 
    ("ja_JP",   'LOC_TM_FEATURE_SALAR_DE_UYUNI_QUOTE',  
    '「砂漠で塩の声を耳にしたとき、私はその荒野で身体が震えた。」[NEWLINE]– パブロ・ネルーダ' ),
     
    ("ja_JP",   "LOC_PEDIA_FEATURES_PAGE_FEATURE_SALAR_DE_UYUNI_CHAPTER_HISTORY_PARA_1",    
    "ボリビア南西部、チリ国境とアタカマ砂漠の近くには、世界最大の塩原――ウユニ塩原が存在する。広さは10,582平方キロメートルあり、アメリカのボンネビル・ソルトフラッツの約100倍に及ぶ。成り立ちは、有史以前の複数の湖が変化して形成されたものである。表面は数メートルの塩に覆われており、全体の平均標高が1メートル以内に収まるなど著しく平らな地形をしている。広大な面積、澄んだ空、類を見ない平地といった特徴から、地球観測衛星の高度調整に最適な場所となっている。"  ),
 
    ("ja_JP",   "LOC_RESOURCE_TM_LITHIUM_NAME", "リチウム"  ),
    ("ja_JP",   "LOC_PEDIA_RESOURCES_PAGE_RESOURCE_TM_LITHIUM_CHAPTER_HISTORY_PARA_1",
    "リチウムは軟らかく、反応性の高い銀白色の金属である。その語源はギリシャ語で「石」を意味する「リトス」に由来している。リチウムとその化合物は、耐熱のガラスやセラミックス、潤滑グリス、鉄・鋼・アルミ製品の溶剤、バッテリーなどの工業用途に利用されている。ボリビア南西にあるウユニ塩原は世界のリチウム埋蔵量の50%から70%を占めており、現在開発が進められている。"    ),
 
-----------------------------------------------
-- SINAI
-----------------------------------------------
 
    ("ja_JP",   "LOC_FEATURE_SINAI_NAME",               "シナイ山"  ),
    ("ja_JP",   "LOC_TM_FEATURE_SINAI_DESCRIPTION",     "1タイルの自然遺産。通行不可。山岳。隣接するタイルに [ICON_Faith] 信仰力+2。"    ),
    ("ja_JP",   "LOC_TM_FEATURE_SINAI_EFFECT",          "このタイルを領有する文明は、聖地区域から [ICON_GreatProphet] 大預言者ポイント+1を得る。このタイルを領有する都市で生産する宗教ユニットは、 [ICON_Strength] 宗教戦闘力+10を得る。" ),
     
    ("ja_JP",   'LOC_TM_FEATURE_SINAI_QUOTE',   
    '「主はシナイ山でモーセに語り終えられたとき、あかしの板二枚、すなわち神が指をもって書かれた石の板をモーセに授けられた。」[NEWLINE]– 出エジプト記 31章 18節' ),
     
    ("ja_JP",   "LOC_PEDIA_FEATURES_PAGE_FEATURE_SINAI_CHAPTER_HISTORY_PARA_1", 
    "エジプトのシナイ半島にそびえるシナイ山はユダヤ教、キリスト教、イスラム教の信徒から、至高の聖地とみなされている。シナイ山は、かつてヘブライの民を率いてエジプトを出たモーセが神から初めて十戒を授かった場所と言われており、今なお世界中から訪れる巡礼者が絶えない。" ),
 
-----------------------------------------------
-- SRI PADA
-----------------------------------------------
 
    ("ja_JP",   "LOC_FEATURE_SRI_PADA_NAME",                "スリー・パーダ"   ),
    ("ja_JP",   "LOC_TM_FEATURE_SRI_PADA_DESCRIPTION",      "1タイルの自然遺産。通行不可。山岳。隣接するタイルに [ICON_Food] 食料+1、 [ICON_Faith] 信仰力+1。"  ),
    ("ja_JP",   "LOC_TM_FEATURE_SRI_PADA_EFFECT",           "このタイルを領有する都市で生産する宗教ユニットは、都市を自らの [ICON_Religion] 宗教に初めて改宗させると [ICON_Culture] 文化力を得る。"   ),
     
    ("ja_JP",   'LOC_TM_FEATURE_SRI_PADA_QUOTE',    
    '「この上なく壮麗で、驚嘆すべき光景。」[NEWLINE]– マハーバーラタ' ),
     
    ("ja_JP",   "LOC_PEDIA_FEATURES_PAGE_FEATURE_SRI_PADA_CHAPTER_HISTORY_PARA_1",  
    "スリランカにそびえるスリーパーダは珍しい円錐形をした雄大な孤峰で、頂上で発見された「足跡」によって数多くの宗教から神聖視されている。山頂付近の岩に刻まれた大きな窪みは、ブッダやシヴァ神、または聖書に登場するアダムの足跡だとされ、そのため、この山では仏教、ヒンドゥー教、イスラム教それぞれの信徒から聖地と崇められている。毎年数千人もの巡礼者が、何時間もかかってこの山に登り、「足跡」の前で尊崇の念を捧げている。"  ),
 
-----------------------------------------------
-- TORRES DEL PAINE
-----------------------------------------------
 
    ("ja_JP",   "LOC_TM_FEATURE_TORRES_DEL_PAINE_DESCRIPTION",      "2タイルの自然遺産。通行不可。隣接するタイルの地形産出量が2倍になる。"   ),
    ("ja_JP",   "LOC_TM_FEATURE_TORRES_DEL_PAINE_EFFECT",           "このタイルを1つ以上領有する都市は、通常の [ICON_Citizen] 人口条件より1つ多くの専門区域を建設できる。"   ),
 
-----------------------------------------------
-- TSINGY
-----------------------------------------------
 
    ("ja_JP",   "LOC_TM_FEATURE_TSINGY_DESCRIPTION",    "1タイルの自然遺産。通行不可。隣接するタイルに [ICON_Culture] 文化力+1、 [ICON_Science] 科学力+1。"   ),
    ("ja_JP",   "LOC_TM_FEATURE_TSINGY_EFFECT",         "このタイルを領有する文明では、劇場広場区域が完成するたびに文化爆弾が発動する。また、国立公園がある都市で劇場広場区域の隣接ボーナスが2倍になる。"  ),
 
-----------------------------------------------
-- UBSUNUR HOLLOW
-----------------------------------------------
 
    ("ja_JP",   "LOC_TM_FEATURE_UBSUNUR_HOLLOW_DESCRIPTION",    "4タイルの自然遺産。湿原。 [ICON_Faith] 信仰力+2、 [ICON_Food] 食料+1、 [ICON_Production] 生産力+2。"  ),
    ("ja_JP",   "LOC_TM_FEATURE_UBSUNUR_HOLLOW_EFFECT",         "このタイルを1つ以上領有する文明は、 [ICON_GreatGeneral] 大将軍を得るたびに [ICON_CivicBoosted] 天啓が1回発動する。"   ),
 
-----------------------------------------------
-- ULURU
-----------------------------------------------
 
    ("ja_JP",   "LOC_TM_FEATURE_ULURU_DESCRIPTION",     "1タイルの自然遺産。通行不可。隣接するタイルに [ICON_Culture] 文化力+1、 [ICON_Faith] 信仰力+1。" ),
    ("ja_JP",   "LOC_TM_FEATURE_ULURU_EFFECT",          "このタイルを領有する文明は、砂漠上に建設する専門区域から [ICON_Food] 食料+1を得る。" ),
 
-----------------------------------------------
-- WULINGYUAN
-----------------------------------------------
     
    ("ja_JP",   "LOC_FEATURE_WULINGYUAN_NAME",              "武陵源"   ),
    ("ja_JP",   "LOC_TM_FEATURE_WULINGYUAN_DESCRIPTION",    "2タイルの自然遺産。通行不可。隣接するタイルに [ICON_Culture] 文化力+2。" ),
    ("ja_JP",   "LOC_TM_FEATURE_WULINGYUAN_EFFECT",         "このタイルを1つ以上領有する文明は、 [ICON_GreatWork_Writing] 傑作 (書物) に対して [ICON_Culture] 文化力+2および [ICON_Tourism] 観光力+50%がもたらされる。"   ),
     
    ("ja_JP",   'LOC_TM_FEATURE_WULINGYUAN_QUOTE',  
    '「万の谷には樹木が天にそびえ、千の山にはホトトギスの声が響く。山間に一夜雨降れば、木の梢より幾重もの滴がこぼれ落ちる。」[NEWLINE]– 王維' ),
     
    ("ja_JP",   "LOC_PEDIA_FEATURES_PAGE_FEATURE_WULINGYUAN_CHAPTER_HISTORY_PARA_1",    
    "武陵源は中国の中南部にある歴史的な景勝地である。高さ200メートルを超える珪岩の柱や峰が3000以上そびえ立ち、その間には渓谷や川、滝が流れている。他にも40の洞窟、2つの天然の橋が存在する。"  ),
 
-----------------------------------------------
-- YOSEMITE
-----------------------------------------------
 
    ("ja_JP",   "LOC_TM_FEATURE_YOSEMITE_DESCRIPTION",      "2タイルの自然遺産。通行不可。隣接するタイルに [ICON_Gold] ゴールド+1、 [ICON_Science] 科学力+1。" ),
    ("ja_JP",   "LOC_TM_FEATURE_YOSEMITE_EFFECT",           "このタイルを1つ以上領有する文明は、森林が隣接するタイルに対してアピール+1が追加される。" ),
 
-----------------------------------------------
-- ZHANGYE DANXIA
-----------------------------------------------
 
    ("ja_JP",   "LOC_TM_FEATURE_ZHANGYE_DANXIA_DESCRIPTION",    "3タイルの自然遺産。通行不可。山岳。隣接するタイルに [ICON_Science] 科学力+2。"  ),
    ("ja_JP",   "LOC_TM_FEATURE_ZHANGYE_DANXIA_EFFECT",         "このタイルを1つ以上領有する都市は、商業ハブ区域から [ICON_GreatMerchant] 大商人ポイント+2、キャンパス区域から [ICON_GreatScientist] 大科学者ポイント+2を得る。"  ),
 
-----------------------------------------------
-- MISC - District Adjacency
-----------------------------------------------
 
    ("ja_JP",   "LOC_TM_ADJ_NW_FAITH_DESCRIPTION",          "隣接する自然遺産により [ICON_Faith] 信仰力+{1_num}。" ),
    ("ja_JP",   "LOC_TM_ADJ_NW_SCIENCE_DESCRIPTION",        "隣接する自然遺産により [ICON_Science] 科学力+{1_num}。"   ),
    ("ja_JP",   "LOC_TM_ADJ_NW_CULTURE_DESCRIPTION",        "隣接する自然遺産により [ICON_Culture] 文化力+{1_num}。"   ),
    ("ja_JP",   "LOC_TM_ADJ_NW_PRODUCTION_DESCRIPTION",     "隣接する自然遺産により [ICON_Production] 生産力+{1_num}。"    ),
    ("ja_JP",   "LOC_TM_ADJ_NW_GOLD_DESCRIPTION",           "隣接する自然遺産により [ICON_Gold] ゴールド+{1_num}。" ),
 
-----------------------------------------------
-- MISC - Naturlist
-----------------------------------------------
 
    ("ja_JP",   "LOC_TM_UNIT_NATURALIST_DESCRIPTION",   "ゲーム終盤に登場する民間人ユニットで、 [ICON_Tourism] 観光客を引き寄せる国立公園を1つ作れる。 [ICON_Gold] ゴールドで購入できる。"   ),
 
-----------------------------------------------
-- MOD SUPPORT
-----------------------------------------------
 
    ("ja_JP",   "LOC_TM_FEATURE_FUJI_DESCRIPTION",      "1タイルの自然遺産。通行不可。山岳。隣接するタイルに [ICON_Culture] 文化力+1、 [ICON_Faith] 信仰力+1。隣接するタイルに建設する区域に対し、対応する [ICON_GreatPerson] 偉人ポイント+2。"   );