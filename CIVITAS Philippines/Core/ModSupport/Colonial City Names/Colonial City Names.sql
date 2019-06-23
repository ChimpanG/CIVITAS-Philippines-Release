/*
	Mod Support Colonial City Names
	Credits: Chrisy15, SeelingCat
*/

-- Include these at the start
CREATE TABLE IF NOT EXISTS C15_ColonyCityNames (CivilizationType TEXT NOT NULL, LeaderType TEXT DEFAULT NULL, CityName TEXT NOT NULL, PRIMARY KEY (CivilizationType, LeaderType, CityName), FOREIGN KEY (CivilizationType) REFERENCES Civilizations(CivilizationType) ON DELETE CASCADE ON UPDATE CASCADE, FOREIGN KEY (LeaderType) REFERENCES Leaders(LeaderType) ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TRIGGER IF NOT EXISTS C15_ColonyCityNames_RemoveFromCityNames
AFTER INSERT ON C15_ColonyCityNames
BEGIN
    DELETE FROM CityNames WHERE CityName = NEW.CityName AND (CivilizationType = NEW.CivilizationType OR LeaderType = NEW.LeaderType);
END;

CREATE TRIGGER IF NOT EXISTS C15_ColonyCityNames_DupeAddedToCityNames
AFTER INSERT ON CityNames
WHEN NEW.CityName IN (SELECT CityName FROM C15_ColonyCityNames WHERE CivilizationType = NEW.CivilizationType)
BEGIN
    DELETE FROM CityNames WHERE CityName = NEW.CityName AND CivilizationType = NEW.CivilizationType;
END;

-- Add city names
INSERT OR REPLACE INTO C15_ColonyCityNames
        (CivilizationType,					CityName)
VALUES    ('CIVILIZATION_CVS_PHILIPPINES',	'LOC_CITY_NAME_C15_COLONY_NAMES_MONROVIA');