------------------------------------------
-- Update Data in the Import Table Data --
------------------------------------------

USE [Simulation]

UPDATE Import_Data SET OnOrder=8, UnfilledOrders=4, TargetInventory=20, ActualOrders = 4
  WHERE RowID=2

UPDATE Import_Data SET ActualOrders = 4
  WHERE RowID=3

UPDATE Import_Data SET ActualOrders = 4
  WHERE RowID=4

UPDATE Import_Data SET ActualOrders = 4
  WHERE RowID=5

UPDATE Import_Data SET ActualOrders = 4
  WHERE RowID=6

UPDATE Import_Data SET ActualOrders = 4
  WHERE RowID=7

UPDATE Import_Data SET ActualOrders = 4
  WHERE RowID=8

UPDATE Import_Data SET ActualOrders = 4
  WHERE RowID=9

UPDATE Import_Data SET ActualOrders = 4
  WHERE RowID=10

UPDATE Import_Data SET ActualOrders = 4
  WHERE RowID=11

UPDATE Import_Data SET ActualOrders = 4
  WHERE RowID=12

UPDATE Import_Data SET ActualOrders = 4
  WHERE RowID=13

UPDATE Import_Data SET ActualOrders = 4
  WHERE RowID=14

UPDATE Import_Data SET ActualOrders = 4
  WHERE RowID=15

UPDATE Import_Data SET ActualOrders = 4
  WHERE RowID=16

UPDATE Import_Data SET ActualOrders = 4
  WHERE RowID=17

UPDATE Import_Data SET ActualOrders = 4
  WHERE RowID=18

UPDATE Import_Data SET ActualOrders = 4
  WHERE RowID=19

UPDATE Import_Data SET ActualOrders = 4
  WHERE RowID=20

UPDATE Import_Data SET ActualOrders = 4
  WHERE RowID=21

UPDATE Import_Data SET ActualOrders = 4
  WHERE RowID=22

--------------------------------
-- Show All Data in the Table --
--------------------------------
SELECT * FROM Import_Data
