BULK INSERT customer1
FROM 'C:\Users\HP\Downloads\Customer (2).csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'
);