
       IDENTIFICATION DIVISION.
       PROGRAM-ID. IncrementoYDecrementoBucles.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 Numero1 PIC S9 VALUE 8.

       PROCEDURE DIVISION.
       Inicio.
       PERFORM Operacion 7 TIMES.
       STOP RUN.

       Operacion.
      *> Incremento.
      *> ADD 1 TO Numero1.
      *> DISPLAY Numero1.

      *> Decremento.
       SUBTRACT 1 FROM Numero1.
       DISPLAY Numero1.

      *> Otra forma:
      *>PERFORM 7 TIMES
      *>ADD 10 TO Numero1
      *>DISPLAY Numero1
      *>END-PERFORM.
      *>STOP RUN.


       END PROGRAM IncrementoYDecrementoBucles.
