employees_salary_sum(Employees, Sum) :- 'TODO'(Employees, Sum).
                                     :-begin_tests(employees_salary_sum). 
test(empty) :- employees_salary_sum([], 0).

test(seq_salaries) :- Employees = [ employee(_, _, _, 1), employee(_, _, _, 2), 
                                    employee(_, _, _, 3), employee(_, _, _, 4), 
                                    employee(_, _, _, 5) ],     
                                    employees_salary_sum(Employees, 15). 
test(all) :- employees(Employees),    
             employees_salary_sum(Employees, 344700.00). :-end_tests(employees_salary_sum).