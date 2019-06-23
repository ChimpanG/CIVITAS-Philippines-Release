/*
	UU
	Credits: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------	
	
INSERT INTO Types
		(Type,											Kind				)
VALUES	('TRAIT_LEADER_CVS_JOSE_RIZAL_UU',				'KIND_TRAIT'		),
		('UNIT_CVS_JOSE_RIZAL_UU',						'KIND_UNIT'			),
		('ABILITY_CVS_JOSE_RIZAL_UU',					'KIND_ABILITY'		),
		('MODTYPE_CVS_JOSE_RIZAL_UU_ADJUST_STRENGTH',	'KIND_MODIFIER'		),
		('MODTYPE_CVS_JOSE_RIZAL_UU_COMBAT_GPP',		'KIND_MODIFIER'		);

-----------------------------------------------
-- Tags
-----------------------------------------------	
	
INSERT INTO Tags
		(Tag,						Vocabulary		)
VALUES	('CLASS_CVS_JOSE_RIZAL_UU',	'ABILITY_CLASS'	);

-----------------------------------------------
-- TypeTags
-----------------------------------------------		

INSERT INTO TypeTags
		(Type,							Tag							)
VALUES	('UNIT_CVS_JOSE_RIZAL_UU',		'CLASS_CVS_JOSE_RIZAL_UU'	),
		('ABILITY_CVS_JOSE_RIZAL_UU',	'CLASS_CVS_JOSE_RIZAL_UU'	);

INSERT INTO TypeTags (Type,	Tag)
SELECT 	'UNIT_CVS_JOSE_RIZAL_UU',
		Tag
FROM 	TypeTags
WHERE 	Type = 'UNIT_MUSKETMAN';

-----------------------------------------------
-- Traits
-----------------------------------------------
		
INSERT INTO Traits
		(TraitType,							Name								)
VALUES	('TRAIT_LEADER_CVS_JOSE_RIZAL_UU',	'LOC_UNIT_CVS_JOSE_RIZAL_UU_NAME'	);

-----------------------------------------------
-- LeaderTraits
-----------------------------------------------
		
INSERT INTO LeaderTraits
		(TraitType,							LeaderType				)
VALUES	('TRAIT_LEADER_CVS_JOSE_RIZAL_UU',	'LEADER_CVS_JOSE_RIZAL'	);

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
		PurchaseYield,
		AdvisorType,
		Combat,
		BaseSightRange,
		ZoneOfControl,
		Domain,
		FormationClass,
		PromotionClass,
		Maintenance,
		MandatoryObsoleteTech,
		PrereqTech,
		PrereqCivic,
		StrategicResource
		)
SELECT	'UNIT_CVS_JOSE_RIZAL_UU',	-- UnitType
		'LOC_UNIT_CVS_JOSE_RIZAL_UU_NAME',	-- Name
		'LOC_UNIT_CVS_JOSE_RIZAL_UU_DESCRIPTION', -- Description
		'TRAIT_LEADER_CVS_JOSE_RIZAL_UU', -- TraitType
		BaseMoves,
		Cost,
		PurchaseYield,
		AdvisorType,
		Combat + 7, -- Combat
		BaseSightRange,
		ZoneOfControl,
		Domain,
		FormationClass,
		PromotionClass,
		Maintenance,
		'TECH_ADVANCED_BALLISTICS', -- MandatoryObsoleteTech
		PrereqTech,
		PrereqCivic,
		NULL -- StrategicResource
FROM	Units
WHERE	UnitType = 'UNIT_MUSKETMAN';

-----------------------------------------------
-- UnitUpgrades
-----------------------------------------------
		
INSERT INTO UnitUpgrades (Unit,	UpgradeUnit)
SELECT 	'UNIT_CVS_JOSE_RIZAL_UU',
		UpgradeUnit
FROM 	UnitUpgrades
WHERE	Unit = 'UNIT_MUSKETMAN';

-----------------------------------------------
-- UnitAiInfos
-----------------------------------------------
		
INSERT INTO UnitAiInfos (UnitType,	AiType)
SELECT 	'UNIT_CVS_JOSE_RIZAL_UU',
		AiType
FROM 	UnitAiInfos
WHERE 	UnitType = 'UNIT_MUSKETMAN';
		
-----------------------------------------------
-- UnitReplaces
-----------------------------------------------
		
INSERT INTO UnitReplaces
		(CivUniqueUnitType,			ReplacesUnitType	)
VALUES	('UNIT_CVS_JOSE_RIZAL_UU',	'UNIT_MUSKETMAN'	);

-----------------------------------------------
-- UnitAbilities
-----------------------------------------------

INSERT INTO UnitAbilities
		(UnitAbilityType,				Name,									Description									)
VALUES	('ABILITY_CVS_JOSE_RIZAL_UU',	'LOC_ABILITY_CVS_JOSE_RIZAL_UU_NAME',	'LOC_ABILITY_CVS_JOSE_RIZAL_UU_DESCRIPTION'	);

-----------------------------------------------
-- UnitAbilityModifiers
-----------------------------------------------
		
INSERT INTO UnitAbilityModifiers
		(UnitAbilityType,				ModifierId									)
VALUES	('ABILITY_CVS_JOSE_RIZAL_UU',	'MODIFIER_CVS_JOSE_RIZAL_UU_LOCAL_COMBAT'	),
		('ABILITY_CVS_JOSE_RIZAL_UU',	'MODIFIER_CVS_JOSE_RIZAL_UU_COMBAT_GPP'		);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,									CollectionType,				EffectType										)
VALUES	('MODTYPE_CVS_JOSE_RIZAL_UU_ADJUST_STRENGTH',	'COLLECTION_UNIT_COMBAT',	'EFFECT_ADJUST_PLAYER_STRENGTH_MODIFIER'		),
		('MODTYPE_CVS_JOSE_RIZAL_UU_COMBAT_GPP',		'COLLECTION_OWNER',			'EFFECT_ADJUST_GREAT_PEOPLE_POINTS_PER_KILL'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,								ModifierType,									SubjectRequirementSetId					)
VALUES	('MODIFIER_CVS_JOSE_RIZAL_UU_LOCAL_COMBAT',	'MODTYPE_CVS_JOSE_RIZAL_UU_ADJUST_STRENGTH',	'REQSET_CVS_PHILIPPINES_OWN_TERRITORY'	),
		('MODIFIER_CVS_JOSE_RIZAL_UU_COMBAT_GPP',	'MODTYPE_CVS_JOSE_RIZAL_UU_COMBAT_GPP',			NULL									);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments		
		(ModifierId,									Name,					Value						)
VALUES	('MODIFIER_CVS_JOSE_RIZAL_UU_LOCAL_COMBAT',		'Amount',				7							),
		('MODIFIER_CVS_JOSE_RIZAL_UU_COMBAT_GPP',		'GreatPersonClassType',	'GREAT_PERSON_CLASS_WRITER'	),
		('MODIFIER_CVS_JOSE_RIZAL_UU_COMBAT_GPP',		'Amount',				5							);

-----------------------------------------------
-- ModifierStrings
-----------------------------------------------

INSERT INTO	ModifierStrings
		(ModifierId,								Context,	Text																)
VALUES	('MODIFIER_CVS_JOSE_RIZAL_UU_LOCAL_COMBAT',	'Preview',	'LOC_ABILITY_CVS_JOSE_RIZAL_UU_LOCAL_COMBAT_MODIFIER_DESCRIPTION'	);
		
-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,							RequirementType,						Inverse	)
VALUES	('REQ_CVS_PHILIPPINES_OWN_TERRITORY',	'REQUIREMENT_UNIT_IN_OWNER_TERRITORY',	0		);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,							RequirementId						)
VALUES	('REQSET_CVS_PHILIPPINES_OWN_TERRITORY',	'REQ_CVS_PHILIPPINES_OWN_TERRITORY'	);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,							RequirementSetType			)
VALUES	('REQSET_CVS_PHILIPPINES_OWN_TERRITORY',	'REQUIREMENTSET_TEST_ALL'	);