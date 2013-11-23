CREATE TABLE [dbo].[Table]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Name] NCHAR(20) NOT NULL, 
    [BidderNumber] TINYINT NOT NULL, 
    [Firm] NCHAR(20) NULL, 
    [Address] NCHAR(30) NOT NULL, 
    [City] NCHAR(20) NOT NULL, 
    [State] NCHAR(2) NOT NULL, 
    [Zip] SMALLINT NOT NULL, 
    [OfficePhone] INT NOT NULL, 
    [HomePhone] INT NULL, 
    [DLNumber] NCHAR(20) NOT NULL, 
    [DLState] NCHAR(2) NOT NULL, 
    [SalesTax] FLOAT NULL, 
    [Bank] NCHAR(10) NULL, 
    [Other] NCHAR(255) NULL, 
    [Learned] NCHAR(255) NULL, 
    [Payment] TINYINT NULL, 
    [Selling] TINYINT NULL, 
    [ContactDate] NCHAR(10) NULL
)
