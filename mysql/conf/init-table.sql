
USE testdb;

CREATE TABLE IF NOT EXISTS test_table (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    value VARCHAR(255) NOT NULL
);

INSERT INTO test_table (name, value) VALUES
('example1', 'value1'),
('example2', 'value2');
