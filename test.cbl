
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRACTICANDO-COBOL.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
           SPECIAL-NAMES.
               DECIMAL-POINT IS COMMA.
               SYMBOLIC CHARACTERS MEDIO ARE 172
                                   CUARTO 173
                                   TRES-CUARTOS 244.

       INPUT-OUTPUT SECTION.
           FILE-CONTROL.
               SELECT OPTIONAL ARCHIVO-EMPLEADOS
               ASSIGN TO "empleados.dat"
               ORGANIZATION IS SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           01 NUMERO1 PIC 999 VALUE 15.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
      *> Son todos goldos
            DISPLAY "Medio: " MEDIO.
            DISPLAY "Un cuarto: " CUARTO.
            DISPLAY "Tres cuartos: " TRES-CUARTOS.
            DISPLAY NUMERO1.

            STOP RUN.
       END PROGRAM PRACTICANDO-COBOL.
