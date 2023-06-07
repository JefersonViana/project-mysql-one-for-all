-- Descomente e altere as linhas abaixo:

CREATE TABLE SpotifyClone.favoritas(
  id_usuario INT NOT NULL,
  id_cancao INT NOT NULL,
  CONSTRAINT PRIMARY KEY (id_usuario, id_cancao),
  FOREIGN KEY (id_usuario) REFERENCES usuarios (id_usuario),
  FOREIGN KEY (id_cancao) REFERENCES cancoes (id_cancao)
) engine = InnoDB;

INSERT INTO SpotifyClone.favoritas (id_usuario, id_cancao)
VALUES
  (1, 3),
  (1, 6),
  (1, 10),
  (2, 4),
  (3, 1),
  (3, 3),
  (4, 7),
  (4, 4),
  (5, 10),
  (5, 2),
  (8, 4),
  (9, 7),
  (10, 3);
