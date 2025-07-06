
--Retrieve the current (UTC) timestamp.
 SELECT CURRENT_TIMESTAMP;-- copy the current timestamp

--Retrieve the top 10 customers as of now.
 SELECT *
 FROM [dbo].[Top10Customers]
 OPTION (FOR TIMESTAMP AS OF 'YOUR_TIMESTAMP');