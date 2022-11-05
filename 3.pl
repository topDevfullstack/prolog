list_access(Indexes, List, Z) :- 'TODO'(Indexes, List, Z).

:- begin_tests(list_access). 
test(index_1, all(Z = [b])) :- list_access([1], [a, b, c], Z). 
test(index_2, all(Z = [[c]])) :- list_access([2], [a, b, [c]], Z). 
test(index_2_0, all(Z = [c])) :- list_access([2, 0], [a, b, [c]], Z). 
test(index_2_1, all(Z = [nil])) :- list_access([2, 1], [a, b, [c]], Z). 
test(index_3, all(Z = [nil])) :- list_access([3], [a, b, [c]], Z). 
test(index_2_1, all(Z = [nil])) :- list_access([3], [a, b, [c]], Z). 
test(index_empty, all(Z = [X])) :- X = [[1, 2, 3], [4, [5, 6, [8]]]], list_access([], X, Z). 
test(index_and_list_empty, all(Z = [[]])) :- list_access([], [], Z). 
test(list_empty, all(Z = [nil])) :- list_access([1], [], Z). 
test(index_1_1_2, all(Z = [[8]])) :- X = [[1, 2, 3], [4, [5, 6, [8]]]], list_access([1, 1, 2], X, Z). 
test(index_1_1_2_0, all(Z = [8])) :- X = [[1, 2, 3], [4, [5, 6, [8]]]], list_access([1, 1, 2, 0], X, Z). 
test(index_0_1, all(Z = [nil])) :- list_access([0, 1], [[1]], Z). 
:- end_tests(list_access).