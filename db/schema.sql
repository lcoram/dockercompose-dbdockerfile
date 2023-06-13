CREATE TABLE IF NOT EXISTS metadata (
  id BIGSERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  element TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS timeseries (
  id BIGSERIAL references metadata(id),
  time TIMESTAMPTZ NOT NULL DEFAULT now() :: TIMESTAMPTZ,
  value DECIMAL
);

INSERT INTO metadata
VALUES 
  (123, 'blindern', 'air_temperature'),
  (124, 'blindern', 'precipitation_amount(p1h)'),
  (125, 'blindern', 'wind_speed'),
  (126, 'sofienberg', 'air_temperature'),
  (127, 'sofienberg', 'wind_speed'),
  (128, 'aker', 'air_temperature'),
  (129, 'besserud', 'air_temperature'),
  (130, 'besserud', 'precipitation_amount(p1h)'),
  (131, 'bygdøy', 'precipitation_amount(p1h)');

INSERT INTO timeseries
VALUES 
  (123, '2023-04-03 03:00:00.00', 2.11),
  (123, '2023-04-03 04:00:00.00', 2.01),
  (123, '2023-04-03 05:00:00.00', 2.53),
  (126, '2023-04-03 03:00:00.00', 3.01),
  (126, '2023-04-03 04:00:00.00', 3.21),
  (126, '2023-04-03 05:00:00.00', 3.34),
  (128, '2023-04-03 03:00:00.00', 2.5),
  (128, '2023-04-03 04:00:00.00', 2.45),
  (128, '2023-04-03 05:00:00.00', 2.61),
  (124, '2023-04-03 03:00:00.00', 0),
  (124, '2023-04-03 04:00:00.00', 0),
  (124, '2023-04-03 05:00:00.00', 0.5),
  (130, '2023-04-03 04:00:00.00', 0.1),
  (130, '2023-04-03 05:00:00.00', 0.3),
  (131, '2023-04-03 04:00:00.00', 0),
  (131, '2023-04-03 05:00:00.00', 0.6),
  (125, '2023-04-03 05:00:00.00', 4.65),
  (125, '2023-04-03 05:10:00.00', 2.86),
  (125, '2023-04-03 05:20:00.00', 3.26),
  (127, '2023-04-03 05:00:00.00', 2.35),
  (127, '2023-04-03 05:10:00.00', 1.81),
  (127, '2023-04-03 05:20:00.00', 1.96);