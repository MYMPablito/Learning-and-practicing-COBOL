
       IDENTIFICATION DIVISION.
       PROGRAM-ID. performUntil.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 Numero PIC 99 VALUE ZEROS.

       PROCEDURE DIVISION.
       ObtenerNumero.
       DISPLAY "Introducir numero:"
       ACCEPT Numero.
       PERFORM MuestraNumero WITH TEST BEFORE
       UNTIL Numero = 30.
       STOP RUN.

       ObtenerOtroNumero.
       DISPLAY "Introducir otro numero:"
       ACCEPT Numero.
      *> el WITH TEST AFTER funciona igual que el DO WHILE.
       PERFORM MuestraNumero WITH TEST AFTER
       UNTIL Numero > 10.
       STOP RUN.

       MuestraNumero.
       DISPLAY Numero.
       ADD 1 TO Numero.


       END PROGRAM performUntil.
