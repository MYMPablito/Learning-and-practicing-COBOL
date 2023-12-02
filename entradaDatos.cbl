
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EntradaDatos.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

      *> Variables para datos de usuario.

           01 Nombre PIC X(15) VALUE SPACES.
           01 Apellido PIC X(15) VALUE SPACES.
           01 Edad PIC X(3) VALUE SPACES.



       PROCEDURE DIVISION.

      *> Solicita datos al usuario.
       SolicitaDatos.

      *> Solicita el nombre:
           DISPLAY "Por favor, introduzca su nombre: ".
           ACCEPT Nombre.

      *> Solicita el apellido:
           DISPLAY "Ahora, introduzca su apellido: ".
           ACCEPT Apellido.

      *> Solicita la edad:
           DISPLAY "¡Perfecto! Por ultimo su edad: ".
           ACCEPT Edad.

       MuestraDatos.

          *> Da bienvenida con datos introducidos.

           DISPLAY "¡Bienvenido! "
           DISPLAY Nombre.
           DISPLAY Apellido.
           DISPLAY "de "Edad " de edad".


            STOP RUN.
       END PROGRAM EntradaDatos.
