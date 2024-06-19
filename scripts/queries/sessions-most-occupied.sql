--* Ver las sesiones con orden por las más ocupadas.

SELECT s.id, s.time_start, s.time_end, s.description, s.date, COUNT(r.id) AS spaces_occupied
FROM sessions s
    LEFT JOIN reservations r ON s.id = r.session_id
GROUP BY
    s.id,
    s.time_start,
    s.time_end,
    s.description,
    s.date
ORDER BY spaces_occupied DESC;