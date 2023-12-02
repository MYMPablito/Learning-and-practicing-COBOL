
       IDENTIFICATION DIVISION.
       PROGRAM-ID. condicionalIF.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
      *> Variables para las condicionales.
           01 Numero1 PIC 99 VALUE 10.
           01 Numero2 PIC 99 VALUE 50.
           01 Numero3 PIC 99 VALUE 10.

       PROCEDURE DIVISION.

       Condicionales.
      *> Primer IF.
       IF Numero1 > Numero2 THEN
           DISPLAY "Se ejecuta el primer IF."
       END-IF.

      *> Segundo IF.
       IF Numero3 < Numero2 THEN
           DISPLAY "Se ejecuta el segundo IF."
       END-IF.

      *> Expresion de igualdad. Distinto de otros lenguajes.

       IF Numero1 = Numero3 THEN
           DISPLAY "Estos numeros son iguales"
       END-IF.

      *> Expresion mayor o igual que y menor o igual que.

       IF Numero1 <= Numero2 THEN
           DISPLAY Numero1 " es menor o igual que " Numero2
       END-IF.

       IF Numero2 >= Numero1 THEN
           DISPLAY Numero2 " es mayor o igual que " Numero1
       END-IF.

      *> Las expresiones tienen sus palabras reservadas.

      *> Menor que:
       IF Numero1 LESS Numero2 THEN
           DISPLAY Numero1 " es menor que " Numero2
       END-IF.

      *> Menor o igual que:
       IF Numero1 LESS OR EQUAL Numero2 THEN
           DISPLAY Numero1 " es menor o igual que " Numero2
       END-IF.

      *> Mayor que:
       IF Numero2 GREATER Numero1 THEN
           DISPLAY Numero2 " es mayor que " Numero1
       END-IF.

      *> Mayor o igual que:
       IF Numero2 IS GREATER OR EQUAL Numero1 THEN
           DISPLAY Numero2 " es mayor o igual que " Numero1
       END-IF.



      *> Operaciones aritmeticas en expresiones condicionales.
       IF Numero1 + Numero2 NOT EQUAL Numero3 THEN
           DISPLAY "Efectivamente, ya que 10 + 10 = 20."
       END-IF.

       IF Numero1 < (Numero1 + Numero3) * Numero2 / Numero1 THEN
           DISPLAY "Si se cumple esta condicion"
       END-IF.





            STOP RUN.
       END PROGRAM condicionalIF.
