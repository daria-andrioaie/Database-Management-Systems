--- phantom read
--- transaction 2 unsolved


SET TRANSACTION ISOLATION LEVEL REPEATABLE READ
BEGIN TRAN 

SELECT * FROM Passenger
WAITFOR DELAY '00:00:05'
SELECT * FROM Passenger
COMMIT TRAN