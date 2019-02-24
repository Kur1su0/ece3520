:-begin_tests(which_shape).
:- use_module(library(lists)).
:-consult('which_shape.pro').


test(uA) :-
	uA(Lu1,["u","u","u"],[]),
	uA(Lu2,["u","u"],[]),
    uA(3,Whatu,[]),
	nl,writeq(Lu1),nl.
	
test(all_cases) :-
    all_cases(["u","r","d","l"],What1),
	all_cases([1,2,3,4],What2).


:- end_tests(which_shape).
:- run_tests.