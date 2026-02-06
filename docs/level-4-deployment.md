# Level 4: Deployment Otomatis 🚀

Setelah build sukses, tahap selanjutnya adalah melakukan update pada container yang sedang berjalan.

## Target
1. Menambahkan stage `Deploy` di `Jenkinsfile`.
2. Melakukan perubahan pada kode aplikasi dan melihat perubahan tersebut langsung ter-update di container secara otomatis.

## Langkah-langkah

### 1. Menambahkan Stage Deploy
Stage ini berisi perintah untuk:
- Menghentikan container lama (`docker stop`).
- Menghapus container lama (`docker rm`).
- Menjalankan container baru dengan image versi terbaru (`docker run`).

### 2. Uji Coba Deployment
1. Ubah code di `app/index.js`, misalnya ganti pesannya menjadi `"Welcome to CI/CD Lab V2!"`.
2. Update test di `app/app.test.js` agar sesuai dengan perubahan code.
3. Klik **Build Now** di Jenkins.
4. Setelah pipeline selesai, cek `http://localhost:3000`. Pesan harus sudah ter-update secara otomatis.

## Apa yang dipelajari?
- Alur Continuous Deployment (CD).
- Teknik "Stop & Recreate" untuk update container sederhana.
- Penggunaan `|| true` di shell script agar pipeline tidak gagal saat container yang ingin distop belum ada.

---
[Lanjut ke Level 5: Advanced Automation](./level-5-advanced.md)
