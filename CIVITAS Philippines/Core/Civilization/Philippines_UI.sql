/*
	UI
	Credits: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------		

INSERT INTO Types
		(Type,												Kind				)
VALUES	('TRAIT_CIVILIZATION_BUILDING_CVS_PHILIPPINES_UI',	'KIND_TRAIT'		),
		('BUILDING_CVS_PHILIPPINES_UI',						'KIND_BUILDING'		),
		('MODTYPE_CVS_PHILIPPINES_UI_TRADE_YIELD',			'KIND_MODIFIER'		),
		('MODTYPE_CVS_PHILIPPINES_UI_TRADE_ROUTE_CAPACITY',	'KIND_MODIFIER'		);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO Traits
		(TraitType,											Name									)
VALUES	('TRAIT_CIVILIZATION_BUILDING_CVS_PHILIPPINES_UI',	'LOC_BUILDING_CVS_PHILIPPINES_UI_NAME'	);

-----------------------------------------------
-- CivilizationTraits
-----------------------------------------------
		
INSERT INTO CivilizationTraits
		(TraitType,											CivilizationType				)
VALUES	('TRAIT_CIVILIZATION_BUILDING_CVS_PHILIPPINES_UI',	'CIVILIZATION_CVS_PHILIPPINES'	);

-----------------------------------------------
-- Buildings
-----------------------------------------------

INSERT INTO Buildings	(
		BuildingType,
		Name,
		Description,
		TraitType,
		PrereqTech,
		PrereqCivic,
		Cost,
		PrereqDistrict,
		Housing,
		PurchaseYield,
		Maintenance,
		CitizenSlots,
		OuterDefenseStrength,
		DefenseModifier,
		AdvisorType
		)
SELECT	'BUILDING_CVS_PHILIPPINES_UI', -- BuildingType
		'LOC_BUILDING_CVS_PHILIPPINES_UI_NAME', -- Name
		'LOC_BUILDING_CVS_PHILIPPINES_UI_DESCRIPTION', -- Description
		'TRAIT_CIVILIZATION_BUILDING_CVS_PHILIPPINES_UI', -- TraitType
		PrereqTech,
		PrereqCivic,
		Cost,
		PrereqDistrict,
		Housing,
		PurchaseYield,
		Maintenance,
		CitizenSlots,
		OuterDefenseStrength,
		DefenseModifier,
		AdvisorType
FROM	Buildings
WHERE	BuildingType = 'BUILDING_MARKET';

-----------------------------------------------
-- BuildingReplaces
-----------------------------------------------

INSERT INTO BuildingReplaces
		(CivUniqueBuildingType,				ReplacesBuildingType	)
VALUES	('BUILDING_CVS_PHILIPPINES_UI',		'BUILDING_MARKET'		);

-----------------------------------------------
-- Building_YieldChanges
-----------------------------------------------

INSERT INTO Building_YieldChanges
		(BuildingType,					YieldType,		YieldChange		)
VALUES	('BUILDING_CVS_PHILIPPINES_UI',	'YIELD_FOOD',	2				);

-----------------------------------------------
-- Building_GreatPersonPoints
-----------------------------------------------

INSERT INTO Building_GreatPersonPoints
		(BuildingType,					GreatPersonClassType,	PointsPerTurn	)
SELECT	'BUILDING_CVS_PHILIPPINES_UI',	GreatPersonClassType,	PointsPerTurn
FROM	Building_GreatPersonPoints
WHERE	BuildingType = "BUILDING_MARKET";

-----------------------------------------------
-- TraitModifiers
-- @ Chimp | TraitModifiers instead of BuildingModifiers because we're applying it to the Civ itself instead of the Building
-----------------------------------------------

INSERT INTO	TraitModifiers	
		(TraitType,											ModifierId									)
VALUES	('TRAIT_CIVILIZATION_BUILDING_CVS_PHILIPPINES_UI',	'MODIFIER_CVS_PHILIPPINES_UI_TRADE_GOLD'	);

-----------------------------------------------
-- BuildingModifiers
-----------------------------------------------

INSERT INTO	BuildingModifiers
		(BuildingType,					ModifierId										)
VALUES	('BUILDING_CVS_PHILIPPINES_UI',	'MODIFIER_CVS_PHILIPPINES_UI_TRADE_CAPACITY'	);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,										CollectionType,				EffectType								)
VALUES	('MODTYPE_CVS_PHILIPPINES_UI_TRADE_YIELD',			'COLLECTION_PLAYER_CITIES',	'EFFECT_ADJUST_TRADE_ROUTE_YIELD'		),
		('MODTYPE_CVS_PHILIPPINES_UI_TRADE_ROUTE_CAPACITY',	'COLLECTION_OWNER',			'EFFECT_ADJUST_TRADE_ROUTE_CAPACITY'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,									ModifierType,										SubjectRequirementSetId			)
VALUES	('MODIFIER_CVS_PHILIPPINES_UI_TRADE_GOLD',		'MODTYPE_CVS_PHILIPPINES_UI_TRADE_YIELD',			'REQSET_CVS_CITY_HAS_PALENGKE'	),
		('MODIFIER_CVS_PHILIPPINES_UI_TRADE_CAPACITY',	'MODTYPE_CVS_PHILIPPINES_UI_TRADE_ROUTE_CAPACITY',	NULL							);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,									Name,			Value			)
VALUES	('MODIFIER_CVS_PHILIPPINES_UI_TRADE_GOLD',		'YieldType',	'YIELD_GOLD'	),
		('MODIFIER_CVS_PHILIPPINES_UI_TRADE_GOLD',		'Amount',		1				),
		('MODIFIER_CVS_PHILIPPINES_UI_TRADE_CAPACITY',	'Amount',		1				);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,					RequirementType					)
VALUES	('REQ_CVS_CITY_HAS_PALENGKE',	'REQUIREMENT_CITY_HAS_BUILDING'	);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------
		
INSERT INTO RequirementArguments
		(RequirementId,					Name,			Value							)
VALUES	('REQ_CVS_CITY_HAS_PALENGKE',	'BuildingType',	'BUILDING_CVS_PHILIPPINES_UI'	);
		
-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,					RequirementId				)
VALUES	('REQSET_CVS_CITY_HAS_PALENGKE',	'REQ_CVS_CITY_HAS_PALENGKE'	);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,					RequirementSetType			)
VALUES	('REQSET_CVS_CITY_HAS_PALENGKE',	'REQUIREMENTSET_TEST_ALL'	);