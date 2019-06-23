/*
	Localisation
	Credits: ChimpanG, SeelingCat
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT OR REPLACE INTO LocalizedText
		(Tag,	Language,	Text)
VALUES

-----------------------------------------------
-- Civilization
-----------------------------------------------

	("LOC_CIVILIZATION_CVS_PHILIPPINES_NAME",			"en_US",	"Philippines"			),
	("LOC_CIVILIZATION_CVS_PHILIPPINES_DESCRIPTION",  	"en_US",	"Philippine Empire"		),
	("LOC_CIVILIZATION_CVS_PHILIPPINES_ADJECTIVE",  	"en_US",	"Filipino"				),
	
-----------------------------------------------
-- UA
-----------------------------------------------

	("LOC_TRAIT_CIVILIZATION_CVS_PHILIPPINES_UA_NAME",  "en_US",	"Pearl of the Orient"		),
	("LOC_TRAIT_CIVILIZATION_CVS_PHILIPPINES_UA_DESCRIPTION",	"en_US",	 
	"Luxury Resources provide +1 [ICON_GreatMerchant] Great Merchant Point for each unique copy. Constructing Specialty Districts builds improvements on adjacent resources within your territory."	), 
	
-----------------------------------------------
-- UU
-----------------------------------------------

	("LOC_UNIT_CVS_PHILIPPINES_UU_NAME",	"en_US",	"Balangay"	),
	("LOC_UNIT_CVS_PHILIPPINES_UU_DESCRIPTION",	"en_US",	  
	"A naval raider unit unique to the Philippines. Receives +1 Sight Range at the cost of less [ICON_Movement] Movement. May heal outside of friendly territory and cross oceans without the required technology."),

-----------------------------------------------
-- UI
-----------------------------------------------

	("LOC_BUILDING_CVS_PHILIPPINES_UI_NAME",	"en_US",	"Palengke"),
	("LOC_BUILDING_CVS_PHILIPPINES_UI_DESCRIPTION",	"en_US",	
	"A building unique to Philippines. Provides +2 [ICON_Food] Food, and +1 [ICON_Gold] Gold on [ICON_TradeRoute] Trade Routes for each Palengke in your empire."),

-----------------------------------------------
-- Cities
-----------------------------------------------

	-- ("LOC_CITY_NAME_MANILA","en_US", "Manila"), -- Already exists @ Spain
	("LOC_CITY_NAME_SC_QUEZON", "en_US", "Quezon"),
	("LOC_CITY_NAME_SC_DAVAO", "en_US", "Davao"),
	("LOC_CITY_NAME_SC_CALOOCAN", "en_US", "Caloocan"),
	("LOC_CITY_NAME_SC_CEBU", "en_US", "Cebu"),
	("LOC_CITY_NAME_SC_ZAMBOANGA", "en_US", "Zamboanga"),
	("LOC_CITY_NAME_SC_TAGUIG", "en_US", "Taguig"),
	("LOC_CITY_NAME_SC_ANTIPOLO", "en_US", "Antipolo"),
	("LOC_CITY_NAME_SC_PASIG", "en_US", "Pasig"),
	("LOC_CITY_NAME_SC_CAGAYAN", "en_US", "Cagayan"),
	("LOC_CITY_NAME_SC_PARANQUE", "en_US", "Parañaque"),
	("LOC_CITY_NAME_SC_DASMARINAS", "en_US", "Dasmariñas"),
	("LOC_CITY_NAME_SC_VALENZUELA", "en_US", "Valenzuela"),
	("LOC_CITY_NAME_SC_BACOOR", "en_US", "Bacoor"),
	("LOC_CITY_NAME_SC_MACTAN", "en_US", "Mactan"),
	("LOC_CITY_NAME_SC_LAS_PINAS", "en_US", "Las Piñas"),
	("LOC_CITY_NAME_SC_PUERTO_PRINCESA", "en_US", "Puerto Princesa"),
	("LOC_CITY_NAME_SC_COTABATO", "en_US", "Cotabato"),
	("LOC_CITY_NAME_SC_NAGA", "en_US", "Naga"),
	("LOC_CITY_NAME_SC_ILOILO", "en_US", "Iloilo"),
	("LOC_CITY_NAME_SC_BUTUAN", "en_US", "Butuan"),
	("LOC_CITY_NAME_SC_TONDO", "en_US", "Tondo"),
	("LOC_CITY_NAME_SC_ROXAS", "en_US", "Roxas"),
	("LOC_CITY_NAME_SC_MAKATI", "en_US", "Makati"),
	("LOC_CITY_NAME_SC_SAN_JOSE_DEL_MONTE", "en_US", "San Jose del Monte"),
	("LOC_CITY_NAME_SC_BACOLOD", "en_US", "Bacolod"),
	("LOC_CITY_NAME_SC_MUNTINLUPA", "en_US", "Muntinlupa"),
	("LOC_CITY_NAME_SC_CALAMBA", "en_US", "Calamba"),
	("LOC_CITY_NAME_SC_MARIKINA", "en_US", "Marikina"),
	("LOC_CITY_NAME_SC_PASAY", "en_US", "Pasay"),
	("LOC_CITY_NAME_SC_ANGELES", "en_US", "Angeles"),
	("LOC_CITY_NAME_SC_IMUS", "en_US", "Imus"),
	("LOC_CITY_NAME_SC_MANDALUYONG", "en_US", "Mandaluyong"),
	("LOC_CITY_NAME_SC_MALABON", "en_US", "Malabon"),
	("LOC_CITY_NAME_SC_MANDAUE", "en_US", "Mandaue"),
	("LOC_CITY_NAME_SC_SANTA_ROSA", "en_US", "Santa Rosa"),
	("LOC_CITY_NAME_SC_BAGUIO", "en_US", "Baguio"),
	("LOC_CITY_NAME_SC_ILIGAN", "en_US", "Iligan"),
	("LOC_CITY_NAME_SC_TARLAC", "en_US", "Tarlac"),
	("LOC_CITY_NAME_SC_BINAN", "en_US", "Biñan"),
	("LOC_CITY_NAME_SC_LIPA", "en_US", "Lipa"),
	("LOC_CITY_NAME_SC_BATANGAS", "en_US", "Batangas"),
	("LOC_CITY_NAME_SC_SAN_PEDRO", "en_US", "San Pedro"),
	("LOC_CITY_NAME_SC_CABUYAO", "en_US", "Cabuyao"),
	("LOC_CITY_NAME_SC_SAN_FERNANDO", "en_US", "San Fernando"),
	("LOC_CITY_NAME_SC_CABANATUAN", "en_US", "Cabanatuan"),
	("LOC_CITY_NAME_SC_LUCENA", "en_US", "Lucena"),
	("LOC_CITY_NAME_SC_SAN_PABLO", "en_US", "San Pablo"),
	("LOC_CITY_NAME_SC_TAGUM", "en_US", "Tagum"),
	("LOC_CITY_NAME_SC_MALOLOS", "en_US", "Malolos"),
	("LOC_CITY_NAME_SC_MABALACAT", "en_US", "Mabalacat"),
	("LOC_CITY_NAME_SC_NAVOTAS", "en_US", "Navotas"),
	("LOC_CITY_NAME_SC_TACLOBAN", "en_US", "Tacloban"),
	("LOC_CITY_NAME_SC_OLONGAPO", "en_US", "Olongapo"),
	("LOC_CITY_NAME_SC_TALISAY", "en_US", "Talisay"),
	("LOC_CITY_NAME_SC_ORMOC", "en_US", "Ormoc"),
	("LOC_CITY_NAME_SC_MEYCAUAYAN", "en_US", "Meycauayan"),
	("LOC_CITY_NAME_SC_MARAWI", "en_US", "Marawi"),
	("LOC_CITY_NAME_SC_PAGADIAN", "en_US", "Pagadian"),
	("LOC_CITY_NAME_SC_LEGAZPI", "en_US", "Legazpi"),
	("LOC_CITY_NAME_SC_PANABO", "en_US", "Panabo"),
	("LOC_CITY_NAME_SC_CALBAYOG", "en_US", "Calbayog"),
	("LOC_CITY_NAME_SC_KABANKALAN", "en_US", "Kabankalan"),
	("LOC_CITY_NAME_SC_KORONADAL", "en_US", "Koronadal"),
	("LOC_CITY_NAME_SC_MALAYBALAY", "en_US", "Malaybalay"),
	("LOC_CITY_NAME_SC_TANAUAN", "en_US", "Tanauan"),
	("LOC_CITY_NAME_SC_DAGUPAN", "en_US", "Dagupan"),
	("LOC_CITY_NAME_SC_BAGO", "en_US", "Bago"),
	("LOC_CITY_NAME_SC_DIGOS", "en_US", "Digos"),
	("LOC_CITY_NAME_SC_SORSOGON", "en_US", "Sorsogon"),

-----------------------------------------------
-- Citizens
-----------------------------------------------
	
	("LOC_CITIZEN_CVS_PHILIPPINES_MALE_1",		"en_US",	"Bagwis"	),
	("LOC_CITIZEN_CVS_PHILIPPINES_MALE_2",		"en_US",	"Bayani"	),
	("LOC_CITIZEN_CVS_PHILIPPINES_MALE_3",		"en_US",	"Crisanto"	),
	("LOC_CITIZEN_CVS_PHILIPPINES_MALE_4",		"en_US",	"Dakila"	),
	("LOC_CITIZEN_CVS_PHILIPPINES_MALE_5",		"en_US",	"Datu"		),
	("LOC_CITIZEN_CVS_PHILIPPINES_MALE_6",		"en_US",	"Makisig"	),
	("LOC_CITIZEN_CVS_PHILIPPINES_MALE_7",		"en_US",	"Isagani"	),
	("LOC_CITIZEN_CVS_PHILIPPINES_MALE_8",		"en_US",	"Igme"		),
	("LOC_CITIZEN_CVS_PHILIPPINES_MALE_9",		"en_US",	"Jejomar"	),
	("LOC_CITIZEN_CVS_PHILIPPINES_MALE_10",		"en_US",	"Kidlat"	),
	("LOC_CITIZEN_CVS_PHILIPPINES_FEMALE_1",	"en_US",	"Aiza"		),
	("LOC_CITIZEN_CVS_PHILIPPINES_FEMALE_2",	"en_US",	"Bituin"	),
	("LOC_CITIZEN_CVS_PHILIPPINES_FEMALE_3",	"en_US",	"Amihan"	),
	("LOC_CITIZEN_CVS_PHILIPPINES_FEMALE_4",	"en_US",	"Sampaguita"),
	("LOC_CITIZEN_CVS_PHILIPPINES_FEMALE_5",	"en_US",	"Chona"		),
	("LOC_CITIZEN_CVS_PHILIPPINES_FEMALE_6",	"en_US",	"Dalisay"	),
	("LOC_CITIZEN_CVS_PHILIPPINES_FEMALE_7",	"en_US",	"Tala"		),
	("LOC_CITIZEN_CVS_PHILIPPINES_FEMALE_8",	"en_US",	"Imee"		),
	("LOC_CITIZEN_CVS_PHILIPPINES_FEMALE_9",	"en_US",	"Ligaya"	),
	("LOC_CITIZEN_CVS_PHILIPPINES_FEMALE_10",	"en_US",	"Mayumi"	),
	
-----------------------------------------------
-- Info
-----------------------------------------------

	("LOC_CIVINFO_CVS_PHILIPPINES_LOCATION",	"en_US",	"South East Asia"	),
	("LOC_CIVINFO_CVS_PHILIPPINES_SIZE",		"en_US",	"300,000 km²"		),
	("LOC_CIVINFO_CVS_PHILIPPINES_POPULATION",	"en_US",	"~103.3 million"	),
	("LOC_CIVINFO_CVS_PHILIPPINES_CAPITAL",		"en_US",	"Manila"			),

-----------------------------------------------
-- Pedia
-----------------------------------------------

	("LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_PHILIPPINES_CHAPTER_HISTORY_PARA_1",	"en_US",	
	"The history of the Philippines is believed to have begun with the arrival of the first humans using rafts or boats at least 67,000 years ago, as the 2007 discovery of Callao Man suggested. Negrito groups first inhabited the isles; groups of Austronesians later migrated to the islands."),	
	("LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_PHILIPPINES_CHAPTER_HISTORY_PARA_2",	"en_US",	
	"Eventually various groups developed and separated into hunter-gatherer groups, warrior societies, petty plutocracies and maritime-oriented harbor principalities which eventually grew into kingdoms, rajahnates, kedatuans, wangdoms and sultanates. Some of these small nations were  influenced by the Hindu religion and the language, culture, literature and philosophy of India via many Indian military campaigns including the South-East Asia campaign of Rajendra Chola I. Others were influenced by Islam from Arabia or were Sinified tributary states allied to China. The nations included the Indianized Rajahnates of Butuan and Cebu, the dynasty of Tondo, the kingdoms of Namayan and Maynila, the Kedatuans of Madja-as and Dapitan, the nation of Ma-i, the sinified Wangdom of Pangasinan, as well as the sultanates of Sulu, Lanao and Maguindanao. These small maritime states flourished began to fluorish the first millennium, trading with the modern-day regions of China, India, Japan, Thailand, Vietnam, and Indonesia. The remainder of the settlements in the Philippine Islands were independent barangays, often allied with one of the larger states."),	
	("LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_PHILIPPINES_CHAPTER_HISTORY_PARA_3",	"en_US",
	"The first recorded visit to the Philippine Islands by Europeans was the arrival of Ferdinand Magellan. He sighted Samar Island on March 16, 1521 and landed the next day on Homonhon Island. Spanish colonization began with the arrival of Miguel López de Legazpi's expedition on February 13, 1565, establishing the first permanent European settlement in Cebu. Eventually, much of the archipelago came under Spanish rule, creating the first unified political structure known as the Philippines. Spanish colonial rule saw the introduction of Christianity, the development of a law code, and the establishment of the oldest modern university in Asia. The Philippines was ruled as part of the Mexico-based Viceroyalty of New Spain until Mexican independence, after which the colony was governed directly by Spain."),	
	("LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_PHILIPPINES_CHAPTER_HISTORY_PARA_4",	"en_US",
	"Spanish rule in the Philippines ended in 1898 with Spain's defeat in the Spanish–American War. The Philippines then became a territory of the United States. American rule was not uncontested, however. The Philippine Revolution had begun in August, 1896 against Spain and, after the defeat of Spain at the Battle of Manila Bay, began again in earnest, culminating in the Philippine Declaration of Independence and the establishment of the First Philippine Republic. The Philippine–American War ensued, causing extensive damage and death and ultimately culminating in the defeat of the Philippine Republic."),	
	("LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_PHILIPPINES_CHAPTER_HISTORY_PARA_5",	"en_US",
	"The United States established the Insular Government to rule the Philippines. In 1907, the elected Philippine Assembly was convened as the lower house of a bicameral legislature and in 1916 the U.S. Federal Government formally promised independence in the Jones Act. The Philippine Commonwealth was established in 1935, as a 10-year interim step prior to full independence. Before independence, World War II began and Japan occupied the Philippines. After the end of the war, the Treaty of Manila established an independent Philippine Republic."),
	("LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_PHILIPPINES_CHAPTER_HISTORY_PARA_6",	"en_US",
	"Nearly three decades later, in 1972, Philippine President Ferdinand Marcos imposed martial law, ruling the country for over a decade and a half. Following the assassination of Ninoy Aquino, Marcos held snap elections in 1986 and subsequently fled the country during the People Power Revolution, which brought Corazon Aquino, affectionately known as 'Cory,' to the presidency and reestablished democracy in the Philippines."),
	("LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_PHILIPPINES_CHAPTER_HISTORY_PARA_7",	"en_US",
	"In the 21st century, the Philippines is the 12th most populous country of the world, part of ASEAN, and a key ally of the United States. The Philippine economy is dominated by fishing and agriculture with a growing business process outsourcing industry."),

	("LOC_PEDIA_UNITS_PAGE_UNIT_CVS_PHILIPPINES_UU_CHAPTER_HISTORY_PARA_1",  "en_US",	
	"A Balangay - somtimes also known as a Butuan Boat - is a type of ship first mentioned in the sixteenth-century Chronicles of Pigafetta. It is the oldest kind of watercraft found in the Philippines and it is believed that the earliest inhabitants of the Philippines arrived there via boats like the balangay."),
	("LOC_PEDIA_UNITS_PAGE_UNIT_CVS_PHILIPPINES_UU_CHAPTER_HISTORY_PARA_2",  "en_US",	
	"The word 'Balangay' was one of the first Filipino words the Spanish learned - and indeed the word came to take on an extended meaning as 'barangay,' denoting a neighborhood or the well-organized independent villages of the precolonial Philippines."),
	("LOC_PEDIA_UNITS_PAGE_UNIT_CVS_PHILIPPINES_UU_CHAPTER_HISTORY_PARA_3",  "en_US",	
	"Balangays were a type of plank ship, and a testmant to the refined craftsmanship of the people of the precolonial Philippines. The ships were assembled by joining carved planks edge to edge using dowels or pins. These planks were lashed together using cordage known as cabo negro; in a sense, Balangays were literally sewn into existence. Balangays were often made from an indigenous hardwood known as Doongon providing a rigid and durable frame that was augmented by the addition of rib-like structures inside the vessel. Balangays were usually about 15 meters long and 4 meters wide. They had no marked keel and were usually propelled by sails or paddles."),
	("LOC_PEDIA_UNITS_PAGE_UNIT_CVS_PHILIPPINES_UU_CHAPTER_HISTORY_PARA_4",  "en_US",	
	"Today, the Balangay is a celebrated part of Philippine history. In 1987, President Corazon Aquino declared the Balangays discovered at Butuan to be National Cultural Treasures. Additionally, each year, the people of Butuan come together to commemorate the coming of the early migrants that helped settle the Philippines, as well as the ships they came on, as part of the Balanghai Festival."),
	
	("LOC_PEDIA_BUILDINGS_PAGE_BUILDING_CVS_PHILIPPINES_UI_CHAPTER_HISTORY_PARA_1",	"en_US",
	"The word palengke is a local variant of the Spanish word palenque, literally meaning '(wooden) palisade or stockade' and, by extension, the area enclosed by such a structure for defense, public festivals or some other purpose. The Spanish word is also used to describe a pathway or cluster of tables set up at some place of gathering such as a theatre, tournament or market, and it is from this latter sense that palengke likely derives its usage in the Filipino context."),
	("LOC_PEDIA_BUILDINGS_PAGE_BUILDING_CVS_PHILIPPINES_UI_CHAPTER_HISTORY_PARA_2",	"en_US",
	"In the former Spanish colonies of New Spain in the Americas, a palenque also described a gathering-place of indios. One false etymology for palengke/palenque appearing in some popular sources mistakenly presumes that palenque is instead a word from the indigenous Mayan languages of Central America meaning 'gathering place', and that in colonial times the Spanish adopted it to describe a gathering of indigenous groups. While its use in Latin America to describe such a gathering is attested, the word itself originates from Spanish and not any of the indigenous languages; the mistaken belief of the word's indigenous origin is probably reinforced by Palenque, the famous Maya archaeological site in Chiapas, Mexico, which was named after the nearby Spanish village when the site was rediscovered in the mid-18th century."),
	("LOC_PEDIA_BUILDINGS_PAGE_BUILDING_CVS_PHILIPPINES_UI_CHAPTER_HISTORY_PARA_3",	"en_US",
	"A palengke is usually composed of several dozen stalls arranged in rows under a shared roof. Management is usually handled by the local governmental units whose jurisdiction encompasses the physical location of the markets. Certain pieces of legislation, however, such as the Cooperatives Code and the Agriculture and Fisheries Modernization Act, have prescribed that management of the markets be accomplished through cooperatives. There is little control over the day-to-day management of individual stalls, including commodity pricing, resulting in what has been called 'palengke mechanics.' The Philippine government retains partial control over the price of some commodities sold in palengkes, especially critical foods such as rice. The National Food Authority calls this regulation campaign (specifically for rice) 'Palengke Watch.'");