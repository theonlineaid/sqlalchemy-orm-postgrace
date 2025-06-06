-- Create developers table
CREATE TABLE developers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    organization VARCHAR(100),
    experience_years INT,
    language VARCHAR(50)
);

CREATE TABLE projects (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    developer_id INT REFERENCES developers(id),
    status VARCHAR(20)
);

-- INSERT INTO projects (name, status, developer_id)
-- SELECT
--   'Project ' || i,
--   CASE WHEN i % 2 = 0 THEN 'active' ELSE 'inactive' END,
--   (i % 5) + 1
-- FROM generate_series(1, 900000) AS i;

-- Add sample data
INSERT INTO projects (name, developer_id, status) VALUES
('ChatBot AI', 1, 'active'),
('Image Classifier', 2, 'completed'),
('Smart Assistant', 3, 'active'),
('Self-driving Car', 5, 'active'),
('Virtual OS', 8, 'paused'),
('Bug Tracker', 1, 'completed'),
('Streaming App', 10, 'active');


-- Insert large dataset (50+ rows)
INSERT INTO developers (name, organization, experience_years, language) VALUES
('Alice', 'OpenAI', 5, 'Python'),
('Bob', 'Google', 3, 'Go'),
('Charlie', 'Meta', 7, 'C++'),
('Diana', 'Amazon', 4, 'Java'),
('Evan', 'Netflix', 6, 'Node.js'),
('Fiona', 'Apple', 2, 'Swift'),
('George', 'Microsoft', 10, 'C#'),
('Hannah', 'Uber', 4, 'Kotlin'),
('Ian', 'Airbnb', 5, 'Ruby'),
('Jack', 'Stripe', 3, 'Python'),
('Kate', 'Dropbox', 6, 'Rust'),
('Leo', 'LinkedIn', 8, 'Scala'),
('Mia', 'Spotify', 4, 'TypeScript'),
('Nina', 'Tesla', 5, 'JavaScript'),
('Oscar', 'Nvidia', 7, 'C'),
('Paul', 'AMD', 9, 'C++'),
('Quinn', 'Intel', 3, 'Assembly'),
('Rita', 'Facebook', 4, 'PHP'),
('Steve', 'Oracle', 6, 'PL/SQL'),
('Tina', 'IBM', 8, 'Java'),
('Uma', 'NASA', 11, 'Python'),
('Victor', 'SpaceX', 7, 'C'),
('Wendy', 'Intel', 5, 'VHDL'),
('Xavier', 'MIT', 6, 'Julia'),
('Yara', 'CalTech', 3, 'R'),
('Zack', 'Adobe', 5, 'JavaScript'),
-- Add more for size
('Anna', 'RedHat', 6, 'Go'),
('Ben', 'DigitalOcean', 4, 'Python'),
('Cathy', 'Heroku', 5, 'Ruby'),
('Dan', 'Cloudflare', 7, 'Rust'),
('Ellie', 'Github', 6, 'TypeScript'),
('Frank', 'JetBrains', 8, 'Kotlin'),
('Grace', 'Atlassian', 3, 'Java'),
('Harry', 'Slack', 4, 'Node.js'),
('Isla', 'Twitch', 5, 'JavaScript'),
('Jake', 'Zoom', 7, 'Go'),
('Lily', 'Samsung', 5, 'C'),
('Max', 'LG', 6, 'C++'),
('Nora', 'Xiaomi', 3, 'Java'),
('Omar', 'Huawei', 4, 'Python'),
('Pam', 'Alibaba', 5, 'Java'),
('Rick', 'Tencent', 6, 'PHP'),
('Sara', 'Baidu', 4, 'C#'),
('Tom', 'Yandex', 7, 'Rust'),
('Usha', 'Bing', 5, 'Python'),
('Vik', 'DuckDuckGo', 4, 'Elixir'),
('Will', 'Ebay', 6, 'Scala'),
('Xena', 'PayPal', 3, 'JavaScript'),
('Yosef', 'Snapchat', 5, 'Swift'),
('Zia', 'Pinterest', 6, 'Ruby');
