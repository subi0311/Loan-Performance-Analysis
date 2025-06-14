-- Use the desired database
USE Loan_Analysis;

-- View column names, data types, and character lengths
SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH
FROM INFORMATION_SCHEMA.COLUMNS;

-- View all data in Level1_Loan_data
SELECT * FROM Level1_Loan_data;

-- ==========================================
-- Cleaning and Converting: Months_since_last_delinquent
-- ==========================================
-- Replace 'NA' with 0
UPDATE Level1_Loan_data
SET Months_since_last_delinquent = 0
WHERE Months_since_last_delinquent = 'NA';

-- Convert column to INT
ALTER TABLE Level1_Loan_data
ALTER COLUMN Months_since_last_delinquent INT;

-- ==========================================
-- Cleaning and Converting: Credit_Score
-- ==========================================
ALTER TABLE Level1_Loan_Data
ALTER COLUMN Credit_Score INT;

-- ==========================================
-- Cleaning and Converting: Years_in_current_job
-- ==========================================
UPDATE Level1_Loan_data
SET Years_in_current_job = 0
WHERE Years_in_current_job = 'N/A';

ALTER TABLE Level1_Loan_Data
ALTER COLUMN Years_in_current_job INT;

-- ==========================================
-- Cleaning and Converting: Monthly_Debt
-- ==========================================
UPDATE Level1_Loan_data
SET Monthly_Debt = 0
WHERE Monthly_Debt = ' $-   ';

ALTER TABLE Level1_Loan_data
ALTER COLUMN Monthly_Debt INT;

-- ==========================================
-- Cleaning and Converting: Current_Credit_Balance
-- ==========================================
UPDATE Level1_Loan_data
SET Current_Credit_Balance = 0
WHERE Current_Credit_Balance = ' $-   ';

ALTER TABLE Level1_Loan_data
ALTER COLUMN Current_Credit_Balance INT;

-- ==========================================
-- Cleaning and Converting: Maximum_Open_Credit
-- ==========================================
-- Check how many rows have '$-'
SELECT COUNT(Maximum_Open_Credit)
FROM Level1_Loan_data
WHERE Maximum_Open_Credit = ' $-   ';

-- Replace '$-' with 0
UPDATE Level1_Loan_data
SET Maximum_Open_Credit = 0
WHERE Maximum_Open_Credit = ' $-   ';

ALTER TABLE Level1_Loan_Data
ALTER COLUMN Maximum_Open_Credit INT;

-- ==========================================
-- Cleaning and Converting: Bankruptcies
-- ==========================================
UPDATE Level1_Loan_data
SET Bankruptcies = 0
WHERE Bankruptcies = 'NA';

ALTER TABLE Level1_Loan_Data
ALTER COLUMN Bankruptcies INT;

-- ==========================================
-- Cleaning and Converting: Tax_Liens
-- ==========================================
UPDATE Level1_Loan_data
SET Tax_Liens = 0
WHERE Tax_Liens = 'NA';

ALTER TABLE Level1_Loan_Data
ALTER COLUMN Tax_Liens INT;
