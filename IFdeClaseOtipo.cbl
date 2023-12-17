       IDENTIFICATION DIVISION.
       PROGRAM-ID. IFdeClaseOtipo.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
           SPECIAL-NAMES.
      *> Especificamos dos clases para tipos de numeros.
           CLASS Hexadecimal IS "A" THRU "F", "0" THRU "9".
           CLASS Decimal IS "0" THRU "9".

       DATA DIVISION.
       FILE SECTION.

       WORKING-STORAGE SECTION.
       77 nombre PIC A(20) VALUE "MAXIMILIANO".
      *> Defino variables para practicar con las clases.
       77 Numero1 PIC X(4) VALUE "A07F".
       77 Numero2 PIC 9(5) VALUE 41087.

       PROCEDURE DIVISION.
       RelacionClase.

      *> Para evaluar si el valor literal es numerico.
       IF 80 IS NUMERIC THEN
           DISPLAY "Este es un valor numerico"
       END-IF.

      *> Evalua si el valor literal es alfabetico.
       IF "Noelia" IS ALPHABETIC THEN
           DISPLAY "Este es un valor alfabetico"
       END-IF.

      *> Ver si algo esta todo en minusculas o mayusculas.

       IF nombre IS ALPHABETIC-LOWER THEN
           DISPLAY "Esta todo escrito en minusculas"
       ELSE
           DISPLAY "Esta todo escrito en minusculas"
       END-IF.

      *> Veo si no es numerico.
       IF nombre IS NOT NUMERIC THEN
           DISPLAY "El valor no es un numero"
       END-IF.

      *> Evaluo las clases arriba definidas.

       IF Numero1 IS Hexadecimal THEN
           DISPLAY Numero1" es un valor Hexadecimal"
       END-IF.

       IF Numero2 IS Decimal THEN
           DISPLAY Numero2" es un valor Decimal"
       END-IF.


            STOP RUN.
       END PROGRAM IFdeClaseOtipo.
