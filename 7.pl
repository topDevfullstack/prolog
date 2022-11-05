clausal_form(PrologRules, Form) :- 'TODO'(PrologRules, Form).

:- begin_tests(clausal_form). 
test(single_head, all(Z = [p(a, b)])) :- clausal_form([p(a, b)], Z). 
test(simple_rule, all(Z = [p(a, b) \/ ~q(a, b)])) :- clausal_form([(p(a, b) :- q(a, b))], Z). 
test(rule_with_multi_body, all(Z = [p(a, b) \/ ~q(a, b) \/ ~r(a, b) \/ ~s(x)])) :- 
     clausal_form([(p(a, b) :- q(a, b), r(a, b), s(x))], Z). 
test(multi_rule, all(Z = [p(a, b) /\ q(x, y) /\ r(1)])) :- 
     clausal_form([p(a, b), q(x, y), r(1)], Z). 
test(complex, all(Z = [Clause1 /\ Clause2 /\ Clause3 /\ Clause4])) :- 
     Rule1 = (p(a, b) :- q(b, c), r(a, b), s(x)), 
     Clause1 = p(a, b) \/ ~q(b, c) \/ ~r(a, b) \/ ~s(x), 
     Rule2 = (m(f(X)) :- n(f(X), Y), X is 2*Y), 
     Clause2 = m(f(X)) \/ ~n(f(X), Y) \/ ~(X is 2*Y), 
     Rule3 = append([], Xs, Xs), 
     Clause3 = append([], Xs, Xs), 
     Rule4 = (append([A|As], Ys, [A|Zs]) :- append(As, Ys, Zs)), 
     Clause4 = append([A|As], Ys, [A|Zs]) \/ ~append(As, Ys, Zs),     
     clausal_form([Rule1, Rule2, Rule3, Rule4], Z). 
:- end_tests(clausal_form).