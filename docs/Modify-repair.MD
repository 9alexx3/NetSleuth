# MODIFICACIÓN DE LA RED

# Modificación

En estos momentos solo se puede cambiar la configuración de la red en sistemas cuyo servicio de red es ***NetworkManager***.
Se preguntará si el cambio va ser temporal (hasta que se reinicie el sistema) o permanente y luego se pedirá si la conexión va a ser automática (dhcp) o de forma manual. Si se establece como forma manual, se le indicará al usuario una serie de preguntas para establecer las variables necesarias.

El script detectará la conexión activa y le preguntará al usuario si desea cambiar la conexión por otra.

![Cambiar la conf. de red.](/images/3-choose.png)

En caso de que no hubiera ninguna conexión activa, se seleccionaría una de las existentes mediante un menú. 
![Crear nueva conexión](/images/Create-Connection-NMCLI1.png)

También se puede crear una nueva conexión; dependiendo si la conexión es estática (fija) o automática (dhcp), se realizarán más o menos preguntas.


![Crear nueva conexión](/images/Create-Connection-NMCLI2.png)


En caso de que sea Wi-Fi, se escaneará todas las redes disponibles que encuentre la tarjeta inalámbrica seleccionada. Luego, se introducirá un número correspondiente a la lista cuyo objetivo es marcar la red Wi-Fi a la que se va a conectar.

![](/images/Wifi-Display.png)

Y automáticamente se establece la nueva conexión.

![](/images/Wifi-Display2.png)


> [!NOTE]
> Cada paso cuenta con una verificación ya sea de direcciones IPv4, como servidores DNS y en caso de texto (como nombre de conexión), se realizará una pregunta de confirmación para garantizar la autorización del usuario.


# Reparación

Actualmente la función de reparación está en desarrollo y no se encuentra disponible en estos momentos.



[Volver a la guía de escanear la conf. de red.](/docs/Scan-network.MD)


[Continuar con la guía escoger idioma.](/docs/Choose-lang.MD)