
trans1 -->first,rest.

trans2 --> first,[middle],rest.

intexpr(E) --> term(T),restint(T,E).

strongop1 --> [times].

strongop2(Times) -->[times].

sent2v(N,M) --> np2v(N,M),mp2v3(N,M).
