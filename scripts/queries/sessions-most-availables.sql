--* Ver las sesiones con orden por las más disponibles.

SELECT s.id, s.time_start, s.time_end, s.description, s.date, (
        SELECT COUNT(w.id)
        FROM workspaces w
        WHERE
            w.room_id = 5
    ) - COUNT(r.id) AS spaces_available
FROM sessions s
    LEFT JOIN reservations r ON s.id = r.session_id
WHERE
    s.date = '2024-06-01'
GROUP BY
    s.id,
    s.time_start,
    s.time_end,
    s.description,
    s.date
ORDER BY spaces_available DESC;