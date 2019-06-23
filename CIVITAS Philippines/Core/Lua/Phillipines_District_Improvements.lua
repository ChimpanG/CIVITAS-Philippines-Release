-----------------------------------------------
-- PHILIPPINES TRAIT FUNCTION
-- Effect: Creates improvements on visible resources adjacent to a district
-- Author: Chrisy15, ChimpanG with credit to others
-----------------------------------------------

print("Philippines Trait Script: Begin Loading");
include("Civ6Common.lua");
include("MapEnums.lua");

-----------------------------------------------
-- CONSTANTS
-----------------------------------------------

local PHILIPPINES_TRAIT = "TRAIT_CIVILIZATION_CVS_PHILIPPINES_UA";

local tDistricts = {}
local tDistrictQuery = DB.Query("SELECT DISTINCT DistrictType FROM District_GreatPersonPoints WHERE DistrictType NOT IN (SELECT CivUniqueDistrictType FROM DistrictReplaces)")
for k, v in pairs(tDistrictQuery) do
	tDistricts[GameInfo.Districts[v.DistrictType].Index] = true
end

local tImprovements = {}
local tImprovementQuery = DB.Query("SELECT DISTINCT ImprovementType FROM Improvement_ValidResources WHERE ImprovementType IN (SELECT ImprovementType FROM Improvements WHERE TraitType IS NULL)") -- Don't really want to pick up UTIs, since they'll mess with stuff.
for k, v in pairs(tImprovementQuery) do
	table.insert(tImprovements, GameInfo.Improvements[v.ImprovementType].Index)
end

local tImprovableResources = {} -- Not all Resources are improvable
local tResourceQuery = DB.Query("SELECT DISTINCT ResourceType FROM Improvement_ValidResources")
for k, v in pairs(tResourceQuery) do
	tImprovableResources[GameInfo.Resources[v.ResourceType].Index] = true
end

-----------------------------------------------
-- HAS TRAIT
-- Credits: Sukritact
-----------------------------------------------

function HasPhilippinesTrait(playerID)
	local thisLeader:table = PlayerConfigurations[playerID];
	local leaderType:string = thisLeader:GetLeaderTypeName();
	for trait in GameInfo.LeaderTraits() do
		if trait.LeaderType == leaderType and trait.TraitType == PHILIPPINES_TRAIT then return true end;
	end
	local civType:string = thisLeader:GetCivilizationTypeName();
	for trait in GameInfo.CivilizationTraits() do
		if trait.CivilizationType == civType and trait.TraitType == PHILIPPINES_TRAIT then return true end;
	end
	return false;
end

-----------------------------------------------
-- TRAIT FUNCTIONS
-- Credits: Chrisy15, ChimpanG (but mostly Chrisy tbh)
-----------------------------------------------

local tResources = {}
for row in GameInfo.Resources() do -- Thinking about it this could be combined with tImprovableResources, but for the sake of modularity it's probably better to keep them seperate.
    tResources[row.Index] = {}
    if row.PrereqTech then
        tResources[row.Index].PrereqTech = GameInfo.Technologies[row.PrereqTech].Index
    end
    if row.PrereqCivic then
        tResources[row.Index].PrereqCivic = GameInfo.Civics[row.PrereqCivic].Index
    end
end

function C15_HasPlayerUnlockedResourcePrereq(playerID, resourceID)
    local pPlayer = Players[playerID]
    local pPlayerTechs = pPlayer:GetTechs()
    local pPlayerCulture = pPlayer:GetCulture()
    local tResourcePrereqs = tResources[resourceID]
    if not tResourcePrereqs then return true end
    if tResourcePrereqs.PrereqTech then
        return pPlayerTechs:HasTech(tResourcePrereqs.PrereqTech)
    elseif tResourcePrereqs.PrereqCivic then
        return pPlayerCulture:HasCivic(tResourcePrereqs.PrereqCivic)
    else
        return true
    end
end

function CVS_District_Improvements(playerID, districtID, cityID, districtX, districtY, iDistrictType, iUnknown1, iUnknown2, iPercentComplete)
	if iPercentComplete == 100 and HasPhilippinesTrait(playerID) then
		if tDistricts[iDistrictType] then
			print("Speciality District built!")
			for direction = 0, DirectionTypes.NUM_DIRECTION_TYPES - 1, 1 do
				local pAdjacentPlot = Map.GetAdjacentPlot(districtX, districtY, direction);
				if pAdjacentPlot then -- Check we haven't gone off the edge of the map
					print("Has adjacent plot")
					local iResource = pAdjacentPlot:GetResourceType()
					if iResource > -1 and C15_HasPlayerUnlockedResourcePrereq(playerID, iResource) then
						print("Has visible resource")
						if tImprovableResources[iResource] then
							print("is improvable resource")
							for k, v in ipairs(tImprovements) do
								if ImprovementBuilder.CanHaveImprovement(pAdjacentPlot, v, playerID) then
                                    print("Can build " .. GameInfo.Improvements[v].ImprovementType)
                                    ImprovementBuilder.SetImprovementType(pAdjacentPlot, v, playerID)
                                    break
                                end
							end
						end
					end
				end
			end
		end
	end
end
					
Events.DistrictBuildProgressChanged.Add(CVS_District_Improvements);

print("Philippines Trait Script Completed");