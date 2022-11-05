count_non_pairs(List, NNonPairs):- 'TODO'(List, NNonPairs).

:- begin_tests(count_non_pairs). 
test(empty, nondet) :- count_non_pairs([], 1). 
test(unary_list, nondet) :- count_non_pairs([1], 2). 
test(simple_list, nondet) :- count_non_pairs([1, 2, [], a, []], 6). 
test(nested_list, nondet) :- count_non_pairs([[1, 2, 3], [[a], b, []]], 10). 
test(nested_list_fail, fail) :- count_non_pairs([[1, 2, 3], [[a], b]], 10). 
test(complex, nondet) :- count_non_pairs([[1, f([a, b, c]), h(1)], [[a], b]], 9). 
test(complex_fail, fail) :- count_non_pairs([[1, f([a, b, c]), h(1)], [[a], b]], 8). 
:- end_tests(count_non_pairs).