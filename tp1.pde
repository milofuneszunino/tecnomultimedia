// Milo Funes Zunino


String texto1= "Rebecca Sugar"  ;
String texto2= " IAN JONES QUEARTEY\n KAT MORRIS\n PAUL VILLECO\n RAVEN M. MOLISEE\n HILARY FLORIDO\n ALETH ROMANILLOS\n JOE JOHNSTON"  ;
String texto3= " JEFF LIU\n LAMAR ABRAMS\n LUKE WEBER\n MATT BRALY\n HELLEN JO\n KATIE MITROFF\n LAUREN ZUKE\n COLIN HOWARD\n"  ;
String texto4= "JACKIE BUSCARINO "  ;
String texto5= " NICK DEMAYO\n KI-YONG BAE\n JIN-HEE PARK\n SUE HONG KIM\n HYE SUNG PARK\n SEONJAE LEE\n DONGSOO LEE\n "  ;
 
int pantalla=0;

PImage fondo ;

boolean start = true ;

float opacidad = 0 ;

PFont fuente ;

void setup (){
  
  size (633,355);
  background (0);
 fondo = loadImage("stevenuniverse.png") ;
 fuente = createFont ("Multicolore Pro.otf", 50) ;
 textFont (fuente , 18 ) ;
 
}

void draw () {
  
  image(fondo , 0 , 0 ) ;
 
  
  
   if (pantalla==0) {
     fill (69, 123, 157, opacidad) ;
     textSize ( 16 ) ;
     text ("Executive Producer", 290, 150) ;
     
     fill ( 238,238,238, opacidad ) ;
     textSize ( 22 ) ;
     text (texto1, 290,175) ;
     
      if ( start )  {
      opacidad ++ ;
      
        if (opacidad >= 300 ) { 
          start = false ;  
        }     
     
      }
       if ( ! start ) {
       opacidad--;
         if (opacidad <0) { 
           start=true;
         pantalla ++ ; 
         }
       }
      textSize (10) ; 
           text ("haga click para pasar a la siguiente pantalla" , 10, height -2 ) ; 
     }
     

     
     if (pantalla==1) {
      fill (69, 123, 157, opacidad) ;
     textSize ( 16 ) ;
     text ( "WRITTEN AND\nSTORYBOARDED BY", 290, 150) ;
     
     fill ( 238,238,238, opacidad ) ;
     textSize ( 13 ) ;
     text (texto3, 290,190) ;
     
     if ( start )  {
      opacidad ++ ;
      
        if (opacidad >= 300 ) { 
          start = false ;  
        }     
     
      }
       if ( ! start ) {
       opacidad--;
         if (opacidad <0) {
         start=true;
         pantalla ++ ; 
         }
       }

     }
     
     if (pantalla==2) {
     
      fill (69, 123, 157, opacidad) ;
     textSize ( 16 ) ;
     text ("WRITTEN AND\nSTORYBOARDED BY", 290, 150) ;
     
     fill ( 238,238,238, opacidad ) ;
     textSize ( 13 ) ;
     text (texto2, 290,190) ;
     
     if ( start )  {
      opacidad ++ ;
      
        if (opacidad >= 300 ) { 
          start = false ;  
        }     
     
      }
       if ( ! start ) {
       opacidad--;
         if (opacidad <0) {
         start=true;
         pantalla ++ ; 
         }
       }


     }
     
     if (pantalla==3) {
     fill (69, 123, 157, opacidad) ;
     textSize ( 16 ) ;
     text (" PRODUCER", 290, 150) ;
     
     fill ( 238,238,238, opacidad ) ;
     textSize ( 22 ) ;
     text (texto4, 290,175) ;
     
      if ( start )  {
      opacidad ++ ;
      
        if (opacidad >= 300 ) { 
          start = false ;  
        }     
     
      }
       if ( ! start ) {
       opacidad--;
         if (opacidad <0) {
           start=true;
           pantalla ++ ; 
         }
       }

     }
    

     if (pantalla==4) {
     fill (69, 123, 157, opacidad) ;
     textSize ( 16 ) ;
     text ("ANIMATION DIRECTOR", 290, 150) ;
     
     fill ( 238,238,238, opacidad ) ;
     textSize ( 13 ) ;
     text (texto5, 290,190) ;
     
     if ( start )  {
      opacidad ++ ;
      
        if (opacidad >= 300 ) { 
          start = false ;  
        }     
     
      }
       if ( ! start ) {
       opacidad--;
         if (opacidad <0) {
         start=true;
         pantalla ++ ; 
         }
       }


    

     }
     
     if (pantalla==5) {
     pantalla = 0;

     }
     
     println(opacidad);
     //textSize (10) ; 
     // text ("haga click para pasar a la siguiente pantalla" , 10, height -2 ) ; 
} 
     void mouseClicked () { 
       
       pantalla ++ ; 
       
       start = true ;   
       
       opacidad = 0 ; 
       
     }
