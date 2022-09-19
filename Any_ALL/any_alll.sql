--ANY iki durumdan bir tanesini sağlaması yeterlidir.
SELECT id
FROM book
WHERE title = ' Abe Lincoln in Illinois '
    OR title = ' Saving Shiloh ';
--Example1
SELECT first_name,
    last_name
FROM author
WHERE id = ANY (
        SELECT id
        FROM book
        WHERE title LIKE ' Abe% '
            OR page_number = 465
    );
--ALL iki durumun da sağlanması gerekir.
SELECT first_name,
    last_name
FROM author
WHERE id = ALL (
        SELECT id
        FROM book
        WHERE title = ' Abe Lincoln in Illinois '
            OR title = ' Saving Shiloh '
    );