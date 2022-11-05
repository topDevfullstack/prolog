employees([ employee(tom, 33, cs, 85000.00),
            employee(joan, 23, ece, 110000.00),    
            employee(bill, 29, cs, 69500.00),     
            employee(john, 28, me, 58200.00),     
            employee(sue, 19, cs, 22000.00) ]).

dept_employees(Employees, Dept, DeptEmployees) :- 'TODO'(Employees, Dept, DeptEmployees).

test(dept_employees_cs, all(Zs = [[ employee(tom, 33, cs, 85000.00),       
                                    employee(bill, 29, cs, 69500.00),       
                                    employee(sue, 19, cs, 22000.00) ]])) :- employees(E),    
                                                                            dept_employees(E, cs, Zs).

test(dept_employees_ece, all(Zs = [[ employee(joan, 23, ece, 110000.00) ]])) :- employees(E),     
                                                                                dept_employees(E, ece, Zs).

test(dept_employees_ce, all(Zs = [[]])) :- employees(E),     
                                           dept_employees(E, ce, Zs). 
                                        :- end_tests(dept_employees).
