USE campusbites;
CREATE TABLE users (
    id VARCHAR(255) PRIMARY KEY,   -- Firebase UID
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15)
);
CREATE TABLE shops (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    tagline TEXT,
    open BOOLEAN,
    lat DOUBLE,
    lng DOUBLE,
    image_url TEXT
);
CREATE TABLE menu_items (
    id INT AUTO_INCREMENT PRIMARY KEY,
    shop_id INT,
    name VARCHAR(100),
    type ENUM('veg','non-veg'),
    category VARCHAR(50),
    price DECIMAL(6,2),
    image_url TEXT,
    FOREIGN KEY (shop_id) REFERENCES shops(id)
);
CREATE TABLE orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id VARCHAR(255),
    shop_id INT,
    total_amount DECIMAL(8,2),
    status VARCHAR(50),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (shop_id) REFERENCES shops(id)
);
CREATE TABLE reviews (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id VARCHAR(255),
    shop_id INT,
    rating INT,
    comment TEXT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (shop_id) REFERENCES shops(id)
);



