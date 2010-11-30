% Autor: %AUTHOR%
% Datum: %DATE%

 fuege_hinzu(X,Liste,[X|Liste]).
 

 element(E,[E|_]).
 element(E,[_|M]):-element(E,M).
 
 kein_element(X,Liste):-not(element(X,Liste)).
 
 verkettete_liste([],Liste2,Liste2).
 verkettete_liste([H|R1],Liste2,[H|R2]):-verkettete_liste(R1,Liste2,R2).
 
 loesche(_, [], []).
 loesche(X,[X|R1],R2):-!,loesche(X,R1,R2).
 loesche(X,[Y|R1],[Y|R2]):- loesche(X,R1,R2).


 letztes(X,[X|[]]).
 letztes(X,[_|R]):-letztes(X,R).


 vorletztes(X,[X,_]).
 vorletztes(X,[_|R]):-vorletztes(X,R).


 erstes(X,[X|_]).
 
 laenge([],0).
 laenge([_|R],Y):-laenge(R,Z),Y is Z+1.
 
 haenge_an(X,[],[X]).
 haenge_an(X,[Y|R1],[Y|R2]):- haenge_an(X,R1,R2).
 



 
 
 
 
 
 
 
 
 
 