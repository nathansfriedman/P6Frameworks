:- style_check(-discontiguous).

%table(class,[cid,"name"]).
class(class1,'A').
class(class2,'G').
class(class3,'H').
class(class4,'I').
class(class5,'Main').
class(class6,'SwingApp').
class(class7,'advice').
class(class8,'advprog').
class(class9,'advsum').
class(class10,'gadvice').
class(class11,'gadvprog').
class(class12,'gadvsum').
class(class13,'ghoaadv').
class(class14,'hoa').
class(class15,'hoaadv').
class(class16,'hoasum').
class(class17,'intro').
class(class18,'intsum').
class(class19,'tree').

%table(attribute,[aid,"name","typeName","visibility","static","cid"]).
attribute(attribute1,'layerno','int','private','',class5).
attribute(attribute2,'activeModel','String','private','',class5).
attribute(attribute3,'comboModel','DefaultComboBoxModel','private','',class5).
attribute(attribute4,'apply','JButton','private','',class5).
attribute(attribute5,'clear','JButton','private','',class5).
attribute(attribute6,'gadvice','JCheckBox','private','',class5).
attribute(attribute7,'hoa','JCheckBox','private','',class5).
attribute(attribute8,'intro','JCheckBox','private','',class5).
attribute(attribute9,'ladvice','JCheckBox','private','',class5).
attribute(attribute10,'selected','JCheckBox','private','',class5).
attribute(attribute11,'model','JComboBox','private','',class5).
attribute(attribute12,'clearPanel','JPanel','private','',class5).
attribute(attribute13,'inputPanel','JPanel','private','',class5).
attribute(attribute14,'quarkPanel','JPanel','private','',class5).
attribute(attribute15,'outputScroll','JScrollPane','private','',class5).
attribute(attribute16,'programScroll','JScrollPane','private','',class5).
attribute(attribute17,'output','JTextArea','private','',class5).
attribute(attribute18,'program','JTextArea','private','',class5).
attribute(attribute19,'equation','JTextField','private','',class5).
attribute(attribute20,'t','tree','public','',class5).
attribute(attribute21,'initChoices','Object[]','public','static',class5).
attribute(attribute22,'textWidth','int','private','static',class5).
attribute(attribute23,'AML','String','private','static',class5).
attribute(attribute24,'Ahead','String','private','static',class5).
attribute(attribute25,'AspectJ','String','private','static',class5).
attribute(attribute26,'General','String','private','static',class5).
attribute(attribute27,'base','String','private','static',class5).
attribute(attribute28,'ContentPane','JPanel','public','',class6).
attribute(attribute29,'name','String','private','',class7).
attribute(attribute30,'left','A','public','',class8).
attribute(attribute31,'right','I','public','',class8).
attribute(attribute32,'left','A','public','',class9).
attribute(attribute33,'right','A','public','',class9).
attribute(attribute34,'name','String','private','',class10).
attribute(attribute35,'left','G','public','',class11).
attribute(attribute36,'right','I','public','',class11).
attribute(attribute37,'left','G','public','',class12).
attribute(attribute38,'right','G','public','',class12).
attribute(attribute39,'right','G','public','',class13).
attribute(attribute40,'left','H','public','',class13).
attribute(attribute41,'name','String','private','',class14).
attribute(attribute42,'right','A','public','',class15).
attribute(attribute43,'left','H','public','',class15).
attribute(attribute44,'left','H','public','',class16).
attribute(attribute45,'right','H','public','',class16).
attribute(attribute46,'name','String','private','',class17).
attribute(attribute47,'left','I','public','',class18).
attribute(attribute48,'right','I','public','',class18).

