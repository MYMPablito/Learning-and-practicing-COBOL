       IDENTIFICATION DIVISION.
       PROGRAM-ID. ViendoVariables.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           01 nombreCompleto PIC X(20) VALUE "Pablo Fernandez".
           01 queEstudio PICTURE IS A(17) VALUE "El lenguaje COBOL".
           01 loQueMeGusta PIC IS X(16) VALUE "Programación".
           01 queLograre PIC X(40) VALUE "Ser Desarrollador COBOL Jr.".
           01 miEdad PICTURE IS 9(2) VALUE 32.
           01 miPesoActual PICTURE IS 99V99 VALUE 88.5.
           01 mesesPasados PICTURE IS S9V9 VALUE +3.5.
           01 numeroRandom PICTURE IS 9(9)V99999 VALUE 555555555.55555.


       PROCEDURE DIVISION.
       MuestraNombreCompleto.

           DISPLAY "Mi nombre es: "nombreCompleto.

       MuestraqueEstudio.

           DISPLAY "Estoy estudiando: "queEstudio.

       MuestraQueMeGusta.

           DISPLAY "Me gusta estudiar: "loQueMeGusta.

       MuestraloQueLograre.

           DISPLAY "Sé que en un futuro cercano lograré: "queLograre.

       MuestramiEdad.

           DISPLAY "Mi edad actual es: "miEdad.

       MuestramiPesoActual.

           DISPLAY "Actualmente peso: "miPesoActual.

       MuestralosMesesPasados.

           DISPLAY "Llevo estudiando COBOL hace: "mesesPasados " meses".

       MuestranumeroRandom.

           DISPLAY "Número usado para ejercitar: "numeroRandom.


            STOP RUN.
       END PROGRAM ViendoVariables.
