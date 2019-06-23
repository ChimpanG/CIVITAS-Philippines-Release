/*
	Config
	Credits: ChimpanG
*/

-----------------------------------------------
-- Players
-----------------------------------------------

INSERT INTO Players (CivilizationType, CivilizationName, CivilizationIcon, CivilizationAbilityName, CivilizationAbilityDescription, CivilizationAbilityIcon, LeaderType, LeaderName, LeaderIcon, LeaderAbilityName, LeaderAbilityDescription, LeaderAbilityIcon, Portrait, PortraitBackground)
VALUES	(
		-- Civilization
		'CIVILIZATION_CVS_PHILIPPINES', -- CivilizationType
		'LOC_CIVILIZATION_CVS_PHILIPPINES_NAME', -- CivilizationName
		'ICON_CIVILIZATION_CVS_PHILIPPINES_JOSE_RIZAL', -- CivilizationIcon
		'LOC_TRAIT_CIVILIZATION_CVS_PHILIPPINES_UA_NAME', -- CivilizationAbilityName
		'LOC_TRAIT_CIVILIZATION_CVS_PHILIPPINES_UA_DESCRIPTION', -- CivilizationAbilityDescription
		'ICON_CIVILIZATION_CVS_PHILIPPINES_JOSE_RIZAL', -- CivilizationAbilityIcon
		
		-- Leader
		'LEADER_CVS_JOSE_RIZAL', -- LeaderType
		'LOC_LEADER_CVS_JOSE_RIZAL_NAME', -- LeaderName
		'ICON_LEADER_CVS_JOSE_RIZAL', -- LeaderIcon
		'LOC_TRAIT_LEADER_CVS_JOSE_RIZAL_UA_NAME', -- LeaderAbilityName
		'LOC_TRAIT_LEADER_CVS_JOSE_RIZAL_UA_DESCRIPTION', -- LeaderAbilityDescription
		'ICON_LEADER_CVS_JOSE_RIZAL', -- LeaderAbilityIcon
		'LEADER_CVS_JOSE_RIZAL_NEUTRAL', -- Portrait
		'LEADER_CVS_JOSE_RIZAL_BACKGROUND' -- PortraitBackground
		);

-- RISE AND FALL
INSERT INTO Players (Domain, CivilizationType, CivilizationName, CivilizationIcon, CivilizationAbilityName, CivilizationAbilityDescription, CivilizationAbilityIcon, LeaderType, LeaderName, LeaderIcon, LeaderAbilityName, LeaderAbilityDescription, LeaderAbilityIcon, Portrait, PortraitBackground)
VALUES	(
		-- Civilization
		'Players:Expansion1_Players', -- Domain
		'CIVILIZATION_CVS_PHILIPPINES', -- CivilizationType
		'LOC_CIVILIZATION_CVS_PHILIPPINES_NAME', -- CivilizationName
		'ICON_CIVILIZATION_CVS_PHILIPPINES_JOSE_RIZAL', -- CivilizationIcon
		'LOC_TRAIT_CIVILIZATION_CVS_PHILIPPINES_UA_NAME', -- CivilizationAbilityName
		'LOC_TRAIT_CIVILIZATION_CVS_PHILIPPINES_UA_DESCRIPTION', -- CivilizationAbilityDescription
		'ICON_CIVILIZATION_CVS_PHILIPPINES_JOSE_RIZAL', -- CivilizationAbilityIcon
		
		-- Leader
		'LEADER_CVS_JOSE_RIZAL', -- LeaderType
		'LOC_LEADER_CVS_JOSE_RIZAL_NAME', -- LeaderName
		'ICON_LEADER_CVS_JOSE_RIZAL', -- LeaderIcon
		'LOC_TRAIT_LEADER_CVS_JOSE_RIZAL_UA_NAME', -- LeaderAbilityName
		'LOC_TRAIT_LEADER_CVS_JOSE_RIZAL_UA_DESCRIPTION', -- LeaderAbilityDescription
		'ICON_LEADER_CVS_JOSE_RIZAL', -- LeaderAbilityIcon
		'LEADER_CVS_JOSE_RIZAL_NEUTRAL', -- Portrait
		'LEADER_CVS_JOSE_RIZAL_BACKGROUND' -- PortraitBackground
		);

-----------------------------------------------
-- PlayerItems
-----------------------------------------------

INSERT INTO PlayerItems
		(CivilizationType, 					LeaderType, 				Type, 							Icon, 									Name, 										Description, 									SortIndex	)
VALUES 	('CIVILIZATION_CVS_PHILIPPINES',	'LEADER_CVS_JOSE_RIZAL',	'UNIT_CVS_PHILIPPINES_UU',		'ICON_UNIT_CVS_PHILIPPINES_UU',			'LOC_UNIT_CVS_PHILIPPINES_UU_NAME',			'LOC_UNIT_CVS_PHILIPPINES_UU_DESCRIPTION',		10			),
		('CIVILIZATION_CVS_PHILIPPINES',	'LEADER_CVS_JOSE_RIZAL', 	'BUILDING_CVS_PHILIPPINES_UI',	'ICON_BUILDING_CVS_PHILIPPINES_UI',		'LOC_BUILDING_CVS_PHILIPPINES_UI_NAME', 	'LOC_BUILDING_CVS_PHILIPPINES_UI_DESCRIPTION', 	20			),
		('CIVILIZATION_CVS_PHILIPPINES',	'LEADER_CVS_JOSE_RIZAL',	'UNIT_CVS_JOSE_RIZAL_UU',		'ICON_UNIT_CVS_JOSE_RIZAL_UU',			'LOC_UNIT_CVS_JOSE_RIZAL_UU_NAME',			'LOC_UNIT_CVS_JOSE_RIZAL_UU_DESCRIPTION',		30			);

-- RISE AND FALL
INSERT INTO PlayerItems
		(Domain, 						CivilizationType, 				LeaderType, 				Type, 							Icon, 									Name, 										Description, 									SortIndex	)
VALUES 	('Players:Expansion1_Players',	'CIVILIZATION_CVS_PHILIPPINES',	'LEADER_CVS_JOSE_RIZAL',	'UNIT_CVS_PHILIPPINES_UU',		'ICON_UNIT_CVS_PHILIPPINES_UU',			'LOC_UNIT_CVS_PHILIPPINES_UU_NAME',			'LOC_UNIT_CVS_PHILIPPINES_UU_DESCRIPTION',		10			),
		('Players:Expansion1_Players',	'CIVILIZATION_CVS_PHILIPPINES', 'LEADER_CVS_JOSE_RIZAL', 	'BUILDING_CVS_PHILIPPINES_UI',	'ICON_BUILDING_CVS_PHILIPPINES_UI',		'LOC_BUILDING_CVS_PHILIPPINES_UI_NAME', 	'LOC_BUILDING_CVS_PHILIPPINES_UI_DESCRIPTION', 	20			),
		('Players:Expansion1_Players',	'CIVILIZATION_CVS_PHILIPPINES',	'LEADER_CVS_JOSE_RIZAL',	'UNIT_CVS_JOSE_RIZAL_UU',		'ICON_UNIT_CVS_JOSE_RIZAL_UU',			'LOC_UNIT_CVS_JOSE_RIZAL_UU_NAME',			'LOC_UNIT_CVS_JOSE_RIZAL_UU_DESCRIPTION',		30			);