
       IDENTIFICATION DIVISION.
       PROGRAM-ID. operadoresLogicos.

       ENVIRONMENT DIVISION.


       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 Numero1 PIC 99 VALUE 10.
       77 Numero2 PIC 99 VALUE 10.


       PROCEDURE DIVISION.
       OperadoresLogicos.
      *> Comparaciones con operadores logicos.
      *> AND.
       IF Numero1 > 5 AND Numero2 < 11 THEN
           DISPLAY "Se cumple la condicion del AND."
       END-IF.

      *> OR.

       IF Numero1 > 6 OR Numero2 < 20 THEN
           DISPLAY "Se cumple una condicion del OR."
       END-IF.

      *> NOT.

       IF Numero1 NOT = 11 AND Numero2 NOT = 12 THEN
           DISPLAY "Se cumple la condicion del NOT."
       END-IF.



            STOP RUN.
       END PROGRAM operadoresLogicos.
