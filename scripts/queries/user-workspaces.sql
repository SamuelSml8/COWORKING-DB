--* Ver la lista de espacios de trabajo asignados a un usuario.

SELECT w.id, w.row_number, w.column_number
FROM workspaces w
    JOIN reservations r ON w.id = r.workspace_id
WHERE
    r.user_id = 23;