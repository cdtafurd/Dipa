var sedesUN=[
 ['Amazonia','http://www.imani.unal.edu.co/'],
 ['Caribe','http://www.caribe.unal.edu.co/'],
 ['Bogot&aacute;','http://www.bogota.unal.edu.co/'],
 ['Manizales','http://www.manizales.unal.edu.co/'],
 ['Medell&iacute;n','http://www.medellin.unal.edu.co/'],
 ['Orinoquia','http://www.arauca.unal.edu.co/'],
 ['Palmira','http://www.palmira.unal.edu.co/'],
 ['Tumaco','http://www.tumaco-pacifico.unal.edu.co/']
];
var correoUN=[
 ['Correo UN','http://www.unal.edu.co/contenido/correo.htm'],
 ['Correo UN/Google','http://mail.google.com/a/bt.unal.edu.co'],
 ['Calendario','http://www.unal.edu.co/contenido/calendario.htm']
];
function elmMenu(elm){
 cntMenu='<ul>';
 for(i in elm){
  cntMenu+='<li><a href="'+elm[i][1]+'">'+elm[i][0]+'</a></li>';
 }
 cntMenu+='</ul>';
 return cntMenu;
}
function writeMenuUN(){
 elmSEDES=document.getElementById('sedes_un');
 nElm=elmSEDES.getElementsByTagName('div')[0];
 nElm.innerHTML=elmMenu(sedesUN);
 elmSEDES=document.getElementById('correo_un');
 nElm=elmSEDES.getElementsByTagName('div')[0];
 nElm.innerHTML=elmMenu(correoUN);  
}
function addEvent(obj, evType, fn){ 
 if (obj.addEventListener){ 
   obj.addEventListener(evType, fn, false); 
   return true; 
 } else if (obj.attachEvent){ 
   var r = obj.attachEvent("on"+evType, fn); 
   return r; 
 } else { 
   return false; 
 } 
}
addEvent(window, 'load', writeMenuUN);
