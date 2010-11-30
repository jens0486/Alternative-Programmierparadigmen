% Autor: %AUTHOR%
% Datum: %DATE%

:- use_module(library(pce)).

t1 :-  new(D,dialog('Demo Window')),send(D,open).
t2 :-  new(D,dialog('Demo Window')),send(D,append,button(hallo)),send(D,open).