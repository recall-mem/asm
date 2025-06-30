section .data  ;data segment

    var0 DB 64 ;declare a byte containing 64 as a value, location is var0

    var1 DB ?  ;declare an uninitialized byte, location is var1
         DB 10 ;now we declared a byte with no label to acces its location, its location is var1 + 1
    
    list1 DB 1,2,3 ; declare 3 bytes holding value 1, 2 and 3 

    var3 DW ?  ;declare uninitialized two bytes with label var3

    var4 DD 30000 ;declare a 4-byte value, initialized to 30000
    
    var5 DB 3 DUP(5) ;declare 3 byte, value is 5
     ;var5+1 points to second byte of block
     ;demo:    
     ;    var5      var5+1
     ;    0x5        0x5

