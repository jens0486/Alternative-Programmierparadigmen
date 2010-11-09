% -------------------------------------------------------
% 
% Stammbaum
% 
% -------------------------------------------------------
 
maennlich(robert).
maennlich(stephen).
maennlich(henry).
maennlich(peter).
maennlich(john).
maennlich(george).
maennlich(richard).
maennlich(james).

weiblich(mary).
weiblich(donna).
weiblich(pamela).
weiblich(julia).
weiblich(elizabeth).
weiblich(roberta).
weiblich(susan).
weiblich(harriet).
weiblich(catherine).
weiblich(melissa).

elternteil(john,donna).
elternteil(john,mary).
elternteil(john,george).
elternteil(catherine, donna).
elternteil(catherine,mary).
elternteil(catherine,george).
elternteil(pamela,james).
elternteil(george,james).

elternteil(mary,julia).
elternteil(mary,peter).
elternteil(richard,julia).
elternteil(richard,peter).

elternteil(robert,stephen).
elternteil(robert,henry).
elternteil(elizabeth,stephen).
elternteil(elizabeth,henry).

elternteil(henry,harriet).
elternteil(henry,susan).
elternteil(roberta,harriet).
elternteil(roberta,susan).

elternteil(peter,melissa).
elternteil(harriet,melissa).

vater(X,Y):-elternteil(X,Y),maennlich(X).
kind(X,Y):-elternteil(Y,X).
sohn(X,Y):-elternteil(Y,X),maennlich(X).
sohn(X,Y):-elternteil(Y,X),weiblich(X).
verheiratet(X,Y):-elternteil(X,Z),elternteil(Y,Z).
schwiegermutter(X,Y):-verheiratet(Y,Z),elternteil(X,Z),weiblich(X).
schwiegermutter(X,Y):-verheiratet(Y,Z),elternteil(X,Z),maennlich(X).
großmutter(X,Y):-elternteil(Z,Y),elternteil(X,Z),weiblich(X).
großvater(X,Y):-elternteil(Z,Y),elternteil(X,Z),maennlich(X).

vorfahr(X,Y):-elternteil(X,Y).
vorfahr(X,Y):-elternteil(X,Z),vorfahr(Z,Y).

geschwister(X,Y):-elternteil(Z,X),elternteil(Z,Y),X\=Y.

hat_cousine(X,Y):-elternteil(W,X),geschwister(W,Z),elternteil(Z,Y).
hat_cousinen(X,Y):-elternteil(W,X),elternteil(Z,Y),geschwister(W,Z).


bruder(X,Y):-maennlich(X),elternteil(Z,X),elternteil(Z,Y),X\=Y.

nichte(N, OnkelTante):- weiblich(N),
                        elternteil(VaterMutter, N),
                        geschwister(VaterMutter, OnkelTante),
                        write(N),tab(1),write('ist Nichte von'),tab(1),write(OnkelTante),tab(1),write(', weil'), tab(1),write(VaterMutter),
                        tab(1),write('ein Elternteil von'),tab(1),write(N),tab(1),write('ist und'),tab(1),write(VaterMutter),tab(1),write('und'),
                        tab(1),write(OnkelTante),tab(1),write('Geschwister sind.').
                        
programm:- write('Geben sie die Nichte ein: '),
           read(X),
           write('Geben sie Onkel/Tante ein '),
           read(Y),
           nichte(X,Y).
