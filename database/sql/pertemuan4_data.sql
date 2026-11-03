USE praktikum_web_2401020129;

INSERT INTO program_studi (nama_prodi) VALUES
('Teknik Informatika'),
('Manajemen');

INSERT INTO mahasiswa (nim, nama, email, usia, program_studi_id) VALUES
('2401020129', 'Roni Pati Nasrani', 'roni@example.com', 20, 1),
('2401020130', 'Neza', 'neza@example.com', 20, 1),
('2401020200', 'Marissa Marpaung', 'marissa@example.com', 20, 2),
('9999999999', 'Data Sementara', 'sementara@example.com', 18, 1);

UPDATE mahasiswa
SET email = 'roni.pati@example.com'
WHERE nim = '2401020129';

DELETE FROM mahasiswa
WHERE nim = '9999999999';

SELECT m.nim, m.nama, m.email, m.usia, p.nama_prodi
FROM mahasiswa AS m
JOIN program_studi AS p ON p.id = m.program_studi_id
ORDER BY m.nim;