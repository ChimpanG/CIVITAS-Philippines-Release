/*
	Strategy
	Credits: ChimpanG
*/

-----------------------------------------------
-- AiListTypes
-----------------------------------------------

INSERT INTO AiListTypes
		(ListType							)
VALUES 	('LEADER_CVS_JOSE_RIZAL_TECHS'		),
		('LEADER_CVS_JOSE_RIZAL_CIVICS'		),
		('LEADER_CVS_JOSE_RIZAL_DISTRICTS'	),
		('LEADER_CVS_JOSE_RIZAL_BUILDINGS'	),
		('LEADER_CVS_JOSE_RIZAL_PROJECTS'	),
		('LEADER_CVS_JOSE_RIZAL_DIPLOMACY'	),
		('LEADER_CVS_JOSE_RIZAL_TACTICS'	),
		('LEADER_CVS_JOSE_RIZAL_EXPANSION'	),
		('LEADER_CVS_JOSE_RIZAL_PSUEDOS'	);

-----------------------------------------------
-- AiLists
-----------------------------------------------

INSERT INTO AiLists
		(ListType,							AgendaType,					System				)
VALUES  ('LEADER_CVS_JOSE_RIZAL_TECHS',		'AGENDA_CVS_JOSE_RIZAL',	'Technologies'		),
		('LEADER_CVS_JOSE_RIZAL_CIVICS',	'AGENDA_CVS_JOSE_RIZAL',	'Civics'			),
		('LEADER_CVS_JOSE_RIZAL_DISTRICTS',	'AGENDA_CVS_JOSE_RIZAL',	'Districts'			),
		('LEADER_CVS_JOSE_RIZAL_BUILDINGS',	'AGENDA_CVS_JOSE_RIZAL',	'Buildings'			),
		('LEADER_CVS_JOSE_RIZAL_PROJECTS',	'AGENDA_CVS_JOSE_RIZAL',	'Projects'			),
		('LEADER_CVS_JOSE_RIZAL_TACTICS',	'AGENDA_CVS_JOSE_RIZAL',	'Tactics'			),
		('LEADER_CVS_JOSE_RIZAL_DIPLOMACY',	'AGENDA_CVS_JOSE_RIZAL',	'DiplomaticActions'	),
		('LEADER_CVS_JOSE_RIZAL_EXPANSION',	'AGENDA_CVS_JOSE_RIZAL',	'PlotEvaluations'	),
		('LEADER_CVS_JOSE_RIZAL_PSUEDOS',	'AGENDA_CVS_JOSE_RIZAL',	'PsuedoYields'		);

-----------------------------------------------
-- AiFavoredItems
-----------------------------------------------

INSERT INTO AiFavoredItems
		(ListType,							Item,									Favored	)
