-- Retrieve all data from Phoenix Employee Compensation table
SELECT *
FROM Phoenixemployeecompensation;

-- Remove a specific column (column12) from the table
ALTER TABLE Phoenixemployeecompensation
DROP COLUMN column12;

-- Check for null or zero values for salary in Phoenix Employee Compensation
SELECT Job_Title, Regular_Pay
FROM Phoenixemployeecompensation
WHERE Regular_Pay IS NULL OR Regular_Pay = 0
GROUP BY Job_Title, Regular_Pay;

-- Calculate the average salary for all jobs in the dataset
SELECT AVG(Regular_Pay) AS AvgPay
FROM Phoenixemployeecompensation;

-- Calculate the average salary for all jobs, excluding null and zero values for regular pay
SELECT AVG(Regular_Pay) AS AvgPay
FROM Phoenixemployeecompensation
WHERE Regular_Pay IS NOT NULL AND Regular_Pay <> 0;

-- Find the highest salary in the dataset and its corresponding job role
SELECT TOP 1 Job_Title, Regular_Pay
FROM Phoenixemployeecompensation
GROUP BY Job_Title, Regular_Pay
ORDER BY Regular_Pay DESC;

-- Calculate the average salary for a police officer
SELECT Job_Title, AVG(Regular_Pay) AS AvgSalary
FROM Phoenixemployeecompensation
WHERE Job_Title = 'Police Officer'
GROUP BY Job_Title;

-- Calculate the average salary for a police officer, excluding null and zero values for regular pay
SELECT Job_Title, AVG(Regular_Pay) AS AvgSalary
FROM Phoenixemployeecompensation
WHERE Job_Title = 'Police Officer' AND Regular_Pay IS NOT NULL AND Regular_Pay <> 0
GROUP BY Job_Title;

-- Count the number of jobs available for each job title
SELECT Job_Title, COUNT(Job_Title) AS NumberofEmployees
FROM Phoenixemployeecompensation
GROUP BY Job_Title;

-- Find the job title with the most employees
SELECT Job_Title, COUNT(Job_Title) AS NumberofEmployees
FROM Phoenixemployeecompensation
GROUP BY Job_Title
ORDER BY NumberofEmployees DESC;

-- Calculate the total salary paid for all jobs in the Police Department
SELECT Department, SUM(Regular_Pay) AS PoliceDepartmentSalary
FROM Phoenixemployeecompensation
WHERE Department = 'Police Department'
GROUP BY Department;

-- Find the top 5 highest paying job titles and their corresponding average salaries
SELECT TOP 5 Job_Title, Regular_Pay
FROM Phoenixemployeecompensation
GROUP BY Job_Title, Regular_Pay
ORDER BY Regular_Pay DESC;

-- Determine the department with the most jobs available
SELECT TOP 1 Department, COUNT(Job_Title) AS CountJobTitles
FROM Phoenixemployeecompensation
GROUP BY Department
ORDER BY CountJobTitles DESC;

-- Identify the job title with the most employees from the Police Department
SELECT TOP 1 Department, Job_Title, COUNT(Job_Title) AS CountJobTitles
FROM Phoenixemployeecompensation
WHERE Department = 'Police Department'
GROUP BY Department, Job_Title
ORDER BY CountJobTitles DESC;

-- Count the number of terminated employees
SELECT COUNT(Termination_Date) AS TerminatedEmployees
FROM Phoenixemployeecompensation
WHERE Termination_Date IS NOT NULL;

-- Retrieve names of terminated employees
SELECT Names
FROM Phoenixemployeecompensation
WHERE Termination_Date IS NOT NULL;

-- Find the top 5 employees with the highest salaries
SELECT TOP 5 Names, Regular_Pay
FROM Phoenixemployeecompensation
GROUP BY Names, Regular_Pay
ORDER BY Regular_Pay DESC;

-- Discover the top 5 employees with the most overtime pay
SELECT TOP 5 Names, Overtime_Pay
FROM Phoenixemployeecompensation
GROUP BY Names, Overtime_Pay
ORDER BY Overtime_Pay DESC;

-- Count the number of unique job titles
SELECT COUNT(DISTINCT Job_Title) AS JobTitleCount
FROM Phoenixemployeecompensation;

-- Calculate the average salary for each job title and the total number of jobs available for each job title
SELECT Job_Title, AVG(Regular_Pay) AS AvgSalary, COUNT(Job_Title) AS EmployeeCount
FROM Phoenixemployeecompensation
WHERE Job_Title IS NOT NULL
GROUP BY Job_Title;

-- Find the top 5 job titles with the highest total salaries and the total number of jobs available for each job title
SELECT TOP 5 Job_Title, SUM(Regular_Pay) AS TotalSalary, COUNT(Job_Title) AS JobTitleCount
FROM Phoenixemployeecompensation
GROUP BY Job_Title
ORDER BY TotalSalary DESC;

-- Calculate the average salary for each job title in each department and the total number of jobs available in each department
SELECT Department, Job_Title, AVG(Regular_Pay) AS AvgSalary, COUNT(Job_Title) AS JobCount
FROM Phoenixemployeecompensation
WHERE Department IS NOT NULL
GROUP BY Department, Job_Title
ORDER BY Department, Job_Title;

-- Return employees hired in 2005 including their department, job title, and salary
SELECT Names, Department, Job_Title, Hire_Date, Regular_Pay
FROM Phoenixemployeecompensation
WHERE Hire_Date LIKE '2005%'
GROUP BY Names, Department, Job_Title, Hire_Date, Regular_Pay;

-- Find the top 5 job titles with the highest salaries and the name of the department that offers the highest salary for each job title
SELECT TOP 5 Department, Job_Title, Regular_Pay
FROM Phoenixemployeecompensation
GROUP BY Department, Job_Title, Regular_Pay
ORDER BY Regular_Pay DESC;
