#! /usr/bin/awk -f

BEGIN {

srand () ;

printf ( "Wichtelauslosung Kinder\n\n" ) ;

name [1] = "Conrad" ; name [2] = "Clemens" ;
name [3] = "Johanna" ; name [4] = "Theo" ;
name [5] = "Carl-Moritz" ; name [6] = "Constantin" ;
name [7] = "Cornelius" ;

# while loop to find all wichtel
nochmal = 1 ;
while ( nochmal == 1 ) {
  nochmal = 0 ;
  for ( i=1; i<=7; i++ ) {
    neue = 1 ;
    while ( neue == 1 ) {
      neue = 0 ;
      random [i] = int ( ( rand() * 7 ) + 1 ) ;
      for ( v=1 ; v<i ; v++ ) {
        if ( random [i] == random [v] ) {
          neue = 1 ;
        }
      }
    }
  }
  for ( i=1; i<=7; i++ ) {
    if ( random[i] == i ) { nochmal = 1 ; }
  }
  if ( random[1] == 2 || random[2] == 1 ) { nochmal = 1 ; }
  if ( random[3] == 4 || random[4] == 3 ) { nochmal = 1 ; }
  if ( random[5] == 6 || random[6] == 5 ) { nochmal = 1 ; }
}

# Output of results
for ( i = 1 ; i <= 7 ; i++ ) {
   print name[i] " beschenkt : " name[random[i]] ;
}

}


