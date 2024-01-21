/*
write a query to print the company_code, founder name, total number of lead managers,
total number of senior managers, total number of managers, and total number 
of employees. Order your output by ascending company_code.
*/

SELECT 
    EMPLOYEE.company_code,
    Company.founder, 
    COUNT(DISTINCT lead_manager_code),
    COUNT(DISTINCT senior_manager_code),
    COUNT(DISTINCT manager_code),
    COUNT(DISTINCT employee_code) 
FROM EMPLOYEE JOIN COMPANY ON EMPLOYEE.COMPANY_CODE = COMPANY.COMPANY_CODE
GROUP BY EMPLOYEE.company_code, Company.founder
ORDER BY COMPANY_CODE