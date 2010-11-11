% Autor: %AUTHOR%
% Datum: %DATE%

:-dynamic(fib_rec2/2).

fib_rec1(0,1).
fib_rec1(1,1).
fib_rec1(X,F):- X > 1,
                X1 is X-1,
                X2 is X-2,
                fib_rec1(X1,F1),
                fib_rec1(X2,F2),
                F is F1 + F2.


fib_rec2(0,1).
fib_rec2(1,1).
fib_rec2(X,F):- X>1,
                X1 is X-1,
                X2 is X-2,
                fib_rec2(X1,F1),
                fib_rec2(X2,F2),
                F is F1 + F2 ,
                asserta(fib_rec2(X,F)).
                
fib_rec2test(X,F):- fib_rec2(X,F),!.
