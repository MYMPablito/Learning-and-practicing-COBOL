       IDENTIFICATION DIVISION.
       PROGRAM-ID. creandoMenuDeConsola.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

      *> Tenemos 3 opciones (1-4), Si ponemos algo que no sea un numero,
      *> queda en ZERO.
       01 Opcion PIC 9 VALUE ZERO.
           88 Opcion1 VALUE 1.
           88 Opcion2 VALUE 2.
           88 Opcion3 VALUE 3.
           88 Salir VALUE 4.


       PROCEDURE DIVISION.

      *> Solicita un numero del 1 al 3 al usuario.
       AceptaDatos.
       DISPLAY "Introduce un numero del 1 al 3 para ejecutar una"-
       " de las opciones. Si quieres salir, introduzca el numero 4".
       ACCEPT Opcion.

      *> Con las opciones 1-3 vamos a los PERFORM correspondientes.
       IF Opcion1 THEN
           DISPLAY "Usted selecciono la primer opcion."
           PERFORM Parrafo1
       ELSE
           IF Opcion2 THEN
               DISPLAY "Usted selecciono la segunda opcion."
               PERFORM Parrafo2
           ELSE
               IF Opcion3 THEN
                   DISPLAY "Usted selecciono la tercer opcion."
                   PERFORM Parrafo3
               ELSE
                   IF Salir THEN
                       DISPLAY "Saliendo del programa..."
                       STOP RUN
                   ELSE
                       DISPLAY "Opcion invalida. Intentalo de nuevo."
                       PERFORM AceptaDatos
                   END-IF
               END-IF
           END-IF
       END-IF.

      *> Comienzan los parrafos para los PERFORM. La ejecucion, finaliza
      *> despues de ejecutar su codigo.
       Parrafo1.
           DISPLAY "Estas en el parrafo 1."
           STOP RUN.
       Parrafo2.
           DISPLAY "Estas en el parrafo 2."
           STOP RUN.
       Parrafo3.
           DISPLAY "Estas en el parrafo 3."
           STOP RUN.


       END PROGRAM creandoMenuDeConsola.
