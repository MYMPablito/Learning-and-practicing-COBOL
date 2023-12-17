       IDENTIFICATION DIVISION.
       PROGRAM-ID. IFdeSigno.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 numeroPos PIC S99 VALUE +10.
       77 numeroNeg PIC S99 VALUE -10.
       77 numeroCero PIC S99 VALUE ZEROS.
       PROCEDURE DIVISION.

       Ejemplos.
       RelacionSigno.

       IF numeroPos IS POSITIVE THEN
           DISPLAY "Este numero es positivo"
       END-IF.

       IF numeroNeg IS NEGATIVE THEN
           DISPLAY "Este numero es negativo"
       END-IF.

       IF numeroPos IS NOT NEGATIVE THEN
           DISPLAY "Este numero no es negativo"
       END-IF.

       IF numeroNeg IS NOT POSITIVE THEN
           DISPLAY "Este numero no es positivo"
       END-IF.

       IF numeroCero IS ZERO THEN
           DISPLAY "Este es el numero cero"
       END-IF.

       IF numeroPos IS NOT ZERO THEN
           DISPLAY "Este numero es distinto de cero"
       END-IF.


           STOP RUN.
       END PROGRAM IFdeSigno.
