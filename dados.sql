INSERT INTO alunos (name, email, data_aniversario, updated_at, created_at) 
VALUES
('Benicio Silva', 'ana-ceciliarezende@example.org', '1925-11-01', '2025-06-05 12:43:32.055880', '2024-07-31 06:47:32.009830'),
('Rael Gomes', 'isabela27@example.org', '1967-07-24', '2024-10-19 02:30:27.197785', '2024-09-04 22:06:30.583772');
INSERT INTO instrutores (name, email, biografia, updated_at, created_at) 
VALUES
('Maysa Farias', 'vieiraluigi@example.com', 'Inventore minus harum autem. Quam maiores in maxime ex suscipit.
Debitis pariatur sapiente quaerat esse minima. Fugit corporis exercitationem eveniet animi.', '2024-11-22 21:14:48.251684', '2024-10-19 22:59:51.367202');
INSERT INTO cursos (name, descricao, nivel, preco, carga_horaria, instrutorID, updated_at, created_at) 
VALUES
('delectus', 'Tenetur a consectetur blanditiis sunt. Impedit ut rerum possimus. Ducimus deserunt placeat enim optio.', 'avancado', '317.32', '169', '1','2025-06-29 05:05:30.702518', '2024-12-05 01:50:26.825265'),
('explicabo', 'Ea veritatis laboriosam laudantium dolor nostrum. Quas optio animi reiciendis quos in. Assumenda voluptate pariatur omnis at. Libero sint numquam officiis debitis culpa cupiditate.', 'avancado', '52.85', '297', '1','2025-09-24 11:17:36.457786', '2025-08-18 09:26:31.937885');
INSERT INTO modulos (cursoID, name, descricao, ordem) 
VALUES
(1, 'fuga', 'Fuga tempore hic. Quos porro praesentium vel tempora at labore. Blanditiis eius sunt recusandae neque numquam. Laborum magni dolores velit quam debitis dicta.', 1),
(1, 'vero', 'In dolorum sint facere. Laboriosam excepturi quas tenetur pariatur aut deleniti. Minus occaecati vel minima alias officiis possimus.', 2),
(1, 'iste', 'Aperiam iure quod accusamus quae repellat quidem. Modi nam aperiam nisi delectus fuga distinctio.
Numquam nulla hic hic distinctio. Voluptate saepe praesentium asperiores. Natus hic alias animi.', 3),
(1, 'ullam', 'Excepturi quibusdam repellat ad iure. Porro consequuntur id consequatur explicabo aspernatur. Iste aspernatur temporibus voluptates earum hic. Animi consequuntur voluptatem beatae.', 4),
(1, 'expedita', 'Dolorum fuga impedit dolorum. Perspiciatis error est cupiditate harum quos.', 5),
(2, 'sequi', 'Excepturi eius facere quaerat similique numquam assumenda nesciunt. Suscipit eveniet rem ea qui dicta.
Iure corporis maiores saepe. Aspernatur cumque impedit est. Blanditiis ducimus modi eius.', 1),
(2, 'corrupti', 'Libero nostrum vero voluptatem modi. Sed mollitia veritatis ipsum. Provident dignissimos quaerat exercitationem aliquam voluptatibus explicabo. Repudiandae consectetur eveniet eveniet.', 2),
(2, 'ut', 'Ab magnam eum facere neque aperiam pariatur. Officiis officiis vel fuga quasi quod.
Fuga itaque tempore accusantium id.', 3),
(2, 'dolorum', 'Enim maiores officia quia vel modi sequi mollitia. Veritatis iusto dolorum culpa. Atque enim facilis soluta.', 4),
(2, 'temporibus', 'Deleniti asperiores quis. Accusantium iure labore ut voluptatem. Dignissimos saepe repudiandae numquam laudantium debitis.', 5)
;
INSERT INTO aulas (moduloID, titulo, tipo, ordem) 
VALUES
(1, 'perferendis', 'video', 1),
(1, 'eaque', 'video', 2),
(1, 'accusantium', 'video', 3),
(1, 'labore', 'video', 4),
(1, 'fuga', 'video', 5),
(2, 'dolore', 'quiz', 1),
(2, 'ducimus', 'texto', 2),
(2, 'aliquam', 'quiz', 3),
(2, 'ducimus', 'video', 4),
(2, 'distinctio', 'video', 5),
(3, 'similique', 'quiz', 1),
(3, 'excepturi', 'video', 2),
(3, 'beatae', 'texto', 3),
(3, 'veniam', 'texto', 4),
(3, 'quidem', 'texto', 5),
(4, 'iusto', 'quiz', 1),
(4, 'illo', 'quiz', 2),
(4, 'ullam', 'texto', 3),
(4, 'harum', 'texto', 4),
(4, 'consectetur', 'texto', 5),
(5, 'ab', 'texto', 1),
(5, 'delectus', 'quiz', 2),
(5, 'amet', 'texto', 3),
(5, 'repellendus', 'video', 4),
(5, 'molestias', 'texto', 5),
(6, 'perspiciatis', 'quiz', 1),
(6, 'molestiae', 'texto', 2),
(6, 'fugiat', 'video', 3),
(6, 'et', 'texto', 4),
(6, 'beatae', 'quiz', 5),
(7, 'aperiam', 'video', 1),
(7, 'sequi', 'texto', 2),
(7, 'nisi', 'texto', 3),
(7, 'modi', 'texto', 4),
(7, 'voluptas', 'video', 5),
(8, 'officiis', 'texto', 1),
(8, 'quae', 'quiz', 2),
(8, 'rem', 'texto', 3),
(8, 'labore', 'quiz', 4),
(8, 'voluptatum', 'quiz', 5),
(9, 'deleniti', 'quiz', 1),
(9, 'quaerat', 'video', 2),
(9, 'aliquid', 'texto', 3),
(9, 'ad', 'texto', 4),
(9, 'voluptatem', 'video', 5),
(10, 'reprehenderit', 'quiz', 1),
(10, 'sunt', 'video', 2),
(10, 'deleniti', 'quiz', 3),
(10, 'quam', 'quiz', 4),
(10, 'molestiae', 'texto', 5);
;
INSERT INTO matriculas (cursoID, alunoID, valorPago, status) 
VALUES
(2, '1', '223.72', 'ativa'),
(1, '2', '348.7', 'concluida');
;
INSERT INTO especialidades (name, descricao) 
VALUES
('consequuntur', 'Rem quae error harum. Quisquam amet minima maxime. Dolores maxime porro nisi.
Numquam nemo numquam occaecati nesciunt ipsam reprehenderit. Totam eaque nobis minus mollitia perspiciatis fuga.
Ullam architecto unde accusamus sed cum. Eos necessitatibus nam repellat fuga.'),
('reprehenderit', 'Ipsam iure alias beatae sunt perferendis. Ipsa dolore distinctio recusandae.
Doloremque vero fuga pariatur. Eveniet ea assumenda eveniet odio laudantium neque.
Laudantium eveniet voluptates at quibusdam. Blanditiis voluptatum ad eveniet.'),
('asperiores', 'Eaque doloribus corporis explicabo iusto. Ab voluptatem corporis.
Error ipsum recusandae nam adipisci magni reiciendis neque. Blanditiis repellat culpa praesentium alias numquam libero.'),
('veniam', 'Eligendi amet accusamus laboriosam error debitis molestiae. Vitae quibusdam voluptas assumenda distinctio. Unde ipsum cupiditate blanditiis.
Nemo eius officiis iste. Id officiis incidunt rerum ad cupiditate. Reprehenderit minus assumenda aspernatur.'),
('illum', 'Illum eligendi ex quam ducimus error odio. Odit quos similique aliquid pariatur eos corrupti.
Cupiditate omnis distinctio debitis. Esse quasi voluptas commodi saepe numquam.
Debitis quae ipsum laboriosam. Dicta perferendis vitae voluptatem. Suscipit laboriosam maxime quod sunt perferendis.'),
('sed', 'Adipisci quidem in expedita consectetur. Nesciunt ullam vero facere animi voluptatem qui. Rerum vel asperiores molestias.
Esse doloremque tenetur sint asperiores delectus. Voluptatum expedita quam accusamus enim. Tempora minima facilis ab atque necessitatibus.'),
('necessitatibus', 'Culpa quos ut ea illum. Sapiente vitae repellendus illo sit vero.
Aspernatur tempore dicta tempora fuga. Officiis sint earum suscipit voluptates. Molestias sunt quae aliquam inventore ipsum voluptas. Neque quo repudiandae velit aut quidem.'),
('corrupti', 'Eligendi hic voluptas. Modi a dolore ad.
Vitae enim aut dolorem ipsum nisi delectus unde. Saepe adipisci deserunt sequi fugit delectus.
Doloribus deleniti voluptatibus vel minima inventore sapiente. Debitis laboriosam sunt ullam consequuntur deleniti.'),
('voluptas', 'Vitae labore facilis explicabo laudantium accusantium labore. Nesciunt earum quos iure. Quasi aliquid eos sequi accusamus atque atque.
Recusandae exercitationem alias. Nemo ea eius.
Amet voluptas repellat accusamus excepturi explicabo. Aperiam asperiores facere laudantium.'),
('molestiae', 'Corrupti quibusdam doloremque provident voluptas totam amet. Fuga laborum sit velit.
Provident eius laudantium facere nulla doloribus ipsa. Ipsum maiores aliquid quo velit.
Minima illum facere eos vel. Amet sapiente totam illum consequatur exercitationem.');
;
