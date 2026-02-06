# CI/CD Playground - Level 3: Integrasi Testing di Pipeline 🧪

Pada level ini, kita akan memastikan bahwa aplikasi yang rusak tidak akan di-build menjadi image.

## Target
1. Menambahkan stage `Test` di `Jenkinsfile`.
2. Melakukan simulasi kegagalan test untuk melihat pipeline terhenti.

## Langkah-langkah

### 1. Menambahkan Stage Test
Update `Jenkinsfile` Anda (sudah dilakukan di file contoh) untuk menyertakan tahap pengujian sebelum build.

### 2. Jalankan Kembali Pipeline
Klik **Build Now**. Jenkins akan menjalankan `npm test`. Jika sukses, ia akan lanjut ke `Build`.

### 3. Simulasi Gagal (Tantangan)
Coba ubah file `app/app.test.js` sehingga ekspektasinya salah, atau ubah `app/index.js` sehingga output message-nya tidak sesuai dengan test.
Commit dan jalankan pipeline lagi.
**Hasil yang diharapkan**: Jenkins Pipeline akan berwarna merah dan tahap `Build` tidak akan dijalankan.

## Apa yang dipelajari?
- Pentingnya *fail-fast* dalam CI/CD.
- Bagaimana Jenkins menangani exit code dari skrip shell (npm test mengembalikan exit code non-zero jika gagal).

---
[Lanjut ke Level 4: Deployment](./level-4-deployment.md)
