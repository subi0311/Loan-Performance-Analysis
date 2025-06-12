-- Execute the stored procedure
EXEC level_1_Loan_data;
GO

-- Use the database
USE Loan_Analysis;
GO

-- Create or alter the stored procedure
CREATE OR ALTER PROCEDURE level_1_Loan_data 
AS
BEGIN
    DECLARE @Start_time DATETIME;

    PRINT '------------------';
    PRINT 'TRUNCATING TABLE Level1_Loan_data';

    -- Record the start time
    SET @Start_time = GETDATE();

    -- Clear the table before inserting new data
    TRUNCATE TABLE Level1_Loan_data;

    PRINT '>> INSERTING DATA IN BULK';

    -- Perform bulk insert from CSV file
    BULK INSERT Level1_Loan_data
    FROM 'C:\Users\MUHAMMAD SUBHAN KHAN\Desktop\EVERYTHING IN IT\Data analyst portfolio projects\Banking Loan Dashboard\Loan Analysis Data.csv'
    WITH (
        FIRSTROW = 2,
        FIELDTERMINATOR = ',',
        ROWTERMINATOR = '\n',
        TABLOCK
    );
END;
GO
