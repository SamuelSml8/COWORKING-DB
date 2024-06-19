--* Ver la lista de espacios de trabajo disponibles de una sala en una sesión x

SELECT w.id, w.row_number, w.column_number
FROM workspaces w
    LEFT JOIN reservations r ON w.id = r.workspace_id
WHERE
    w.room_id = 5
    AND r.session_id <> 10
    OR r.session_id IS NULL;