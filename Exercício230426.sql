SELECT * FROM  livros;
SELECT * FROM  editora;


INSERT INTO editora VALUES (SQ_EDITORA.NEXTVAL, 'LTC');

INSERT INTO editora VALUES (SQ_EDITORA.NEXTVAL, 'Erika');

INSERT INTO editora VALUES (SQ_EDITORA.NEXTVAL, 'Globo');

INSERT INTO editora VALUES (SQ_EDITORA.NEXTVAL, 'Campus');

CREATE TABLE assuntos_livros (
    id_assunto NUMBER,
    id_livro varchar2(20),
    PRIMARY KEY (id_assunto, id_livro),
    FOREIGN KEY (id_assunto) REFERENCES assuntos(codigo),
    FOREIGN KEY (id_livro) REFERENCES livros(id)
);

ALTER TABLE LIVROS drop column editora;
ALTER TABLE LIVROS add ID_EDITORA NUMBER(8);
ALTER TABLE LIVROS add CONSTRAINT fk_livro_editora
FOREIGN KEY (ID_EDITORA) REFERENCES editora(ID_EDITORA);


UPDATE LIVROS SET ID_EDITORA=1 where editora='LTC';
UPDATE LIVROS SET ID_EDITORA=2 where editora='Erika';
UPDATE LIVROS SET ID_EDITORA=3 where editora='Globo';
UPDATE LIVROS SET ID_EDITORA=4 where editora='Campus';





create table editora(
    id_editora NUMBER(8) primary key,
    nome varchar2(30)
)
create sequence SQ_Editora
start with 1
increment by 1;
insert into editora values (SQ_editora.nextval, 'ftd');

INSERT INTO assunto_livros VALUES ('737.4.202 S2002', 1);

INSERT INTO assunto_livros VALUES ('681.5.203 S442', 2);

INSERT INTO assunto_livros VALUES ('588.9.949 S3003', 3);

INSERT INTO assunto_livros VALUES ('737.4.234 S2323', 4);

INSERT INTO assunto_livros VALUES ('588.3.342 S4343', 7);

INSERT INTO assunto_livros VALUES ('737.4.180 S2023', 1);

INSERT INTO assunto_livros VALUES ('683.2.343 S334', 5);

INSERT INTO assunto_livros VALUES ('333.5.656 S1849', 6);

alter table livros drop column codassuntos;


