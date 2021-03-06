SET IDENTITY_INSERT [ndms].[HolidayPatterns] ON
GO

INSERT INTO [ndms].[HolidayPatterns] 
([ID], [Name], [CreatedBy], [LastModifiedBy], [IsActive])
SELECT 1, 'None', 0, 0, 1
WHERE NOT EXISTS(SELECT 1 FROM [ndms].[HolidayPatterns] WHERE [Name] = 'None')
GO

INSERT INTO [ndms].[HolidayPatterns] 
([ID], [Name], [CreatedBy], [LastModifiedBy], [IsActive])
SELECT 2, 'Belgium', 0, 0, 1
WHERE NOT EXISTS(SELECT 1 FROM [ndms].[HolidayPatterns] WHERE [Name] = 'Belgium')
GO

INSERT INTO [ndms].[HolidayPatterns] 
([ID], [Name], [CreatedBy], [LastModifiedBy], [IsActive])
SELECT 3, 'Brazil', 0, 0, 1
WHERE NOT EXISTS(SELECT 1 FROM [ndms].[HolidayPatterns] WHERE [Name] = 'Brazil')
GO

INSERT INTO [ndms].[HolidayPatterns] 
([ID], [Name], [CreatedBy], [LastModifiedBy], [IsActive])
SELECT 4, 'Canada', 0, 0, 1
WHERE NOT EXISTS(SELECT 1 FROM [ndms].[HolidayPatterns] WHERE [Name] = 'Canada')
GO

INSERT INTO [ndms].[HolidayPatterns] 
([ID], [Name], [CreatedBy], [LastModifiedBy], [IsActive])
SELECT 5, 'Canada-Newfoundland', 0, 0, 1
WHERE NOT EXISTS(SELECT 1 FROM [ndms].[HolidayPatterns] WHERE [Name] = 'Canada-Newfoundland')
GO

INSERT INTO [ndms].[HolidayPatterns] 
([ID], [Name], [CreatedBy], [LastModifiedBy], [IsActive])
SELECT 6, 'Russia', 0, 0, 1
WHERE NOT EXISTS(SELECT 1 FROM [ndms].[HolidayPatterns] WHERE [Name] = 'Russia')
GO

INSERT INTO [ndms].[HolidayPatterns] 
([ID], [Name], [CreatedBy], [LastModifiedBy], [IsActive])
SELECT 7, 'Singapore', 0, 0, 1
WHERE NOT EXISTS(SELECT 1 FROM [ndms].[HolidayPatterns] WHERE [Name] = 'Singapore')
GO

INSERT INTO [ndms].[HolidayPatterns] 
([ID], [Name], [CreatedBy], [LastModifiedBy], [IsActive])
SELECT 8, 'UAE', 0, 0, 1
WHERE NOT EXISTS(SELECT 1 FROM [ndms].[HolidayPatterns] WHERE [Name] = 'UAE')
GO

INSERT INTO [ndms].[HolidayPatterns] 
([ID], [Name], [CreatedBy], [LastModifiedBy], [IsActive])
SELECT 9, 'UK', 0, 0, 1
WHERE NOT EXISTS(SELECT 1 FROM [ndms].[HolidayPatterns] WHERE [Name] = 'UK')
GO

INSERT INTO [ndms].[HolidayPatterns] 
([ID], [Name], [CreatedBy], [LastModifiedBy], [IsActive])
SELECT 10, 'USA', 0, 0, 1
WHERE NOT EXISTS(SELECT 1 FROM [ndms].[HolidayPatterns] WHERE [Name] = 'USA')
GO

INSERT INTO [ndms].[HolidayPatterns] 
([ID], [Name], [CreatedBy], [LastModifiedBy], [IsActive])
SELECT 11, 'Saudi Arabia', 0, 0, 1
WHERE NOT EXISTS(SELECT 1 FROM [ndms].[HolidayPatterns] WHERE [Name] = 'Saudi Arabia')
GO

SET IDENTITY_INSERT [ndms].[HolidayPatterns] OFF