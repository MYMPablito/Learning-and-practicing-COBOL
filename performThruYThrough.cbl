       IDENTIFICATION DIVISION.
       PROGRAM-ID. performThruYThrough.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 Nombre PIC X(15) VALUE SPACES.
       77 Apellidos PIC X(40) VALUE SPACES.
       77 Edad PIC 999 VALUE ZEROS.
       77 Localidad PIC A(20) VALUE SPACES.

       PROCEDURE DIVISION.
       Saludo.
           PERFORM SolicitaNombre THROUGH SolicitaLocalidad.
           DISPLAY "Hola " Nombre " " Apellidos " tienes ".
           DISPLAY Edad " y vives en " Localidad.
           STOP RUN.

       SolicitaNombre.
           DISPLAY "¿Me puedes decir tu nombre?".
           ACCEPT Nombre.

       SolicitaApellidos.
           DISPLAY "¿Me puedes decir tu apellido?".
           ACCEPT Apellidos.

       SolicitaEdad.
           DISPLAY "Dime tu edad:"
           ACCEPT Edad.

       SolicitaLocalidad.
           DISPLAY "¿Donde vives?"
           ACCEPT Localidad.



       END PROGRAM performThruYThrough.
