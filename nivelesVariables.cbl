
       IDENTIFICATION DIVISION.
       PROGRAM-ID. funcNivelesVar.

       ENVIRONMENT DIVISION.


       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
      *> Niveles de ejecucion.
      *> Categorias de numeros de nivel.

      *> Proposito general, del nivel 01 - 49.
      *> Individuales: 01 o 77 nada mas.
      *> Variables de grupo y elementales.

       01 Usuario.
           05 Nombre PIC X(15) VALUE SPACES.
           05 Apellidos.
               10 primerApellido PIC X(30) VALUE SPACES.
               10 segundoApellido PIC X(30) VALUE SPACES.
           05 Telefonos.
               10 TelCasa PIC X(12) VALUE SPACES.
               10 TelTrabajo PIC X(12) VALUE SPACES.
               10 TelOtro PIC X(12) VALUE SPACES.

      *> Proposito especial: 66, 77 y 88.
      *> 66 se usa para la clausula RENAMES.
      *> 77 esta hecho para variables individuales.
      *> Su desventaja es que NO se puede subdividir.

       77 nombreCompleto PIC X(25) VALUE SPACES.


       PROCEDURE DIVISION.


            STOP RUN.
       END PROGRAM funcNivelesVar.
