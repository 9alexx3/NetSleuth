# Mostrar la características de la red

Se mostrará todas las propiedades de la interfaz escogida previamente que son:
![Información de la red](/images/1-info-1.png)

Si la conexión es Wi-Fi, saldrá el BSSID, su respectiva señal indicando si es buena o mala, la banda Wi-Fi, su frecuencia, la velocidad, la contraseña del Wi-Fi (si es que tiene permisos de administrador) y si la interfaz está en modo monitor o no.
![Características Wi-Fi](/images/1-info-Wifi.png)

Si es una conexión DHCP, saldrá información acerca de la concesión.


Por último, se mostrará la dirección IP pública, que en este caso esta censurada. En caso de que no quieres que salga por privacidad, ejecuta el script con el parámetro "*--IP*" .

```
sudo bash NetSleuth.sh --IP
```


![Información de la red](/images/1-info-2.png)


El script se congelará tras publicar toda la información anterior. Para continuar con la ejecución se tiene que presionar la tecla *Intro*.


[Volver a la guía del menú principal.](/docs/Menu.MD)


[Continuar con la guía escanear la conf. de red.](/docs/Scan-network.MD)