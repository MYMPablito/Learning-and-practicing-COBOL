
       IDENTIFICATION DIVISION.
       PROGRAM-ID. OperacionesConDecimales.


       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
           SPECIAL-NAMES.
               DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
      *> Variables de números.
           01 Numero1 PIC S99V99 VALUE 10,55.
           01 Numero2 PIC S99V99 VALUE 65,20.


      *> Variables para almacenar el resultado.
           01 Resultado PIC S99V99 VALUE ZERO.

       PROCEDURE DIVISION.
       MuestraResultado.
      *> Calcula el resultado.

           COMPUTE Resultado = Numero1 - Numero2.

      *> Muestra el resultado.

           DISPLAY Resultado.

       STOP RUN.


       END PROGRAM OperacionesConDecimales.
