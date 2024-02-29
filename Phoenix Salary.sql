SELECT *
FROM Phoenixemployeecompensation

ALTER TABLE Phoenixemployeecompensation
DROP COLUMN column12;

--check for null or zero values for salary
SELECT Job_Title,Regular_Pay
FROM Phoenixemployeecompensation
WHERE Regular_Pay is NULL or Regular_Pay=0
GROUP BY Job_Title,Regular_Pay

--What is the average salary for all the jobs in the dataset? 
SELECT AVG(Regular_Pay) AS AvgPay
FROM Phoenixemployeecompensation

--What is the average salary for all the jobs in the dataset? Exclude null and zero values for regular pay
SELECT AVG(Regular_Pay) AS AvgPay
FROM Phoenixemployeecompensation
WHERE Regular_Pay is not NULL and Regular_Pay<>0

--What is the highest salary in the dataset, and which job role does it correspond to?
SELECT TOP 1 Job_Title,Regular_Pay
FROM Phoenixemployeecompensation
GROUP BY Job_Title,Regular_Pay
ORDER BY Regular_Pay DESC

--What is the average salary for a police officer?
SELECT Job_Title,AVG(Regular_Pay) AS AvgSalary
FROM Phoenixemployeecompensation
WHERE Job_Title='Police Officer'
GROUP BY Job_Title

--What is the average salary for a police officer? Excluding null and zero values for regular pay
SELECT Job_Title,AVG(Regular_Pay) AS AvgSalary
FROM Phoenixemployeecompensation
WHERE Job_Title='Police Officer' and Regular_Pay is not NULL and Regular_Pay<>0
GROUP BY Job_Title

--What is the number of jobs available for each job title?
SELECT Job_Title,COUNT(Job_Title) AS NumberofEmployees
FROM Phoenixemployeecompensation
GROUP BY Job_Title

--Which job title has the most employees?
SELECT Job_Title,COUNT(Job_Title) AS NumberofEmployees
FROM Phoenixemployeecompensation
GROUP BY Job_Title
ORDER BY NumberofEmployees DESC

--What is the total salary paid for all jobs in the Police Department?
SELECT Department,SUM(Regular_Pay) AS PoliceDepartmentSalary
FROM Phoenixemployeecompensation
WHERE Department='Police Department'
GROUP BY Department

--What are the top 5 highest paying job titles and their corresponding average salaries?
SELECT TOP 5 Job_Title,Regular_Pay
FROM Phoenixemployeecompensation
GROUP BY Job_Title,Regular_Pay
ORDER BY Regular_Pay DESC

--What department has the most jobs available?
SELECT TOP 1 Department,COUNT(Job_Title) AS CountJobTitles
FROM Phoenixemployeecompensation
GROUP BY Department
ORDER BY CountJobTitles DESC

--From the police department, what job_title has the most employees?
SELECT TOP 1 Department,Job_Title,COUNT(Job_Title) AS CountJobTitles
FROM Phoenixemployeecompensation
WHERE Department='Police Department'
GROUP BY Department,Job_Title
ORDER BY CountJobTitles DESC


--How many employees were terminated?
SELECT COUNT(Termination_Date) AS TerminatedEmployees
FROM Phoenixemployeecompensation
WHERE Termination_Date is not NULL


--What employees were terminated?
SELECT Names
FROM Phoenixemployeecompensation
WHERE Termination_Date is not NULL

--What are the top 5 employees with the highest salaries?
SELECT TOP 5 Names,Regular_Pay
FROM Phoenixemployeecompensation
GROUP BY Names,Regular_Pay
ORDER BY Regular_Pay DESC

--Who are the top 5 employees with the most overtime pay?
SELECT TOP 5 Names,Overtime_Pay
FROM Phoenixemployeecompensation
GROUP BY Names,Overtime_Pay
ORDER BY Overtime_Pay DESC


--How many unique job titles are there?
SELECT COUNT(DISTINCT Job_Title) AS JobTitleCount
FROM Phoenixemployeecompensation

--What is the average salary for each job title, and what is the total number of jobs available for each job title?
SELECT Job_Title,AVG(Regular_Pay) AS AvgSalary,COUNT(Job_Title) AS EmployeeCount
FROM Phoenixemployeecompensation
WHERE Job_Title is not NULL
GROUP BY Job_Title

--What are the top 5 job titles with the highest total salaries, and what is the total number of jobs available for each job title?
SELECT TOP 5 Job_Title,SUM(Regular_Pay) AS TotalSalary,COUNT(Job_Title) JobTitleCount
FROM Phoenixemployeecompensation
GROUP BY Job_Title
ORDER BY TotalSalary DESC

--What is the average salary for each job title in each department, and what is the total number of jobs available in each department?
SELECT Department,Job_Title,AVG(Regular_Pay) AS AvgSalary,COUNT(Job_Title) AS JobCount
FROM Phoenixemployeecompensation
WHERE Department is not NULL
GROUP BY Department,Job_Title
ORDER BY Department,Job_Title

--Return the employees that were hired in 2005. Include their department,job title, and salary
SELECT Names,Department,Job_Title,Hire_Date,Regular_Pay
FROM Phoenixemployeecompensation
WHERE Hire_Date like '2005%'
GROUP BY Names,Department,Job_Title,Hire_Date,Regular_Pay

--What are the top 5 job titles with the highest salaries, and what is the name of the department tyhat offers the highest salary for each job title?
SELECT TOP 5 Department,Job_Title,Regular_Pay
FROM Phoenixemployeecompensation
GROUP BY Department,Job_Title,Regular_Pay
ORDER BY Regular_Pay DESC

