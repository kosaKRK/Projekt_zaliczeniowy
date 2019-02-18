USE [WideWorldImportersDW]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[vFactOrder] as

SELECT [Order Key]
      ,[City Key]
      ,[Customer Key]
      ,[Order Date Key]
      ,[Picked Date Key]
      ,[Salesperson Key]
      ,[Picker Key]
      ,[Description]
      ,[Quantity]
      ,[Unit Price]
      ,[Tax Rate]
      ,[Total Excluding Tax]
      ,[Tax Amount]
      ,[Total Including Tax]
  FROM [Fact].[Order]

  GO

create view [dbo].[vFactSale] as 

SELECT [Sale Key]
      ,[City Key]
      ,[Customer Key]
      ,[Invoice Date Key]
      ,[Delivery Date Key]
      ,[Salesperson Key]
      ,[Description]
      ,[Quantity]
      ,[Unit Price]
      ,[Tax Rate]
      ,[Total Excluding Tax]
      ,[Tax Amount]
      ,[Profit]
      ,[Total Including Tax]
  FROM [Fact].[Sale]
  
GO

create view [dbo].[vFactTransaction] as
SELECT [Transaction Key]
      ,[Date Key]
      ,[Customer Key]
      ,[Supplier Key]
      ,[Transaction Type Key]
      ,[Payment Method Key]
      ,[Supplier Invoice Number]
      ,[Total Excluding Tax]
      ,[Tax Amount]
      ,[Total Including Tax]
      ,[Outstanding Balance]
      ,[Is Finalized]
  FROM [Fact].[Transaction]
GO