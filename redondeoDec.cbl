
       IDENTIFICATION DIVISION.
       PROGRAM-ID. redondeoDecimales.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
      *> Especificamos que el punto decimal es una coma.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       FILE SECTION.

       WORKING-STORAGE SECTION.
      *> Variables para practicar y demostrar el redondeo.
       77 Numero1 PIC 99V999 VALUE 10,556.
       77 Numero2 PIC 99 VALUE 20.
       77 Resultado PIC 99V99 VALUE ZEROS.

      *> Variables para practicar el resto de una division.
       77 Num1 PIC 99 VALUE 10.
       77 Num2 PIC 99 VALUE 3.
       77 ResultadoRes PIC 9 VALUE ZEROS.
       77 Resto PIC 9 VALUE ZEROS.

       PROCEDURE DIVISION.
       CalculosRedondeo.
      *> Redondeame el resultado.
            COMPUTE Resultado ROUNDED = Numero1 + Numero2.
            DISPLAY Resultado.

      *> Esto tambien es aplicable al resto de verbos de operaciones
      *> aritmeticas.

       ADD Numero1 TO Numero2 GIVING Resultado ROUNDED.
           DISPLAY "La suma redondeada es: " Resultado.

       SUBTRACT Numero1 FROM Numero2 GIVING Resultado ROUNDED.
           DISPLAY "La resta redeondeada es:" Resultado.

       MULTIPLY Numero1 BY Numero2 GIVING Resultado ROUNDED.
           DISPLAY "La multiplicacion redondeada es: " Resultado.

       DIVIDE Numero1 BY Numero2 GIVING Resultado ROUNDED.
           DISPLAY "La division redondeada es: " Resultado.


       CalculoResto.
      *> Realiza una division obteniendo el resultado y el resto.
       DIVIDE Num1 BY Num2 GIVING ResultadoRes REMAINDER Resto.
           DISPLAY "El resultado de la division es: " ResultadoRes.
           DISPLAY "El resto de la division es: " Resto.

            STOP RUN.
       END PROGRAM redondeoDecimales.
