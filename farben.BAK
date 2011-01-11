% Autor: %AUTHOR%
% Datum: %DATE%

farbe(rot).
farbe(gelb).
farbe(blau).


%einfaerbung1(F1,F2,F3,F4):- farbe(F1),farbe(F2),farbe(F3),farbe(F4),F2\=F3,F1\=F2,F1\=F4,F2\=F4,F3\=F4,nl.
einfaerbung1(F1,F2,F3,F4):- farbe(F1),farbe(F2),F1\=F2,farbe(F4),F1\=F4,F2\=F4,farbe(F3),F2\=F3,F3\=F4,nl.


programm1:- einfaerbung1(F1,F2,F3,F4),write(F1),nl,write(F2),nl,write(F3),nl,write(F4),nl,fail.

einfaerbung2(F1,F2,F3,F4,F5):- farbe(F1),farbe(F2),F1\=F2,farbe(F3),F1\=F3,F2\=F3,farbe(F4),F2\=F4,F4\=F3,farbe(F5),F5\=F3,F1\=F5,F4\=F5,nl.


programm2:- einfaerbung2(F1,F2,F3,F4,F5),write(F1),nl,write(F2),nl,write(F3),nl,write(F4),nl,write(F5),nl,fail.