:- style_check(-discontiguous).

class('class1','CycleWorkSpace').
class('class2','Edge').
class('class3','Graph').
class('class4','Main').
class('class5','Neighbor').
class('class6','NumberWorkSpace').
class('class7','Vertex').
class('class8','WorkSpace').

attribute('attribute1','AnyCycles','classboolean','PUBLIC','','class1').
attribute('attribute2','isDirected','classboolean','PUBLIC','','class1').
attribute('attribute3','counter','classint','PUBLIC','','class1').
attribute('attribute4','BLACK','classint','PUBLIC','STATIC','class1').
attribute('attribute5','GRAY','classint','PUBLIC','STATIC','class1').
attribute('attribute6','WHITE','classint','PUBLIC','STATIC','class1').
attribute('attribute7','start','classVertex','PUBLIC','','class2').
attribute('attribute8','weight','classint','PUBLIC','','class2').
attribute('attribute9','inFile','classReader','PUBLIC','','class3').
attribute('attribute10','edges','classLinkedList','PUBLIC','','class3').
attribute('attribute11','vertices','classLinkedList','PUBLIC','','class3').
attribute('attribute12','isDirected','classboolean','PUBLIC','STATIC','class3').
attribute('attribute13','ch','classint','PUBLIC','STATIC','class3').
attribute('attribute14','accum','classlong','PRIVATE','STATIC','class3').
attribute('attribute15','current','classlong','PRIVATE','STATIC','class3').
attribute('attribute16','last','classlong','PRIVATE','STATIC','class3').
attribute('attribute17','edge','classEdge','PUBLIC','','class5').
attribute('attribute18','end','classVertex','PUBLIC','','class5').
attribute('attribute19','vertexCounter','classint','PRIVATE','','class6').
attribute('attribute20','visited','classboolean','PUBLIC','','class7').
attribute('attribute21','VertexColor','classint','PUBLIC','','class7').
attribute('attribute22','VertexCycle','classint','PUBLIC','','class7').
attribute('attribute23','VertexNumber','classint','PUBLIC','','class7').
attribute('attribute24','name','classString','PUBLIC','','class7').
attribute('attribute25','neighbors','classLinkedList','PUBLIC','','class7').

method('method1','CycleWorkSpace','CycleWorkSpace','PUBLIC','STATIC','class1').
method('method2','checkNeighborAction','void','PUBLIC','','class1').
method('method3','init_vertex','void','PUBLIC','','class1').
method('method4','postVisitAction','void','PUBLIC','','class1').
method('method5','preVisitAction','void','PUBLIC','','class1').
method('method6','Edge','Edge','PUBLIC','STATIC','class2').
method('method7','EdgeConstructor','void','PUBLIC','','class2').
method('method8','EdgeConstructor','void','PUBLIC','','class2').
method('method9','adjustAdorns','void','PUBLIC','','class2').
method('method10','display','void','PUBLIC','','class2').
method('method11','Graph','Graph','PUBLIC','STATIC','class3').
method('method12','CycleCheck','boolean','PUBLIC','','class3').
method('method13','findsVertex','Vertex','PUBLIC','','class3').
method('method14','readNumber','int','PUBLIC','','class3').
method('method15','endProfile','void','PUBLIC','STATIC','class3').
method('method16','resumeProfile','void','PUBLIC','STATIC','class3').
method('method17','startProfile','void','PUBLIC','STATIC','class3').
method('method18','stopProfile','void','PUBLIC','STATIC','class3').
method('method19','GraphSearch','void','PUBLIC','','class3').
method('method20','NumberVertices','void','PUBLIC','','class3').
method('method21','addAnEdge','void','PUBLIC','','class3').
method('method22','addEdge','void','PUBLIC','','class3').
method('method23','addOnlyEdge','void','PUBLIC','','class3').
method('method24','addVertex','void','PUBLIC','','class3').
method('method25','display','void','PUBLIC','','class3').
method('method26','run','void','PUBLIC','','class3').
method('method27','runBenchmark','void','PUBLIC','','class3').
method('method28','stopBenchmark','void','PUBLIC','','class3').
method('method29','Main','Main','PUBLIC','STATIC','class4').
method('method30','main','void','PUBLIC','STATIC','class4').
method('method31','Neighbor','Neighbor','PUBLIC','STATIC','class5').
method('method32','Neighbor','Neighbor','PUBLIC','STATIC','class5').
method('method33','NumberWorkSpace','NumberWorkSpace','PUBLIC','STATIC','class6').
method('method34','preVisitAction','void','PUBLIC','','class6').
method('method35','Vertex','Vertex','PUBLIC','STATIC','class7').
method('method36','assignName','Vertex','PUBLIC','','class7').
method('method37','VertexConstructor','void','PUBLIC','','class7').
method('method38','addNeighbor','void','PUBLIC','','class7').
method('method39','dftNodeSearch','void','PUBLIC','','class7').
method('method40','display','void','PUBLIC','','class7').
method('method41','init_vertex','void','PUBLIC','','class7').
method('method42','WorkSpace','WorkSpace','PUBLIC','STATIC','class8').
method('method43','checkNeighborAction','void','PUBLIC','','class8').
method('method44','init_vertex','void','PUBLIC','','class8').
method('method45','nextRegionAction','void','PUBLIC','','class8').
method('method46','postVisitAction','void','PUBLIC','','class8').
method('method47','preVisitAction','void','PUBLIC','','class8').

parameter('parameter1','boolean','method1').
parameter('parameter2','Vertex','method2').
parameter('parameter3','Vertex','method2').
parameter('parameter4','Vertex','method3').
parameter('parameter5','Vertex','method4').
parameter('parameter6','Vertex','method5').
parameter('parameter7','Vertex','method7').
parameter('parameter8','Vertex','method7').
parameter('parameter9','Vertex','method8').
parameter('parameter10','Vertex','method8').
parameter('parameter11','int','method8').
parameter('parameter12','Edge','method9').
parameter('parameter13','String','method13').
parameter('parameter14','WorkSpace','method19').
parameter('parameter15','Vertex','method21').
parameter('parameter16','Vertex','method21').
parameter('parameter17','int','method21').
parameter('parameter18','Edge','method22').
parameter('parameter19','Edge','method23').
parameter('parameter20','Vertex','method24').
parameter('parameter21','Vertex','method26').
parameter('parameter22','String','method27').
parameter('parameter23','String[]','method30').
parameter('parameter24','Vertex','method32').
parameter('parameter25','Edge','method32').
parameter('parameter26','Vertex','method34').
parameter('parameter27','String','method36').
parameter('parameter28','Neighbor','method38').
parameter('parameter29','WorkSpace','method39').
parameter('parameter30','WorkSpace','method41').
parameter('parameter31','Vertex','method43').
parameter('parameter32','Vertex','method43').
parameter('parameter33','Vertex','method44').
parameter('parameter34','Vertex','method45').
parameter('parameter35','Vertex','method46').
parameter('parameter36','Vertex','method47').
