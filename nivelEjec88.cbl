
       IDENTIFICATION DIVISION.
       PROGRAM-ID. nivelEjec88.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 Edad PIC 999 VALUE ZEROS.
           88 Joven VALUE 1 THRU 39.
           88 Maduro VALUE 40 THRU 65.
           88 Anciano VALUE 66 THRU 100.

       PROCEDURE DIVISION.
       CompruebaEdad.
      *> Se le solicita la edad al usuario.
       DISPLAY "Por favor, introduce tu edad: "
       ACCEPT Edad.

      *> Se evaluan posibles valores.
       IF Joven THEN
           DISPLAY "Eres joven. " WITH NO ADVANCING
       END-IF.

       IF Maduro THEN
           DISPLAY "Eres maduro. " WITH NO ADVANCING
       END-IF.

       IF Anciano THEN
           DISPLAY "Eres una persona mayor. " WITH NO ADVANCING
       END-IF.


       DISPLAY "Tienes " Edad " anios.".



            STOP RUN.
       END PROGRAM nivelEjec88.
