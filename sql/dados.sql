INSERT INTO alunos (name, email, data_aniversario, updated_at, created_at) 
VALUES
('Fernanda Monteiro', 'fernandamonteiro1@gmail.com', '1966-07-30', '2025-02-01 12:03:54.710371', '2024-08-02 15:10:14.707870');
INSERT INTO instrutores (name, email, biografia, updated_at, created_at) 
VALUES
('Eloah Rios', 'eloahrios1@edutech.com', 'Minus eligendi quo tempora sed natus dolores mollitia. Voluptatem occaecati nobis unde.', '2025-01-30 04:11:14.481597', '2025-01-08 09:02:36.783856');
INSERT INTO cursos (name, descricao, nivel, preco, carga_horaria, instrutorID, updated_at, created_at) 
VALUES
('Matemática', 'Aliquid repellat qui. Dolores officia eaque repudiandae neque ipsum veniam.
Vel aut eveniet quis natus labore consequatur. Inventore accusamus ducimus maiores laborum labore explicabo est.', 'intermediario', '194.91', '184', '1','2025-10-04 19:26:55.155419', '2025-02-27 11:16:53.357073'),
('Python', 'Sapiente tenetur mollitia officiis dicta totam officiis. Neque unde libero. Dolore saepe dicta optio veniam voluptas recusandae.', 'avancado', '70.94', '4', '1','2025-05-08 12:04:48.483273', '2024-01-16 17:22:04.216606');
INSERT INTO modulos (cursoID, name, descricao, ordem) 
VALUES
(1, 'modulo 0', 'Dolore est occaecati ratione tempora. Commodi totam numquam aliquam.
Beatae veniam qui facilis sint. Officiis necessitatibus officia tempora. Voluptates delectus dolorem iste.', 1),
(1, 'modulo 1', 'Reprehenderit laudantium perspiciatis alias nobis ea aut. Earum veritatis mollitia dolores totam eos facere quibusdam.', 2),
(1, 'modulo 2', 'Culpa consequuntur voluptatibus rerum eum. Incidunt voluptatum eveniet praesentium hic magni.
Dolor praesentium accusantium doloribus at facere. Commodi eaque deserunt.', 3),
(1, 'modulo 3', 'Dicta doloremque quidem possimus ratione quis. Ea eos animi provident.', 4),
(1, 'modulo 4', 'Suscipit dolores dolore magni. Impedit nesciunt qui qui. Repellat possimus voluptatum dolor nam.
Corrupti corporis ab aliquid. Eligendi rem nobis odio nemo.', 5),
(2, 'modulo 0', 'Nulla non accusamus accusantium ipsum voluptatum. Labore dolores rem cupiditate ullam. Molestiae minima voluptatum.', 1),
(2, 'modulo 1', 'Saepe id nemo id. Minus optio tenetur hic ut fugit rerum.', 2),
(2, 'modulo 2', 'Est nemo quisquam dignissimos molestiae omnis voluptatum sequi. Possimus assumenda sunt incidunt. Commodi quas quo porro. Ut culpa rerum repellat velit quos.', 3),
(2, 'modulo 3', 'Eaque officia molestias veritatis facere a. Aperiam ipsam aliquid ducimus eaque quo qui officia.
Quam quis expedita velit minima placeat ex.', 4),
(2, 'modulo 4', 'Eaque modi fugiat impedit temporibus excepturi. Fuga minima repudiandae provident ullam corrupti.', 5)
;
INSERT INTO aulas (moduloID, titulo, tipo, ordem) 
VALUES
(1, 'aula 0', 'video', 1),
(1, 'aula 1', 'video', 2),
(1, 'aula 2', 'quiz', 3),
(1, 'aula 3', 'video', 4),
(1, 'aula 4', 'video', 5),
(2, 'aula 0', 'quiz', 1),
(2, 'aula 1', 'video', 2),
(2, 'aula 2', 'texto', 3),
(2, 'aula 3', 'quiz', 4),
(2, 'aula 4', 'texto', 5),
(3, 'aula 0', 'video', 1),
(3, 'aula 1', 'video', 2),
(3, 'aula 2', 'video', 3),
(3, 'aula 3', 'video', 4),
(3, 'aula 4', 'texto', 5),
(4, 'aula 0', 'quiz', 1),
(4, 'aula 1', 'quiz', 2),
(4, 'aula 2', 'texto', 3),
(4, 'aula 3', 'video', 4),
(4, 'aula 4', 'video', 5),
(5, 'aula 0', 'quiz', 1),
(5, 'aula 1', 'video', 2),
(5, 'aula 2', 'quiz', 3),
(5, 'aula 3', 'texto', 4),
(5, 'aula 4', 'quiz', 5),
(6, 'aula 0', 'video', 1),
(6, 'aula 1', 'texto', 2),
(6, 'aula 2', 'texto', 3),
(6, 'aula 3', 'texto', 4),
(6, 'aula 4', 'texto', 5),
(7, 'aula 0', 'quiz', 1),
(7, 'aula 1', 'video', 2),
(7, 'aula 2', 'video', 3),
(7, 'aula 3', 'texto', 4),
(7, 'aula 4', 'video', 5),
(8, 'aula 0', 'texto', 1),
(8, 'aula 1', 'video', 2),
(8, 'aula 2', 'texto', 3),
(8, 'aula 3', 'quiz', 4),
(8, 'aula 4', 'texto', 5),
(9, 'aula 0', 'texto', 1),
(9, 'aula 1', 'video', 2),
(9, 'aula 2', 'texto', 3),
(9, 'aula 3', 'video', 4),
(9, 'aula 4', 'texto', 5),
(10, 'aula 0', 'video', 1),
(10, 'aula 1', 'quiz', 2),
(10, 'aula 2', 'video', 3),
(10, 'aula 3', 'quiz', 4),
(10, 'aula 4', 'texto', 5);
INSERT INTO matriculas (cursoID, alunoID, valorPago, status) 
VALUES
(2, 1, 85.14, 'cancelada'),
(1, 1, 437.61, 'concluida');
INSERT INTO especialidades (name, descricao) 
VALUES
('Programação Python', 'Atque quisquam magnam tenetur reprehenderit delectus aliquid quam. Maxime dolorem enim et alias. Eius culpa nostrum ad.
Consequatur accusantium dignissimos velit unde. Ad sequi vero quidem labore eum rem omnis. Deserunt sapiente commodi.'),
('Desenvolvimento Web', 'Sit ducimus aliquam esse sint molestiae. Quo atque repellat quidem.
Culpa itaque quo qui eum velit dolore. Assumenda earum necessitatibus eaque occaecati non.
Quos repellat eum ex. Dolores deserunt quisquam saepe. Eos magnam illo esse molestias sint. Quaerat cumque atque esse consectetur eaque aut.'),
('Inteligência Artificial', 'Enim nesciunt occaecati ullam. Eveniet maiores cum error natus quasi necessitatibus.
In iste officiis voluptates ipsam. Tempore ratione eos ipsum. Beatae eos fuga animi.
Sit modi officiis culpa dolorem inventore.
Ipsam ut debitis iusto sapiente atque molestias. Totam eius reprehenderit nulla.'),
('Machine Learning', 'Ipsum maiores illo porro. Dicta quas perspiciatis quisquam expedita sequi. Voluptatem possimus quis ipsam incidunt maxime quasi.
Harum porro provident. Non accusamus explicabo a.'),
('Engenharia de Software', 'Inventore veritatis quibusdam amet architecto excepturi. Quos animi porro voluptatem a eos fuga minima. Inventore velit culpa necessitatibus voluptatibus impedit.'),
('Matemática Avançada', 'Placeat earum non veritatis laboriosam. Quos eius reiciendis pariatur.
Aperiam atque vero aut non eum deserunt est. Exercitationem magni corrupti animi consequuntur ipsum temporibus aut.
Fugiat velit debitis libero sed maxime. Expedita accusamus voluptates at. Voluptas animi aut placeat cum veniam.'),
('Marketing Digital', 'Nobis sint repudiandae voluptatum dolor ab. Minus sapiente est odit aspernatur eaque voluptatem.
Eveniet asperiores exercitationem similique iusto. Assumenda corporis rerum expedita rerum.
Tempora deleniti delectus error aut ab accusantium. Quod vero nemo dicta. Nam enim possimus iure illo.'),
('Design Gráfico', 'Sint nesciunt quia ut.
Accusamus beatae ad quis. Libero eum quaerat.
Facere pariatur perferendis magni iure. Voluptate culpa placeat beatae temporibus incidunt. Porro modi sequi dicta perspiciatis dolorem odio suscipit.'),
('Fotografia Digital', 'Ad illo iste autem accusamus.
Exercitationem molestiae mollitia accusantium numquam asperiores magnam possimus. Illo ab ad autem sunt.
Dolor adipisci adipisci at. Aliquid magnam blanditiis. Ipsa dignissimos omnis sed esse corporis.'),
('Economia e Finanças', 'Maiores dolor harum magnam. Unde blanditiis quasi. Molestiae quis provident quo laborum enim.
Illo dignissimos optio. Perspiciatis magni sint nulla repellat est. Expedita ducimus magnam saepe veritatis. Commodi natus vitae nam tenetur ipsam eveniet aut.');
INSERT INTO especialidades_instrutor (instrutorID, especialidadeID) 
VALUES
(1, 5),
(1, 1);
INSERT INTO categorias (name, descricao) 
VALUES
('Tecnologia', 'Nihil voluptate tempore quibusdam accusamus. Repellat natus mollitia ipsum. Ex consequuntur sunt enim sed.'),
('Negócios', 'Ratione aperiam esse atque minima. Nostrum nostrum repellendus illum.
Fugit illum velit.
Consequuntur delectus ipsum tempora ipsum incidunt.'),
('Artes', 'Sint veritatis sequi quo vitae. Autem distinctio necessitatibus ad.'),
('Ciências', 'Rerum labore dolorum. Repellendus quis deleniti laudantium quisquam labore. Officia sunt autem saepe.'),
('Saúde', 'Voluptate amet repellendus saepe. Molestias odio optio quos architecto illo molestias ipsa. Ex possimus quos nulla.');
INSERT INTO categorias_curso (cursoID, categoriaID) 
VALUES
(1, 5),
(2, 5);
INSERT INTO avaliacoes (cursoID, matriculaID, nota, comentario, data_avl) 
VALUES
(1, 1, 2, 'Eos aut nulla pariatur repellendus alias. Deleniti facere nam. Exercitationem quia voluptates officiis repellat occaecati suscipit.', '2025-07-29'),
(2, 2, 5, 'Inventore cumque suscipit eum.
Esse dolore dolore illum. Cupiditate quis blanditiis eveniet ipsum unde. Ullam ipsum numquam perspiciatis earum fuga totam. Possimus illum eaque veniam doloremque.', '2025-10-15'),
(1, 1, 4, 'Autem totam harum dolores similique. Repellat doloribus inventore omnis perferendis iste quibusdam.', '2025-04-28'),
(1, 1, 4, 'Quas aliquam error alias corporis. Voluptates aspernatur repellendus voluptatum explicabo. Quidem molestias debitis quo nobis a. Id harum doloribus quo.', '2024-12-05'),
(1, 1, 3, 'Repellat saepe neque harum pariatur repudiandae aut. Animi distinctio necessitatibus nihil optio quisquam. Dolorem reprehenderit ipsum et.', '2024-10-26'),
(1, 1, 4, 'Sit quibusdam eum facere eos. Quam quisquam suscipit eum cupiditate. Quas laudantium provident iste libero nisi.', '2025-02-07'),
(2, 2, 3, 'Nobis adipisci aliquam rem minima aut qui. Reiciendis laborum molestiae est.
Nisi voluptas doloremque. Repellat maxime esse vel.', '2025-07-28'),
(1, 1, 3, 'Nihil sequi dicta. Perspiciatis totam perferendis tempore neque.', '2025-07-30'),
(1, 2, 3, 'Tempora aperiam in aut occaecati. Neque ea vel ipsum.
Culpa molestias voluptatem. Qui in consequatur.', '2024-12-16'),
(1, 2, 2, 'Velit accusantium ea dignissimos excepturi. Aspernatur officiis porro quas.', '2025-10-16'),
(1, 2, 3, 'Corporis corrupti voluptas necessitatibus itaque. At nihil rerum neque voluptatum. Placeat numquam repudiandae nam ut explicabo at.', '2024-10-28'),
(2, 2, 3, 'Ad quis quod quae iusto totam in eaque. Quia cupiditate eius veritatis quod aspernatur.', '2025-04-12'),
(1, 2, 3, 'Tempora quae distinctio. Velit explicabo corrupti harum quam eveniet. Quaerat pariatur nostrum laborum fuga totam maxime.
Aspernatur ea nulla qui non.', '2025-04-14'),
(2, 2, 3, 'Laborum voluptatibus voluptatem cumque a minus. Inventore officia est libero placeat ex tempore. Ipsa ratione rerum vel laboriosam similique nihil. Excepturi ipsum distinctio qui fuga.', '2024-12-06'),
(1, 2, 5, 'Nisi maxime beatae praesentium illum. Animi exercitationem deserunt ex sapiente et nulla sit. Unde ea excepturi est.
Omnis consectetur ipsam voluptate sapiente. Molestias iste itaque fugit.', '2024-12-05'),
(1, 1, 3, 'Odit tempora ex inventore qui. Nihil aperiam est veniam sint aliquid.', '2025-05-13'),
(1, 1, 5, 'Reiciendis aspernatur odit sed inventore. Aliquid recusandae impedit veniam quaerat adipisci perferendis. Neque architecto aliquid suscipit libero.', '2025-10-14'),
(1, 1, 4, 'Laboriosam id impedit repellendus inventore voluptatem voluptatem. Quos laborum earum deserunt voluptatibus esse. Nisi aspernatur aliquam assumenda earum quae. Architecto incidunt doloremque quis.', '2025-04-26'),
(2, 1, 1, 'Quod esse commodi tenetur nobis aperiam dolorum. Voluptatibus ut facilis. Dolorum at ea laboriosam beatae.
Sit modi enim vel ab repudiandae. Quam aliquid deserunt.', '2025-03-18'),
(1, 2, 1, 'Magni iure ipsam. Nemo exercitationem ducimus cumque accusamus.
Sequi delectus soluta possimus distinctio. Corrupti necessitatibus vitae.
Ab pariatur quisquam magni. Repudiandae modi qui nulla.', '2025-07-19');
INSERT INTO progresso_aulas (matriculaID, aulaID, concluida, finished_at, time_watched) 
VALUES
(1, 1, True, '2025-05-19 01:41:48.717285', 496),
(2, 2, False, NULL, 84),
(1, 3, False, NULL, 33),
(2, 4, False, NULL, 124),
(2, 5, True, '2025-10-17 03:23:21.330287', 372),
(2, 6, False, NULL, 158),
(1, 7, True, '2025-10-12 14:33:11.291113', 533),
(2, 8, False, NULL, 178),
(2, 9, False, NULL, 20),
(2, 10, False, NULL, 32),
(1, 11, False, NULL, 47),
(1, 12, False, NULL, 278),
(2, 13, False, NULL, 283),
(1, 14, False, NULL, 113),
(2, 15, True, '2025-05-10 20:12:10.964979', 416),
(2, 16, False, NULL, 184),
(2, 17, True, '2025-06-18 06:58:38.203619', 438),
(1, 18, False, NULL, 140),
(2, 19, False, NULL, 212),
(1, 20, False, NULL, 267),
(2, 21, True, '2025-07-30 02:56:17.629242', 337),
(1, 22, False, NULL, 47),
(2, 23, True, '2025-07-04 21:23:51.767360', 502),
(2, 24, False, NULL, 16),
(1, 25, False, NULL, 242),
(1, 26, True, '2025-06-22 22:11:12.411818', 533),
(2, 27, False, NULL, 281),
(2, 28, True, '2025-07-31 17:14:08.626187', 505),
(2, 29, True, '2025-05-30 01:53:16.329486', 483),
(2, 30, False, NULL, 124),
(1, 31, True, '2025-06-02 20:59:34.843888', 600),
(2, 32, True, '2025-05-01 05:07:02.185718', 311),
(1, 33, True, '2025-08-23 05:39:33.079393', 576),
(1, 34, True, '2025-06-11 18:41:53.774259', 305),
(1, 35, False, NULL, 268),
(1, 36, False, NULL, 175),
(2, 37, True, '2025-06-01 03:22:02.213249', 476),
(2, 38, True, '2025-07-09 21:50:07.031204', 531),
(2, 39, True, '2025-06-05 08:11:34.811420', 301),
(1, 40, True, '2025-07-14 17:47:54.829365', 527),
(2, 41, True, '2025-09-12 22:39:38.272182', 530),
(2, 42, False, NULL, 203),
(2, 43, False, NULL, 261),
(1, 44, False, NULL, 203),
(1, 45, False, NULL, 82),
(1, 46, True, '2025-07-27 21:20:42.958405', 554),
(2, 47, False, NULL, 201),
(2, 48, True, '2025-09-14 07:41:19.562992', 500),
(2, 49, False, NULL, 262),
(2, 50, True, '2025-06-27 15:33:34.264731', 372);