VALUES  -- TECHS
		('LEADER_CVS_JOSE_RIZAL_TECHS',		'TECH_CURRENCY',						1		),
		('LEADER_CVS_JOSE_RIZAL_TECHS',		'TECH_SHIPBUILDING',					1		),
		('LEADER_CVS_JOSE_RIZAL_TECHS',		'TECH_CELESTIAL_NAVIGATION',			1		),
		('LEADER_CVS_JOSE_RIZAL_TECHS',		'TECH_CARTOGRAPHY',						1		),
		('LEADER_CVS_JOSE_RIZAL_TECHS',		'TECH_SQUARE_RIGGING',					1		),
		('LEADER_CVS_JOSE_RIZAL_TECHS',		'TECH_BANKING',							1		),
		('LEADER_CVS_JOSE_RIZAL_TECHS',		'TECH_ECONOMICS',						1		),
		('LEADER_CVS_JOSE_RIZAL_TECHS',		'TECH_GUNPOWDER',						1		), -- LEADER SPECIFIC
		-- CIVICS
		('LEADER_CVS_JOSE_RIZAL_CIVICS',	'CIVIC_FOREIGN_TRADE',					1		),
		('LEADER_CVS_JOSE_RIZAL_CIVICS',	'CIVIC_EXPLORATION',					1		),
		('LEADER_CVS_JOSE_RIZAL_CIVICS',	'CIVIC_GUILDS',							1		),
		('LEADER_CVS_JOSE_RIZAL_CIVICS',	'CIVIC_DRAMA_POETRY',					1		), -- LEADER SPECIFIC
		('LEADER_CVS_JOSE_RIZAL_CIVICS',	'CIVIC_HUMANISM',						1		), -- LEADER SPECIFIC
		('LEADER_CVS_JOSE_RIZAL_CIVICS',	'CIVIC_OPERA_BALLET',					1		), -- LEADER SPECIFIC
		('LEADER_CVS_JOSE_RIZAL_CIVICS',	'CIVIC_MASS_MEDIA',						1		), -- LEADER SPECIFIC
		('LEADER_CVS_JOSE_RIZAL_CIVICS',	'CIVIC_CULTURAL_HERITAGE',				1		), -- LEADER SPECIFIC
		-- DISTRICTS
		('LEADER_CVS_JOSE_RIZAL_DISTRICTS',	'DISTRICT_COMMERCIAL_HUB',				1		),
		('LEADER_CVS_JOSE_RIZAL_DISTRICTS',	'DISTRICT_HARBOR',						1		),
		('LEADER_CVS_JOSE_RIZAL_DISTRICTS',	'DISTRICT_THEATER',						1		), -- LEADER SPECIFIC
		-- BUILDINGS
		('LEADER_CVS_JOSE_RIZAL_BUILDINGS',	'BUILDING_CVS_PHILIPPINES_UI',			1		),
		('LEADER_CVS_JOSE_RIZAL_BUILDINGS',	'BUILDING_BANK',						1		),
		('LEADER_CVS_JOSE_RIZAL_BUILDINGS',	'BUILDING_STOCK_EXCHANGE',				1		),
		('LEADER_CVS_JOSE_RIZAL_BUILDINGS',	'BUILDING_LIGHTHOUSE',					1		),
		('LEADER_CVS_JOSE_RIZAL_BUILDINGS',	'BUILDING_SHIPYARD',					1		),
		('LEADER_CVS_JOSE_RIZAL_BUILDINGS',	'BUILDING_SEAPORT',						1		),
		('LEADER_CVS_JOSE_RIZAL_BUILDINGS',	'BUILDING_AMPHITHEATER',				1		), -- LEADER SPECIFIC
		('LEADER_CVS_JOSE_RIZAL_BUILDINGS',	'BUILDING_MUSEUM_ART',					1		), -- LEADER SPECIFIC
		('LEADER_CVS_JOSE_RIZAL_BUILDINGS',	'BUILDING_MUSEUM_ARTIFACT',				1		), -- LEADER SPECIFIC
		('LEADER_CVS_JOSE_RIZAL_BUILDINGS',	'BUILDING_BROADCAST_CENTER',			1		), -- LEADER SPECIFIC
		-- WONDERS
		('LEADER_CVS_JOSE_RIZAL_BUILDINGS',	'BUILDING_BIG_BEN',						1		),
		('LEADER_CVS_JOSE_RIZAL_BUILDINGS',	'BUILDING_COLOSSUS',					1		),
		('LEADER_CVS_JOSE_RIZAL_BUILDINGS',	'BUILDING_EIFFEL_TOWER',				1		),
		('LEADER_CVS_JOSE_RIZAL_BUILDINGS',	'BUILDING_GREAT_LIGHTHOUSE',			1		),
		('LEADER_CVS_JOSE_RIZAL_BUILDINGS',	'BUILDING_GREAT_ZIMBABWE',				1		),
		('LEADER_CVS_JOSE_RIZAL_BUILDINGS',	'BUILDING_VENETIAN_ARSENAL',			1		),
		('LEADER_CVS_JOSE_RIZAL_BUILDINGS',	'BUILDING_GREAT_LIBRARY',				1		), -- LEADER SPECIFIC
		('LEADER_CVS_JOSE_RIZAL_BUILDINGS',	'BUILDING_OXFORD_UNIVERSITY',			1		), -- LEADER SPECIFIC
		('LEADER_CVS_JOSE_RIZAL_BUILDINGS',	'BUILDING_SYDNEY_OPERA_HOUSE',			1		), -- LEADER SPECIFIC
		('LEADER_CVS_JOSE_RIZAL_BUILDINGS',	'BUILDING_BOLSHOI_THEATER',				1		), -- LEADER SPECIFIC
		('LEADER_CVS_JOSE_RIZAL_BUILDINGS',	'BUILDING_HERMITAGE',					1		), -- LEADER SPECIFIC
		('LEADER_CVS_JOSE_RIZAL_BUILDINGS',	'BUILDING_BROADWAY',					1		), -- LEADER SPECIFIC
		('LEADER_CVS_JOSE_RIZAL_BUILDINGS',	'BUILDING_CRISTO_REDENTOR',				1		), -- LEADER SPECIFIC
		('LEADER_CVS_JOSE_RIZAL_BUILDINGS',	'BUILDING_ESTADIO_DO_MARACANA',			1		), -- LEADER SPECIFIC
		('LEADER_CVS_JOSE_RIZAL_BUILDINGS',	'BUILDING_EIFFEL_TOWER',				1		), -- LEADER SPECIFIC
		-- PROJECTS
		-- TACTICS
		-- DIPLOMACY
		('LEADER_CVS_JOSE_RIZAL_DIPLOMACY',	'DIPLOACTION_PROPOSE_TRADE',			1		);

