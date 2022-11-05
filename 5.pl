divisible_by(Ints, N, Int) :- 'TODO'(Ints, N, Int).

:- begin_tests(divisible_by). 
test(empty, fail) :- divisible_by([], 2, _). 
test(divisible_by_2, all(Int=[4, -8])) :- divisible_by([4, 7, -9, -8], 2, Int). 
test(divisible_by_5, all(Int=[15, -25, 5])) :- divisible_by([4, 15, -25, -22, 5], 5, Int). 
test(none_divisible_by_3, fail) :- divisible_by([4, 16, -25, -22, 5], 3, _Int). 
:- end_tests(divisible_by).