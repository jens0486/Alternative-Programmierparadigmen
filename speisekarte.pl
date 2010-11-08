% Autor: %AUTHOR%
% Datum: %DATE%

vs(zwiebelsuppe).
vs(wuerzfleisch).
vs(avokado_mit_garnelen).
vs(soljanka).

hs(rinderbraten).
hs(seelachfilet).
hs(haenchenbrustfilet).
hs(kohlroulade).
hs(spaghetti).

ns(mango).
ns(obstsalat).
ns(erdbeerquark).
ns(choco-mousse).
ns(tomatensalat).
ns(gurksalat).

ausgabe1(X,Y):- write('Vorspeise: '),write(X),tab(1),write('Hauptspeise: '),write(Y).
ausgabe2(X,Y):- write('Hauptspeise: '),write(X),tab(1),write('Nachspeise: '),write(Y).

%Vorspeise und Hauptspeise oder umgekehrt
menue(X,Y):- vs(X),hs(Y), ausgabe1(X,Y).
menue(X,Y):- vs(Y),hs(X), ausgabe1(Y,X).

%Hauptspeise und Nachspeise oder umgekehrt
menue(X,Y):- hs(X),ns(Y), ausgabe2(X,Y).
menue(X,Y):- hs(Y),ns(X), ausgabe2(Y,X).

einheitspreis(X,Y):- menue(X,Y).

