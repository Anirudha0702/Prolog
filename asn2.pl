% 2. Check First two elements are same or not

chk_frst_two_sm([]):-write('Expect atleast two element'),fail.
chk_frst_two_sm([Elm1,Elm1|_]):-write('First two elements are same'),fail.
chk_frst_two_sm([Elm1,Elm2|_]):-Elm1\=Elm2,write('First two elements are not  same'),fail.


%  3. Check the given list contains exactly two elements


chkLen(Lnth):-Lnth=:=2,write('Length is exactly 2').
chkLen(Lnth):-Lnth\=2,write('Length is not 2').
is_len_two(List):-length(List,Len),chkLen(Len),fail.


% 4. Check two lists are of same length

isEqual(L1,L2):-L1=:=L2,write('two lists are of same length').
isEqual(L1,L2):-L1\=L2,write('two lists are not of same length').
same_length(List1,List2):-length(List1,Len1),length(List2,Len2),isEqual(Len1,Len2),fail.

% 5. Get length of a list

getLength(List):-length(List,Lnth),write('length of list is '),write(Lnth),fail.


% 6. Get last element of a list

get_last_element(List):-length(List,Lnth),Idx is Lnth - 1,nth0(Idx,List,Value),write('Last element of List is '),write(Value),fail.


% 7. Check two elements are consicutive in a list

consicutive(X,Y,[X,Y|_]):-write(X),write(Y),write('   is consicutive'),!.
consicutive(X,Y,[Y,X|_]):-write(X),write(Y),write('   is consicutive'),!.
consicutive(X, Y, [_|T]):-consicutive(X,Y,T).
consecutive_in_list(X, Y, List) :-consicutive(X,Y,List).

% 8. Check given element is member of agiven list

is_member(X,List):-member(X,List),write(X),write(' is a member of '),write(List),!.
is_member(X,List):-write(X),write(' is a not member of '),write(List),!.


% 9. Append two lists to create a third list

list_concat([],L,L).
list_concat([X1|L1],L2,[X1|L3]) :- list_concat(L1,L2,L3).

% 10. Reverse a List
%reverse(0,List):-write("Reverse is "),write(List),nl.
% reverse(index,[H|T]):-

% 12. Calculate sum substraction multiplication division square root using function
sum(A,B,Total):- Total is A+B.
substraction(A,B,Difference):- Difference is A-B.
multiplication(A,B,Result):- Result is A*B.
division(A,B,Result):-B\=0,Result is A/B.
division(A,B,Result):-format('Division by ~w is not permitted',[B]).
squareRoot(A,Result):-Result is sqrt(A).


% 13. GCD of 2 numbers.

gcd_of(X,0,X):-X>0.

gcd_of(X,Y,Result):-
    Y>0,
    X>0,
    R is X mod Y,
    gcd_of(Y,R,Result).


% 14. max of 2 numbers
max_of(A,B,Result):-
    Result is max(A,B).

%max_in([H|T],Result):-

% 19. square root of anumber 
squareRoot(A,Result):-Result is sqrt(A).
% 20. modulus of two numbers
mod(X,Y,Result):-Result is X mod Y.
% 21. cube of a number

cube_of(A,Result):-Result is A^3.

% 22. find given number is +ve/-ve/0
sign_of(A):- 
    A>0,format('~w is positive',[A]).
sign_of(A):- 
    A<0,format('~w is negative',[A]).
sign_of(A):- 
    A=:=0,format('Given number is Zero',[]).



% 23. even or Odd
even_or_odd(Num):-R is Num mod 2,R>0,format('~w is odd',[Num]).
even_or_odd(Num):- R is Num mod 2,R=:=0,format('~w is even',[Num]).

% 24. print n-m using loop

print_series(Start,End):-
    Start=<End,
    write(Start),write(','),
    NextStart is Start+1,
    write(NextStart),write('next start'),nl,
    print_series(NextStart,End).
print_series(Start,End):-Start > End,write('End of List'),nl.