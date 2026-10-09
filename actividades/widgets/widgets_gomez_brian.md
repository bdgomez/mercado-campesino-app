# Investigación de widgets de Flutter

**Nombre del estudiante:** Brian David Gómez R
**Grupo:** 601
**Fecha:** 9 de octubre de 2026

**Mis widgets:** `Slider`, `ExpansionTile`, `Badge`

---

## 1. Slider

### Qué es y para qué sirve

Slider es una barra deslizante que permite elegir un valor dentro de un rango, arrastrando un círculo. Sirve para seleccionar precios, distancias o porcentajes sin escribir con el teclado.

### Cuándo usarlo y cuándo no

Sirve cuando el valor es aproximado, como filtrar productos por precio máximo. No sirve cuando el valor debe ser exacto, ahí es mejor un TextField.

### Ejemplo mínimo

Slider(
  value: 50,
  min: 0,
  max: 100,
  onChanged: (v) {},
)

### Explicación

El slider va de 0 a 100. El círculo empieza en 50. onChanged es obligatorio: dice qué hacer al moverlo. Aquí está vacío, por eso el círculo no se mueve.

### Propiedades importantes

| Propiedad | Qué hace | Ejemplo |
|---|---|---|
| value | Valor actual | value: 40 |
| min | Valor mínimo | min: 0 |
| max | Valor máximo | max: 100 |
| onChanged | Qué hacer al mover | onChanged: (v) {} |
| divisions | Pasos discretos | divisions: 5 |
| label | Texto al arrastrar | label: '40' |

### Ejemplo personalizado

double _precioMaximo = 15000;

Slider(
  value: _precioMaximo,
  min: 0,
  max: 50000,
  divisions: 10,
  label: '$_precioMaximo',
  activeColor: Colors.green,
  onChanged: (v) {
    setState(() {
      _precioMaximo = v;
    });
  },
)

### Dónde lo usaría en Mercado Campesino

En la pantalla de búsqueda de productos, como filtro de precio máximo. El comprador arrastra para decir "muéstrame productos hasta $20.000".

### Fuentes

- https://api.flutter.dev/flutter/material/Slider-class.html
- Probado en DartPad

---

## 2. ExpansionTile

### Qué es y para qué sirve

ExpansionTile es una tarjeta que se abre y cierra al tocarla. Sirve para mostrar mucha información en poco espacio, como secciones de preguntas frecuentes o detalles de un producto.

### Cuándo usarlo y cuándo no

Sirve para organizar información en secciones plegables, como descripción, info del productor y opiniones. No sirve para contenido que debe verse siempre, como el título de la pantalla.

### Ejemplo mínimo

ExpansionTile(
  title: Text('Información del productor'),
  children: [
    ListTile(title: Text('Finca La Esperanza')),
  ],
)

### Explicación

Muestra una fila con el texto y una flecha. Al tocar la fila, se abre y muestra el contenido de children. Al volver a tocar, se cierra. Flutter maneja la animación solo.

### Propiedades importantes

| Propiedad | Qué hace | Ejemplo |
|---|---|---|
| title | Texto del encabezado | title: Text('Detalles') |
| children | Contenido al expandir | children: [Text('...')] |
| initiallyExpanded | Si empieza abierto | initiallyExpanded: true |
| leading | Ícono a la izquierda | leading: Icon(Icons.pets) |
| backgroundColor | Color de fondo | backgroundColor: Colors.green.shade50 |
| tilePadding | Espacio interno | tilePadding: EdgeInsets.all(16) |

### Ejemplo personalizado

ExpansionTile(
  leading: Icon(Icons.agriculture, color: Colors.green),
  title: Text('Finca La Esperanza'),
  subtitle: Text('Toca para ver productos'),
  initiallyExpanded: true,
  backgroundColor: Colors.green.shade50,
  children: [
    ListTile(
      leading: Icon(Icons.local_florist),
      title: Text('Aguacate Hass'),
      subtitle: Text('$4.500 / kilo'),
    ),
    ListTile(
      leading: Icon(Icons.eco),
      title: Text('Café pergamino'),
      subtitle: Text('$12.000 / libra'),
    ),
  ],
)

### Dónde lo usaría en Mercado Campesino

En la pantalla de detalle de un producto, para organizar la información en secciones: Descripción, Info del productor, Métodos de pago y Opiniones. Así el comprador ve solo lo que le interesa.

### Fuentes

- https://api.flutter.dev/flutter/material/ExpansionTile-class.html
- Probado en DartPad
---

## 3. Badge

### Qué es y para qué sirve

Badge es un círculo pequeño que se pega a la esquina de otro widget para mostrar un número o texto corto. Sirve para indicar notificaciones no leídas, mensajes nuevos o productos en el carrito.

### Cuándo usarlo y cuándo no

Sirve para mostrar contadores pequeños sobre íconos, como "3 productos en el carrito". No sirve para textos largos ni para íconos que no se pueden tocar.

### Ejemplo mínimo

Badge(
  label: Text('3'),
  child: Icon(Icons.shopping_cart),
)

### Explicación

Muestra un ícono de carrito con un círculo rojo en la esquina que dice "3". El child es el ícono, label es el contenido del badge. Sin label, solo muestra un punto.

### Propiedades importantes

| Propiedad | Qué hace | Ejemplo |
|---|---|---|
| label | Contenido del badge | label: Text('5') |
| child | Widget base | child: Icon(Icons.shopping_cart) |
| isLabelVisible | Mostrar u ocultar | isLabelVisible: true |
| backgroundColor | Color de fondo | backgroundColor: Colors.red |
| textColor | Color del texto | textColor: Colors.white |
| offset | Posición fina | offset: Offset(4, -4) |

### Ejemplo personalizado

Badge(
  label: Text('12'),
  backgroundColor: Colors.green,
  textColor: Colors.white,
  offset: Offset(-4, 4),
  child: Icon(Icons.shopping_basket, size: 32),
)

### Dónde lo usaría en Mercado Campesino

En la barra superior o inferior, para mostrar el número de productos en el carrito o mensajes sin leer. Si el comprador agregó 3 productos, el ícono del carrito muestra un badge con el 3.

### Fuentes

- https://api.flutter.dev/flutter/material/Badge-class.html
- Probado en DartPad