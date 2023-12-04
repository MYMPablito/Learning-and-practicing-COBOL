
       IDENTIFICATION DIVISION.
       PROGRAM-ID. evaluarTipoDeDatoYCLASS.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
      *> Declaramos una clase:
           CLASS Abecedario IS "A" THRU "Z".
           CLASS AbcLower IS "a" THRU "z".



      *> CLASS Multirango:
           CLASS AbecedarioDefinitivo IS "A" THRU "Z", "a" THRU "z".

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
      *> Coloco variables.

       01 anioNac PIC 9999 VALUE 1975.
       01 Localidad PIC X(8) VALUE "MENDOZA".
       01 Letra PIC X VALUE "W".
       01 LetraMin PIC X VALUE "r".
       01 cualquierLetra PIC X(4) VALUE "AbrX".

       PROCEDURE DIVISION.
       FuncionamientoCondicional.

      *> Evaluo valores numericos:

       IF anioNac IS NUMERIC THEN
           DISPLAY "El caballero Matias Albornoz nacio en el " anioNac
       END-IF.

      *> Evaluo valores alfabeticos:
       IF Localidad IS ALPHABETIC THEN
           DISPLAY "Vive en la provincia de " Localidad
       END-IF.

      *> Si sus caracteres estan en mayusculas o minusculas:

       IF Localidad IS ALPHABETIC-LOWER THEN
           DISPLAY "Esta escrito en minusculas"
       END-IF.

       IF Localidad IS ALPHABETIC-UPPER THEN
           DISPLAY "Esta escrito en MAYUSCULAS"
       END-IF.

      *> Evaluo por una clase (registro de valor):

       IF Letra IS Abecedario THEN
           DISPLAY "Si, se encuentra, es la letra " Letra
       END-IF.

       IF LetraMin IS AbcLower THEN
           DISPLAY "Si, es la letra " LetraMin " en minusculas."
       END-IF.

       IF cualquierLetra IS AbecedarioDefinitivo THEN
           DISPLAY "Si, se cumple."
       END-IF.


            STOP RUN.
       END PROGRAM evaluarTipoDeDatoYCLASS.
