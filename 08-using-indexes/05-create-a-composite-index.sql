CREATE INDEX multiaddr ON addresses (street, city);
-- uses index for street alone
-- uses index for steert AND city
-- doesn't use index for street OR city
-- doesn't use index for city alone