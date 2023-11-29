       IDENTIFICATION DIVISION.
       PROGRAM-ID. AritmeticaBasica.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
      *> Variables para los operandos.
           01 numero1 PIC 99 VALUE 25.
           01 numero2 PIC 99 VALUE 15.


      *> Variables para el resultado de la suma.
           01 resultado PIC 999 VALUE ZERO.

       PROCEDURE DIVISION.

           CalculaYMuestra.
               COMPUTE resultado = numero1 * numero2.

               DISPLAY "El resultado es: " resultado.

            STOP RUN.
       END PROGRAM AritmeticaBasica.
