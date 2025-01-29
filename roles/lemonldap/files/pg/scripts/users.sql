CREATE TABLE IF NOT EXISTS users (
    sub VARCHAR(255) PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL,
    family_name VARCHAR(255) NOT NULL,
    given_name VARCHAR(255) NOT NULL,
    middle_name VARCHAR(255),
    nickname VARCHAR(255),
    preferred_username VARCHAR(255),
    phone_number VARCHAR(20),
    phone_number_verified BOOLEAN NOT NULL DEFAULT FALSE,
    email_verified BOOLEAN NOT NULL DEFAULT FALSE,
    street_address VARCHAR(255),
    locality VARCHAR(255),
    region VARCHAR(255),
    postal_code VARCHAR(20),
    country VARCHAR(255),
    profile VARCHAR(255),
    picture VARCHAR(255),
    website VARCHAR(255),
    gender VARCHAR(50),
    birthdate DATE,
    zoneinfo VARCHAR(255),
    locale VARCHAR(50),
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX i_sub ON users (sub);
CREATE INDEX i_username ON users (username);
CREATE INDEX i_email ON users (email);

INSERT INTO users (sub, username, email, password, name, family_name, given_name, middle_name, nickname, preferred_username, phone_number, phone_number_verified, email_verified, street_address, locality, region, postal_code, country, profile, picture, website, gender, birthdate, zoneinfo, locale)
VALUES
('1234567890', 'admin', 'admin@example.com', 'admin', 'Admin', 'Admin', 'Admin', NULL, 'TheBoss', 'admin', '1234567890', TRUE, TRUE, '123 Rue Principale', 'Paris', 'Île-de-France', '75001', 'France', 'https://example.com/admin', 'https://example.com/admin/picture', 'https://admin-website.com', 'male', '1985-01-01', 'Europe/Paris', 'fr-FR'),
('9876543210', 'user1', 'user1@example.com', 'user1', 'User 1', 'User', 'One', 'Middle', 'U1', 'user1', '9876543210', TRUE, TRUE, '456 Avenue des Champs', 'Lyon', 'Auvergne-Rhône-Alpes', '69002', 'France', 'https://example.com/user1', 'https://example.com/user1/picture', 'https://user1-site.com', 'female', '1995-05-15', 'Europe/Paris', 'fr-FR'),
('1111111111', 'user2', 'user2@example.com', 'user2', 'User 2', 'User', 'Two', NULL, 'U2', 'user2', '1111111111', FALSE, TRUE, '789 Boulevard Maritime', 'Marseille', 'Provence-Alpes-Côte d''Azur', '13001', 'France', 'https://example.com/user2', 'https://example.com/user2/picture', NULL, 'non-binary', '2000-12-25', 'Europe/Paris', 'fr-FR');