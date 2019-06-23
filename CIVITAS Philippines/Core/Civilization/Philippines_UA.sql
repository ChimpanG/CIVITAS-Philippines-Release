/*
	UA
	Credits: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,											Kind				)
VALUES	('TRAIT_CIVILIZATION_CVS_PHILIPPINES_UA',		'KIND_TRAIT'		),
		('MODTYPE_CVS_PHILIPPINES_UA_ADJUST_GPP',		'KIND_MODIFIER'		);
		
-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO	Traits
		(TraitType,									Name,												Description												)
VALUES	('TRAIT_CIVILIZATION_CVS_PHILIPPINES_UA',	'LOC_TRAIT_CIVILIZATION_CVS_PHILIPPINES_UA_NAME',	'LOC_TRAIT_CIVILIZATION_CVS_PHILIPPINES_UA_DESCRIPTION'	);
		
-----------------------------------------------
-- CivilizationTraits
-----------------------------------------------

INSERT INTO	CivilizationTraits
		(CivilizationType,					TraitType								)
VALUES	('CIVILIZATION_CVS_PHILIPPINES',	'TRAIT_CIVILIZATION_CVS_PHILIPPINES_UA'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO TraitModifiers
		(TraitType,									ModifierId)
SELECT	'TRAIT_CIVILIZATION_CVS_PHILIPPINES_UA',	'MODIFIER_CVS_PHILIPPINES_UA_GM_'||ResourceType
FROM	Resources
WHERE	ResourceClassType = 'RESOURCECLASS_LUXURY';

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,								CollectionType,		EffectType							)
VALUES	('MODTYPE_CVS_PHILIPPINES_UA_ADJUST_GPP',	'COLLECTION_OWNER',	'EFFECT_ADJUST_GREAT_PERSON_POINTS'	);
		
-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,										ModifierType,								SubjectRequirementSetId	)
SELECT	'MODIFIER_CVS_PHILIPPINES_UA_GM_'||ResourceType,	'MODTYPE_CVS_PHILIPPINES_UA_ADJUST_GPP',	'REQSET_CVS_PHILIPPINES_UA_GM_'||ResourceType
FROM	Resources
WHERE	ResourceClassType = 'RESOURCECLASS_LUXURY';

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,										Name,					Value	)
SELECT	'MODIFIER_CVS_PHILIPPINES_UA_GM_'||ResourceType,	'GreatPersonClassType',	'GREAT_PERSON_CLASS_MERCHANT'
FROM	Resources
WHERE	ResourceClassType = 'RESOURCECLASS_LUXURY';

INSERT INTO	ModifierArguments
		(ModifierId,										Name,		Value	)
SELECT	'MODIFIER_CVS_PHILIPPINES_UA_GM_'||ResourceType,	'Amount',	1
FROM	Resources
WHERE	ResourceClassType = 'RESOURCECLASS_LUXURY';

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId	)
SELECT	'REQSET_CVS_PHILIPPINES_UA_GM_'||ResourceType,	'REQ_CVS_PHILIPPINES_UA_GM_'||ResourceType
FROM	Resources
WHERE	ResourceClassType = 'RESOURCECLASS_LUXURY';

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,								RequirementSetType	)
SELECT	'REQSET_CVS_PHILIPPINES_UA_GM_'||ResourceType,	'REQUIREMENTSET_TEST_ALL'
FROM	Resources
WHERE	ResourceClassType = 'RESOURCECLASS_LUXURY';

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,								RequirementType	)
SELECT	'REQ_CVS_PHILIPPINES_UA_GM_'||ResourceType,	'REQUIREMENT_PLAYER_HAS_RESOURCE_OWNED'
FROM	Resources
WHERE	ResourceClassType = 'RESOURCECLASS_LUXURY';

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------
	
INSERT INTO RequirementArguments
		(RequirementId,								Name,			Value	)
SELECT	'REQ_CVS_PHILIPPINES_UA_GM_'||ResourceType,	'ResourceType',	ResourceType
FROM	Resources
WHERE	ResourceClassType = 'RESOURCECLASS_LUXURY';