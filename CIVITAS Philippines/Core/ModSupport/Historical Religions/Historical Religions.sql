/*
	Mod Support Historical Religions
	Credits: Chrisy15, ChimpanG
*/

-----------------------------------------------
-- TOMATEKH'S HISTORICAL RELIGIONS
-----------------------------------------------

INSERT INTO FavoredReligions
		(LeaderType,				ReligionType)
SELECT	'LEADER_CVS_JOSE_RIZAL',	'RELIGION_AITO'
WHERE EXISTS (SELECT ReligionType FROM Religions WHERE ReligionType = 'RELIGION_AITO');

CREATE TRIGGER IF NOT EXISTS TRG_CVS_PHILIPPINES_Religions
AFTER INSERT ON Religions
WHEN NEW.ReligionType = 'RELIGION_AITO'
BEGIN
	INSERT INTO FavoredReligions
			(LeaderType,				ReligionType)
	VALUES	('LEADER_CVS_JOSE_RIZAL',	NEW.ReligionType);
END;