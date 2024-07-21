male(tom).
male(bob).
male(jim).
female(ann).
female(pat).
female(pam).
female(liz).
parent(tom, bob).
parent(tom, liz).
parent(bob, ann).
parent(bob, pat).
parent(pat, jim).
parent(pam,bob).

equal(X,Y):-X=Y,write('Ann and pat have same parent'),nl,fail.
equal(X,Y):-X\=Y,write('Ann and pat have no same parent'),nl,fail.

% who are the parent of bob
bob_parnt:- write('parent of bob:   '),nl,parent(PARENT_OF_BOB,bob),write(PARENT_OF_BOB),nl,fail.
% find our who is the parent of whom?
parent_of_whom:- parent(PARENT,CHILD),write(PARENT),write(' is the parent of '),write(CHILD),nl,fail.
% Who is the parent of jim?
jim_parnt:- write('parent of jim:   '),nl,parent(PARENT_OF_BOB,jim),write(PARENT_OF_BOB),nl,fail.
% Who is the grand parent of jim?
grndparnt_Of_jim:-write('Grand parent of jim:   '),nl,parent(PARENT_OF_JIM,jim),parent(GRANDFATHER_OF_JIM,PARENT_OF_JIM),write(GRANDFATHER_OF_JIM),nl,fail.
% Who are tom's grandchildren?
tom_grandchildren:-write('Tom\'s grandchildren:   '),nl,parent(tom,CHILD),parent(CHILD,GRANDCHILD),write(GRANDCHILD),nl,fail.
% Do ann adn pat have the same parent?
same_parent:-parent(PARENT_Ann,ann),parent(PARENT_Pat,pat),equal(PARENT_Ann,PARENT_Pat),nl,fail.
% who is the sister of pat?
sister_of_pat:-write('Sister of pat:   '),nl,parent(PARENT_OF_PAT,pat),parent(PARENT_OF_PAT,CHILD),CHILD\=pat,write(CHILD),nl,fail.
% who is the mother of bob?
mother_of_bob:-write('Mother of bob:   '),nl,parent(Parent,bob),female(Parent),write(Parent),nl,fail.
% who is the father of whom?
father_of_whom:-parent(Parent,CHILD),male(Parent),write(Parent),write(' is the father of '),write(CHILD),nl,fail.
% who is the grand father of whom?
grandfather_of_whom:-parent(Parent,CHILD),parent(GRANDPARENT,Parent),male(GRANDPARENT),write(GRANDPARENT),write(' is the grandfather of '),write(CHILD),nl,fail.
% who is mother of whom?
mother_of_whom:-parent(Parent,CHILD),female(Parent),write(Parent),write(' is the mother of '),write(CHILD),nl,fail.
% Who is the wife of tom?
wife_of_tom:-write('Wife of tom:   '),nl,parent(tom,CHILD),parent(Parent,CHILD),female(Parent),write(Parent),nl,fail.
% Who is the wife of whom?
wife_of_whom:-male(Male),parent(Male,Child),parent(Parent,Child),female(Parent),write(Parent),write(' is wife of '),write(Male),nl,fail.
% Who is the uncle of whom?
uncle_of_whom:-parent(Parent,Child),parent(GrandParent,Parent),parent(GrandParent,GPChild),GPChild\=Parent,male(GPChild),write(GPChild),write(' is the uncle of '),write(Child),nl,fail.
% Who is the brother of whom?
brother_of_whom:-parent(Parent,Child),parent(Parent,Childs),male(Childs),Childs\=Child,write(Childs),write(' is the brother of '),write(Child),nl,fail.

