--* Ver la lista de espacios de trabajo ocupados de una sala en una sesión x

SELECT w.id, w.row_number, w.column_number
FROM workspaces w
    JOIN reservations r ON w.id = r.workspace_id
WHERE
    w.room_id = 20
    AND r.session_id = 10;