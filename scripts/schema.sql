-- Tabla principal de foodtrucks
CREATE TABLE foodtrucks (
    foodtruck_id INT PRIMARY KEY,         -- ID único para cada foodtruck
    name VARCHAR(100) NOT NULL,           -- Nombre no puede estar vacío
    cuisine_type VARCHAR(50) NOT NULL,    -- Tipo de comida (Mexicana, Americana, etc.)
    city VARCHAR(50) NOT NULL             -- Ciudad donde opera
);

-- Productos que vende cada foodtruck
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    foodtruck_id INT NOT NULL,            -- Relación con foodtrucks
    name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,        -- Precio con 2 decimales
    stock INT NOT NULL,                   -- Cantidad disponible
    CONSTRAINT FK_products_foodtruck      -- Restricción de relación
        FOREIGN KEY (foodtruck_id)
        REFERENCES foodtrucks(foodtruck_id)
);

-- Pedidos de los clientes
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    foodtruck_id INT NOT NULL,            -- Relación con foodtrucks
    order_date DATE NOT NULL,             -- Fecha del pedido
    status VARCHAR(20) NOT NULL,          -- Estado: entregado, pendiente, etc.
    total DECIMAL(10, 2) NOT NULL,        -- Total del pedido
    CONSTRAINT FK_orders_foodtruck
        FOREIGN KEY (foodtruck_id)
        REFERENCES foodtrucks(foodtruck_id)
);

-- Detalle de lo que contiene cada pedido
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT NOT NULL,                -- Relación con orders
    product_id INT NOT NULL,              -- Relación con products
    quantity INT NOT NULL,                -- Cantidad de cada producto
    CONSTRAINT FK_order_items_order
        FOREIGN KEY (order_id)
        REFERENCES orders(order_id),
    CONSTRAINT FK_order_items_product
        FOREIGN KEY (product_id)
        REFERENCES products(product_id)
);

-- Ubicaciones diarias de los foodtrucks
CREATE TABLE locations (
    location_id INT PRIMARY KEY,
    foodtruck_id INT NOT NULL,            -- Relación con foodtrucks
    location_date DATE NOT NULL,          -- Fecha de la ubicación
    zone VARCHAR(50) NOT NULL,            -- Zona de la ciudad
    CONSTRAINT FK_locations_foodtruck
        FOREIGN KEY (foodtruck_id)
        REFERENCES foodtrucks(foodtruck_id)
);

ALTER TABLE orders
ADD comentarios VARCHAR(255) NULL;
