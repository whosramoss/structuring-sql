CREATE TABLE employers (
 company_name VARCHAR(250),
 company_address VARCHAR(300),
 -- yearly_revenue FLOAT(5, 2) -- Approximation, Allowed: 123.12 13.1 Not Allowed: 1234.23 1.123
 yearly_revenue NUMERIC(5, 2), -- Exact value
 is_hiring BOOLEAN DEFAULT FALSE
);

CREATE TABLE conversations(
user_name VARCHAR(200),
employer_name VARCHAR(250),
message TEXT,
date_sent TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);