%table(method,[mid,"name","returnTypeName","visibility","static","cid"]).
method(method1,'A','A', 'public' ,'static',class1).
method(method2,'apply','tree','public','',class1).
method(method3,'apply','tree','public','',class1).
method(method4,'apply','tree','public','',class1).
method(method5,'apply','tree','public','',class1).
method(method6,'G','G', 'public' ,'static',class2).
method(method7,'apply','tree','public','',class2).
method(method8,'apply','tree','public','',class2).
method(method9,'H','H', 'public' ,'static',class3).
method(method10,'apply','tree','public','',class3).
method(method11,'apply','tree','public','',class3).
method(method12,'apply','tree','public','',class3).
method(method13,'I','I', 'public' ,'static',class4).
method(method14,'Main','Main', 'public' ,'static',class5).
method(method15,'Main','Main', 'public' ,'static',class5).
method(method16,'main','void','public','static',class5).
method(method17,'applicationExit','void','public','',class5).
method(method18,'initAtoms','void','public','',class5).
method(method19,'initConstants','void','public','',class5).
method(method20,'initContentPane','void','public','',class5).
method(method21,'initLayout','void','public','',class5).
method(method22,'initListeners','void','public','',class5).
method(method23,'updateQuarkPanel','void','public','',class5).
method(method24,'SwingApp','SwingApp', 'public' ,'static',class6).
method(method25,'SwingApp','SwingApp', 'public' ,'static',class6).
method(method26,'applicationExit','void','public','',class6).
method(method27,'init','void','public','',class6).
method(method28,'initAtoms','void','public','',class6).
method(method29,'initConstants','void','public','',class6).
method(method30,'initContentPane','void','public','',class6).
method(method31,'initLayout','void','public','',class6).
method(method32,'initListeners','void','public','',class6).
method(method33,'advice','advice', 'public' ,'static',class7).
method(method34,'eval','String','public','',class7).
method(method35,'toString','String','public','',class7).
method(method36,'advprog','advprog', 'public' ,'static',class8).
method(method37,'eval','String','public','',class8).
method(method38,'toString','String','public','',class8).
method(method39,'apply','tree','public','',class8).
method(method40,'apply','tree','public','',class8).
method(method41,'apply','tree','public','',class8).
method(method42,'apply','tree','public','',class8).
method(method43,'advsum','advsum', 'public' ,'static',class9).
method(method44,'eval','String','public','',class9).
method(method45,'toString','String','public','',class9).
method(method46,'apply','tree','public','',class9).
method(method47,'gadvice','gadvice', 'public' ,'static',class10).
method(method48,'eval','String','public','',class10).
method(method49,'toString','String','public','',class10).
method(method50,'apply','tree','public','',class10).
method(method51,'apply','tree','public','',class10).
method(method52,'gadvprog','gadvprog', 'public' ,'static',class11).
method(method53,'eval','String','public','',class11).
method(method54,'toString','String','public','',class11).
method(method55,'apply','tree','public','',class11).
method(method56,'apply','tree','public','',class11).
method(method57,'apply','tree','public','',class11).
method(method58,'apply','tree','public','',class11).
method(method59,'gadvsum','gadvsum', 'public' ,'static',class12).
method(method60,'eval','String','public','',class12).
method(method61,'toString','String','public','',class12).
method(method62,'apply','tree','public','',class12).
method(method63,'apply','tree','public','',class12).
method(method64,'apply','tree','public','',class12).
method(method65,'ghoaadv','ghoaadv', 'public' ,'static',class13).
method(method66,'eval','String','public','',class13).
method(method67,'toString','String','public','',class13).
method(method68,'apply','tree','public','',class13).
method(method69,'apply','tree','public','',class13).
method(method70,'hoa','hoa', 'public' ,'static',class14).
method(method71,'eval','String','public','',class14).
method(method72,'toString','String','public','',class14).
method(method73,'apply','tree','public','',class14).
method(method74,'hoaadv','hoaadv', 'public' ,'static',class15).
method(method75,'eval','String','public','',class15).
method(method76,'toString','String','public','',class15).
method(method77,'apply','tree','public','',class15).
method(method78,'hoasum','hoasum', 'public' ,'static',class16).
method(method79,'eval','String','public','',class16).
method(method80,'toString','String','public','',class16).
method(method81,'apply','tree','public','',class16).
method(method82,'intro','intro', 'public' ,'static',class17).
method(method83,'eval','String','public','',class17).
method(method84,'toString','String','public','',class17).
method(method85,'apply','tree','public','',class17).
method(method86,'apply','tree','public','',class17).
method(method87,'apply','tree','public','',class17).
method(method88,'apply','tree','public','',class17).
method(method89,'intsum','intsum', 'public' ,'static',class18).
method(method90,'eval','String','public','',class18).
method(method91,'toString','String','public','',class18).
method(method92,'apply','tree','public','',class18).
method(method93,'apply','tree','public','',class18).
method(method94,'apply','tree','public','',class18).
method(method95,'apply','tree','public','',class18).
method(method96,'tree','tree', 'public' ,'static',class19).
method(method97,'eval','String','public','',class19).
method(method98,'toString','String','public','',class19).
method(method99,'apply','tree','public','',class19).
method(method100,'apply','tree','public','',class19).
method(method101,'apply','tree','public','',class19).
method(method102,'apply','tree','public','',class19).
method(method103,'print','void','public','',class19).

