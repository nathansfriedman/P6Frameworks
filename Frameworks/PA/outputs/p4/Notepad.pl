:- style_check(-discontiguous).

%table(class,[cid,"name"]).
class(class1,'About').
class(class2,'Actions').
class(class3,'Center').
class(class4,'ExampleFileFilter').
class(class5,'Fonts').
class(class6,'Main').
class(class7,'Print').
class(class8,'RedoAction').
class(class9,'UndoAction').

%table(attribute,[aid,"name","typeName","visibility","static","cid"]).
attribute(attribute1,'n','Main','private','',class2).
attribute(attribute2,'filter','ExampleFileFilter','private','',class2).
attribute(attribute3,'option','int','private','',class2).
attribute(attribute4,'returnVal','int','private','',class2).
attribute(attribute5,'fileContent','String','private','',class2).
attribute(attribute6,'fileName','String','private','',class2).
attribute(attribute7,'findword','String','private','',class2).
attribute(attribute8,'jfc','JFileChooser','private','',class2).
attribute(attribute9,'font','Fonts','public','',class2).
attribute(attribute10,'f','Fonts','private','',class3).
attribute(attribute11,'n','Main','private','',class3).
attribute(attribute12,'useExtensionsInDescription','boolean','private','',class4).
attribute(attribute13,'description','String','private','',class4).
attribute(attribute14,'fullDescription','String','private','',class4).
attribute(attribute15,'filters','Hashtable','private','',class4).
attribute(attribute16,'HIDDEN_FILE','String','private','static',class4).
attribute(attribute17,'TYPE_UNKNOWN','String','private','static',class4).
attribute(attribute18,'fonts','String[]','private','',class5).
attribute(attribute19,'sizes','String[]','private','',class5).
attribute(attribute20,'types','String[]','private','',class5).
attribute(attribute21,'cajb','JButton','private','',class5).
attribute(attribute22,'okjb','JButton','private','',class5).
attribute(attribute23,'fjcb','JComboBox','private','',class5).
attribute(attribute24,'sjcb','JComboBox','private','',class5).
attribute(attribute25,'tjcb','JComboBox','private','',class5).
attribute(attribute26,'fjl','JLabel','private','',class5).
attribute(attribute27,'jjl','JLabel','private','',class5).
attribute(attribute28,'jl','JLabel','private','',class5).
attribute(attribute29,'sjl','JLabel','private','',class5).
attribute(attribute30,'tjl','JLabel','private','',class5).
attribute(attribute31,'jp','JPanel','private','',class5).
attribute(attribute32,'center','Center','public','',class5).
attribute(attribute33,'redoAction','RedoAction','private','',class6).
attribute(attribute34,'undoAction','UndoAction','private','',class6).
attribute(attribute35,'undo','undo.UndoManager','private','',class6).
attribute(attribute36,'aboutButton','JButton','private','',class6).
attribute(attribute37,'copyButton','JButton','private','',class6).
attribute(attribute38,'cutButton','JButton','private','',class6).
attribute(attribute39,'findButton','JButton','private','',class6).
attribute(attribute40,'fontButton','JButton','private','',class6).
attribute(attribute41,'newButton','JButton','private','',class6).
attribute(attribute42,'openButton','JButton','private','',class6).
attribute(attribute43,'pasteButton','JButton','private','',class6).
attribute(attribute44,'printButton','JButton','private','',class6).
attribute(attribute45,'redoButton','JButton','private','',class6).
attribute(attribute46,'saveAsButton','JButton','private','',class6).
attribute(attribute47,'saveButton','JButton','private','',class6).
attribute(attribute48,'undoButton','JButton','private','',class6).
attribute(attribute49,'lineWraP','JCheckBoxMenuItem','private','',class6).
attribute(attribute50,'ediT','JMenu','private','',class6).
attribute(attribute51,'filE','JMenu','private','',class6).
attribute(attribute52,'formaT','JMenu','private','',class6).
attribute(attribute53,'helP','JMenu','private','',class6).
attribute(attribute54,'vieW','JMenu','private','',class6).
attribute(attribute55,'Menubar','JMenuBar','private','',class6).
attribute(attribute56,'abouT','JMenuItem','private','',class6).
attribute(attribute57,'copY','JMenuItem','private','',class6).
attribute(attribute58,'cuT','JMenuItem','private','',class6).
attribute(attribute59,'exiT','JMenuItem','private','',class6).
attribute(attribute60,'finD','JMenuItem','private','',class6).
attribute(attribute61,'findNexT','JMenuItem','private','',class6).
attribute(attribute62,'fonT','JMenuItem','private','',class6).
attribute(attribute63,'neW','JMenuItem','private','',class6).
attribute(attribute64,'opeN','JMenuItem','private','',class6).
attribute(attribute65,'pastE','JMenuItem','private','',class6).
attribute(attribute66,'prinT','JMenuItem','private','',class6).
attribute(attribute67,'savE','JMenuItem','private','',class6).
attribute(attribute68,'saveAS','JMenuItem','private','',class6).
attribute(attribute69,'selectALL','JMenuItem','private','',class6).
attribute(attribute70,'scrollpane','JScrollPane','private','',class6).
attribute(attribute71,'textArea','JTextArea','private','',class6).
attribute(attribute72,'toolBar','JToolBar','private','',class6).
attribute(attribute73,'actions','Actions','public','',class6).
attribute(attribute74,'center','Center','public','',class6).
attribute(attribute75,'componentToBePrinted','Component','private','',class7).
attribute(attribute76,'notepad','Main','private','',class8).
attribute(attribute77,'notepad','Main','private','',class9).

