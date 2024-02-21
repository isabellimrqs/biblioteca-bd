
CREATE TABLE livros (
    id INT PRIMARY KEY,
    isbn INT,
    titulo VARCHAR(255) NOT NULL,
    categoria ENUM('ROMANCE','SUSPENSE','COMEDIA','DRAMA'),
    descricao TEXT
);

CREATE TABLE usuario (
    id INT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(100) UNIQUE,
    data_registro DATE,
    nivel_associacao ENUM('BRONZE','PRATA','OURO','DIAMANTE')
);

CREATE TABLE livros_autores (
	id_livros INT PRIMARY KEY,
    id_autor INT,
	FOREIGN KEY (id_livros) REFERENCES livros(id),
    FOREIGN KEY (id_autor) REFERENCES autores(id)
);

CREATE TABLE autores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    data_nascimento DATE,
    biografia TEXT,
    id_livro INT,
    FOREIGN KEY (id_livro) REFERENCES livros(id)
);

CREATE TABLE emprestimos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_livro INT,
    id_usuario INT,
    quantidade INT,
    data_emprestimo DATE,
    data_devolucao DATE,
    FOREIGN KEY (id_livro) REFERENCES livros(id),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id)
);

CREATE TABLE funcionario (
    id INT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);



