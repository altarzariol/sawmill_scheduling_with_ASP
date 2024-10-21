{ processed_lin(M, T, 1..A) : raw_availability(M,T,A)} C :- capacity(T,C).
processed_lin(M, T, N-1) :- processed_lin(M, T, N), N>1.

result(P, 0, I) :- inventory(P,0,I), I>=0.
result(P, 0, -I) :- backlog(P,0,I), I>0.
result(P, T, PP) :- demand(P,T,D),  result(P,T-1,B1), T>0, S=#sum{Y,M,X : processed_lin(M,T,X), yield_table(M,P,Y)}, PP=S+B1-D.

inventory_lin(P,T,1..I) :- result(P,T,I), I>0.
backlog_lin(P,T,B..-1) :- result(P,T,B), B<0.

:~ backlog_lin(P,T,B). [1@3,P,T,B]
:~ inventory_lin(P,T,I). [1@2,P,T,I]
:~ processed_lin(M,T,PP). [1@1,M,T,PP]

%:- backlog_lin(P,T,X), upperbound(X). 
%upperbound(-X) :- X=#max{D:demand(P,T,D)}.