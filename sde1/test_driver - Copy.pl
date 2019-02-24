:- begin_tests(which_shape).
%:- use_module(library(lists)).
:- consult('which_shape.pro').


test(all_case) :-
    all_case(["u","r","d","l"],W).

:- end_tests(cmeans).
:- run_tests.