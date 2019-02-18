USE [WideWorldImportersDW]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[vDimDate] as
SELECT [Date]
      ,[Day]
      ,[Month]
      ,[Calendar Month Number]
      ,[Calendar Month Label]
      ,[Calendar Year]
      ,[Calendar Year Label]
      ,[Fiscal Month Number]
      ,[Fiscal Month Label]
      ,[Fiscal Year]
      ,[Fiscal Year Label]
  FROM [Dimension].[Date]
  
GO

CREATE VIEW [dbo].[vDimCity] as
SELECT [City Key]
      ,[City]
      ,[State Province]
      ,[Country]
      ,[Continent]
      ,[Sales Territory]
      ,[Region]
      ,[Subregion]
      ,[Latest Recorded Population]
  FROM [Dimension].[City]

GO

create view [dbo].[vDimCustomer] as 
SELECT [Customer Key]
      ,[Customer]
      ,[Bill To Customer]
      ,[Category]
      ,[Buying Group]
      ,[Primary Contact]
      ,[Postal Code]
  FROM [Dimension].[Customer]

GO

CREATE view [dbo].[vDimEmployee] as
SELECT [Employee Key]
      ,[Employee]
      ,[Is Salesperson]

FROM [Dimension].[Employee]

GO

create view [dbo].[vDimSupplier] as
SELECT [Supplier Key]
      ,[Supplier]
      ,[Category]
      ,[Primary Contact]
      ,[Payment Days]
      ,[Postal Code]
  FROM [Dimension].[Supplier]
GO

create view [dbo].[vDimTransactionType] as 
SELECT [Transaction Type Key]
      ,[Transaction Type]
  FROM [Dimension].[Transaction Type]

GO

SELECT [Payment Method Key]
      ,[Payment Method]
  FROM [Dimension].[Payment Method]

GO