% Autor: %AUTHOR%
% Datum: %DATE%

farbe(rot).
farbe(gelb).
farbe(blau).

einfaerbung(F1,F2,F3,F4):- farbe(F1),farbe(F2),farbe(F3),farbe(F4),F1\=F3,F1\=F2,F1\=F4,F2\=F4,nl.


