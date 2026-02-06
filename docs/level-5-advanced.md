# CI/CD Playground - Level 5: Automasi Webhook & Cleanup 🧹

Pada level terakhir ini, kita akan membuat sistem benar-benar "touchless" dan menjaga kebersihan server.

## Target
1. Mengonfigurasi Webhook agar Jenkins berjalan otomatis saat ada `push` ke repository.
2. Menambahkan fitur cleanup image agar disk server tidak penuh.

## Langkah-langkah

### 1. Konfigurasi Webhook (GitHub/GitLab)
1. Di Jenkins, pastikan plugin **GitHub Integration** sudah terpasang.
2. Di konfigurasi Job Pipeline, centang **GitHub hook trigger for GITScm polling**.
3. Di Repository GitHub Anda, masuk ke **Settings -> Webhooks**.
4. Tambahkan Payload URL: `http://<IP_JENKINS>:8080/github-webhook/`.
5. Sekarang, setiap kali Anda `git push`, Jenkins akan langsung menjalankan pipeline tanpa perlu klik tombol.

### 2. Cleanup Image
Dalam `Jenkinsfile`, kita sudah menambahkan bagian `post { always { ... } }`.
Perintah `docker image prune -f` akan menghapus image "dangling" (image tanpa tag yang biasanya tertinggal setelah build baru).

## Apa yang dipelajari?
- Integrasi antar sistem (Git & CI Server).
- Penggunaan `post` actions di Jenkins Pipeline.
- Maintenance dasar server Docker.

---
## 🎉 Selamat! 
Anda telah menyelesaikan seluruh level Lab CI/CD. Anda sekarang memiliki pondasi yang kuat untuk membangun sistem devops yang lebih kompleks.
