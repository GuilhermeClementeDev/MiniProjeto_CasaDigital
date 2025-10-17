INSERT INTO alunos (name, email, data_aniversario, updated_at, created_at) 
VALUES
('Ana Julia Montenegro', 'scavalcante@example.net', '1965-02-13', '2025-07-27 23:07:42.367690', '2023-10-23 19:05:39.669725'),
('Ana Vitória Costa', 'xoliveira@example.com', '1979-11-30', '2024-11-30 08:52:58.704098', '2024-03-26 00:14:17.619040');
INSERT INTO instrutores (name, email, biografia, updated_at, created_at) 
VALUES
('Caleb Macedo', 'lopesmariah@example.org', 'Molestias vitae vitae nulla quibusdam similique totam. Vero porro culpa commodi blanditiis harum. Eligendi molestiae cum molestias enim. Vitae distinctio beatae quae necessitatibus nostrum.', '2024-06-14 08:11:23.185346', '2024-01-10 21:57:22.058562');
INSERT INTO cursos (name, descricao, nivel, preco, carga_horaria, instrutorID, updated_at, created_at) 
VALUES
('numquam', 'Odio impedit porro corrupti tenetur. Repellat dolorem sed eum.
Fuga quo natus quia accusamus nobis. Perferendis numquam exercitationem atque quibusdam error.', 'intermediario', '74.82', '189', '1','2025-06-20 00:08:33.488818', '2023-11-30 16:28:51.736082'),
('enim', 'Cumque nemo modi delectus ea. Iusto dolorum voluptatibus sunt modi. Quae cumque doloribus. Et molestias doloremque hic dolores.', 'intermediario', '435.7', '169', '1','2025-08-29 21:36:43.758850', '2025-07-25 13:20:47.772998');
INSERT INTO modulos (cursoID, name, descricao, ordem) 
VALUES
(1, 'consectetur', 'Incidunt aspernatur corrupti accusamus fuga sapiente iusto. Iusto rerum dolor et cum esse assumenda illo.', 1),
(1, 'veritatis', 'Eos beatae provident esse vel. Quasi eum quo occaecati.
Praesentium quisquam esse ipsa hic velit. Nesciunt quidem dignissimos labore. Veniam maxime quas quibusdam praesentium distinctio neque.', 2),
(1, 'eos', 'Placeat nisi mollitia accusantium amet. Provident occaecati maxime.
Dolores expedita ratione optio corporis error ducimus. Sapiente itaque suscipit accusamus non.', 3),
(1, 'laborum', 'Beatae perspiciatis consectetur dicta fugiat quibusdam. Quam quam quos architecto. Qui nisi quasi iste itaque illum ipsam provident.
Laudantium neque nesciunt exercitationem repellendus saepe.', 4),
(1, 'incidunt', 'Consectetur nam ad sint iste vero dolore. Ipsam alias necessitatibus iusto dignissimos minima corporis. Autem quas quas maxime iure tenetur.
Laboriosam possimus quo iste. Est impedit nostrum.', 5),
(2, 'nihil', 'Facere architecto nihil dolorum dolorum aperiam. Nesciunt accusantium nobis culpa quidem velit omnis commodi. Eius soluta dicta cumque repellendus.', 1),
(2, 'maxime', 'Quidem quae ipsa molestiae esse veritatis nostrum. Inventore sed aliquid explicabo ipsum atque eos.
Voluptas magni odio blanditiis corrupti. Vero perspiciatis dolore quam quod.', 2),
(2, 'nulla', 'Error dignissimos iure assumenda saepe vel nostrum excepturi. Magni aliquid deserunt voluptatem nostrum. Debitis unde quisquam cupiditate distinctio similique.', 3),
(2, 'natus', 'Quibusdam culpa doloremque quisquam libero minima. Necessitatibus illum aut consectetur. Magnam laudantium iure dolorum.
Fugiat tenetur eos rerum accusamus. Atque quis deleniti dolorum voluptas.', 4),
(2, 'quidem', 'Magni magni numquam accusamus alias dolorem laboriosam. Sint iste quisquam ut laboriosam animi. Deserunt vero eos omnis doloribus quo.
Adipisci est officia. Occaecati expedita natus mollitia.', 5)
;
INSERT INTO aulas (moduloID, titulo, tipo, ordem) 
VALUES
(1, 'nesciunt', 'quiz', 1),
(1, 'aspernatur', 'video', 2),
(1, 'fugiat', 'video', 3),
(1, 'porro', 'texto', 4),
(1, 'perferendis', 'video', 5),
(2, 'labore', 'texto', 1),
(2, 'illo', 'texto', 2),
(2, 'culpa', 'quiz', 3),
(2, 'dolor', 'texto', 4),
(2, 'necessitatibus', 'quiz', 5),
(3, 'quas', 'texto', 1),
(3, 'consectetur', 'texto', 2),
(3, 'labore', 'quiz', 3),
(3, 'odit', 'video', 4),
(3, 'natus', 'texto', 5),
(4, 'repellat', 'video', 1),
(4, 'dignissimos', 'video', 2),
(4, 'error', 'texto', 3),
(4, 'laborum', 'quiz', 4),
(4, 'debitis', 'texto', 5),
(5, 'eos', 'texto', 1),
(5, 'optio', 'texto', 2),
(5, 'omnis', 'quiz', 3),
(5, 'exercitationem', 'quiz', 4),
(5, 'iure', 'quiz', 5),
(6, 'quos', 'quiz', 1),
(6, 'non', 'texto', 2),
(6, 'a', 'texto', 3),
(6, 'adipisci', 'video', 4),
(6, 'id', 'quiz', 5),
(7, 'facilis', 'video', 1),
(7, 'nulla', 'video', 2),
(7, 'reprehenderit', 'quiz', 3),
(7, 'nisi', 'texto', 4),
(7, 'voluptas', 'quiz', 5),
(8, 'alias', 'quiz', 1),
(8, 'nostrum', 'video', 2),
(8, 'eaque', 'quiz', 3),
(8, 'nam', 'texto', 4),
(8, 'nihil', 'video', 5),
(9, 'ullam', 'video', 1),
(9, 'suscipit', 'quiz', 2),
(9, 'corporis', 'video', 3),
(9, 'aliquid', 'texto', 4),
(9, 'quia', 'texto', 5),
(10, 'quibusdam', 'video', 1),
(10, 'accusantium', 'video', 2),
(10, 'odio', 'video', 3),
(10, 'est', 'quiz', 4),
(10, 'necessitatibus', 'video', 5);
;
INSERT INTO matriculas (cursoID, alunoID, valorPago, status) 
VALUES
(2, '1', '110.73', 'cancelada'),
(1, '2', '169.3', 'cancelada');
;
INSERT INTO especialidades (name, descricao) 
VALUES
('natus', 'Minima iure quo excepturi quibusdam consectetur. Exercitationem quidem natus error voluptatum aspernatur eum. Illo repellendus nesciunt molestias occaecati porro.
Illo fuga aut quisquam neque.
Molestias tempore nesciunt aliquam odit sit nulla sapiente. Officia magni placeat beatae sequi atque.'),
('architecto', 'In reprehenderit similique. Harum eos mollitia blanditiis aliquam consequatur laudantium et.
Odit veritatis voluptates sint molestias aut voluptatibus. Illum quam nostrum maxime similique debitis mollitia et. Dolore quasi sit ab. Voluptatum est sed quas animi dolorem perspiciatis.'),
('numquam', 'Porro ipsam quod velit consequuntur tempora. Itaque accusamus repellendus minima maiores.
Amet expedita dicta dignissimos quasi itaque consectetur iure. Deleniti numquam omnis delectus nobis ullam similique facere.'),
('illo', 'Iusto necessitatibus in quo fuga. Dignissimos labore iste excepturi magnam.
Sequi ab suscipit sequi. Suscipit quibusdam odio perferendis sunt amet.
Eveniet temporibus architecto repellat vitae dolor dignissimos. Unde fugiat sed optio nostrum est.'),
('neque', 'Molestias consequuntur libero quibusdam. Dolorem aperiam tenetur dolor sequi.
Non sint dignissimos. Placeat necessitatibus repellat earum eius repellendus rerum rerum.
Corrupti explicabo eius impedit. Vero rerum quae illum mollitia optio earum. Cum rem ea laboriosam enim quam voluptas.'),
('nulla', 'Ea numquam expedita optio repudiandae. Asperiores illo enim accusamus. Voluptate repellendus aperiam error hic ratione commodi sint.
Amet reprehenderit modi veniam saepe unde saepe nisi. Itaque atque impedit magni quod nam ullam.'),
('asperiores', 'Odit repudiandae vel accusantium exercitationem iusto id. Qui doloremque reprehenderit in ab. Aperiam quibusdam ab quod in cupiditate nemo.
Numquam ipsa dolore.
Quae ad nihil et iusto qui. Porro alias hic iure magnam provident libero. Iure explicabo quas ipsum.'),
('animi', 'Quo consequuntur quidem. Numquam enim repudiandae doloribus non molestiae.
Vel numquam impedit pariatur facilis. Doloremque dolor dicta illo veniam sunt temporibus sunt. Voluptas ipsum explicabo iure accusamus voluptate dignissimos.'),
('accusantium', 'Libero quidem sunt amet iusto aperiam velit aperiam. Expedita earum aperiam fugit perspiciatis voluptatem quis. Velit rerum distinctio accusantium at.
Quam asperiores animi explicabo voluptatibus. Error veniam assumenda eaque quia provident rerum alias.'),
('cumque', 'Maxime distinctio quis omnis. Possimus iusto dignissimos quos similique.
Expedita magnam dicta odio sed. Sint voluptate soluta quae.
Totam eum laboriosam cumque ut. Vel totam deserunt fugiat animi. Omnis possimus nemo molestias velit explicabo. Neque ipsam ipsam illum repellendus sunt dolore dicta.');
;
INSERT INTO especialidades_instrutor (instrutorID, especialidadeID) 
VALUES
(1, 3),
(1, 2),
;
INSERT INTO categorias_curso (cursoID, categoriaID) 
VALUES
(1, 1),
(2, 2);
;
