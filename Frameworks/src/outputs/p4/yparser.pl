:- style_check(-discontiguous).

%table(class,[cid,"name"]).
class(class1,'Main').
class(class2,'connection').
class(class3,'klass').

%table(attribute,[aid,"name","typeName","visibility","static","cid"]).
attribute(attribute1,'agg','String','private','static',class1).
attribute(attribute2,'apost','String','private','static',class1).
attribute(attribute3,'apostComma','String','private','static',class1).
attribute(attribute4,'arrow1','String','private','static',class1).
attribute(attribute5,'arrow2','String','private','static',class1).
attribute(attribute6,'comma','String','private','static',class1).
attribute(attribute7,'commaApost','String','private','static',class1).
attribute(attribute8,'comp','String','private','static',class1).
attribute(attribute9,'equals','String','private','static',class1).
attribute(attribute10,'gen','String','private','static',class1).
attribute(attribute11,'none','String','private','static',class1).
attribute(attribute12,'kounter','int','private','static',class1).
attribute(attribute13,'lineCount','int','private','static',class1).
attribute(attribute14,'out','PrintStream','private','static',class1).
attribute(attribute15,'end1','String','private','static',class1).
attribute(attribute16,'end2','String','private','static',class1).
attribute(attribute17,'line','String','private','static',class1).
attribute(attribute18,'name1','String','private','static',class1).
attribute(attribute19,'name2','String','private','static',class1).
attribute(attribute20,'original','String','private','static',class1).
attribute(attribute21,'role1','String','private','static',class1).
attribute(attribute22,'role2','String','private','static',class1).
attribute(attribute23,'array1','String[]','private','static',class1).
attribute(attribute24,'array2','String[]','private','static',class1).
attribute(attribute25,'klassS','HashMap','private','static',class1).
attribute(attribute26,'connectionS','LinkedList','private','static',class1).
attribute(attribute27,'end1','String','public','',class2).
attribute(attribute28,'end2','String','public','',class2).
attribute(attribute29,'name1','String','public','',class2).
attribute(attribute30,'name2','String','public','',class2).
attribute(attribute31,'role1','String','public','',class2).
attribute(attribute32,'role2','String','public','',class2).
attribute(attribute33,'comma','String','public','static',class2).
attribute(attribute34,'quote','String','public','static',class2).
attribute(attribute35,'fields','String','public','',class3).
attribute(attribute36,'id','String','public','',class3).
attribute(attribute37,'methods','String','public','',class3).
attribute(attribute38,'name','String','public','',class3).
attribute(attribute39,'comma','String','private','static',class3).
attribute(attribute40,'quote','String','private','static',class3).

%table(method,[mid,"name","returnTypeName","visibility","static","cid"]).
method(method1,'Main','Main', 'public' ,'static',class1).
method(method2,'checkNameStructure','String[]','public','static',class1).
method(method3,'err','void','public','static',class1).
method(method4,'main','void','public','static',class1).
method(method5,'printArray','void','public','static',class1).
method(method6,'connection','connection', 'public' ,'static',class2).
method(method7,'dump','void','public','static',class2).
method(method8,'klass','klass', 'public' ,'static',class3).
method(method9,'klass','klass', 'public' ,'static',class3).
method(method10,'toId','String','public','static',class3).
method(method11,'dump','void','public','static',class3).

%table(parameter,[pid,"typeName",mid]).
parameter(parameter1,'String',method2).
parameter(parameter2,'String',method3).
parameter(parameter3,'String[]',method4).
parameter(parameter4,'String',method5).
parameter(parameter5,'String[]',method5).
parameter(parameter6,'String',method6).
parameter(parameter7,'String',method6).
parameter(parameter8,'String',method6).
parameter(parameter9,'String',method6).
parameter(parameter10,'String',method6).
parameter(parameter11,'String',method6).
parameter(parameter12,'String',method8).
parameter(parameter13,'String',method8).
parameter(parameter14,'String',method8).
parameter(parameter15,'String[]',method9).
parameter(parameter16,'String',method10).
