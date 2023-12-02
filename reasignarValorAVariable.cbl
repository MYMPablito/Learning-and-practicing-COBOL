
       IDENTIFICATION DIVISION.
       PROGRAM-ID. reasignarValorAVariable.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
      *> Variables para datos de usuario.
           01 Nombre PIC X(16) VALUE SPACES.
           01 Apellidos PIC X(32) VALUE SPACES.
           01 Edad PIC X(3) VALUE SPACES.
           01 Numero PIC 9(16) VALUE ZEROS.
           01 Resultado PIC 9(16) VALUE ZEROS.


       PROCEDURE DIVISION.
      *> Se reasignan y muestran valores.
       ReasignaValores.
           DISPLAY Nombre.
           MOVE "Facundo" TO Nombre.
           DISPLAY Nombre.






            STOP RUN.
       END PROGRAM reasignarValorAVariable.
