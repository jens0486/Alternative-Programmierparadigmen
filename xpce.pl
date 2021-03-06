% Autor: %AUTHOR%
% Datum: %DATE%

:- use_module(library(pce)).

wenn_gedrueckt(D):-send(D,destroy).
lies_aus(D,T):-  new(W,dialog('Ausgabe Fenster')),
                 get(T,value,Text),
                 send(W,append,text_item(ausgabe,Text)),
                 send(W,append,button(schliessen,message(@prolog, wenn_gedrueckt,W))),
                 writeln(Text),
                 send(W,open),
                 send(D,destroy).

suche(Element, [Element|_],1).
suche(Element, [_|Rest],Index):- suche(Element,Rest,Index2), Index is Index2+1.

suche_starten(L,E,I):-  writeln('Beginnen:'),get(L,value,Liste),get(E,value,Element),suche(Element,Liste,X),
                        writeln(Liste),
                        send(I,value,Liste).



t1 :-  new(D,dialog('Demo Window')),
       send(D,open).

t2 :-  new(D,dialog('Demo Window')),
       send(D,append,button(hallo)),
       send(D,open).
       
t3 :-  new(D,dialog('Demo Window')),
       send(D,append,button(schliessen,message(@prolog, wenn_gedrueckt,D))),
       send(D,open).
       
t4 :-  new(D,dialog('Demo Window')),
       send(D,append,text_item(hallo,'Mein erster Text!')),
       send(D,open).
       
t5 :-  new(D,dialog('Demo Window')),
       new(T,text_item(hallo)),
       send(D,append,T),
       send(T,value,'der naechste text!'),
       send(D,open).
       
t99 :- new(D,dialog('Demo Window')),
       new(T,text_item(hallo)),
       send(D,append,T),
       send(T,value,'der naechste text!'),
       send(D,append,button(auslesen,message(@prolog, lies_aus,D,T))),
       send(D,open).

t98 :- new(D,dialog('Indexsuche')),
       new(L,text_item(liste)),
       new(E,text_item(element)),
       new(I,text_item(index)),
       send(D,append,L),
       send(D,append,E),
       send(D,append,I),
       send(L,value,'[a,b,c]'),
       send(E,value,'b'),
       send(I,value,''),
       send(D,append,button(auslesen,message(@prolog, suche_starten,L,E,I))),
       send(D,open).

