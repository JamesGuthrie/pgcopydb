--   SELECT x, pg_size_pretty(x::bigint)
--     FROM generate_series(1024, 2 * 1024 * 1024, 128 * 1024) as t(x);
-- ┌─────────┬────────────────┐
-- │    x    │ pg_size_pretty │
-- ├─────────┼────────────────┤
-- │    1024 │ 1024 bytes     │
-- │  132096 │ 129 kB         │
-- │  263168 │ 257 kB         │
-- │  394240 │ 385 kB         │
-- │  525312 │ 513 kB         │
-- │  656384 │ 641 kB         │
-- │  787456 │ 769 kB         │
-- │  918528 │ 897 kB         │
-- │ 1049600 │ 1025 kB        │
-- │ 1180672 │ 1153 kB        │
-- │ 1311744 │ 1281 kB        │
-- │ 1442816 │ 1409 kB        │
-- │ 1573888 │ 1537 kB        │
-- │ 1704960 │ 1665 kB        │
-- │ 1836032 │ 1793 kB        │
-- │ 1967104 │ 1921 kB        │
-- └─────────┴────────────────┘
-- (16 rows)

INSERT INTO table_a (f1, f2)
     SELECT x, repeat('x', x)
       FROM generate_series(1024, 2 * 1024 * 1024, 128 * 1024) as t(x);
