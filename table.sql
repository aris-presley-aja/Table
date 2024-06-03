

**1. dosen (Table for lecturers)**

* id_dosen (INT PRIMARY KEY)
* nip (CHAR(12) UNIQUE)
* nama_dosen (VARCHAR(50))
* email (VARCHAR(254) UNIQUE)
* matkul_id (INT FOREIGN KEY REFERENCES matkul(id_matkul))

**2. mahasiswa (Table for students)**

* id_mahasiswa (INT PRIMARY KEY)
* nim (CHAR(20) UNIQUE)
* nama (VARCHAR(50))
* email (VARCHAR(254) UNIQUE)
* jenis_kelamin (ENUM('L','P'))
* kelas_id (INT FOREIGN KEY REFERENCES kelas(id_kelas))

**3. matkul (Table for courses)**

* id_matkul (INT PRIMARY KEY)
* nama_matkul (VARCHAR(50))

**4. jurusan (Table for majors)**

* id_jurusan (INT PRIMARY KEY)
* nama_jurusan (VARCHAR(30))

**5. kelas (Table for classes)**

* id_kelas (INT PRIMARY KEY)
* nama_kelas (VARCHAR(30))
* jurusan_id (INT FOREIGN KEY REFERENCES jurusan(id_jurusan))

**6. jurusan_matkul (Table for majors and courses relationship)**

* id (INT PRIMARY KEY)
* jurusan_id (INT FOREIGN KEY REFERENCES jurusan(id_jurusan))
* matkul_id (INT FOREIGN KEY REFERENCES matkul(id_matkul))

**7. kelas_dosen (Table for class and lecturer relationship)**

* id (INT PRIMARY KEY)
* kelas_id (INT FOREIGN KEY REFERENCES kelas(id_kelas))
* dosen_id (INT FOREIGN KEY REFERENCES dosen(id_dosen))

**8. m_ujian (Table for exams)**

* id_ujian (INT PRIMARY KEY)
* dosen_id (INT FOREIGN KEY REFERENCES dosen(id_dosen))
* matkul_id (INT FOREIGN KEY REFERENCES matkul(id_matkul))
* nama_ujian (VARCHAR(200))
* jumlah_soal (INT)
* waktu (INT)
* jenis (ENUM('acak','urut'))
* tgl_mulai (DATETIME)
* terlambat (DATETIME)
* token (VARCHAR(5))

**9. h_ujian (Table for exam history)**

* id (INT PRIMARY KEY)
* ujian_id (INT FOREIGN KEY REFERENCES m_ujian(id_ujian))
* mahasiswa_id (INT FOREIGN KEY REFERENCES mahasiswa(id_mahasiswa))
* list_soal (LONGTEXT)
* list_jawaban (LONGTEXT)
* jml_benar (INT)
* nilai (DECIMAL(10,2))
* nilai_bobot (DECIMAL(10,2))
* tgl_mulai (DATETIME)
* tgl_selesai (DATETIME)
* status (ENUM('Y','N'))

**10. tb_soal (Table for exam questions)**

* id_soal (INT PRIMARY KEY)
* dosen_id (INT FOREIGN KEY REFERENCES dosen(id_dosen))
* matkul_id (INT FOREIGN KEY REFERENCES matkul(id_matkul))
* bobot (INT)
* file (VARCHAR(255))
* tipe_file (VARCHAR(50))
* soal (LONGTEXT)
* opsi_a (LONGTEXT)
* opsi_b (LONGTEXT)
* opsi_c (LONGTEXT)
* opsi_d (LONGTEXT)
* opsi_e (LONGTEXT)
* file_a (VARCHAR(255))
* file_b (VARCHAR(255))
* file_c (VARCHAR(255))
* file_d (VARCHAR(255))
* file_e (VARCHAR(255))
* jawaban (VARCHAR(5))
* created_on (INT)
* updated_on (INT)

**Notes:**

* The tables are normalized to reduce data redundancy and improve data integrity.
* Foreign keys are used to enforce relationships between tables.
* Each table has a primary key to uniquely identify each record.
* Some tables have additional columns that may not have been used in the original data, but they could be useful for future拡張 (kakuchō, expansion).

