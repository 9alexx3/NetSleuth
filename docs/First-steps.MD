# PRIMEROS PASOS

En esta guía se documentará todos los pasos que realiza *NetSleuth*.

# Control de ejecución

El script cuenta con un control de ejecución que se activa cuando se presiona la combinación de teclas `Control + C`, para establecer forzosamente el cursor de la pantalla, como su color.

# Detector de pantalla


La primera acción que realiza el script es detectar la resolución de la pantalla utilizando la función *detect_screen_resolution* para verificar si se cumple el requisito mínimo de ***80x24*** píxeles. Cuando este requisito no se cumple, se invoca la función *autodetect_language* con el parámetro *"skip"* para evitar la impresión del mensaje de idioma, lo que resulta en un mensaje de error indicando que la resolución no es adecuada y la terminación del script. En el caso en que se cumpla el requisito de resolución mínima, se ejecuta la función del *banner* y posteriormente la función para detectar el idioma, que imprimirá el idioma y la resolución de pantalla correspondientes como primer y segundo mensaje, respectivamente.


# Versión de Bash

Luego, se validará la versión de **bash** mediante la función *bash_version*. Si la versión es inferior a **4.2**, se informará del error y se forzará la cancelación del proceso. En caso contrario, se mostrará un mensaje indicando la versión bash del sistema.


# Comprobación de la distribución del sistema

Posteriormente, el script llevará a cabo la detección de la distribución del sistema operativo que se está utilizando usando la función *check_distros*. Esta detección es fundamental (en un futuro) para determinar y ejecutar las acciones adecuadas en función de la distribución específica, garantizando así la compatibilidad y el rendimiento óptimo en distintos entornos. 


# Análisis de las herramientas obligatorias

En desarrollo... (aún no disponible).


# Parámetros

NetSleuth cuenta con dos pequeños modificadores pasados a través de parámetros:
- Ayuda 
A través de ***--help***, la cual proporciona una pequeña descripción de ayuda del script.
![Comando ayuda](/images/Command-Help.png)

- Ocultar IPv4 pública
Con el parámetro ***-IP*** o **--no-ip**. Cuando se muestre las características de la interfaz, se visualizará un mensaje indicando que se ha saltado esta característica.

![Ocultar IPv4 pública](/images/hide.png)



Tras estas comprobaciones previas, se tendrá que presionar la tecla "Intro" para continuar con la ejecución del sistema. Este mensaje es gracias a la función *enter_to_next*.


[Ir al seleccionador de interfaces.](/docs/Select-interface.MD)