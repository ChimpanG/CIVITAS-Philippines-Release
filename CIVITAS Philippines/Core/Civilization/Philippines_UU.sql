/*
	UU
	Credits: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------	
	
INSERT INTO Types
		(Type,											Kind			)
VALUES	('TRAIT_CIVILIZATION_CVS_PHILIPPINES_UU',		'KIND_TRAIT'	),
		('UNIT_CVS_PHILIPPINES_UU',						'KIND_UNIT'		),
		('ABILITY_CVS_PHILIPPINES_UU',					'KIND_ABILITY'	),
		('MODTYPE_CVS_PHILIPPINES_UU_VALID_TERRAIN',	'KIND_MODIFIER'	),
		('MODTYPE_CVS_PHILIPPINES_UU_HEAL_MODIFIER',	'KIND_MODIFIER'	);

-----------------------------------------------
-- Tags
-----------------------------------------------	
	
INSERT INTO Tags
		(Tag,							Vocabulary		)
VALUES	('CLASS_CVS_PHILIPPINES_UU',	'ABILITY_CLASS'	);

-----------------------------------------------
-- TypeTags
-----------------------------------------------		

INSERT INTO TypeTags
		(Type,							Tag							)
VALUES	('UNIT_CVS_PHILIPPINES_UU',		'CLASS_CVS_PHILIPPINES_UU'	),
		('ABILITY_CVS_PHILIPPINES_UU',	'CLASS_CVS_PHILIPPINES_UU'	);

INSERT INTO TypeTags (Type,		Tag)
SELECT 	'UNIT_CVS_PHILIPPINES_UU',	Tag
FROM 	TypeTags
WHERE 	Type = 'UNIT_NORWEGIAN_LONGSHIP';

-----------------------------------------------
-- Traits
-----------------------------------------------
		
INSERT INTO Traits
		(TraitType,									Name								)
VALUES	('TRAIT_CIVILIZATION_CVS_PHILIPPINES_UU',	'LOC_UNIT_CVS_PHILIPPINES_UU_NAME'	);

-----------------------------------------------
-- CivilizationTraits
-----------------------------------------------
		
INSERT INTO CivilizationTraits
		(CivilizationType,					TraitType								)
VALUES	('CIVILIZATION_CVS_PHILIPPINES',	'TRAIT_CIVILIZATION_CVS_PHILIPPINES_UU'	);

-----------------------------------------------
-- Units
-----------------------------------------------	
	
INSERT INTO Units	(
		UnitType,
		Name,
		Description,
		TraitType,
		BaseMoves,
		Cost,
		Maintenance,
		PurchaseYield,
		AdvisorType,
		Combat,
		BaseSightRange,
		ZoneOfControl,
		Domain,
		FormationClass,
		PromotionClass,
		PseudoYieldType,
		MandatoryObsoleteTech,
		PrereqTech,
		PrereqCivic
		)
SELECT	'UNIT_CVS_PHILIPPINES_UU',	-- UnitType
		'LOC_UNIT_CVS_PHILIPPINES_UU_NAME',	-- Name
		'LOC_UNIT_CVS_PHILIPPINES_UU_DESCRIPTION', -- Description
		'TRAIT_CIVILIZATION_CVS_PHILIPPINES_UU', -- TraitType
		BaseMoves - 1, -- BaseMoves
		Cost * 0.75,
		Maintenance,
		PurchaseYield,
		AdvisorType,
		Combat + 7, -- Combat
		BaseSightRange + 1, -- BaseSightRange
		ZoneOfControl,
		Domain,
		FormationClass,
		'PROMOTION_CLASS_NAVAL_RAIDER', -- PromotionClass
		PseudoYieldType,
		MandatoryObsoleteTech,
		NULL, -- PrereqTech
		PrereqCivic
FROM	Units
WHERE	UnitType = 'UNIT_GALLEY';

-----------------------------------------------
-- UnitUpgrades
-----------------------------------------------
		
INSERT INTO UnitUpgrades (Unit,	UpgradeUnit)
SELECT 	'UNIT_CVS_PHILIPPINES_UU',	UpgradeUnit
FROM 	UnitUpgrades
WHERE	Unit = 'UNIT_GALLEY';

-----------------------------------------------
-- UnitAiInfos
-----------------------------------------------
		
INSERT INTO UnitAiInfos (UnitType,	AiType)
SELECT 	'UNIT_CVS_PHILIPPINES_UU',	AiType
FROM 	UnitAiInfos
WHERE 	UnitType = 'UNIT_GALLEY';
		
-----------------------------------------------
-- UnitReplaces
-----------------------------------------------
		
INSERT INTO UnitReplaces
		(CivUniqueUnitType,			ReplacesUnitType	)
VALUES	('UNIT_CVS_PHILIPPINES_UU',	'UNIT_GALLEY'		);

-----------------------------------------------
-- UnitAbilities
-----------------------------------------------

INSERT INTO UnitAbilities
		(UnitAbilityType,				Name,									Description										)
VALUES	('ABILITY_CVS_PHILIPPINES_UU',	'LOC_ABILITY_CVS_PHILIPPINES_UU_NAME',	'LOC_ABILITY_CVS_PHILIPPINES_UU_DESCRIPTION'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO	TraitModifiers	
		(TraitType,									ModifierId									)
VALUES	('TRAIT_CIVILIZATION_CVS_PHILIPPINES_UU',	'MODIFIER_CVS_PHILIPPINES_UU_CROSS_OCEAN'	),
		('TRAIT_CIVILIZATION_CVS_PHILIPPINES_UU',	'MODIFIER_CVS_PHILIPPINES_UU_HEAL_NEUTRAL'	),
		('TRAIT_CIVILIZATION_CVS_PHILIPPINES_UU',	'MODIFIER_CVS_PHILIPPINES_UU_HEAL_ENEMY'	);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,									CollectionType,				EffectType								)
VALUES	('MODTYPE_CVS_PHILIPPINES_UU_VALID_TERRAIN',	'COLLECTION_PLAYER_UNITS',	'EFFECT_ADJUST_UNIT_VALID_TERRAIN'		),
		('MODTYPE_CVS_PHILIPPINES_UU_HEAL_MODIFIER',	'COLLECTION_PLAYER_UNITS',	'EFFECT_ADJUST_UNIT_HEALING_MODIFIERS'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,									ModifierType,									SubjectRequirementSetId				)
VALUES	('MODIFIER_CVS_PHILIPPINES_UU_CROSS_OCEAN',		'MODTYPE_CVS_PHILIPPINES_UU_VALID_TERRAIN',		'REQSET_CVS_PHILIPPINES_UU_IS_UU'	),
		('MODIFIER_CVS_PHILIPPINES_UU_HEAL_NEUTRAL',	'MODTYPE_CVS_PHILIPPINES_UU_HEAL_MODIFIER',		'REQSET_CVS_PHILIPPINES_UU_IS_UU'	),
		('MODIFIER_CVS_PHILIPPINES_UU_HEAL_ENEMY',		'MODTYPE_CVS_PHILIPPINES_UU_HEAL_MODIFIER',		'REQSET_CVS_PHILIPPINES_UU_IS_UU'	);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments		
		(ModifierId,									Name,			Value			)
VALUES	('MODIFIER_CVS_PHILIPPINES_UU_CROSS_OCEAN',		'TerrainType',	'TERRAIN_OCEAN'	),
		('MODIFIER_CVS_PHILIPPINES_UU_CROSS_OCEAN',		'Valid',		1				),
		('MODIFIER_CVS_PHILIPPINES_UU_HEAL_NEUTRAL',	'Type',			'NEUTRAL'		),
		('MODIFIER_CVS_PHILIPPINES_UU_HEAL_NEUTRAL',	'Amount',		10				),
		('MODIFIER_CVS_PHILIPPINES_UU_HEAL_ENEMY',		'Type',			'ENEMY'			),
		('MODIFIER_CVS_PHILIPPINES_UU_HEAL_ENEMY',		'Amount',		5				);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,					RequirementId					)
VALUES	('REQSET_CVS_PHILIPPINES_UU_IS_UU',	'REQ_CVS_PHILIPPINES_UU_IS_UU'	);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,					RequirementSetType			)
VALUES	('REQSET_CVS_PHILIPPINES_UU_IS_UU',	'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,						RequirementType,					Inverse	)
VALUES	('REQ_CVS_PHILIPPINES_UU_IS_UU',	'REQUIREMENT_UNIT_TYPE_MATCHES',	0		);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------
		
INSERT INTO RequirementArguments
		(RequirementId,						Name,		Value						)
VALUES	('REQ_CVS_PHILIPPINES_UU_IS_UU',	'UnitType',	'UNIT_CVS_PHILIPPINES_UU'	);
		
