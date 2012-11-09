:- style_check(-discontiguous).

%table(class,[cid,"name"]).
class(class1,'CycleWorkSpace').
class(class2,'Edge').
class(class3,'Graph').
class(class4,'Main').
class(class5,'Neighbor').
class(class6,'NumberWorkSpace').
class(class7,'Vertex').
class(class8,'WorkSpace').

%table(attribute,[aid,"name","typeName","visibility","static","cid"]).
attribute(attribute1,'AnyCycles','boolean','public','',class1).
attribute(attribute2,'isDirected','boolean','public','',class1).
attribute(attribute3,'counter','int','public','',class1).
attribute(attribute4,'BLACK','int','public','static',class1).
attribute(attribute5,'GRAY','int','public','static',class1).
attribute(attribute6,'WHITE','int','public','static',class1).
attribute(attribute7,'start','Vertex','public','',class2).
attribute(attribute8,'weight','int','public','',class2).
attribute(attribute9,'inFile','Reader','public','',class3).
attribute(attribute10,'edges','LinkedList','public','',class3).
attribute(attribute11,'vertices','LinkedList','public','',class3).
attribute(attribute12,'isDirected','boolean','public','static',class3).
attribute(attribute13,'ch','int','public','static',class3).
attribute(attribute14,'accum','long','private','static',class3).
attribute(attribute15,'current','long','private','static',class3).
attribute(attribute16,'last','long','private','static',class3).
attribute(attribute17,'edge','Edge','public','',class5).
attribute(attribute18,'end','Vertex','public','',class5).
attribute(attribute19,'vertexCounter','int','private','',class6).
attribute(attribute20,'visited','boolean','public','',class7).
attribute(attribute21,'VertexColor','int','public','',class7).
attribute(attribute22,'VertexCycle','int','public','',class7).
attribute(attribute23,'VertexNumber','int','public','',class7).
attribute(attribute24,'name','String','public','',class7).
attribute(attribute25,'neighbors','LinkedList','public','',class7).

%table(method,[mid,"name","returnTypeName","visibility","static","cid"]).
method(method1,'CycleWorkSpace','CycleWorkSpace', 'public' ,'static',class1).
method(method2,'checkNeighborAction','void','public','',class1).
method(method3,'init_vertex','void','public','',class1).
method(method4,'postVisitAction','void','public','',class1).
method(method5,'preVisitAction','void','public','',class1).
method(method6,'Edge','Edge', 'public' ,'static',class2).
method(method7,'EdgeConstructor','void','public','',class2).
method(method8,'EdgeConstructor','void','public','',class2).
method(method9,'adjustAdorns','void','public','',class2).
method(method10,'display','void','public','',class2).
method(method11,'Graph','Graph', 'public' ,'static',class3).
method(method12,'CycleCheck','boolean','public','',class3).
method(method13,'findsVertex','Vertex','public','',class3).
method(method14,'readNumber','int','public','',class3).
method(method15,'endProfile','void','public','static',class3).
method(method16,'resumeProfile','void','public','static',class3).
method(method17,'startProfile','void','public','static',class3).
method(method18,'stopProfile','void','public','static',class3).
method(method19,'GraphSearch','void','public','',class3).
method(method20,'NumberVertices','void','public','',class3).
method(method21,'addAnEdge','void','public','',class3).
method(method22,'addEdge','void','public','',class3).
method(method23,'addOnlyEdge','void','public','',class3).
method(method24,'addVertex','void','public','',class3).
method(method25,'display','void','public','',class3).
method(method26,'run','void','public','',class3).
method(method27,'runBenchmark','void','public','',class3).
method(method28,'stopBenchmark','void','public','',class3).
method(method29,'Main','Main', 'public' ,'static',class4).
method(method30,'main','void','public','static',class4).
method(method31,'Neighbor','Neighbor', 'public' ,'static',class5).
method(method32,'Neighbor','Neighbor', 'public' ,'static',class5).
method(method33,'NumberWorkSpace','NumberWorkSpace', 'public' ,'static',class6).
method(method34,'preVisitAction','void','public','',class6).
method(method35,'Vertex','Vertex', 'public' ,'static',class7).
method(method36,'assignName','Vertex','public','',class7).
method(method37,'VertexConstructor','void','public','',class7).
method(method38,'addNeighbor','void','public','',class7).
method(method39,'dftNodeSearch','void','public','',class7).
method(method40,'display','void','public','',class7).
method(method41,'init_vertex','void','public','',class7).
method(method42,'WorkSpace','WorkSpace', 'public' ,'static',class8).
method(method43,'checkNeighborAction','void','public','',class8).
method(method44,'init_vertex','void','public','',class8).
method(method45,'nextRegionAction','void','public','',class8).
method(method46,'postVisitAction','void','public','',class8).
method(method47,'preVisitAction','void','public','',class8).

%table(parameter,[pid,"typeName",mid]).
parameter(parameter1,'boolean',method1).
parameter(parameter2,'Vertex',method2).
parameter(parameter3,'Vertex',method2).
parameter(parameter4,'Vertex',method3).
parameter(parameter5,'Vertex',method4).
parameter(parameter6,'Vertex',method5).
parameter(parameter7,'Vertex',method7).
parameter(parameter8,'Vertex',method7).
parameter(parameter9,'Vertex',method8).
parameter(parameter10,'Vertex',method8).
parameter(parameter11,'int',method8).
parameter(parameter12,'Edge',method9).
parameter(parameter13,'String',method13).
parameter(parameter14,'WorkSpace',method19).
parameter(parameter15,'Vertex',method21).
parameter(parameter16,'Vertex',method21).
parameter(parameter17,'int',method21).
parameter(parameter18,'Edge',method22).
parameter(parameter19,'Edge',method23).
parameter(parameter20,'Vertex',method24).
parameter(parameter21,'Vertex',method26).
parameter(parameter22,'String',method27).
parameter(parameter23,'String[]',method30).
parameter(parameter24,'Vertex',method32).
parameter(parameter25,'Edge',method32).
parameter(parameter26,'Vertex',method34).
parameter(parameter27,'String',method36).
parameter(parameter28,'Neighbor',method38).
parameter(parameter29,'WorkSpace',method39).
parameter(parameter30,'WorkSpace',method41).
parameter(parameter31,'Vertex',method43).
parameter(parameter32,'Vertex',method43).
parameter(parameter33,'Vertex',method44).
parameter(parameter34,'Vertex',method45).
parameter(parameter35,'Vertex',method46).
parameter(parameter36,'Vertex',method47).
