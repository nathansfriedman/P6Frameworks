isError(S,N):- tell(user_error),write(S),writeln(N),told.
:-op(200,fy,@).

allClassNamesUnique :- forall(classPair(N,N,I), reportDupClassError(I)).
reportDupClassError(I) :- isError('class that duplicates a name has identifier ', I).

	%All names among classes and interfaces must be unique.

classPair(A,B,I) :- class(I,A), class(J,B), I\=J.

allAttrNamesUnique :- forall(attrPair(N,N,I), reportDupAttrError(I)).
reportDupAttrError(I) :- isError('attribute that duplicates a name within a class has identifier ',I).

	%All names among attributes in the same class must be unique.

attrPair(A,B,I) :- attribute(I,A,_,_,_,X), attribute(J,B,_,_,_,X), I\=J.

%allMethNamesUnique :- forall(methPair(N,N,I)), reportDupMethError(I).
%reportDupMethError(I) :- isError('method that duplicates a name within a class has identifier ',I).

	%All names among methods in the same class must be unique.

%methPair(A,B,I) :- method(I,A,_,_,_,X), method(J,B,_,_,_,X), I\=J.

allPublicOrPrivate :- forall(elemNotPublicOrPrivate(I), reportNotPublicOrPrivateError(I)).
reportNotPublicOrPrivateError(I) :- isError('attribute or method that is not PUBLIC or PRIVATE has identifier ',I).

	%All attributes and methods must be either PUBLIC or PRIVATE
	
elemNotPublicOrPrivate(I) :- attribute(I,_,_,A,_,_), A\='PUBLIC', A\='PRIVATE'.
elemNotPublicOrPrivate(I) :- method(I,_,_,A,_,_), A\='PUBLIC', A\='PRIVATE'.

allStaticOrNull:- forall(elemNotStaticOrNull(I), reportNotStaticOrNullError(I)).
reportNotStaticOrNullError(I) :- isError('attribute or method that is not STATIC or nothing has identifier ',I).

	%All attributes and methods must be either STATIC or nothing
	
elemNotStaticOrNull(I) :- attribute(I,_,_,_,A,_), A\='STATIC', A\=''.
elemNotStaticOrNull(I) :- method(I,_,_,_,A,_), A\='STATIC', A\=''.

run :- allStaticOrNull, allPublicOrPrivate, allClassNamesUnique, allAttrNamesUnique.
