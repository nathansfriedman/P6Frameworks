dbase(mydb, [class,attribute,method,parameter]).

table(class,[cid,"name"]).
table(attribute,[aid,"name","typeName","visibility","static",cid).
table(method,[mid,"name","returnTypeName","visibility","static",cid]).
table(parameter,[pid,"typeName",mid]).

tuple(class,L):-class(I,N),L=[I,N].
tuple(attribute,L):-attribute(I,N,T,C),L=[I,N,T,C].
tuple(method,L):-method(I,N,T,C),L=[I,N,T,C].
tuple(parameter,L):-parameter(I,T,M),L=[I,T,M].
