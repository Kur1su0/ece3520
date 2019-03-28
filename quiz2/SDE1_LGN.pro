% Zice Wei
% ece3520 sde 1.
%%3.1 Length of u.
%% string should be "u ..." otherwise false.
uA(0) --> [].
uA(Count) --> ["u"],uA(PrevCount),{Count is PrevCount+1}.

%% Length of r.
%% string should be "r ..." otherwise false.
rA(0) --> [].
rA(Count) --> ["r"],rA(PrevCount),{Count is PrevCount+1}.


%% Length of d.
%% string should be "d ..." otherwise false.
dA(0) --> [].
dA(Count) --> ["d"],dA(PrevCount),{Count is PrevCount+1}.


%% Length of l.
%% string should be "l ..." otherwise false.
lA(0) --> [].
lA(Count) --> ["l"],lA(PrevCount),{Count is PrevCount+1}.

%% sq/2.
%% check if it is u^j r^k d^m l^n.
sq --> ["u"],u.
u  --> ["u"],u.
u  --> r.

r  --> ["r"],r.
r  --> ["r"],d.

d  --> ["d"],d.
d  --> ["d"],l.

l  --> ["l"],l.
l  --> ["l"],[].



%% sqA/2.
%% check if it is u^n r^n d^n l^n (Real Sqr).
sqA --> uA(L),rA(L),dA(L),lA(L).

%%3.5 rctA/2.
%% check if it is rect.
rctA --> uA(W),rA(H),dA(W),lA(H).

