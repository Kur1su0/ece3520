
%% Length of u. 
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

%%3.6 grect/3
%% generate a rectangle.
grect(HEIGHT,WIDTH,What) :- 
	uA(HEIGHT,U,[]),
	rA(WIDTH,R,[]),
	lA(WIDTH,L,[]),
	dA(HEIGHT,D,[]),
			 
    append([U,R,D,L],What).
						 
                        

%% Length of m30A. 
%% string should be "m30 ..." otherwise false.
m30A(0) --> [].
m30A(Count) --> ["m30"],m30A(PrevCount),{Count is PrevCount+1}.

%% Length of p240A. 
%% string should be "p240A ..." otherwise false.
p240A(0) --> [].
p240A(Count) --> ["p240"],p240A(PrevCount),{Count is PrevCount+1}.

%%3.8 eqtriA/2
%% check if it is a triangle. u -> m30 -> p240.
eqtriA --> uA(L),m30A(L),p240A(L).

%%4.1 one_shift/2
%%left shift 1 digit.
one_shift([Ori_H | Ori_T],New_list) :- append(Ori_T,[Ori_H],New_list).
                                   


								   
								   
%%4.2 all_shifts/4
%% shift all case for length-1. (length-1>0)
%%located_list([H|T],Start_pos,Opt_pos) :- H is Start_pos,!.
%%located_list([_|T],Start_pos,Opt_pos) :-
%%    New_Opt_pos is Opt_pos + 1,
%%	located_list(T,Start_pos,New_Opt_pos).
   
                            
                             

all_shifts([H|T],All_case,Lens,Start_pos) :- 
	H =:= Start_pos, 
	writeq([H|T]),
	!.
all_shifts([H|T],All_case,Lens,Start_pos) :-    
	
    one_shift([H|T],New_list),
	all_shifts(New_list,All_case,Lens,Start_pos).

                                  
