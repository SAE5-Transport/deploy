CREATE TABLE IF NOT EXISTS users (
    sub VARCHAR(255) PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL,
    family_name VARCHAR(255) NOT NULL,
    given_name VARCHAR(255) NOT NULL,
    phone_number VARCHAR(20),
    profile VARCHAR(255),
    picture VARCHAR(255),
    email_verified BOOLEAN NOT NULL DEFAULT FALSE,
    phone_number_verified BOOLEAN NOT NULL DEFAULT FALSE,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX i_sub ON users (sub);
CREATE INDEX i_username ON users (username);
CREATE INDEX i_email ON users (email);

INSERT INTO users (sub, username, email, password, name, family_name, given_name, phone_number, profile, picture, email_verified, phone_number_verified)
VALUES
    ('1234567890', 'admin', 'admin@example.com', 'admin', 'Admin', 'Admin', 'Admin', '1234567890', 'https://example.com/admin', 'https://example.com/admin/picture', TRUE, TRUE),
    ('9876543210', 'user1', 'user1@example.com', 'user1', 'User 1', 'User', 'User', '9876543210', 'https://example.com/user1', 'https://example.com/user1/picture', TRUE, TRUE),
    ('1111111111', 'user2', 'user2@example.com', 'user2', 'User 2', 'User', 'User', '1111111111', 'https://example.com/user2', 'https://example.com/user2/picture', TRUE, TRUE);