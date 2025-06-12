USE Loan_Analysis;
GO

-- Drop the table if it already exists
IF OBJECT_ID('Level1_Loan_data', 'U') IS NOT NULL
    DROP TABLE Level1_Loan_data;
GO

-- Create the Level1_Loan_data table
CREATE TABLE Level1_Loan_data (
    Loan_id NVARCHAR(50),
    Customer_id NVARCHAR(50),
    Loan_Status NVARCHAR(50),
    Current_Loan_Amount INT,
    Term NVARCHAR(50),
    Credit_Score NVARCHAR(50),
    Annual_Income INT,
    Years_in_current_job NVARCHAR(50),
    Home_Ownership NVARCHAR(50),
    Purpose NVARCHAR(50),
    Monthly_Debt NVARCHAR(50),
    Years_of_Credit_History INT,
    Months_since_last_delinquent NVARCHAR(50),
    Customer_Record NVARCHAR(50),
    Number_of_Open_Accounts INT,
    Number_of_Credit_Problems INT,
    Current_Credit_Balance NVARCHAR(50),
    Maximum_Open_Credit NVARCHAR(50),
    Bankruptcies NVARCHAR(50),
    Tax_Liens NVARCHAR(50)
);
