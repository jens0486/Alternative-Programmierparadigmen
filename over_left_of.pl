% Autor:
% Datum: 01.11.2010

on(a,b).
on(b,c).
on(d,e).
on(f,g).
on(c,table).
on(e,table).
on(g,table).
on(h,table).
left(c,e).
left(e,g).
left(g,h).

over(X,Y) :- on(X,Y).
over(X,Y) :- on(X,Z),over(Z,Y).

left_of(X,Y) :- left(X,Y).
left_of(X,Y) :- left(X,Z),left_of(Z,Y).

%left_of(X,Y) :- over(X,Z),over(Y,W),left_of(Z,W).

%left_of(X,Y) :- on(X,table),over(Y,W),left_of(X,W).
%left_of(X,Y) :- on(Y,table),over(X,Z),left_of(Z,Y).

left_of(X,Y) :- over(X,Z),left_of(Z,Y).
left_of(X,Y) :- over(Y,Z),left_of(X,Z).





