CREATE TABLE Socios (
    Codigo   NUMBER(10)         NOT NULL,
    Nome     VARCHAR2(40)       NOT NULL,
    Telefone VARCHAR2(20)       NOT NULL,
    Lograd   VARCHAR2(30)       NOT NULL,
    Complem  VARCHAR2(15),
    Bairro   VARCHAR2(15),
    Cidade   VARCHAR2(20),
    UF       CHAR(2),
    CEP      VARCHAR2(8),
    
    -- Definição da Chave Primária
    CONSTRAINT pk_socios PRIMARY KEY (Codigo)
);

create table Emprestimos (
    ID_livro VARCHAR(15) NOT NULL,
    CodSocio NUMBER(10),
    DtRetirada Date NOT NULL,
    DtDevPrev Date NOT NULL,
    DtDevReal Date NOT NULL,
    VrMulta Decimal(10, 2),
    
    CONSTRAINT pk_emprestimos PRIMARY KEY (ID_livro, CodSocio, DtRetirada),
    
    CONSTRAINT fk_livro FOREIGN KEY (ID_livro) REFERENCES Livros(ID_livro),
    CONSTRAINT fk_socio FOREIGN KEY (CodSocio) REFERENCES Socios(Codigo)
)
    
create table Livros(
    Id VARCHAR(15),  
    Titulo VARCHAR(80) NOT NULL,
    Editora VARCHAR(20) NOT NULL,
    TotPag NUMBER(10),
    DiasPrazo NUMBER(10),
    CodAssunto NUMBER(10) NOT NULL,
    
    CONSTRAINT fk_assuntos FOREIGN KEY (CodAssunto) REFERENCES Assuntos (Codigo)
);

create table Assuntos(
    Codigo NUMBER(10),
    Nome VARCHAR(40) NOT NULL,
    
    CONSTRAINT pk_assuntos PRIMARY KEY (Codigo),
    CONSTRAINT uk_nome UNIQUE (Nome)
);

create table Autorias(
    IdLivro VARCHAR(15),
    CodAutor NUMBER(10),
    
    CONSTRAINT fk_idlivro FOREIGN KEY (IdLivro) REFERENCES Livros(Id),
    CONSTRAINT fk_codautor FOREIGN KEY (CodAutor) REFERENCES Autores(Codigo),
    
    CONSTRAINT pk_autorias PRIMARY KEY (IdLivro, CodAutor)

);

create table Autores(
    Codigo NUMBER(10),
    Nome VARCHAR(40) NOT NULL,
    Origem VARCHAR(20) NOT NULL,
    
    CONSTRAINT pk_Autores PRIMARY KEY (Codigo)
);




    
    


