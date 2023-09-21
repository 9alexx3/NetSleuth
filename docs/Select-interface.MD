# MOSTRAR INTERFACES


Después de llevar a cabo las comprobaciones iniciales o escoger el cuarto menú *Re-elegir la interfaz de red.*, se generará una lista que incluirá todas las interfaces de red presentes en el sistema, excluyendo la interfaz de loopback.
Aparece con el siguiente formato:

Nombre de la interfaz: \[nombre\] {// Banda de Wi-Fi} // Chipset: \[Chipset\]


![Mostrar y escoger una interfaz](/images/Choose-Interface.png)


A continuación, se tendrá que poner el nombre exacto de la interfaz seleccionada en el prompt. La interfaz de loopback (lo), se descarta y no será válida.

![Mostrar y escoger una interfaz](/images/Choose-Interface-LO-ERROR.png)


También en caso de introducir una interfaz que no exista, saldrá un mensaje de error.
![Mostrar y escoger una interfaz](/images/Choose-Interface-noexists.png)


> [!IMPORTANT]
> La selección de interfaz es un paso **obligatorio** para la continuidad del script y este no parará hasta que se inserte una interfaz válida (o se finalice el proceso).


> [!NOTE]
> Las funciones son las siguientes:
>
> Detectar las interfaces del sistema → display_interfaces
>
> Escoger una interfaz → select_interface



[Regresar a Primeros Pasos.](/docs/First-steps.MD)


[Continuar con la guía del menú principal.](/docs/Menu.MD)