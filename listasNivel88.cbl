
       IDENTIFICATION DIVISION.
       PROGRAM-ID. listasNivel88.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       FILE SECTION.

       WORKING-STORAGE SECTION.
      *> Defino variables para trabajar con bucles.
      *> Variables dias de la semana.
       01 diaSemana PIC 9 VALUE ZERO.
           88 Lunes VALUE 1.
           88 Martes VALUE 2.
           88 Miercoles VALUE 3.
           88 Jueves VALUE 4.
           88 Viernes VALUE 5.
           88 Sabado VALUE 6.
           88 Domingo VALUE 7.

      *> Variables continentes y paises del mundo.
       01 Mundo PIC X(20).
           88 PaisesAsiaticos VALUES "Butan" "Iran" "China" "Japon".
           88 Africa VALUES "Egipto" "Etiopia" "Libia" "Marruecos"
           "Nigeria" "Republica del Congo" "Senegal".
           88 America VALUES "Argentina" "Mexico" "Colombia" "Peru"
           "Republica Dominicana" "Venezuela" "Chile".
           88 Asia VALUES "Butan" "Malasia" "Iran" "China" "Japon"
           "Turquia" "Mongolia".
           88 Europa VALUES "Australia" "Nueva Zelanda" "Samoa"
           "Micronesia" "Tuvalu" "Palaos".



       PROCEDURE DIVISION.
       SeleccionaDia.
       DISPLAY "¿Que dia de la semana estamos? (1-7)"
       ACCEPT diaSemana.

       IF Lunes THEN
           DISPLAY "Recien estas empezando"
       ELSE
           IF Martes THEN
               DISPLAY "Un dia menos para el fin de semana"
           ELSE
               IF Miercoles THEN
                   DISPLAY "¿Trabajando duro o durando en el trabajo?"
               ELSE
                   IF Jueves THEN
                       DISPLAY "Se acerca el finde"
                   ELSE
                       IF Viernes THEN
                           DISPLAY "Solo te queda hoy"
                       ELSE
                           IF Sabado THEN
                               DISPLAY "Hoy te la das en la pera"
                           ELSE
                               IF Domingo THEN
                                   DISPLAY "Asadito con familia"
                               ELSE
                                   DISPLAY "Coloca un dia valido"
       END-IF.

       SeleccionaPais.
       DISPLAY "Introduce un pais y te digosi esta en la BDD".
       ACCEPT Mundo.

       IF PaisesAsiaticos AND Asia THEN
           DISPLAY "El pais asiatico esta en la lista"
       ELSE
           IF Asia THEN
               DISPLAY "El pais es asiatico, pero no esta en la lista"
               " de paises especificados."
           ELSE
               DISPLAY "El pais no es asiatico"
           END-IF
       END-IF.


            STOP RUN.
       END PROGRAM listasNivel88.
