# Salaries of Phoenix Employees

![image](https://github.com/mmattos2000/Salaries-of-Phoenix-Employees/assets/99051624/c6d26ff6-dc94-41ba-ae74-1273fdd0dcdf)

**Dataset Source**: [City of Phoenix Open Data - Employee Compensation](https://www.phoenixopendata.com/dataset/employee-compensation/resource/45ba7217-c1cf-4859-a40f-2c7f3220f5ba)


This project analyzes employee compensation data from the city of Phoenix. The provided SQL code performs various queries and analyses to gain insights into employee salaries, job titles, departments, and other related information.

## Dataset

The dataset used for this analysis contains information about employee compensation in the city of Phoenix, including job titles, regular pay, overtime pay, hire dates, termination dates, departments, and more.

### Description of SQL Queries:

1. **Retrieve All Data from Phoenix Employee Compensation Table:**
   - Fetches all columns from the Phoenix Employee Compensation table.

2. **Data Cleaning:**
   - Removes a specific column ('column12') from the table.

3. **Data Quality Check:**
   - Checks for null or zero values for salary (Regular Pay) in the Phoenix Employee Compensation table.

4. **Statistical Analysis:**
   - Calculates the average salary for all jobs in the dataset, considering all records.
   - Calculates the average salary for all jobs, excluding null and zero values for regular pay.

5. **Salary Analysis:**
   - Identifies the highest salary in the dataset and its corresponding job role.
   - Calculates the average salary for a police officer, both including and excluding null and zero values for regular pay.
   - Finds the top 5 highest paying job titles and their corresponding average salaries.

6. **Department and Job Title Analysis:**
   - Counts the number of jobs available for each job title.
   - Finds the job title with the most employees.
   - Calculates the total salary paid for all jobs in the Police Department.
   - Determines the department with the most jobs available.
   - Identifies the job title with the most employees from the Police Department.

7. **Employee Status Analysis:**
   - Counts the number of terminated employees and retrieves their names.

8. **Top Performers Analysis:**
   - Finds the top 5 employees with the highest salaries and the most overtime pay.

9. **Data Exploration:**
   - Counts the number of unique job titles.
   - Calculates the average salary for each job title and the total number of jobs available for each job title.
   - Finds the top 5 job titles with the highest total salaries and the total number of jobs available for each job title.
   - Calculates the average salary for each job title in each department and the total number of jobs available in each department.
   - Returns employees hired in 2005, including their department, job title, and salary.
   - Finds the top 5 job titles with the highest salaries and the name of the department that offers the highest salary for each job title.

## Usage

1. Ensure you have access to a database containing the Phoenix employee compensation data.
2. Execute the SQL queries in your database environment.
3. Analyze the results to gain insights into employee salaries, job titles, departments, and related information.

Feel free to modify the queries or adapt them to suit your specific analysis needs.

## Contributing

Contributions to enhance the analysis or add new insights are welcome! Fork this repository, make your changes, and submit a pull request.

If you encounter any issues or have suggestions for improvements, please open an issue.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