%table(method,[mid,"name","returnTypeName","visibility","static","cid"]).
method(method1,'About','About', 'public' ,'static',class1).
method(method2,'Actions','Actions', 'public' ,'static',class2).
method(method3,'abouT','void','public','',class2).
method(method4,'copY','void','public','',class2).
method(method5,'cuT','void','public','',class2).
method(method6,'exiT','void','public','',class2).
method(method7,'finD','void','public','',class2).
method(method8,'findNexT','void','public','',class2).
method(method9,'fonT','void','public','',class2).
method(method10,'lineWraP','void','public','',class2).
method(method11,'neW','void','public','',class2).
method(method12,'opeN','void','public','',class2).
method(method13,'open','void','public','',class2).
method(method14,'pastE','void','public','',class2).
method(method15,'prinT','void','public','',class2).
method(method16,'savE','void','public','',class2).
method(method17,'save','void','public','',class2).
method(method18,'saveAs','void','public','',class2).
method(method19,'selectALL','void','public','',class2).
method(method20,'Center','Center', 'public' ,'static',class3).
method(method21,'Center','Center', 'public' ,'static',class3).
method(method22,'fCenter','void','public','',class3).
method(method23,'nCenter','void','public','',class3).
method(method24,'ExampleFileFilter','ExampleFileFilter', 'public' ,'static',class4).
method(method25,'ExampleFileFilter','ExampleFileFilter', 'public' ,'static',class4).
method(method26,'ExampleFileFilter','ExampleFileFilter', 'public' ,'static',class4).
method(method27,'ExampleFileFilter','ExampleFileFilter', 'public' ,'static',class4).
method(method28,'ExampleFileFilter','ExampleFileFilter', 'public' ,'static',class4).
method(method29,'accept','boolean','public','',class4).
method(method30,'isExtensionListInDescription','boolean','public','',class4).
method(method31,'getDescription','String','public','',class4).
method(method32,'getExtension','String','public','',class4).
method(method33,'addExtension','void','public','',class4).
method(method34,'setDescription','void','public','',class4).
method(method35,'setExtensionListInDescription','void','public','',class4).
method(method36,'Fonts','Fonts', 'public' ,'static',class5).
method(method37,'font','Font','public','',class5).
method(method38,'getCajb','JButton','public','',class5).
method(method39,'getOkjb','JButton','public','',class5).
method(method40,'access$000','JComboBox','private','static',class5).
method(method40,'access$100','JComboBox','private','static',class5).
method(method40,'access$200','JLabel','private','static',class5).
method(method40,'Main','Main', 'public' ,'static',class6).
method(method41,'getLineWrap','JCheckBoxMenuItem','public','',class6).
method(method42,'getTextArea','JTextArea','public','',class6).
method(method43,'main','void','public','static',class6).
method(method44,'Print','Print', 'public' ,'static',class7).
method(method45,'print','int','public','',class7).
method(method46,'disableDoubleBuffering','void','public','static',class7).
method(method47,'enableDoubleBuffering','void','public','static',class7).
method(method48,'printComponent','void','public','static',class7).
method(method49,'print','void','public','',class7).
method(method50,'RedoAction','RedoAction', 'public' ,'static',class8).
method(method51,'update','void','private','',class8).
method(method51,'actionPerformed','void','public','',class8).
method(method52,'UndoAction','UndoAction', 'public' ,'static',class9).
method(method53,'update','void','private','',class9).
method(method53,'actionPerformed','void','public','',class9).

%table(parameter,[pid,"typeName",mid]).
parameter(parameter1,'Main',method2).
parameter(parameter2,'Fonts',method20).
parameter(parameter3,'Main',method21).
parameter(parameter4,'String',method25).
parameter(parameter5,'String',method26).
parameter(parameter6,'String',method26).
parameter(parameter7,'String[]',method27).
parameter(parameter8,'String[]',method28).
parameter(parameter9,'String',method28).
parameter(parameter10,'File',method29).
parameter(parameter11,'File',method32).
parameter(parameter12,'String',method33).
parameter(parameter13,'String',method34).
parameter(parameter14,'boolean',method35).
parameter(parameter15,Fonts,method40).
parameter(parameter16,Fonts,method40).
parameter(parameter17,Fonts,method40).
parameter(parameter18,'String[]',method43).
parameter(parameter19,'Component',method44).
parameter(parameter20,'Graphics',method45).
parameter(parameter21,'print.PageFormat',method45).
parameter(parameter22,'int',method45).
parameter(parameter23,'Component',method46).
parameter(parameter24,'Component',method47).
parameter(parameter25,'Component',method48).
parameter(parameter26,'Main',method50).
parameter(parameter27,'ActionEvent',method51).
parameter(parameter28,'Main',method52).
parameter(parameter29,'ActionEvent',method53).
