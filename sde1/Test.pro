/*prolog.pro*/

what([],[],Arg3) :- Arg3 is 0.0,!.
what([H1|T1],[H2|T2],Arg3) :-
    what(T1,T2,DT),
    Arg3 is ((H1+H2)*(H1+H2)+DT).

uDC(0,[CH|CT],[UH,CT]) :- UH is (CH+1),!.
uDC(P,[CH|CT],[CH,UT]) :- PM1 is (P-1), uDC(PM1,CT,UT).

