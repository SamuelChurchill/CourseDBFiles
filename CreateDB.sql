BEGIN TRANSACTION
CREATE DATABASE sport_equipment
ON PRIMARY
(
      NAME = N'sport_equipment',
      FILENAME = N'C:\DataBases\sport_equipment.mdf' 
)
LOG ON
(
     NAME = N'sport_equipment_log', 
     FILENAME = N'C:\DataBases\sport_equipment_log.ldf'
)
GO
COMMIT