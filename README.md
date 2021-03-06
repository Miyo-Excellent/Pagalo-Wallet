# Pagalo Wallet

> **NOTA:** Este proyecto cuenta con una documentación de tipo README.md en todas los directorios hijos del directorio lib. Es decir cada directorio hijo cuenta con su documentación.

> **NOTE:** This project has a README.md documentation in all the child directories of the lib directory, i.e. each child directory has its own documentation.

## Validación Conocimientos en aplicaciones Móviles
### Objetivo
Construir una aplicación móvil haciendo uso de tecnologías móviles (Hibrido o nativo),
Objetivos Específicos

- Construir una aplicación móvil en el cual se haga uso de acceso a recursos, navegabilidad entre
pantalla.
- Validar conocimientos en buenas practicas.

### Conceptos para evaluar
- Implementación de módulos.
- Integración de servicios Rest.
- Diseño e implementación de los flujos programáticos.
- Funcionalidad de la aplicación.
- Buenas prácticas de implementación
- Patrones SOLID.
- Pruebas unitarias.

### Acerca de la aplicación
Funcionalmente la aplicación debe:
- Implementar una aplicación móvil que tenga:
    - Login
    - Consulta de cuentas ahorros / corrientes
    - Transferencias con códigos QR
    - Información Adiciona
    
| Funcionalidad    | Login: FN001                                                                                                                           |
|------------------|----------------------------------------------------------------------------------------------------------------------------------------|
| Como             | Usuario de una aplicación Móvil o Web                                                                                                  |
| quiero           | Tener un mecanismo de seguridad con usuario y clave que permita validar mi identificación dentro de una aplicación móvil bancaria      |
| Para             | Garantizar que la información personal de mis cuentas solo puede ser consultada                                                        |
| Precondiciones   | por mí.                                                                                                                                |
| Post Condiciones | Usuario autenticado                                                                                                                    |
| restricciones    |                                                                                                                                        |

| Funcionalidad    | Consulta de cuentas de ahorro y corriente: FN002                                                                                       |
|------------------|----------------------------------------------------------------------------------------------------------------------------------------|
| Como             | Usuario de una aplicación Móvil o Web autenticado                                                                                      |
| quiero           | Poder ver el clima desde donde estoy ubicado                                                                                           |
| Para             | Evitar mojarme                                                                                                                         |
| Precondiciones   | NA                                                                                                                                     |
| Post Condiciones | Se visualiza el estado del clima desde la ubicación de la aplicación                                                                   |
| restricciones    | NA                                                                                                                                     |

| Funcionalidad    | Transferencias con códigos QR: FN007                                                                                                                                                                                                                                                                                                                                                |
|------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Como             | Usuario de una aplicación Móvil autenticado                                                                                                                                                                                                                                                                                                                                         |
| quiero           | Poder realizar transferencias desde mis cuentas de ahorro o corrientes a otras cuentas así esta no esté inscrita, logrando esto por medio de códigos QR                                                                                                                                                                                                                             |
|                  | Se deben tener 3 opciones de transferencias con código QR:                                                                                                                                                                                                                                                                                                                          |
|                  | 1. Generar código QR: El cual me debe permitir seleccionar la cuenta origen (Ahorros o corriente), especificar o no un valor a ser transferido en el cual se debe tener la opción de especificar la moneda de pesos colombianos o dólares americanos, por último, una referencia del código QR. Una vez generado este me debe mostrar la imagen en pantalla del código QR generado. |
|                  | 2. Transferir usando imagen: Él me debe permitir habilitar la cámara del portátil o dispositivo Web con propósito de lectura de un código QR, el cual una vez leído me debe habilitar la transferencia hacia la cuenta destino especificada en el QR leído                                                                                                                          |
| Para             | Tener facilidad y diversidad a la hora de transferir dinero con conocidos o servicios.                                                                                                                                                                                                                                                                                              |
| Precondiciones   | Usuario autenticado                                                                                                                                                                                                                                                                                                                                                                 |
| Post Condiciones | Generación de un código QR que servirá para compartir a otras personas con propósito de facilitar la información de la transferencia.                                                                                                                                                                                                                                               |
| Post Condiciones | Lectura de códigos QR para generar transferencias desde mis cuentas propias a otras cuentas que no necesariamente deben estar inscritas                                                                                                                                                                                                                                             |
| restricciones    | NA                                                                                                                                                                                                                                                                                                                                                                                  |

### Implementaciones realizadas hasta el momento.

| Screens          | UI | Bloc | Modelos | Repositorios | Lógica |
|------------------|----|------|---------|--------------|--------|
| Dashboard        | Yes|  Yes |    Yes  |      Yes     |   No   |
| Landing          | Yes|  Yes |    Yes  |      Yes     |   No   |
| Navigation       | Yes|  Yes |    Yes  |      Yes     |   Yes  |
| Sign In          | Yes|  Yes |    Yes  |      Yes     |   No   |
| Sign Up          | Yes|  Yes |    Yes  |      Yes     |   No   |
| Verify           | Yes|  Yes |    Yes  |      Yes     |   No   |