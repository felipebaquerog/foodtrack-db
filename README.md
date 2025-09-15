# FoodTrack - Base de Datos
Repositorio para el esquema relacional de FoodTrack, una plataforma para gestionar operaciones de foodtrucks en distintos puntos de la ciudad.

## 🎯 Objetivo
Diseñar e implementar en Microsoft SQL Server las tablas para:
- foodtrucks
- products
- orders
- order_items
- locations
Cliente utilizado: DBeaver
Control de versiones: Git/GitHub

## 📂 Estructura del repositorio
/scripts/          # Scripts SQL del esquema
/data/             # Archivos CSV de entrada
README.md          # Descripción general del proyecto
.gitignore

### Ejemplo de scripts:
- /scripts/schema.sql → creación de tablas y claves foráneas
- /scripts/alter_add_comentarios.sql → cambios de evolución en el esquema

## 🗄️ Modelo relacional
- foodtrucks → información de cada foodtruck (nombre, ciudad, tipo de cocina).
- products → productos de cada foodtruck, con precio y stock.
- orders → pedidos realizados, con fecha, estado y total.
- order_items → detalle de los pedidos (productos y cantidades).
- locations → ubicación diaria de los foodtrucks.
Claves primarias y foráneas establecidas para mantener la integridad referencial.

## 🔄 Evolución del esquema
Cada modificación estructural se versiona con un nuevo commit.
Ejemplo aplicado:

ALTER TABLE orders
ADD comentarios VARCHAR(255) NULL;

## 🚀 Cómo usar
1. Clonar el repositorio: git clone https://github.com/felipebaquerog/foodtrack-db.git
2. Abrir DBeaver y conectarse a SQL Server.
3. Ejecutar /scripts/schema.sql para crear las tablas.
4. (Opcional) Cargar los .csv desde /data/.

## 📌 Autor
Felipe Baquero
📧 felipebaquereog@gmail.com