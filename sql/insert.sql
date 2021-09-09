-- user(id, name, email, banned);
-- room(id, name, createdIn, closedIn, createBy);
-- message(id, content, sendedIn, userId, roomId);
-- member(id, userId, roomId);
-- usuário->Sala->Membro->Mensagem

INSERT INTO userr (id, name, email, banned)
VALUES (1, 'Taciano', 'taciano@gmail.com', true),
  (2, 'João', 'joão@gmail.com', false),
  (3, 'Pedro', 'pedro@gmail.com', false),
  (4, 'Lucas', 'lucas@gmail.com', true),
  (5, 'Paulo', 'paulo@gmail.com', false),
  (6, 'Marcos', 'marcos@gmail.com', false),
  (7, 'Rafael', 'rafael@gmail.com', false);

INSERT INTO room (id, name, created_at, closed_at, fk_user_id)
VALUES (1, 'Sala 1', '2021-01-10', '2021-01-11', 1),
  (2, 'Sala 2', '2021-05-08', '2021-05-09', 2),
  (3, 'Sala 3', '2021-06-12', '2021-06-13', 3),
  (4, 'Sala 4', '2021-08-02', '2021-08-03', 4),
  (5, 'Sala 5', '2021-08-04', '2021-08-05', 5),
  (6, 'Sala 6', '2021-08-04', '2021-08-05', 6),
  (7, 'Sala 7', '2021-08-04', NULL, 7);

INSERT INTO member (id, fk_user_id, fk_room_id)
VALUES (1, 1, 1),
  (2, 2, 1),
  (3, 3, 3),
  (4, 4, 1),
  (5, 5, 2),
  (6, 6, 2),
  (7, 6, 7),
  (8, 4, 7),
  (9, 7, 7);

INSERT INTO message (id, content, sended_at, fk_user_id, fk_room_id)
VALUES (1, 'Olá, tudo bem?', '2021-08-11', 1, 1),
  (
    2,
    'Alguém expulsa Taciano da sala?',
    '2021-08-11',
    2,
    1
  ),
  (3, 'Pronto', '2021-08-11', 3, 3),
  (4, 'Bem melhor', '2021-08-11', 4, 1),
  (5, 'Menos atividade', '2021-08-11', 5, 2),
  (6, 'Amém', '2021-08-11', 6, 2),
  (7, 'Bem melhor', '2021-08-11', 7, 7),
  (8, 'Qual o próximo?', '2021-08-11', 7, 7);

