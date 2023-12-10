
       IDENTIFICATION DIVISION.
       PROGRAM-ID. IFanidadosYELSEIF.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       FILE SECTION.

       WORKING-STORAGE SECTION.
       77 Numero1 PIC 99 VALUE 10.
       77 Numero2 PIC 99 VALUE 20.


       PROCEDURE DIVISION.
       Condicionales.

       IF Numero1 = 20 AND Numero2 = 10 THEN
           DISPLAY "Cada numero tiene el valor deseado."
       ELSE IF Numero1 < 21 AND Numero2 > 15 THEN
           DISPLAY "Se aproximan los valores."
       ELSE
           DISPLAY "No tienen el valor deseado."
       END-IF.


      *> Condicional mas complejo.
      *> Inicio del IF primario.
       IF Numero1 > 10 THEN
           MOVE 15 TO Numero1
           DISPLAY "Numero1 vale 15"
      *> Inicio del IF secundario.
           IF Numero1 = 15 AND Numero2 < Numero1
      *> Inicio el IF terciario.
               IF Numero1 < Numero2
                   MOVE Numero2 TO Numero1
      *> Else del IF terciario.
               ELSE
                   MOVE Numero1 TO Numero2
                   DISPLAY "Ahora los dos numeros son iguales"
               END-IF
      *> Fin del IF terciario.
      *> Else del IF secundario.
           ELSE
               DISPLAY "No se ha cumplido la condicion del AND"
           END-IF
      *> Else del IF primario.
       ELSE
           DISPLAY "Numero1 no es mayor que 10."
      *> Fin del IF primario.

            STOP RUN.
       END PROGRAM IFanidadosYELSEIF.
