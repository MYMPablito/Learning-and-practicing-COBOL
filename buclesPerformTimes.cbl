       IDENTIFICATION DIVISION.
       PROGRAM-ID. buclesPerformTimes.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.
       Bucles.
      *> Ejecuta esta tarea N cantidad de veces.

       PERFORM 10 TIMES
           DISPLAY "Me repito varias veces"
       END-PERFORM.

      *> Por parrafos:

       PERFORM Saludos 5 TIMES.
       STOP RUN.


       Saludos.
           DISPLAY "Hola a todos".


       END PROGRAM buclesPerformTimes.
