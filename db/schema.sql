CREATE TABLE IF NOT EXISTS timeseries (
  id BIGSERIAL PRIMARY KEY,
  time TIMESTAMPTZ NOT NULL DEFAULT now() :: TIMESTAMPTZ,
  value DECIMAL,
  name TEXT NOT NULL
);

INSERT INTO timeseries
VALUES (1234, '2023-03-03 03:15:00.00', 1.11, 'testdata');