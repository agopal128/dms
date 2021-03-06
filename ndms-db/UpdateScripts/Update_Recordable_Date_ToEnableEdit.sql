-- Update the last recordable date 

-- @AdminId: UserId of NDMS admin user, replace with required userID
DECLARE @AdminId INT = 0;
-- @ScorecardId: Scorecard Id, replace with required scorecardID
DECLARE @ScorecardId INT = 140;

-- Variable to store current max recordable date for the scorecard
DECLARE @MaxRecordableDate DATE;

-- Select max recordable date for scorecard
SELECT @MaxRecordableDate = MAX(RecordableDate)
FROM [ndms].[Recordables] WHERE ScorecardID = @ScorecardId AND IsActive = 1;

-- Updates the scorecard's isManual flag to true for the entry with max recordable date 
UPDATE [ndms].[Recordables]
SET  IsManual = 1,
LastModifiedOn = GETDATE(),
LastModifiedBy = @AdminId
WHERE ScorecardID = @ScorecardId 
AND RecordableDate = @MaxRecordableDate And IsActive = 1;

-- Clear all other entries to enable editing of the manual one

UPDATE [ndms].[Recordables]
SET  IsActive = 0,
LastModifiedOn = GETDATE(),
LastModifiedBy = @AdminId
WHERE ScorecardID = @ScorecardId 
AND RecordableDate <> @MaxRecordableDate And IsActive = 1;