:- set_prolog_flag(verbose, silent).
:- initialization(main).

main :-
    format('Example script~n').
    ?- ['prob_2.pro'].
    ?- first(X).
    halt.
main :-
    halt(1).
