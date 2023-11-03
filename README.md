# Proyecto NiFi - ETL (Extraer, Transformar y Cargar)

Este proyecto utiliza NiFi para la extracción y procesamiento de datos fiscales de facturas.

## Características

- Extracción de datos fiscales desde diferentes fuentes, como archivos PDF, XML o CSV, etc.
- Procesamiento optimizado de los datos fiscales, aplicando validaciones, transformaciones y enriquecimientos.
- Integración con una arquitectura hexagonal, que separa la lógica de negocio de la infraestructura y la interfaz.

## Instalación

Instrucciones de instalación.

Para instalar este proyecto, sigue estos pasos:

1. Descarga el repositorio
2. docker-compose up -d
3. Te saldrá algo así: 
    Starting nifi-arya ... done

4. Tambien docker run -p 8443:8443 systemdeveloper868/nifi  ./launch_nifi.sh
5. Accede a la interfaz web de NiFi en:
6.     http://127.0.0.1:8080/nifi/login 
7.     https://127.0.0.1:8443/nifi/login
8. ¡¡¡ Cambia la contraseña por defecto !!!
 

## Uso

Para usar este proyecto, sigue estos pasos:

1. Configura los procesadores de NiFi para indicar las fuentes de datos fiscales que quieres extraer. Puedes usar los procesadores `GetFile`, `GetHTTP`, `ListenTCP` o `ConsumeKafka` según el tipo de fuente.
2. Configura los procesadores de NiFi  `PublishKafka` según el tipo de destino.
3. Inicia el flujo de NiFi y observa cómo se extraen y procesan los datos fiscales.

## Contribución

Si quieres contribuir a este proyecto, sigue estas pautas:

1. Clona el repositorio desde https://github.com/aratan/nifi
2. Crea una rama con el nombre de la característica o mejora que quieras implementar.
3. Realiza los cambios y mejoras en tu rama local.
4. Envía una solicitud de extracción al repositorio original, explicando los cambios y mejoras que has realizado.


## Créditos

Créditos y agradecimientos.

## Licencia

Licencia del proyecto.

---

Hecho con ❤️ por Victor Arbiol.
