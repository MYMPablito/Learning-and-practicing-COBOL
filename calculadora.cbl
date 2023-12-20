       IDENTIFICATION DIVISION.
       PROGRAM-ID. Calculadora.

       ENVIRONMENT DIVISION.


       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

      *> Tenemos 5 opciones (1-5).

       01 Opciones PIC 9 VALUE ZERO.
           88 Sumar VALUE 1.
           88 Restar VALUE 2.
           88 Multiplicar VALUE 3.
           88 Dividir VALUE 4.
           88 Salir VALUE 5.

       77 Numero1 PIC 999 VALUE ZEROS.
       77 Numero2 PIC 999 VALUE ZEROS.

       77 Resultado PIC S9999999 VALUE ZEROS.



       PROCEDURE DIVISION.

      *> Presenta un menu al usuario y le solicita una opcion.
       AceptaDatos.
       DISPLAY "Elige una operacion.".
       DISPLAY "1 - Sumar (+)".
       DISPLAY "2 - Restar (-)".
       DISPLAY "3 - Multiplicar (*)".
       DISPLAY "4 - Dividir (/)".
       DISPLAY "5 - Salir".
       ACCEPT Opciones.

      *> Con las opciones 1-5 vamos a los PERFORM correspondientes.

       EVALUATE TRUE

       WHEN Sumar
           PERFORM Suma

       WHEN Restar
           PERFORM Resta

       WHEN Multiplicar
           PERFORM Multiplicacion

       WHEN Dividir
           PERFORM Dividiendo

       WHEN Salir
           DISPLAY "Saliendo del programa..."
           STOP RUN

       WHEN OTHER
           DISPLAY "Opcion invalida. Intentalo de nuevo."
           PERFORM AceptaDatos

       END-EVALUATE.

      *> Comienzan los parrafos para los PERFORM. La ejecucion, finaliza
      *> despues de ejecutar su codigo.

       Suma.
           DISPLAY "Has elegido sumar".
           PERFORM SolicitaNumeros.
           ADD Numero1 TO Numero2 GIVING Resultado.
           DISPLAY "El resultado de la suma es: " Resultado "."
           PERFORM AceptaDatos.

       Resta.
           DISPLAY "Has elegido restar".
           PERFORM SolicitaNumeros.
           SUBTRACT Numero1 FROM Numero2 GIVING Resultado.
           DISPLAY "El resultado de la resta es: " Resultado "."
           PERFORM AceptaDatos.

       Multiplicacion.
           DISPLAY "Has elegido multiplicar".
           PERFORM SolicitaNumeros.
           MULTIPLY Numero1 BY Numero2 GIVING Resultado.
           DISPLAY "El producto de la multiplicacion es: " Resultado "."
           PERFORM AceptaDatos.

       Dividiendo.
           DISPLAY "Has elegido dividir".
           PERFORM SolicitaNumeros.
           DIVIDE Numero1 BY Numero2 GIVING Resultado.
           DISPLAY "El cociente de la division es: " Resultado "."
           PERFORM AceptaDatos.


       SolicitaNumeros.
           DISPLAY "Por favor, introduzca el primer numero.".
           ACCEPT Numero1.
           DISPLAY "Por favor, introduzca el segundo numero.".
           ACCEPT Numero2.


       END PROGRAM Calculadora.
