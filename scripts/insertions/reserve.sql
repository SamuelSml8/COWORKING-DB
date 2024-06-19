INSERT INTO
    reservations (
        user_id,
        workspace_id,
        session_id
    )
VALUES (100, 100, 100);

DELETE FROM reservations
WHERE
    user_id = 100
    AND workspace_id = 100
    AND session_id = 100;