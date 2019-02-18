what([],[],Argv3) :- Argv3 is 0.0,!.
what([H1|T1],[H2|T2],Argv3) :-
          what(T1,T2,DT),
          Argv3 is ((H1+H2) * (H1+H2) + DT).
uDC(0,[CH|CT],[UH|CT]) :- UH is (CH+1),!.
uDC(P,[CH|CT],[CH|UT]) :- PM1 is (P-1), uDC(PM1,CT,UT).


goal1(X,Y) :- first(X),second(Y),fail.
goal2(X,Y) :- first(X),!,second(Y).
goal3(X,Y) :- first(X),second(Y),!.
goal4(X)   :- first(X),second(X).
goal5(X)   :- first(X),not(second(X)).

goal11(X) :- first(X),second(X),fail.

first(2).
first(3).
first(4).
first(5).

second(4).
second(6).
second(8).
second(10).

third(3).
third(4).
third(5).
third(6).
