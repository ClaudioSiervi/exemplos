--------------------------------
--Create Table for Import Data--
--------------------------------

USE [Simulation]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Import_Data](
	[RowID] [int] IDENTITY(1,1) NOT NULL,
	[OnOrder] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UnfilledOrders] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TargetInventory] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ActualOrders] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]


-----------------------------------------------
-- Create Rows and Populate the Import Table --
-----------------------------------------------

INSERT INTO Import_Data
(OnOrder,UnfilledOrders,TargetInventory,ActualOrders)
values
('On Order with Wholesaler','Unfilled Orders','target inventory','actual customer orders')
INSERT INTO Import_Data
(OnOrder,UnfilledOrders,TargetInventory,ActualOrders)
values
(8,4,20,4)
INSERT INTO Import_Data
(OnOrder,UnfilledOrders,TargetInventory,ActualOrders)
values
('','','',10)
INSERT INTO Import_Data
(OnOrder,UnfilledOrders,TargetInventory,ActualOrders)
values
('','','',10)
INSERT INTO Import_Data
(OnOrder,UnfilledOrders,TargetInventory,ActualOrders)
values
('','','',10)
INSERT INTO Import_Data
(OnOrder,UnfilledOrders,TargetInventory,ActualOrders)
values
('','','',10)
INSERT INTO Import_Data
(OnOrder,UnfilledOrders,TargetInventory,ActualOrders)
values
('','','',10)
INSERT INTO Import_Data
(OnOrder,UnfilledOrders,TargetInventory,ActualOrders)
values
('','','',10)
INSERT INTO Import_Data
(OnOrder,UnfilledOrders,TargetInventory,ActualOrders)
values
('','','',10)
INSERT INTO Import_Data
(OnOrder,UnfilledOrders,TargetInventory,ActualOrders)
values
('','','',10)
INSERT INTO Import_Data
(OnOrder,UnfilledOrders,TargetInventory,ActualOrders)
values
('','','',10)
INSERT INTO Import_Data
(OnOrder,UnfilledOrders,TargetInventory,ActualOrders)
values
('','','',10)
INSERT INTO Import_Data
(OnOrder,UnfilledOrders,TargetInventory,ActualOrders)
values
('','','',10)
INSERT INTO Import_Data
(OnOrder,UnfilledOrders,TargetInventory,ActualOrders)
values
('','','',10)
INSERT INTO Import_Data
(OnOrder,UnfilledOrders,TargetInventory,ActualOrders)
values
('','','',10)
INSERT INTO Import_Data
(OnOrder,UnfilledOrders,TargetInventory,ActualOrders)
values
('','','',10)
INSERT INTO Import_Data
(OnOrder,UnfilledOrders,TargetInventory,ActualOrders)
values
('','','',10)
INSERT INTO Import_Data
(OnOrder,UnfilledOrders,TargetInventory,ActualOrders)
values
('','','',10)
INSERT INTO Import_Data
(OnOrder,UnfilledOrders,TargetInventory,ActualOrders)
values
('','','',10)
INSERT INTO Import_Data
(OnOrder,UnfilledOrders,TargetInventory,ActualOrders)
values
('','','',10)
INSERT INTO Import_Data
(OnOrder,UnfilledOrders,TargetInventory,ActualOrders)
values
('','','',10)
INSERT INTO Import_Data
(OnOrder,UnfilledOrders,TargetInventory,ActualOrders)
values
('','','',10)

--------------------------------
-- Show All Data in the Table --
--------------------------------
SELECT * FROM Import_Data
