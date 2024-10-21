material(M) :- raw_availability(M,_,_).
period(T) :- raw_availability(_,T,_).
1 { processed(M, T, 0..A) : raw_availability(M,T,A)} 1 :- material(M), period(T).

:- period(T), capacity(T,C),  #sum {X,M: processed(M,T,X) }> C.   

result(P, 0, I) :- inventory(P,0,I), I>=0.
result(P, 0, -I) :- backlog(P,0,I), I>0.
result(P, T, PP) :- demand(P,T,D),  result(P,T-1,B1), T>0, S=#sum{Z,M : processed(M,T,X), yield_table(M,P,Y), Z=X*Y}, PP=S+B1-D.


:~ result(P,T,B), B<0. [-B@3,P,T]
:~ result(P,T,I), I>0. [I@2,P,T]
:~ processed(M,T,PP). [PP@1,M,T]


%:- result(P,T,Y), upperbound(X), Y<X. 
%upperbound(-X) :- X=#max{D:demand(P,T,D)}.