# Protocolos

Un protocolo es un conjunto de reglas o procedimientos que define cómo se realizan las cosas. En informática, los ordenadores se comunican entre sí utilizando protocolos como `HTTP` (Protocolo de Transferencia de Hipertexto) y `TCP/IP` (Protocolo de Control de Transmisión/Protocolo de Internet). `HTTP` es un estándar que define cómo se comunica los datos del sitio web entre dos ordenadores. `TCP/IP` es un estándar de comunicación que define cómo los ordenadores encuentran y envían datos entre sí.

En programación, un protocolo define las propiedades o métodos que un objeto debe tener para completar una tarea. Por ejemplo, el protocolo `Equatable` dice que un tipo debe definir un método `==` para verificar si dos instancias son iguales entre sí.

En esta lección, aprendí qué son los protocolos, cuándo usarlos y cómo escribir los propios. También aprendí sobre la `delegación`, un patrón que permite que los objetos se comuniquen entre sí.

## Lo que Aprendí
- Qué son los protocolos y por qué se utilizan.
- Cómo `adoptar` y `cumplir con` los protocolos de Swift.
- Cómo imprimir información personalizada sobre los objetos a la consola.
- Cómo verificar si las instancias de los tipos personalizados son iguales, mayores o menores entre sí.
- Cómo configurar los tipos personalizados para que sus instancias puedan guardarse y cargarse desde un archivo.
- Cómo hacer que un tipo realice trabajo para otro utilizando la `delegación`.

## Vocabulario
- `adoptar`: Aceptar y aplicar un protocolo.
- `Codable`: Un protocolo en Swift que indica que un tipo puede ser codificado y decodificado.
- `Comparable`: Un protocolo que permite comparar instancias de un tipo para determinar su orden relativo.
- `cumplir con`: Satisfacer los requisitos de un protocolo.
- `CustomStringConvertible`: Un protocolo que permite la representación personalizada de un objeto como cadena.
- `delegado`: Un objeto que realiza tareas en nombre de otro objeto.
- `Equatable`: Un protocolo que requiere la implementación del método `==` para comparar la igualdad de dos instancias.
- `implementación`: La realización práctica de un protocolo en un tipo.
- `protocolo`: Conjunto de reglas que define cómo se debe comportar un tipo.
- `solo lectura`: Propiedad que solo puede ser leída.
- `lectura/escritura`: Propiedad que puede ser leída y modificada.
