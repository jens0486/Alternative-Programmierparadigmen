% Autor:
% Datum: 25.10.2010

kante(n1,n2).
kante(n2,n5).
kante(n2,n3).
kante(n2,n6).
kante(n3,n4).
kante(n6,n7).
kante(n6,n8).

pfad(X,Y):-kante(X,Y).
pfad(X,Y):-kante(X,Z),pfad(Z,Y).


