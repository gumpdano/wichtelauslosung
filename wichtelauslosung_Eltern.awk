#! /usr/bin/awk -f

BEGIN {

srand ( ) ;

printf ( "Wichtelauslosung\n\n" ) ;

name [ 1 ] = "Cäcilie" ;     mannfrau [ 1 ] = "Frau" ;
name [ 2 ] = "Rolf" ;         mannfrau [ 2 ] = "Mann" ;
name [ 3 ] = "Cornelia" ;     mannfrau [ 3 ] = "Frau" ;
name [ 4 ] = "Guido" ;         mannfrau [ 4 ] = "Mann" ;
name [ 5 ] = "Doris" ;         mannfrau [ 5 ] = "Frau" ;
name [ 6 ] = "Christian" ;     mannfrau [ 6 ] = "Mann" ;
name [ 7 ] = "Constanze" ;     mannfrau [ 7 ] = "Frau" ;
name [ 8 ] = "Dirk" ;         mannfrau [ 8 ] = "Mann" ;

# while loop to find all wichtel
nochmal = 1 ;

while ( nochmal == 1 ) {
   nochmal = 0 ;
   for ( i = 1 ; i <= 8 ; i++ ) {
     neue = 1 ;
     while ( neue == 1 ) {
       neue = 0 ;
       random [ i ] = int ( ( rand ( ) * 8 ) + 1 ) ;
       for ( v = 1 ; v < i ; v++ ) {
         if ( random [ i ] == random [ v ] ) {
           neue = 1 ;
         }
       }
     }

     if ( random [ i ] == i ) { nochmal = 1 ; }
     if ( ( mannfrau [ i ] == "Frau" ) && ( random [ i ] == ( i + 1 ) ) ) { nochmal = 1 ; }
     if ( ( mannfrau [ i ] == "Mann" ) && ( random [ i ] == ( i - 1 ) ) ) { nochmal = 1 ; }
     tttt = random [ i ] ;
     wichtel [ i ] = name [ tttt ] ;
   }
}

# Output of results
for ( i = 1 ; i <= 8 ; i++ ) {
   print name [ i ] " beschenkt : " wichtel [ i ] ;
}

}


