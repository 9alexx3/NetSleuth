# NetSleuth

<div align="center">
	<br />
	<p>
		<img src="/images/Logo.PNG" width="350" alt="discord.js" />
	</p>
	<br />
	<p>
		<a href=""><img src="https://img.shields.io/badge/bash-4.2%2B-blue.svg?style=flat-square&colorA=273133&colorB=purple" alt="" /></a>
		<a href=""><img src="https://img.shields.io/badge/version-1.0-blue.svg?style=flat-square&colorA=273133&colorB=0093ee" alt="" /></a>
		<a href=""><img src="https://img.shields.io/badge/license-GPL%20v3%2B-blue.svg?style=flat-square&colorA=273133&colorB=00db00" alt="" /></a>
    	<a href="https://discord.gg/wv35VBJrHM"><img src="https://img.shields.io/discord/1164646485372178504.svg?style=flat-square&colorA=273133&colorB=23a559&logo=discord&label=Server" alt="Discord" /></a>
	</p>
</div>


---


# ¿Qué es NetSleuth?


Este script ha sido diseñado con el objetivo de simplificar la configuración de redes en sistemas Linux. Ofrece tres funciones principales:

  1. Visualización de la configuración actual en un formato fácil de leer.
  2. La detección de posibles fallos para su futura resolución.
  3. Modificación de la configuración de red a través de una serie de preguntas interactivas.

Detección de posibles fallos para su posterior resolución.


# Uso

Se debe lanzar con permisos de administración (sudo) para poder ejecutar todas las funcionalidades del script.
Cuando no se lanza como sudo, como resultado aparecerá un mensaje de error cuando se intente realizar algunas características especiales.
Se recomienda encarecidamente leer la documentación del script.
```
sudo bash NetSleuth.sh
```


# Wiki

Actualmente existe una documentación muy básica desde este repositorios a través de archivos Markdown (.MD)

[Ir al principio de la documentación.](/docs/First-steps.MD)

La pestaña "Wiki" de este repositorio es la misma que la documentación pero por comodidad, se recomienda esta opción.


# Distribuciones testeadas

• <a href="https://parrotsec.org/"> <img src="https://upload.wikimedia.org/wikipedia/commons/4/45/Parrot_Logo.png" width="30" height="30"> Parrot Security 5.3</a><br>
• <a href="https://kali.org"> <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/2b/Kali-dragon-icon.svg/2048px-Kali-dragon-icon.svg.png" width="30" height="30"> Kali Linux 2023.3</a><br>
• <a href="https://rockylinux.org/"> <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/77/Rocky_Linux_logo.svg/4096px-Rocky_Linux_logo.svg.png" width="30" height="30"> Rocky Linux 8 & 9</a><br>
• <a href="https://ubuntu.com/download/desktop"> <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/UbuntuCoF.svg/2048px-UbuntuCoF.svg.png" width="30" height="30"> Ubuntu Desktop 10.04 & 23.04 LTS</a><br>
• <a href="https://ubuntu.com/download/server"> <img src="https://upload.wikimedia.org/wikipedia/commons/1/16/Ubuntu_and_Ubuntu_Server_Icon.png" width="30" height="30"> Ubuntu Server 10.04 & 23.04 LTS</a><br>
• <a href="https://www.debian.org"> <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/66/Openlogo-debianV2.svg/410px-Openlogo-debianV2.svg.png" width="30" height="30"> Debian 9, 10 & 12</a><br>


# Distribuciones incompatibles
• <a href="https://www.microsoft.com/en-us/windows/?r=1"> <img src="https://seeklogo.com/images/W/windows-11-icon-logo-6C39629E45-seeklogo.com.png" width="30" height="30"> Windows</a><br>
• <a href="https://www.apple.com/es/mac/"> <img src="https://restoreprivacy.com/wp-content/uploads/2022/06/best-VPN-for-mac-OS.png" width="30" height="30"> Mac OS</a><br>


# ¿Por qué hiciste el script?


El concepto del script se originó hace aproximadamente tres años, durante mis primeros pasos en el mundo de Linux y la programación en bash. En aquel entonces, mi falta de experiencia provocaba bloqueos del sistemas, específicamente relacionados con la configuración de red, concretamente en el DNS. Por lo que pensé que estaría bien un script universal, es decir, un script multiplataforma que independientemente de la distribución y de la versión, funcionara correctamente.
Además de la razón mencionada anteriormente, también se reconoció la necesidad de contar con una solución eficaz para abordar problemas tan básicos como la conectividad en sistemas Linux. Dada la larga historia de Linux y su constante evolución con nuevos proyectos, dedicar tiempo a resolver problemas básicos puede parecer obsoleto y poco eficiente en un entorno de rápido desarrollo tecnológico.


# ¿Puedo ayudar en algo?

La respuesta es un gran **SÍ**. Yo solo no puedo aborcar todo el proceso de desarrollo y testeo. Mi hardware es limitado por lo tanto también limita la capacidad de detección de errores y configuración de sistemas, ya que no dispongo conocimientos de las distintas distribuciones, buenas/malas prácticas. También está el idioma.

No puedo abordar por completo el proceso de desarrollo y pruebas debido a limitaciones de recursos y conocimientos. Mi hardware es limitado, lo que afecta mi capacidad para detectar errores. Además, no tengo conocimiento de las diversas distribuciones y las mejores prácticas. El idioma también es una limitación.

Existe un [archivo](/TODO.MD) el cual es una lista con todo lo que se tiene planeado (de momento) con el script y su progresión. Si tienes alguna sugerencia, ¡no te la quedes, **compartela**!
