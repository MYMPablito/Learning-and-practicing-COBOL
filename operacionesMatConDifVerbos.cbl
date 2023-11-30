
       IDENTIFICATION DIVISION.
       PROGRAM-ID. OperacionesMatematicasConVerbos.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
      *> Especificamos que el punto decimal es una coma.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

      *> Variables de numeros.
           01 N1 PIC 99 VALUE 80.
           01 N2 PIC 99 VALUE 20.

      *> Variable para almacenar el resultado.
           01 Resultado PIC S999 VALUE ZEROES.

      *> Variables de numeros para adicion multiple.
           01 Numero1 PIC 99V99 VALUE 10,55.
           01 Numero2 PIC 99V99 VALUE 0.
           01 Numero3 PIC 99V99 VALUE 0.
           01 Numero4 PIC 99V99 VALUE 0.

      *> Variable para almacenar resultado adicion multiple.
           01 ResultadoAdicionM PIC S9999V99 VALUE ZEROS.

      *> Variables de números para sustraccion multiple.
           01 Num1 PIC 99 VALUE 10.
           01 Num2 PIC 99 VALUE 30.
           01 Num3 PIC 99 VALUE 50.
           01 Num4 PIC 99 VALUE 80.

      *> Variable para almacenar resultado sustraccion multiple.
           01 ResultadoSusMultiple PIC S999 VALUE ZEROS.

      *> Variables de números para multiplicacion.
           01 Numb1 PIC 99 VALUE 85.
           01 Numb2 PIC 999 VALUE 150.

      *> Variable para almacenar el resultado de la multiplicacion.
           01 ResultadoMult PIC 999999 VALUE ZEROS.

      *> Variables de numeros para multiplicacion multiple.
           01 Nu1 PIC 999999 VALUE 80.
           01 Nu2 PIC 999999 VALUE 200.
           01 Nu3 PIC 999999 VALUE 35.
           01 Nu4 PIC 999999 VALUE 55.

      *> Variable para almacenar el resultado multiplicacion multiple.
           01 ResMultMultiple PIC 9(8) VALUE ZEROS.

      *> Variables de numeros para division y division multiple.
           01 Div1 PIC 9999 VALUE 100.
           01 Div2 PIC 9999 VALUE 50.
           01 Div3 PIC 9999 VALUE ZEROS.
           01 Div4 PIC 9999 VALUE ZEROS.
           01 Div5 PIC 9999 VALUE ZEROS.

      *> Variable para almacenar el resultado division.
           01 ResultadoDiv PIC 9999 VALUE ZEROS.


       PROCEDURE DIVISION.
       MuestraResultadoAdicion.
      *> Calcula el resultado.
           ADD N1 TO N2 GIVING Resultado.
      *> Muestra el resultado.
           DISPLAY "La suma de " N1 " + " N2 " es: " Resultado.

       MuestraResultadoAdicionMultiple.
      *> Adición múltiple de un mismo valor.
           ADD Numero1 TO Numero2, Numero3, Numero4.

      *> Muestra el resultado adicion multiple.
           DISPLAY Numero1.
           DISPLAY Numero2.
           DISPLAY Numero3.
           DISPLAY Numero4.


       MuestraResultadoSustraccion.
      *> Calcula el resultado.
           SUBTRACT N1 FROM N2 GIVING Resultado.
      *> Muestra el resultado.
           DISPLAY "La resta de " N1 " - " N2 " es: " Resultado.

       MuestraResultadoSusMultiple.
      *> Calcula el resultado sustraccion multiple.
           SUBTRACT Num1 FROM Num2, Num3, Num4.

      *> Muestra el resultado.
           DISPLAY Num1.
           DISPLAY Num2.
           DISPLAY Num3.
           DISPLAY Num4.

       MuestraResultadoMultiplicacion.

      *> Calcula el resultado multiplicacion.
           MULTIPLY Numb1 BY Numb2 GIVING ResultadoMult.

      *> Muestra el resultado.
           DISPLAY  Numb1 " * " Numb2 " es " ResultadoMult.

       MuestraResultadoMultMultiple.

      *> Calcula el resultado mult multiple.
           MULTIPLY Nu1 BY Nu2, Nu3, Nu4.

      *> Muestra el resultado.
           DISPLAY Nu1.
           DISPLAY Nu2.
           DISPLAY Nu3.
           DISPLAY Nu4.

       MuestraResultadoDivision.

      *> Calcula el resultado division.
           DIVIDE Div1 BY Div2 GIVING ResultadoDiv.

      *> Muestra el resultado.
           DISPLAY Div1 " / " Div2 " es " ResultadoDiv.

       MuestraResDivisionMultiple.

      *> Calcula resultado division multiple.
           DIVIDE Div1 BY Div2 GIVING Div3, Div4, Div5.

      *> Muestra el resultado.
           DISPLAY "Divisiones multiples: "
           DISPLAY Div1.
           DISPLAY Div2.
           DISPLAY Div3.
           DISPLAY Div4.




           STOP RUN.
       END PROGRAM OperacionesMatematicasConVerbos.
