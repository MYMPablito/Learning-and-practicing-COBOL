
       IDENTIFICATION DIVISION.
       PROGRAM-ID. elVerboPerform.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.
      *> Alteramos el flujo de ejecucion normal.
       Parrafo1.
           DISPLAY "Estas en el parrafo 1".
           PERFORM Parrafo3.

       Parrafo2.
           DISPLAY "Estas en el parrafo 2".
           DISPLAY "Aqui termina todo".
           STOP RUN.

       Parrafo3.
           DISPLAY "Estas en el parrafo 3".


       END PROGRAM elVerboPerform.
