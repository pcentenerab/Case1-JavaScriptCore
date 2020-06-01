# Case1-JavaScriptCore

## Secciones

- [General](#general)
- [Primeros pasos](#primeros_pasos)
- [Uso](#uso)
- [Contribución](#contribucion)

## General <a name = "general"></a>

Este repositorio forma parte del proyecto correspondiente a mi Trabajo de Fin de Grado del Grado en Ingeniería de Tecnologías y Servicios de la Telecomunicación en la Universidad Politécnica de Madrid: Desarrollo de un servicio de gestión de asignaturas basado en Blockchain e implementación de clientes nativos para dispositivos iOS. Mi tutor durante el desarrollo del trabajo, defendido en junio de 2020, ha sido Santiago Pavón.

En concreto, Case1-JavaScriptCore es una aplicación iOS desarrollada con Xcode que busca permitir la comunicación con una red de tipo Blockchain con Ganache. Esta aplicación es híbrida entre Swift y Javascript, que se intentan comunicar por medio de un elemento JSContext del paquete JavaScriptCore de Swift. Javascript utiliza la librería Web3.js para el acceso al nodo de Ganache.

**IMPORTANTE: Aplicación experimental sin resultados exitosos.**

## Primeros pasos <a name = "primeros_pasos"></a>

Se debe clonar el repositorio e instalar las dependencias necesarias para que este caso tenga todos los recursos necesarios para su ejecución.

### Prerrequisitos

Se debe haber instalado y configurado el proyecto Contador-Contracts disponible en [este repositorio](https://github.com/pcentenerab/Contador-Contract).

### Instalación

Para instalar el proyecto en el entorno, hay que ejecutar los siguientes comandos desde un terminal.

```
$ git clone https://github.com/pcentenerab/Case1-JavaScriptCore 
$ cd Case1-JavaScriptCore/Case1-JavaScriptCore/JavascriptCode 
$ npm update
$ npm install
```

Además, se debe consultar la dirección en la que está desplegado el contrato en la red propia de Ganache para introducirla en el fichero app.js (línea 7). 


## Uso <a name = "uso"></a>

A partir de aquí, ya se tiene la aplicación instalada. Como este proyecto no ha tenido resultados exitosos, no se puede ejecutar correctamente.


## Contribución <a name = "contribucion"></a>

Este repositorio se enmarca en el proyecto ya mencionado, que proporciona una guía de desarrollo disponible para toda la comunidad de desarrolladores. Estaré encantada de recibir contribuciones al respecto para poder mejorar el potencial de la investigación.