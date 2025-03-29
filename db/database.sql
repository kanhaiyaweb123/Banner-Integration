CREATE TABLE banners (
    id INT AUTO_INCREMENT PRIMARY KEY,
    image_url VARCHAR(255) NOT NULL,
    link VARCHAR(255) NOT NULL,
    alt_text VARCHAR(255) NOT NULL,
    width INT DEFAULT 1000,
    height INT DEFAULT 450,
    position ENUM('top', 'bottom', 'left', 'right', 'center') DEFAULT 'top',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO banners (image_url, link, alt_text) VALUES
('https://www.proglobalbusinesssolutions.com/wp-content/uploads/2019/03/Creative-Company-Banner.jpg', 
 'https://www.proglobalbusinesssolutions.com/portfolio-items/web-banner-design/', 
 'Creative website design banner'); 
