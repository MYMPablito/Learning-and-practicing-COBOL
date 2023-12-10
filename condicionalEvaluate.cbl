
       IDENTIFICATION DIVISION.
       PROGRAM-ID. condicionalEvaluate.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       FILE SECTION.


       WORKING-STORAGE SECTION.
      *> El condicional EVALUATE sirve cuando queremos evaluar multiples
      *> condiciones. Seria lo equivalente ELSE IF en otros lenguajes. Y
      *> se usa para evitar repeticiones.

      *> Defino variable para evaluar edades.
       77 Edad PIC 999 VALUE ZEROS.

      *> Defino variable para crear un menu de opciones en cobol.
       77 valorMenu PIC 999 VALUE ZEROS.


       PROCEDURE DIVISION.
       CompruebaEdad.
      *> Se le solicita la edad al usuario.
       DISPLAY "Introduce tu edad por favor: "
       ACCEPT Edad.

       OpcionesMenu.
       DISPLAY "Por favor, introduzca un numero"
       " de opcion y pulse ENTER:".

       DISPLAY "1 - Suma".
       DISPLAY "2 - Resta".
       DISPLAY "3 - Multiplicacion".
       DISPLAY "4 - Division".
       DISPLAY "5 - Potenciacion"
       DISPLAY "6 - Radicacion"
       DISPLAY "7 - Operacion Combinada"

       ACCEPT valorMenu.

       Menu.
       EVALUATE valorMenu

           WHEN 1
               DISPLAY "Ha seleccionado la suma"

           WHEN 2
               DISPLAY "Ha seleccionado la resta"

           WHEN 3
               DISPLAY "Ha seleccionado la multiplicacion"

           WHEN 4
               DISPLAY "Ha seleccionado la division"

           WHEN 5
               DISPLAY "Ha seleccionado la potenciacion"

           WHEN 6
               DISPLAY "Ha seleccionado la radicacion"

           WHEN 7
               DISPLAY "Ha seleccionado una operacion combinada"

           WHEN OTHER
               DISPLAY "Operacion - Opcion NO PERMITIDA O INCORRECTA."

       END-EVALUATE.

       elCondicionalEvaluate.

       EVALUATE Edad

         WHEN 1 THRU 39
           DISPLAY "Eres joven." WITH NO ADVANCING

         WHEN 40 THRU 65
           DISPLAY "Eres maduro." WITH NO ADVANCING

         WHEN 66 THRU 100
           DISPLAY "Eres mayor de edad." WITH NO ADVANCING

         WHEN OTHER
           DISPLAY "Edad incorrecta" WITH NO ADVANCING

       END-EVALUATE.






            STOP RUN.
       END PROGRAM condicionalEvaluate.
