:- set_pro_log_flag(verbose,silent).
:- initialization main.

main :-
     ['which_shape.pro'].
     sqA(["u","u"."r","r","d","d","l","l"]).
     halt.
main :-
    halt(1).
