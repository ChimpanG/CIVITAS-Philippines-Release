/*
	UA
	Credits: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,										Kind			)
VALUES	('TRAIT_LEADER_CVS_JOSE_RIZAL_UA',			'KIND_TRAIT'	),
		('MODTYPE_CVS_JOSE_RIZAL_EXTRA_SLOTS',		'KIND_MODIFIER'	),
		('MODTYPE_CVS_JOSE_RIZAL_DISTRICT_GPP',		'KIND_MODIFIER'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO	Traits
		(TraitType,							Name,										Description											)
VALUES	('TRAIT_LEADER_CVS_JOSE_RIZAL_UA',	'LOC_TRAIT_LEADER_CVS_JOSE_RIZAL_UA_NAME',	'LOC_TRAIT_LEADER_CVS_JOSE_RIZAL_UA_DESCRIPTION'	);
		
-----------------------------------------------
-- LeaderTraits
-----------------------------------------------

INSERT INTO	LeaderTraits
		(LeaderType,				TraitType							)
VALUES	('LEADER_CVS_JOSE_RIZAL',	'TRAIT_LEADER_CVS_JOSE_RIZAL_UA'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO	TraitModifiers
		(TraitType,							ModifierId										)	
VALUES	('TRAIT_LEADER_CVS_JOSE_RIZAL_UA',	'MODIFIER_CVS_JOSE_RIZAL_SLOT_AMPHITHEATER'		),
		('TRAIT_LEADER_CVS_JOSE_RIZAL_UA',	'MODIFIER_CVS_JOSE_RIZAL_SLOT_MUSEUM_ART'		),
		('TRAIT_LEADER_CVS_JOSE_RIZAL_UA',	'MODIFIER_CVS_JOSE_RIZAL_SLOT_MUSEUM_ARTIFACT'	),
		('TRAIT_LEADER_CVS_JOSE_RIZAL_UA',	'MODIFIER_CVS_JOSE_RIZAL_SLOT_BROADCAST_CENTER'	),
		('TRAIT_LEADER_CVS_JOSE_RIZAL_UA',	'MODIFIER_CVS_JOSE_RIZAL_DISTRICT_GPP_WRITER'	),
		('TRAIT_LEADER_CVS_JOSE_RIZAL_UA',	'MODIFIER_CVS_JOSE_RIZAL_DISTRICT_GPP_ARTIST'	),
		('TRAIT_LEADER_CVS_JOSE_RIZAL_UA',	'MODIFIER_CVS_JOSE_RIZAL_DISTRICT_GPP_MUSICIAN'	);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,								CollectionType,					EffectType										)
VALUES	('MODTYPE_CVS_JOSE_RIZAL_EXTRA_SLOTS',		'COLLECTION_PLAYER_CITIES',		'EFFECT_ADJUST_EXTRA_GREAT_WORK_SLOTS'			),
		('MODTYPE_CVS_JOSE_RIZAL_DISTRICT_GPP',		'COLLECTION_PLAYER_DISTRICTS',	'EFFECT_ADJUST_DISTRICT_GREAT_PERSON_POINTS'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,										ModifierType,							SubjectRequirementSetId					)
VALUES	('MODIFIER_CVS_JOSE_RIZAL_SLOT_AMPHITHEATER',		'MODTYPE_CVS_JOSE_RIZAL_EXTRA_SLOTS',	NULL									),
		('MODIFIER_CVS_JOSE_RIZAL_SLOT_MUSEUM_ART',			'MODTYPE_CVS_JOSE_RIZAL_EXTRA_SLOTS',	NULL									),
		('MODIFIER_CVS_JOSE_RIZAL_SLOT_MUSEUM_ARTIFACT',	'MODTYPE_CVS_JOSE_RIZAL_EXTRA_SLOTS',	NULL									),
		('MODIFIER_CVS_JOSE_RIZAL_SLOT_BROADCAST_CENTER',	'MODTYPE_CVS_JOSE_RIZAL_EXTRA_SLOTS',	NULL									),
		('MODIFIER_CVS_JOSE_RIZAL_DISTRICT_GPP_WRITER',		'MODTYPE_CVS_JOSE_RIZAL_DISTRICT_GPP',	'REQSET_CVS_JOSE_RIZAL_UA_IS_THEATER'	),
		('MODIFIER_CVS_JOSE_RIZAL_DISTRICT_GPP_ARTIST',		'MODTYPE_CVS_JOSE_RIZAL_DISTRICT_GPP',	'REQSET_CVS_JOSE_RIZAL_UA_IS_THEATER'	),
		('MODIFIER_CVS_JOSE_RIZAL_DISTRICT_GPP_MUSICIAN',	'MODTYPE_CVS_JOSE_RIZAL_DISTRICT_GPP',	'REQSET_CVS_JOSE_RIZAL_UA_IS_THEATER'	);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,										Name,					Value							)
VALUES	('MODIFIER_CVS_JOSE_RIZAL_SLOT_AMPHITHEATER',		'BuildingType',			'BUILDING_AMPHITHEATER'			),
		('MODIFIER_CVS_JOSE_RIZAL_SLOT_AMPHITHEATER',		'GreatWorkSlotType',	'GREATWORKSLOT_WRITING'			),
		('MODIFIER_CVS_JOSE_RIZAL_SLOT_AMPHITHEATER',		'Amount',				1								),
		('MODIFIER_CVS_JOSE_RIZAL_SLOT_MUSEUM_ART',			'BuildingType',			'BUILDING_MUSEUM_ART'			),
		('MODIFIER_CVS_JOSE_RIZAL_SLOT_MUSEUM_ART',			'GreatWorkSlotType',	'GREATWORKSLOT_ART'				),
		('MODIFIER_CVS_JOSE_RIZAL_SLOT_MUSEUM_ART',			'Amount',				1								),
		('MODIFIER_CVS_JOSE_RIZAL_SLOT_MUSEUM_ARTIFACT',	'BuildingType',			'BUILDING_MUSEUM_ARTIFACT'		),
		('MODIFIER_CVS_JOSE_RIZAL_SLOT_MUSEUM_ARTIFACT',	'GreatWorkSlotType',	'GREATWORKSLOT_ARTIFACT'		),
		('MODIFIER_CVS_JOSE_RIZAL_SLOT_MUSEUM_ARTIFACT',	'Amount',				1								),
		('MODIFIER_CVS_JOSE_RIZAL_SLOT_BROADCAST_CENTER',	'BuildingType',			'BUILDING_BROADCAST_CENTER'		),
		('MODIFIER_CVS_JOSE_RIZAL_SLOT_BROADCAST_CENTER',	'GreatWorkSlotType',	'GREATWORKSLOT_MUSIC'			),
		('MODIFIER_CVS_JOSE_RIZAL_SLOT_BROADCAST_CENTER',	'Amount',				1								),
		('MODIFIER_CVS_JOSE_RIZAL_DISTRICT_GPP_WRITER',		'GreatPersonClassType',	'GREAT_PERSON_CLASS_WRITER'		),
		('MODIFIER_CVS_JOSE_RIZAL_DISTRICT_GPP_WRITER',		'Amount',				1								),
		('MODIFIER_CVS_JOSE_RIZAL_DISTRICT_GPP_ARTIST',		'GreatPersonClassType',	'GREAT_PERSON_CLASS_ARTIST'		),
		('MODIFIER_CVS_JOSE_RIZAL_DISTRICT_GPP_ARTIST',		'Amount',				1								),
		('MODIFIER_CVS_JOSE_RIZAL_DISTRICT_GPP_MUSICIAN',	'GreatPersonClassType',	'GREAT_PERSON_CLASS_MUSICIAN'	),
		('MODIFIER_CVS_JOSE_RIZAL_DISTRICT_GPP_MUSICIAN',	'Amount',				1								);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,							RequirementType						)
VALUES	('REQ_CVS_JOSE_RIZAL_UA_IS_THEATER',	'REQUIREMENT_DISTRICT_TYPE_MATCHES'	);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------
		
INSERT INTO RequirementArguments
		(RequirementId,							Name,				Value				)
VALUES	('REQ_CVS_JOSE_RIZAL_UA_IS_THEATER',	'DistrictType',		'DISTRICT_THEATER'	);
		
-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,							RequirementId						)
VALUES	('REQSET_CVS_JOSE_RIZAL_UA_IS_THEATER',		'REQ_CVS_JOSE_RIZAL_UA_IS_THEATER'	);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType			)
VALUES	('REQSET_CVS_JOSE_RIZAL_UA_IS_THEATER',	'REQUIREMENTSET_TEST_ALL'	);