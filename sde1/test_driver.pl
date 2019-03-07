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

test(all_shifts) :-
    all_shifts([1,2,3,4],What,4,5).

test(grect) :-
    grect(1,2,What1),
	nl,writeq(What1),
	writeq(What1).

:- end_tests(which_shape).
:- run_tests.

