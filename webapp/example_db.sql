/* First, create our jumps table: */
CREATE TABLE jumps (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50),
    ftime SMALLINT,
    notes TEXT,
    created DATETIME DEFAULT NULL,
    modified DATETIME DEFAULT NULL
);
/* Then insert some jumps for testing: */
INSERT INTO jumps (notes,created,ftime,username )
    VALUES ('The jump',  NOW(),'1000','marck');
INSERT INTO jumps (notes,created,ftime,username)
    VALUES ('A jump once again',  now(),'1010','marck');
insert into jumps (notes,created,ftime,username)
    VALUES ('jump strikes back',  NOW(),'1012','marck');
/* results */
select * from jumps;