INSERT INTO AiFavoredItems
		(ListType,							Item,								Favored,	Value,	StringVal				)
VALUES  -- EXPANSION
		('LEADER_CVS_JOSE_RIZAL_EXPANSION',	'Coastal',							1,			15,		NULL					),
		('LEADER_CVS_JOSE_RIZAL_EXPANSION',	'Resource Class',					1,			5,		'RESOURCECLASS_BONUS'	),
		('LEADER_CVS_JOSE_RIZAL_EXPANSION',	'Resource Class',					1,			5,		'RESOURCECLASS_LUXURY'	),
		('LEADER_CVS_JOSE_RIZAL_EXPANSION',	'New Resources',					1,			15,		NULL					),
		('LEADER_CVS_JOSE_RIZAL_EXPANSION',	'Specific Feature',					1,			5,		'FEATURE_CLIFFS_DOVER'	),
		('LEADER_CVS_JOSE_RIZAL_EXPANSION',	'Specific Feature',					1,			5,		'FEATURE_PIOPIOTAHI'	),
		-- PSUEDOS
		('LEADER_CVS_JOSE_RIZAL_PSUEDOS',	'PSEUDOYIELD_UNIT_TRADE',			1,			5,		NULL					),
		('LEADER_CVS_JOSE_RIZAL_PSUEDOS',	'PSEUDOYIELD_GPP_MERCHANT',			1,			50,		NULL					),
		('LEADER_CVS_JOSE_RIZAL_PSUEDOS',	'PSEUDOYIELD_GPP_ADMIRAL',			1,			30,		NULL					),
		('LEADER_CVS_JOSE_RIZAL_PSUEDOS',	'PSEUDOYIELD_UNIT_NAVAL_COMBAT',	1,			30,		NULL					),
		('LEADER_CVS_JOSE_RIZAL_PSUEDOS',	'PSEUDOYIELD_GPP_ARTIST',			1,			30,		NULL					), -- LEADER SPECIFIC
		('LEADER_CVS_JOSE_RIZAL_PSUEDOS',	'PSEUDOYIELD_GPP_WRITER',			1,			50,		NULL					), -- LEADER SPECIFIC
		('LEADER_CVS_JOSE_RIZAL_PSUEDOS',	'PSEUDOYIELD_GPP_MUSICIAN',			1,			30,		NULL					); -- LEADER SPECIFIC