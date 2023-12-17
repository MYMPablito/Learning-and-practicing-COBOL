       IDENTIFICATION DIVISION.
       PROGRAM-ID. manejoErrores.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       FILE SECTION.

       WORKING-STORAGE SECTION.
       77 Numero1 PIC 999 VALUE 100.
       77 Numero2 PIC 999 VALUE 200.
       77 Resultado PIC 99999 VALUE ZEROS.


       PROCEDURE DIVISION.
       Calculos.
       COMPUTE Resultado = Numero1 * Numero2
      *> ON SIZE ERROR Solo se lanza si el numero no cabe en el PICTURE.
           ON SIZE ERROR DISPLAY "Numero demasiado grande."
       END-COMPUTE.

       DISPLAY Resultado.

      *> Tambien se pueden usar las operaciones matematicas y sus verbos

       MULTIPLY Numero1 BY Numero2 GIVING Resultado
           ON SIZE ERROR
           DISPLAY "El numero es muy grande, no se "
           "visualiza entero."
       END-MULTIPLY.

       DISPLAY Resultado.

            STOP RUN.
       END PROGRAM manejoErrores.
