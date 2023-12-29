# Dynamic Data

Ahora que comprendes cómo funcionan los genéricos, estás listo para usarlos en la práctica. Muchas API de UIKit no utilizan genéricos porque fueron escritas antes de que Swift fuera el lenguaje dominante en el desarrollo de iOS. Algunas API modernas, exclusivas de Swift, aprovechan los genéricos. Añaden un nivel adicional de elegancia a tu código y potencian características que antes serían difíciles o imposibles.
En esta lección, aprenderás sobre tu primera API que utiliza genéricos: `UICollectionViewDiffableDataSource`. Aprenderás cómo puede reducir el trabajo necesario para suministrar datos a una vista de colección, proporcionándote características estándar, como la animación de cambios, de forma gratuita.

## Lo que Aprendí
- Cómo implementar UISearchController para proporcionar funciones de filtro de datos.
- Cómo actualizar datos en una vista de colección.
- Cómo crear y utilizar fuentes de datos diferenciables (diffable data sources).
- Cómo aplicar instantáneas de fuentes de datos diferenciables para actualizar una vista de colección.

## Vocabulario
- `fuente de datos diferenciable` (diffable data source): Una fuente de datos que utiliza instantáneas para representar el estado actual de los datos y facilita las actualizaciones en una vista.
- `controlador de búsqueda` (search controller): Un componente que gestiona la barra de búsqueda y los resultados de búsqueda en una interfaz de usuario.
- `instantánea` (snapshot): Una representación inmutable del estado actual de los datos en una fuente de datos diferenciable.

