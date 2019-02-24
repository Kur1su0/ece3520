consult('which_shape').  
%uA
	uA(L,["u","u","u"],[]).
	uA(L,["d","u"],[]).
    uA(3,Whatu,[]).
%rA  
    rA(L,["r","r","r"],[]).
	rA(L,["r","r"],[]).
    rA(3,Whatu,[]).
%dA
    dA(L,["r","r","r"],[]).
	dA(L,["r"],[]).
    dA(3,Whatu,[]).
%lA	
    lA(L,["l","l","l"],[]).
	lA(L,["u"],[]).
    lA(3,Whatu,[]).
%sq
    sq(["r"]).
	
    all_cases(["u","r","d","l"],What1).
	all_cases([1,2,3,4],What2).
	all_cases(["m30","p240","u"],What2).
	
	
	