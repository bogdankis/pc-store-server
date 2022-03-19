-- -----------------------------------------------------
-- Schema pcstore-ecommerce
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `pcstore-ecommerce`;

CREATE SCHEMA `pcstore-ecommerce`;
USE `pcstore-ecommerce` ;

-- -----------------------------------------------------
-- Table `pcstore-ecommerce`.`product_category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pcstore-ecommerce`.`product_category` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `category_name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE=InnoDB
AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Table 'pcstore-ecommerce'.'product'
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pcstore-ecommerce`.`product`(
`id` BIGINT(20) NOT NULL AUTO_INCREMENT,
`bar_code` VARCHAR(255) DEFAULT NULL,
`name` VARCHAR(255) DEFAULT NULL,
`description` VARCHAR(255) DEFAULT NULL,
`unit_price` DECIMAL(13,2) DEFAULT NULL,
`image_url` VARCHAR(255) DEFAULT NULL,
`active` BIT DEFAULT 1,
`units_in_stock` INT(11) DEFAULT NULL,
`date_created` DATETIME(6) DEFAULT NULL,
`last_updated` DATETIME(6) DEFAULT NULL,
`category_id` BIGINT(20) NOT NULL,
PRIMARY KEY (`id`),
KEY `fk_category` (`category_id`),
CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`)
)
ENGINE=InnoDB
AUTO_INCREMENT =1;

-- -----------------------------------------------------
-- Categories
-- -----------------------------------------------------
INSERT INTO product_category(category_name) VALUES ('Laptops');
INSERT INTO product_category(category_name) VALUES ('Pcs');
INSERT INTO product_category(category_name) VALUES ('Graphic Cards');
INSERT INTO product_category(category_name) VALUES ('Processors');
INSERT INTO product_category(category_name) VALUES ('Ram');
INSERT INTO product_category(category_name) VALUES ('Monitors');

-- -----------------------------------------------------
-- Laptops
-- -----------------------------------------------------
INSERT INTO product(bar_code, name, description, unit_price, image_url, active, units_in_stock, date_created, category_id) VALUES ('LAPTOP-1000','MSI Stealth 15M Gaming Laptop','15.6" 144Hz FHD 1080p Display, Intel Core i7-11375H, NVIDIA GeForce RTX 3060, 16GB, 512GB SSD, Thunderbolt 4, WiFi 6, Win10, Carbon Gray (A11UEK-009)',1189.99,'assets/images/products/laptops/laptop-1000.png',1,5,NOW(),1);
INSERT INTO product(bar_code, name, description, unit_price, image_url, active, units_in_stock, date_created, category_id) VALUES ('LAPTOP-1001','ASUS TUF Gaming F15 (2022) Gaming Laptop"','15.6” 300Hz FHD Display, Intel Core i7-12700H, GeForce RTX 3060, 16GB DDR5, 1TB PCIe SSD, Thunderbolt 4, Wi-Fi 6, Windows 11 Home, Mecha Gray, FX507ZM-ES74 ',1446.88,'assets/images/products/laptops/laptop-1001.png',1,5,NOW(),1);
INSERT INTO product(bar_code, name, description, unit_price, image_url, active, units_in_stock, date_created, category_id) VALUES ('LAPTOP-1002','Acer Predator Helios 300 Gaming Laptop','Intel i7-10750H, NVIDIA GeForce RTX 3060 Laptop GPU, 15.6" Full HD 144Hz 3ms IPS Display, 16GB DDR4, 512GB NVMe SSD, WiFi 6, RGB Keyboard, PH315-53-71HN',1499.99,'assets/images/products/laptops/laptop-1002.png',1,5,NOW(),1);
INSERT INTO product(bar_code, name, description, unit_price, image_url, active, units_in_stock, date_created, category_id) VALUES ('LAPTOP-1003','ASUS ROG Strix G17 Gaming Laptop, 17.3"','FHD IPS 144 Hz Display, AMD Ryzen 7 4800H 8-Core, NVIDIA GeForce RTX 3060 6GB GDDR6, Wi-Fi 6, RGB Keyboard, USB-C, HDMI, Win 10 (16GB RAM | 1TB PCIe SSD) ',1519.88,'assets/images/products/laptops/laptop-1003.png',1,5,NOW(),1);
INSERT INTO product(bar_code, name, description, unit_price, image_url, active, units_in_stock, date_created, category_id) VALUES ('LAPTOP-1004','ASUS ROG Strix Scar 15 (2022) Gaming Laptop','15.6” 240Hz IPS QHD Display, NVIDIA GeForce RTX 3080 Ti, Intel Core i9 12900H, 32GB DDR5, 1TB SSD, Per-Key RGB Keyboard, Windows 11 Pro, G533ZX-XS96 ',3299.99,'assets/images/products/laptops/laptop-1004.png',1,5,NOW(),1);
INSERT INTO product(bar_code, name, description, unit_price, image_url, active, units_in_stock, date_created, category_id) VALUES ('LAPTOP-1005','2022 ASUS TUF FX706HE Gaming Laptop','17.3” 144Hz FHD IPS Display Intel 6-Core i5-11260H 16GB DDR4 1TB NVMe SSD NVIDIA GeForce RTX 3050Ti 4GB GDDR6 WiFi AX BT 5.2 RJ45 USB-C Backlit Windows 11 w/USB',1799,'assets/images/products/laptops/laptop-1005.png',1,5,NOW(),1);
INSERT INTO product(bar_code, name, description, unit_price, image_url, active, units_in_stock, date_created, category_id) VALUES ('LAPTOP-1006','GIGABYTE AERO 17 HDR XD - 17.3"','UHD 4k IPS Anti-Glare, Intel Core i7, NVIDIA GeForce RTX 3070 Laptop GPU 8GB GDDR6, 16GB RAM, 1TB SSD, Win10 Pro, Creator Laptop (AERO 17 HDR XD-73US524SP)',2499.99,'assets/images/products/laptops/laptop-1006.png',1,5,NOW(),1);
INSERT INTO product(bar_code, name, description, unit_price, image_url, active, units_in_stock, date_created, category_id) VALUES ('LAPTOP-1007','Acer Nitro 5 AN515 Gaming Laptop','Intel Core i5-10300H Up to 4.5GHz, NVIDIA GeForce RTX 3050 GPU, 15.6" FHD 144Hz IPS, 16GB DDR4, 1TB NVMe SSD, Intel Wi-Fi 6, Backlit Keyboard, TWE Cloth ',1215,'assets/images/products/laptops/laptop-1007.png',1,5,NOW(),1);
INSERT INTO product(bar_code, name, description, unit_price, image_url, active, units_in_stock, date_created, category_id) VALUES ('LAPTOP-1008','Razer Blade 14 Gaming Laptop','AMD Ryzen 9 5900HX 8 Core, NVIDIA GeForce RTX 3080, 14" QHD 165Hz, 16GB RAM, 1TB SSD - CNC Aluminum - Chroma RGB - THX Spatial Audio - Vapor Chamber Cooling',2649,'assets/images/products/laptops/laptop-1008.png',1,5,NOW(),1);
INSERT INTO product(bar_code, name, description, unit_price, image_url, active, units_in_stock, date_created, category_id) VALUES ('LAPTOP-1009','MSI GE76 Raider Gaming Laptop 2021','(1TB SSD, 16GB RAM) 17.3" FHD 144 Hz, Intel Core i7-1180H (11th Gen), NVIDIA GeForce RTX 3060, Windows 10 64bit (Titanium Blue) 11UE-046 US Model',1389.99,'assets/images/products/laptops/laptop-1009.png',1,5,NOW(),1);
INSERT INTO product(bar_code, name, description, unit_price, image_url, active, units_in_stock, date_created, category_id) VALUES ('LAPTOP-1010','MSI GS76 Stealth Gaming Laptop','17.3" 4K Display, Intel Core i9-11900H, NVIDIA GeForce RTX 3080, 64GB, 2TB SSD, Thunderbolt 4, WiFi 6, Win10, Black(11UH-078)',3849.99,'assets/images/products/laptops/laptop-1010.png',1,5,NOW(),1);
INSERT INTO product(bar_code, name, description, unit_price, image_url, active, units_in_stock, date_created, category_id) VALUES ('LAPTOP-1011','2021 MSI GF65 Gaming Laptop','15.6" FHD 144Hz IPS Display, Intel Six-Core i5-10500H Processor, NVIDIA GeForce RTX 3060 GDDR6, 32GB RAM, 1TB PCIe NVMe SSD, WiFi 6, Backlit KB, HDMI, Windows 10, Black',1299.99,'assets/images/products/laptops/laptop-1011.png',1,5,NOW(),1);
INSERT INTO product(bar_code, name, description, unit_price, image_url, active, units_in_stock, date_created, category_id) VALUES ('LAPTOP-1012','Lenovo Legion 5 Gaming Laptop','15.6" FHD Display, AMD Ryzen 7 5800H, 16GB RAM, 512GB Storage, NVIDIA GeForce RTX 3050Ti, Windows 10H, Phantom Blue',1299.00,'assets/images/products/laptops/laptop-1012.png',1,5,NOW(),1);
INSERT INTO product(bar_code, name, description, unit_price, image_url, active, units_in_stock, date_created, category_id) VALUES ('LAPTOP-1013','Acer Nitro 5 Gaming Laptop Full HD','9th Gen Intel Core i7-9750H, NVIDIA GeForce RTX 2060, 15.6" Full HD IPS 144Hz Display, 16GB DDR4, 256GB NVMe SSD, Wi-Fi 6, Waves MaxxAudio, Backlit Keyboard, AN515-54-728C',1199.99,'assets/images/products/laptops/laptop-1013.png',1,5,NOW(),1);
INSERT INTO product(bar_code, name, description, unit_price, image_url, active, units_in_stock, date_created, category_id) VALUES ('LAPTOP-1014','ASUS ProArt StudioBook 16 Laptop','16” 2560x1600 120Hz Display, AMD Ryzen 7, 32GB DDR4, 1TB PCIe SSD, Nvidia Geforce RTX 3060, Windows 11 Home, H5600QM-AH78, Star Black',1611.36,'assets/images/products/laptops/laptop-1014.png',1,5,NOW(),1);
INSERT INTO product(bar_code, name, description, unit_price, image_url, active, units_in_stock, date_created, category_id) VALUES ('LAPTOP-1015','ASUS ROG Zephyrus S17 (2022) Gaming Laptop','17.3” 165Hz WQHD, NVIDIA GeForce RTX 3080, Intel Core i9-11900H, 32GB DDR4, 1TB SSD, Per-Key RGB Keyboard, Thunderbolt 4, Windows 10 Pro, GX703HS-XH98',3199.00,'assets/images/products/laptops/laptop-1015.png',1,5,NOW(),1);
INSERT INTO product(bar_code, name, description, unit_price, image_url, active, units_in_stock, date_created, category_id) VALUES ('LAPTOP-1016','ASUS ROG Zephyrus 15.6" QHD','165Hz IPS Gaming Laptop,AMD Ryzen 9 5900HS, NVIDIA GeForce RTX 3070, Wi-Fi 6, RGB Keyboard, Bluetooth, Eclipse Grey + 32GB SD Card (16GB RAM | 1TB PCIe SSD)',1938.99,'assets/images/products/laptops/laptop-1016.png',1,5,NOW(),1);
INSERT INTO product(bar_code, name, description, unit_price, image_url, active, units_in_stock, date_created, category_id) VALUES ('LAPTOP-1017','Acer Nitro 5 Gaming Laptop 15.6"',' FHD 144Hz IPS Display, Intel Core i5-10300H Processor, NVIDIA GeForce RTX 3050, 32GB RAM, 2TB PCIe NVMe SSD, Backlit Keyboard, Windows 10 Home, Intel Wi-Fi 6 ',1379.00,'assets/images/products/laptops/laptop-1017.png',1,5,NOW(),1);
INSERT INTO product(bar_code, name, description, unit_price, image_url, active, units_in_stock, date_created, category_id) VALUES ('LAPTOP-1018','MSI GE76 Raider Gaming Laptop','Intel Core i7-11800H, GeForce RTX 3060, 17.3" FHD 144HZ, 32GB RAM2TB NVMe SSD, Wi-Fi6, Windows 10',1986.00,'assets/images/products/laptops/laptop-1018.png',1,5,NOW(),1);
INSERT INTO product(bar_code, name, description, unit_price, image_url, active, units_in_stock, date_created, category_id) VALUES ('LAPTOP-1019','Acer Nitro 5 AN517-41-R0RZ Gaming Laptop','AMD Ryzen 7 5800H (8-Core), NVIDIA GeForce RTX 3060 Laptop GPU, 17.3" FHD 144Hz IPS Display, 16GB DDR4, 1TB NVMe SSD, WiFi 6, RGB Backlit Keyboard',1540.00,'assets/images/products/laptops/laptop-1019.png',1,5,NOW(),1);
INSERT INTO product(bar_code, name, description, unit_price, image_url, active, units_in_stock, date_created, category_id) VALUES ('LAPTOP-1019','MSI GF65 Gaming Laptop 15.6" ','144Hz FHD 1080p, Intel Core i7-10750H 6 Core, NVIDIA GeForce RTX 3060, 16GB, 512GB NVMe SSD, WiFi 6, Red Keyboard, Win 10, Black (10UE-047)',1348.00,'assets/images/products/laptops/laptop-1019.png',1,5,NOW(),1);

-- -----------------------------------------------------
-- PCS
-- -----------------------------------------------------
INSERT INTO product(bar_code,name, description, unit_price, image_url, active, units_in_stock, date_created, category_id) VALUES ('PC-1000','NAME','DESCRIERE',999,'assets/images/products/desktops/pc-1000.png',1,5,NOW(),2);
-- -----------------------------------------------------
-- Graphic Cards
-- -----------------------------------------------------
INSERT INTO product(bar_code,name, description, unit_price, image_url, active, units_in_stock, date_created, category_id) VALUES ('VIDEO-1000','NAME','DESCRIERE',999,'assets/images/products/videocards/video-1000.png',1,5,NOW(),3);
-- -----------------------------------------------------
-- Processors
-- -----------------------------------------------------
INSERT INTO product(bar_code,name, description, unit_price, image_url, active, units_in_stock, date_created, category_id) VALUES ('PROCES-1000','NAME','DESCRIERE',999,'assets/images/products/processors/proces-1000.png',1,5,NOW(),3);
-- -----------------------------------------------------
-- RAM
-- -----------------------------------------------------
INSERT INTO product(bar_code,name, description, unit_price, image_url, active, units_in_stock, date_created, category_id) VALUES ('RAM-1000','NAME','DESCRIERE',999,'assets/images/products/rams/ram-1000.png',1,5,NOW(),4);
-- -----------------------------------------------------
-- Monitors
-- -----------------------------------------------------
INSERT INTO product(bar_code,name, description, unit_price, image_url, active, units_in_stock, date_created, category_id) VALUES ('MONITOR-1000','NAME','DESCRIERE',999,'assets/images/products/processors/proces-1000.png',1,5,NOW(),5);


