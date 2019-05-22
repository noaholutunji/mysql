SELECT company.company_code, 
       company.founder, 
       COUNT(DISTINCT lead_manager.lead_manager_code), 
       COUNT(DISTINCT senior_manager.senior_manager_code),
       COUNT(DISTINCT manager.manager_code), 
       COUNT(DISTINCT employee.employee_code)
FROM Company, Lead_Manager, Senior_Manager, Manager, Employee 
WHERE company.company_code = lead_manager.company_code AND 
       lead_manager.lead_manager_code = senior_manager.lead_manager_code AND
      senior_manager.senior_manager_code = manager.senior_manager_code AND
      manager.manager_code = employee.manager_code
GROUP BY company.company_code, company.founder ORDER BY company.company_code;
