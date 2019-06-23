/*
	Leader
	Credits: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,						Kind				)
VALUES	('LEADER_CVS_JOSE_RIZAL',	'KIND_LEADER'		);
		
-----------------------------------------------
-- CivilizationLeaders
-----------------------------------------------

INSERT INTO	CivilizationLeaders
		(CivilizationType,					LeaderType,					CapitalName				)
VALUES	('CIVILIZATION_CVS_PHILIPPINES',	'LEADER_CVS_JOSE_RIZAL',	'LOC_CITY_NAME_MANILA'	);

-----------------------------------------------
-- Leaders
-----------------------------------------------

INSERT INTO	Leaders
		(LeaderType,				Name,								InheritFrom,		SceneLayers		)
VALUES	('LEADER_CVS_JOSE_RIZAL',	'LOC_LEADER_CVS_JOSE_RIZAL_NAME',	'LEADER_DEFAULT', 	4				);
		
-----------------------------------------------
-- LeaderQuotes
-----------------------------------------------

INSERT INTO	LeaderQuotes
		(LeaderType,					Quote											)
VALUES	('LEADER_CVS_JOSE_RIZAL',		'LOC_PEDIA_LEADERS_PAGE_CVS_JOSE_RIZAL_QUOTE'	);

-----------------------------------------------
-- LoadingInfo
-----------------------------------------------

INSERT INTO	LoadingInfo
		(LeaderType,				ForegroundImage,					BackgroundImage,						PlayDawnOfManAudio	)
VALUES	('LEADER_CVS_JOSE_RIZAL',	'LEADER_CVS_JOSE_RIZAL_NEUTRAL',	'LEADER_CVS_JOSE_RIZAL_BACKGROUND',		0					);

-----------------------------------------------
-- Colors
-----------------------------------------------

INSERT INTO	PlayerColors
		(Type,						Usage,			PrimaryColor,		 			SecondaryColor,							TextColor					)
VALUES	('LEADER_CVS_JOSE_RIZAL',	'Unique',		'COLOR_CVS_JOSE_RIZAL_PRIMARY',	'COLOR_CVS_JOSE_RIZAL_SECONDARY',		'COLOR_PLAYER_WHITE_TEXT'	);

INSERT INTO	Colors
		(Type,								Color				)
VALUES	('COLOR_CVS_JOSE_RIZAL_PRIMARY',	'0,167,203,255'		),
		('COLOR_CVS_JOSE_RIZAL_SECONDARY',	'240,212,60,255'	);
		