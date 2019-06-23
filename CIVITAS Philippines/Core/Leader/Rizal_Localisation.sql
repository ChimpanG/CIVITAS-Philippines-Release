/*
	Localisation
	Credits: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT OR REPLACE INTO LocalizedText
		(Tag,	Language,	Text)
VALUES

-----------------------------------------------
-- Leader
-----------------------------------------------	
	
	("LOC_LEADER_CVS_JOSE_RIZAL_NAME",  "en_US",	"Jose Rizal"		),
	
-----------------------------------------------
-- UA
-----------------------------------------------	

	("LOC_TRAIT_LEADER_CVS_JOSE_RIZAL_UA_NAME",  "en_US",	"Illustrados"	),
	("LOC_TRAIT_LEADER_CVS_JOSE_RIZAL_UA_DESCRIPTION",	"en_US",	
	"Theater Squares provide +1 [ICON_GreatPerson] Great Person Points per turn for [ICON_GreatWriter] Writers, [ICON_GreatArtist] Artists, and [ICON_GreatMusician] Musicians. Buildings in the Theater District gain +1 Slot for Great Works of their respective type. Gains access to the Katipunero unique unit."),

-----------------------------------------------
-- UU
-----------------------------------------------

	("LOC_UNIT_CVS_JOSE_RIZAL_UU_NAME",	"en_US",	"Katipunero"	),
	("LOC_UNIT_CVS_JOSE_RIZAL_UU_DESCRIPTION",	"en_US",	  
	"A melee unit unique to the Philippines. Earns [ICON_GreatWriter] Great Writer Points upon defeating an enemy unit and receives additional [ICON_Strength] Combat Strength when fighting in your own territory."),	
	
	("LOC_ABILITY_CVS_JOSE_RIZAL_UU_LOCAL_COMBAT_MODIFIER_DESCRIPTION", "en_US",	"+{1_Amount} Combat Strength when in your territory"	),
		
-----------------------------------------------
-- Agenda
-----------------------------------------------	

	("LOC_AGENDA_CVS_JOSE_RIZAL_NAME",	"en_US",	"Propaganda Movement"	),
	("LOC_AGENDA_CVS_JOSE_RIZAL_DESCRIPTION", "en_US",	"Admires civilizations with high culture output and happy citizens. Dislikes civilizations at war on his continent."	),
	("LOC_DIPLO_KUDO_LEADER_CVS_JOSE_RIZAL_REASON_ANY",	"en_US",		  
	"(You have high culture output and a happy populace.)"	),
	("LOC_DIPLO_MODIFIER_CVS_JOSE_RIZAL_HAPPY",	"en_US",	
	"Rizal is happy that you have a high culture output and a happy populace"	),
	("LOC_DIPLO_WARNING_LEADER_CVS_JOSE_RIZAL_REASON_ANY",	"en_US",	  
	"(You have been at war on his home continent.)"	),
	("LOC_DIPLO_MODIFIER_CVS_JOSE_RIZAL_UNHAPPY",		"en_US",	 
	"Rizal is disappointed that you have been at war on his continent"	),
		
-----------------------------------------------
-- Diplos
-----------------------------------------------	

-- DOM
	("LOC_LOADING_INFO_LEADER_CVS_JOSE_RIZAL",  "en_US",	
	"Jose Rizal, national hero of the Philippines, the time has come to write your chapter into the pages of history. Remain steadfast in your cultured ideals and your people will flourish on these glistening shores. Make it your life's work to ensure that your legacy forever shapes the course of Filipino history, for while heroes may be remembered, legends will never die."  	),
	
-- FIRST MEET
	-- First AI Line
	("LOC_DIPLO_FIRST_MEET_LEADER_CVS_JOSE_RIZAL_ANY",	"en_US",	
	"Welcome to the Philippines, kaibigan. I am Jose Rizal. It is a pleasure to meet you." ),
	
	-- AI invitation to visit nearby City
	("LOC_DIPLO_FIRST_MEET_VISIT_RECIPIENT_LEADER_CVS_JOSE_RIZAL_ANY",	"en_US",	
	"I would like to extend to you an invitation to visit our nearby city. Come, enjoy the culture and fine works of my people."	),
	
	-- AI accepts human invitation
	("LOC_DIPLO_FIRST_MEET_NEAR_INITIATOR_POSITIVE_LEADER_CVS_JOSE_RIZAL_ANY",	"en_US",	
	"It would be my pleasure."	),
	
	-- AI invitation to exchange Capital Information
	("LOC_DIPLO_FIRST_MEET_NO_MANS_INFO_EXCHANGE_LEADER_CVS_JOSE_RIZAL_ANY",	"en_US",	
	"It seems we have both travelled far; let us exchange information about our capitals. Please, tell me of your people and their ideals."	),

-- GREETINGS	
	("LOC_DIPLO_GREETING_LEADER_CVS_JOSE_RIZAL_ANY",	"en_US",	
	"How may I help you?"	),
	
-- DELEGATION
	-- AI Accepts
	("LOC_DIPLO_ACCEPT_DELEGATION_FROM_HUMAN_LEADER_CVS_JOSE_RIZAL_ANY",	"en_US",	
	"Why, thank you. We needn't require gifts for a comfortable exchange, but we are truly humbled by your generosity."	),
	
	-- AI Rejects
	("LOC_DIPLO_REJECT_DELEGATION_FROM_HUMAN_LEADER_CVS_JOSE_RIZAL_ANY",	"en_US",	
	"I'm afraid I cannot accept this."	),
	
	-- AI Requests
	("LOC_DIPLO_DELEGATION_FROM_AI_LEADER_CVS_JOSE_RIZAL_ANY",	"en_US",	
	"I have sent a trade delegation with gifts courtesy of the fine people of the Philippines: exquisite coffee beans, first-rate tobacco leaves, and the finest sugar you've ever tasted. I hope you find them to your liking."	),
	
-- OPEN BORDERS
	-- AI accepts from human	
	("LOC_DIPLO_ACCEPT_OPEN_BORDERS_FROM_HUMAN_LEADER_CVS_JOSE_RIZAL_ANY",	"en_US",	                                     
	"Very well."	),
	
	-- AI rejects from human	
	("LOC_DIPLO_REJECT_OPEN_BORDERS_FROM_HUMAN_LEADER_CVS_JOSE_RIZAL_ANY",  "en_US",	                                   
	"I'm afraid I cannot allow that at this time, for the safety of my people."	),
	
	-- AI requests from human	
	("LOC_DIPLO_OPEN_BORDERS_FROM_AI_LEADER_CVS_JOSE_RIZAL_ANY",      "en_US",	                                
	"My units must pass through your territory and I humbly request your permission to allow them safe passage."	),
	
-- DECLARE FRIENDSHIP

	-- AI accepts from human	
	("LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_HUMAN_LEADER_CVS_JOSE_RIZAL_ANY",   "en_US",	                                   
	"I would be happy to welcome your friendship."	),
	
	-- AI rejects from human	
	("LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_HUMAN_LEADER_CVS_JOSE_RIZAL_ANY",   "en_US",	                                   
	"I cannot, for no sweet fruit comes from a bitter seed."	),
	
	-- AI Requests friendship from human	
	("LOC_DIPLO_DECLARE_FRIEND_FROM_AI_LEADER_CVS_JOSE_RIZAL_ANY",     "en_US",	                                 
	"You demonstrate qualities of a great and noble leader. I offer you my hand in friendship."	),
	
	-- Human accepts AI requests, AI responds	
	("LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_AI_LEADER_CVS_JOSE_RIZAL_ANY",   "en_US",	                                   
	"Thank you, friend."	),
	
	-- Human rejects AI requests, AI responds	
	("LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_AI_LEADER_CVS_JOSE_RIZAL_ANY",   "en_US",	                                   
	"It is a useless life that is not consecrated to a great ideal. Like a stone wasted on the field without becoming part of any edifice."	),

-- ALLIANCE

	-- AI Requests an alliance from human
	("LOC_DIPLO_MAKE_ALLIANCE_FROM_AI_LEADER_CVS_JOSE_RIZAL_ANY",	"en_US",	
	"To foretell the destiny of a nation, it is necessary to open a book that tells of her past. Let us form an alliance and write a new chapter in our history."	),

-- KUDOS & WARNINGS
	
	-- AI Kudos
	("LOC_DIPLO_KUDO_EXIT_LEADER_CVS_JOSE_RIZAL_ANY",	"en_US",	
	"Accomplishing great things requires vision, foresight, and noble ideals. I commend your leadership."	),
	
	-- AI Warnings
	("LOC_DIPLO_WARNING_EXIT_LEADER_CVS_JOSE_RIZAL_ANY",	"en_US",	
	"Patriotism and sacrificing for the good of one's own country means nothing if one has the intrepidity of a bull."	),
	
	-- AI warns player for border troops
	("LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_CVS_JOSE_RIZAL_ANY",	"en_US",	
	"If your troops need passage through our lands, you need only ask. Alas, without invitation, I must ask you to remove them from our borders."	),

-- TRADE
	
	-- AI Accepts Deal
	("LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_CVS_JOSE_RIZAL_ANY",	"en_US",	
	"This deal serves us both well. I accept."	),

	-- AI Rejects Deal
	("LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_CVS_JOSE_RIZAL_ANY",	"en_US",	
	"How disappointing."	),

-- DENOUNCE
	
	-- From Human
	("LOC_DIPLO_DENOUNCE_FROM_HUMAN_LEADER_CVS_JOSE_RIZAL_ANY",	"en_US",	
	"At long last an enemy makes themselves known. How your mask has fallen; I should have expected as much from you."	),
	
	-- From AI
	("LOC_DIPLO_DENOUNCE_FROM_AI_LEADER_CVS_JOSE_RIZAL_ANY",	"en_US",	
	"To be happy does not mean to indulge in foolishness. (Denounces You)"	),
	
-- DOW
	
	-- Human Declares War
	("LOC_DIPLO_DECLARE_WAR_FROM_HUMAN_LEADER_CVS_JOSE_RIZAL_ANY",	"en_US",	
	"I've seen revolutions rise from the written word, and enemies fall by the sword. The Philippines will not succumb before the foreigner."	),
	
	-- AI Declares War
	("LOC_DIPLO_DECLARE_WAR_FROM_AI_LEADER_CVS_JOSE_RIZAL_ANY",	"en_US",	
	"The tyranny of some is possible only through the cowardice of others. The world has suffered your insolence long enough and you must be stopped."	),
	
-- MAKE PEACE
	
	-- AI accepts from human
	("LOC_DIPLO_MAKE_PEACE_AI_ACCEPT_DEAL_LEADER_CVS_JOSE_RIZAL_ANY",	"en_US",	
	"Those who do not know how to look back at where they came from will never reach their destination. It seems we have an accord, for now."	),
	
	-- AI refuses human
	("LOC_DIPLO_MAKE_PEACE_AI_REFUSE_DEAL_LEADER_CVS_JOSE_RIZAL_ANY",	"en_US",	
	"The glory of saving a country is not for those that have contributed to its ruin."	),
	
	-- AI requests from human
	("LOC_DIPLO_MAKE_PEACE_FROM_AI_LEADER_CVS_JOSE_RIZAL_ANY",	"en_US",	
	"Liberty will not be secured at the sword's point. Let there be peace between us, for the sake of our people."	),

-- DEFEAT
	
	-- AI is Defeated
	("LOC_DIPLO_DEFEAT_FROM_AI_LEADER_CVS_JOSE_RIZAL_ANY",	"en_US",	
	"And so I am to die without seeing dawn's light shining on my country. Rest assured, my people will welcome it for me and they will never forget those who fell during the night."	),

	-- Human is Defeated (will see this in hotseat)
	("LOC_DIPLO_DEFEAT_FROM_HUMAN_LEADER_CVS_JOSE_RIZAL_ANY",	"en_US",	
	"And so I am to die without seeing dawn's light shining on my country. Rest assured, my people will welcome it for me and they will never forget those who fell during the night."	),	

--------------------------------------------------------------------
-- Quote and Pedia
--------------------------------------------------------------------

	("LOC_PEDIA_LEADERS_PAGE_CVS_JOSE_RIZAL_QUOTE",	"en_US",	
	"One only dies once, and if one does not die well, a good opportunity is lost and will not present itself again."  	),
	
	("LOC_PEDIA_LEADERS_PAGE_CVS_JOSE_RIZAL_TITLE",	"en_US",	
	"Jose Rizal"),
	
	("LOC_PEDIA_LEADERS_PAGE_CVS_JOSE_RIZAL_SUBTITLE",	"en_US",	
	"National Hero"),
	
	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_JOSE_RIZAL_CHAPTER_CAPSULE_BODY",	"en_US",	
	"While the Philippines offers the kind of flexibility to set up for any victory type, under Rizal, a Cultural Victory practically writes itself."),
	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_JOSE_RIZAL_CHAPTER_DETAILED_BODY",	"en_US",	
	"Leading Philippines, Rizal is able to use the civilization's [ICON_GreatMerchant] Great Merchant bonuses from Luxury Resources, with [ICON_Food] Food and [ICON_Gold] Gold bonuses from the Palengke as a foundation on which to build a stable empire. Taking advantage of the economic stability that comes with Philippines, Rizal has an opportunity to find powerful coastline locations to build Theater Squares that provide additional [ICON_GreatWriter] Great Writer points with which to fill his additional [ICON_GreatWork_Writing] Writing, [ICON_GreatWork_Art] Art, and [ICON_GreatWork_Music] Musician slots found in Theater district buildings. Nominally a trading powerhouse, the Philippines under Jose Rizal are poised to write their own path toward a Cultural victory."),
	
	
	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_JOSE_RIZAL_CHAPTER_HISTORY_PARA_1",	"en_US",	
	"Jose Rizal was a Filipino nationalist and polymath active during the tail end of the Spanish colonial period of the Philippines. An ophthalmologist by profession, Rizal became a writer and a key member of the Filipino Propaganda Movement which advocated political reforms for the colony under Spain."),
	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_JOSE_RIZAL_CHAPTER_HISTORY_PARA_2",	"en_US",	
	"He was executed by the Spanish colonial government for the crime of rebellion after his writings in part inspired the outbreak of the Philippine Revolution. Though he was not actively involved in its planning or conduct, he ultimately approved of the movement's goals, which eventually led to Philippine independence."),
	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_JOSE_RIZAL_CHAPTER_HISTORY_PARA_3",	"en_US",	
	"He is widely considered one of the greatest heroes of the Philippines and has been recommended to be so honored by an officially empaneled National Heroes Committee. However, no law, executive order, or proclamation has been enacted or issued officially proclaiming any Filipino historical figure as a national hero. He was the author of the novels 'Noli Me Tángere' and 'El filibusterismo,'' and a number of poems and essays."),

	("LOC_PEDIA_UNITS_PAGE_UNIT_CVS_JOSE_RIZAL_UU_CHAPTER_HISTORY_PARA_1",  "en_US",	
	"The Katipunan was a Philippine revolutionary society founded by anti-Spanish Filipinos in Manila in 1892. Their primary aim was to gain independence from Spain through revolution. Based on recently found contemporary documents, the society has been organized as early as January 1892 but may have not became active until July 7 of the same year: the night Filipino writer Jose Rizal was banished to Dapitan. Founded by Filipino patriots Andres Bonifacio, Teodoro Plata, Ladislao Diwa and others, the Katipunan was initially a secret organization until its discovery in 1896, which led to the outbreak of the Philippine Revolution."),
	("LOC_PEDIA_UNITS_PAGE_UNIT_CVS_JOSE_RIZAL_UU_CHAPTER_HISTORY_PARA_2",  "en_US",	
	"The Tagalog word 'katipunan', literally meaning 'association', comes from the root word 'tipon', meaning 'gather'. Its official revolutionary name was 'Kataas-taasan, Kagalang-galangang Katipunan ng mga Anak ng Bayan' (literally: 'Supreme and Most Honorable Society of the Children of the Nation)."),
	("LOC_PEDIA_UNITS_PAGE_UNIT_CVS_JOSE_RIZAL_UU_CHAPTER_HISTORY_PARA_3",  "en_US",	
	"Being a secret organization, its members were sworn to the utmost secrecy and were expected to abide by the rules established by the society. Aspiring applicants were given standard initiation rites in order to become members of the society. At first, membership in the Katipunan was only open to male Filipinos; later, women were accepted into the society. The Katipunan had its own publication, Kalayaan (Liberty), which issued its first and last printing in March 1896. Revolutionary ideals and works flourished within the society, and Filipino literature was expanded by some of its most prominent members."),
	("LOC_PEDIA_UNITS_PAGE_UNIT_CVS_JOSE_RIZAL_UU_CHAPTER_HISTORY_PARA_4",  "en_US",	
	"In planning the revolution, Andres Bonifacio contacted Rizal for his full-fledged support for the Katipunan in exchange for a promise to rescue Rizal from his detention. In May 1896, a delegation was sent to Emperor Meiji of Japan in order to solicit funds and military arms. The Katipunan's existence was revealed to the Spanish authorities after a member named Teodoro Patiño revealed the Katipunan's illegal activities to his sister, and finally to the mother portress of Mandaluyong Orphanage. Seven days after the Spanish authorities learned of the existence of the secret society, on December 26, 1896, Bonifacio and his men tore up their cedulas (residence certificates and identity papers), culminating in the Cry of Pugad Lawin, the symbol of the beginning of the Philippine Revolution.");
	