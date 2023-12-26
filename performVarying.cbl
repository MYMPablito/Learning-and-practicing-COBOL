       IDENTIFICATION DIVISION.
       PROGRAM-ID. performVarying.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 Numero PIC 999 VALUE ZEROS.
       PROCEDURE DIVISION.

       Inicio.
       PERFORM Operacion
       VARYING Numero FROM 15
       BY 10 UNTIL Numero > 250.
       STOP RUN.



       Operacion.
       DISPLAY Numero.


       END PROGRAM performVarying.
