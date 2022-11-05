re_match(Re, List) :- 'TODO'(Re, List).

:- begin_tests(re_match). 
test(single) :- re_match(a, [a]). 
test(single_fail, fail) :- re_match(a, [b]). 
test(conc) :- re_match(conc(a, b), [a, b]). 
test(conc_fail, fail) :- re_match(conc(a, b), [a, c]). 
test(alt1, nondet) :- re_match(alt(a, b), [a]). 
test(alt2, nondet) :- re_match(alt(a, b), [b]). 
test(alt_fail, fail) :- re_match(alt(a, b), [c]). 
test(kleene_empty, nondet) :- re_match(kleene(a), []). 
test(kleene_single, nondet) :- re_match(kleene(a), [a]). 
test(kleene_multiple, nondet) :- re_match(kleene(a), [a, a, a, a]). 
test(conc_kleene_sym, nondet) :- re_match(conc(kleene(a), b), [a, a, a, a, b]). 
test(kleene_kleene0, nondet) :- re_match(conc(kleene(a), kleene(b)), [a, a, a, a]). 
test(kleene_kleene, nondet) :- re_match(conc(kleene(a), kleene(b)), [a, a, a, a, b, b, b]). 
test(kleene_kleene_fail, fail) :- re_match(conc(kleene(a), kleene(b)), [a, a, a, a, b, b, b, a]). 
test(kleene_conc, nondet) :- re_match(kleene(conc(a, b)), [a, b, a, b, a, b]). 
test(kleene_conc_fail, fail) :- re_match(kleene(conc(a, b)), [a, b, a, b, a, b, a]). 
test(kleene_alt, nondet) :- re_match(kleene(alt(a, b)), [a, a, b, a, b, a, b, b]). 
test(conc_kleene_conc, nondet) :- re_match(conc(a, conc(kleene(b), a)), [a, b, b, b, a]). 
test(conc_kleene0_conc, nondet) :- re_match(conc(a, conc(kleene(b), a)), [a, a]).
test(conc_kleene_conc_fail, fail) :- re_match(conc(a, conc(kleene(b), a)), [a, b, b, b]). 
test(complex1, nondet) :- re_match(conc(kleene(alt(a, b)), kleene(alt(0, 1))), [a,b,b,a,0,0,1,1]). 
test(complex2, nondet) :- re_match(conc(kleene(alt(a, b)), kleene(alt(0, 1))), [0,0,1,1]). 
test(complex_empty, nondet) :- re_match(conc(kleene(alt(a, b)), kleene(alt(0, 1))), []). 
:- end_tests(re_match).