%table(parameter,[pid,"typeName",mid]).
parameter(parameter1,'A',method2).
parameter(parameter2,'G',method3).
parameter(parameter3,'H',method4).
parameter(parameter4,'I',method5).
parameter(parameter5,'A',method7).
parameter(parameter6,'I',method8).
parameter(parameter7,'A',method10).
parameter(parameter8,'G',method11).
parameter(parameter9,'I',method12).
parameter(parameter10,'String',method15).
parameter(parameter11,'String[]',method16).
parameter(parameter12,'String',method25).
parameter(parameter13,'String',method33).
parameter(parameter14,'String',method34).
parameter(parameter15,'A',method36).
parameter(parameter16,'I',method36).
parameter(parameter17,'String',method37).
parameter(parameter18,'A',method39).
parameter(parameter19,'G',method40).
parameter(parameter20,'H',method41).
parameter(parameter21,'I',method42).
parameter(parameter22,'A',method43).
parameter(parameter23,'A',method43).
parameter(parameter24,'String',method44).
parameter(parameter25,'A',method46).
parameter(parameter26,'String',method47).
parameter(parameter27,'String',method48).
parameter(parameter28,'G',method50).
parameter(parameter29,'H',method51).
parameter(parameter30,'G',method52).
parameter(parameter31,'I',method52).
parameter(parameter32,'String',method53).
parameter(parameter33,'A',method55).
parameter(parameter34,'G',method56).
parameter(parameter35,'H',method57).
parameter(parameter36,'I',method58).
parameter(parameter37,'G',method59).
parameter(parameter38,'G',method59).
parameter(parameter39,'String',method60).
parameter(parameter40,'A',method62).
parameter(parameter41,'G',method63).
parameter(parameter42,'H',method64).
parameter(parameter43,'H',method65).
parameter(parameter44,'G',method65).
parameter(parameter45,'String',method66).
parameter(parameter46,'G',method68).
parameter(parameter47,'H',method69).
parameter(parameter48,'String',method70).
parameter(parameter49,'String',method71).
parameter(parameter50,'H',method73).
parameter(parameter51,'H',method74).
parameter(parameter52,'A',method74).
parameter(parameter53,'String',method75).
parameter(parameter54,'H',method77).
parameter(parameter55,'H',method78).
parameter(parameter56,'H',method78).
parameter(parameter57,'String',method79).
parameter(parameter58,'H',method81).
parameter(parameter59,'String',method82).
parameter(parameter60,'String',method83).
parameter(parameter61,'A',method85).
parameter(parameter62,'G',method86).
parameter(parameter63,'H',method87).
parameter(parameter64,'I',method88).
parameter(parameter65,'I',method89).
parameter(parameter66,'I',method89).
parameter(parameter67,'String',method90).
parameter(parameter68,'A',method92).
parameter(parameter69,'G',method93).
parameter(parameter70,'H',method94).
parameter(parameter71,'I',method95).
parameter(parameter72,'String',method97).
parameter(parameter73,'A',method99).
parameter(parameter74,'G',method100).
parameter(parameter75,'H',method101).
parameter(parameter76,'I',method102).
