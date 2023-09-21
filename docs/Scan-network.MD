# ESCANEAR LA RED EN BUSCA DE FALLOS

NetSleuth realiza una serie de escaneos para detectar posibles errores en la configuración del sistema.

Estos escaneos se pueden dividir en:
- ## Escaneo de IPv4:
Se valida las direcciones IPv4 del sistema y de la puerta de enlace para verificar que son válidas. Además, se comprueba que ambas direcciones se encuentran en la misma subred mediante una operación aritmética usando la máscara de subred.



- ## Detección de conectividad:
El script detecta la conectividad entre el sistema y los medios disponibles. Esto implica validar si existe una conexión por cable Ethernet y asegurarse de que esté conectada. Del mismo modo, se verifica la conexión inalámbrica, como el Wi-Fi, y su conexión a un punto de acceso (AP).



- ## Comprobación de la puerta de enlace:
Se verifica la conectividad con la puerta de enlace mediante una serie de pings. Cuando al menos uno de estos pings, resulta exitoso, se considerará que la puerta de enlace (gateway) funciona correctamente. En caso de la inactividad por parte del gateway, se considerará que el fallo está en la puerta de enlace y se mostrará su dirección IPv4 para asegurar que es la dirección correcta.



- ## ISP
*Esta función está en fase de **prueba** y la efectividad no está garantizada al 100%*
Se realiza una traceroute a la dirección IPv4 1.1.1.1 y se comprobará los nodos adyacentes. El script verificará cada dirección IPv4 de los nodos. En caso de que la dirección del nodo sea pública, indica que el paquete a salida hacia Internet lo que descarta una caida por parte del ISP.



- ## DNS
NetSleuth comprobará cada dirección DNS realizando una consulta "A" con la dirección de "google.com". El resultado puede tener tres variantes:
1. Válido. El servidor DNS respondió satisfactoriamente la consulta por lo que se estima que funciona correctamente.
1. Conectado. La consulta realizada no recibió respuesta pero el host está online debido a un ping, es decir, hay un fallo con el servicio DNS por parte del servidor y no del cliente.
1. Desconectado. Tanto la consulta DNS como el ping para indicar si el host está activo dan fallo, por lo que se asume que el servidor DNS ya no funciona.



- ## Nsswitch
Se examina el archivo */etc/nsswitch.conf*, especifica la fuente de datos y el orden en el que se deben consultar diferentes bases de datos de nombres de sistemas el cual obligatoriamente tiene que aparecer la entrada "files" el cual indica el archivo */etc/hosts*. También tiene que aparecer la entrada "dns" que hace referencia al archivo */etc/resolv.conf*



- ## Duplicación de IPs duplicadas:
Una de las mejores funciones del script, realiza un escaneo ARP a una dirección IP concreta, si se recibe varias respuestas de distintas MACs, se da por sentado que hay duplicación de IPs y aparecerá con una tabla formateada.
Debido a que realiza una escaneo ARP broadcast preguntando por una IP en concreto, muchos sistemas de seguridad como IDS/IPS... lo detectan como tráfico sospechoso y podría generar una alerta. Debido a esto, se realizará una pregunta para saber si la función debe ser ejecutada o no.
![Detector de IPs duplicadas](/images/2-check-duplicateIP.png)


Esta característica tiene que disponer de permisos de administrador (sudo).
![Detector de IPs duplicadas](/images/2-check-ok.png)


En caso de que hubiera algún fallo, mostraría un mensaje de error indicando cuál es el problema.



[Volver a la guía del menú principal.](/docs/Menu.MD)


[Continuar con la guía modificar y reparar la conf. de red.](/docs/Modify-repair.MD)