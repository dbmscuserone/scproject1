CREATE PROCEDURE [HumanResources].[uspGetEmployeesTest2]   
    @LastName nvarchar(60),   
    @FirstName nvarchar(60)   
AS   

    SET NOCOUNT ON;  
    SELECT FirstName, LastName, Department  
    FROM HumanResources.vEmployeeDepartmentHistory  
    WHERE FirstName = @FirstName AND LastName = @LastName  
    AND EndDate IS NULL;