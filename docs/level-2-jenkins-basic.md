# CI/CD Playground - Level 2: Jenkins Pipeline Dasar 🏗️

Tujuan level ini adalah mengotomatisasi proses build menggunakan Jenkins Pipeline.

## Target
1. Mengonfigurasi Git lokal agar source code bisa dikelola oleh SCM (Source Control Management).
2. Mengonfigurasi Jenkins untuk membaca `Jenkinsfile` secara otomatis dari repository Git.

## Langkah-langkah

### 1. Inisialisasi Git Lokal
Pastikan Anda sudah menjalankan perintah berikut di root folder project:
```bash
git init
git add .
git commit -m "Initial commit: CI/CD Lab Foundation"
```

### 2. Persiapan Jenkins
Jika Anda menggunakan Jenkins di dalam Docker, pastikan plugin **Git** sudah terpasang. Panduan ini mengasumsikan Anda akan menghubungkan Jenkins ke repository Git (baik lokal via file path, GitHub, atau GitLab).

### 2. Membuat Job Pipeline
1. Masuk ke Dashboard Jenkins.
2. Klik **New Item** -> Pilih **Pipeline**, beri nama `cicd-lab-pipeline`.
3. Scroll ke bagian **Pipeline**, pilih **Pipeline script from SCM**.
4. Pilih **Git**, masukkan URL repository Anda (atau path lokal jika Jenkins punya akses).
5. Pastikan **Script Path** adalah `Jenkinsfile`.

### 3. Build Now
Klik **Build Now** dan perhatikan log di **Console Output**. Jenkins akan menjalankan perintah `docker build`.

## Apa yang dipelajari?
- Struktur dasar `Jenkinsfile` (Pipeline, Agent, Stages, Steps).
- Penggunaan `sh` (shell script) di dalam pipeline.
- Penggunaan variable build (`${BUILD_NUMBER}`).

---
[Lanjut ke Level 3: Testing Pipeline](./level-3-testing.md)
