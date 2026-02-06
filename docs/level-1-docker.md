# CI/CD Playground - Level 1: Dockerization 🐳

Pada level ini, tujuan Anda adalah membungkus aplikasi Node.js ke dalam sebuah Docker Image.

## Target
1. Pastikan aplikasi `app/index.js` bisa berjalan secara lokal.
2. Build Docker Image berdasarkan `Dockerfile` yang sudah disediakan.
3. Jalankan aplikasi di dalam container.

## Langkah-langkah

### 1. Persiapan Lokal
Install dependencies (opsional jika ingin mencoba di host):
```bash
cd app
npm install
npm test
```

### 2. Membangun Docker Image
Jalankan perintah berikut di root project:
```bash
docker build -t cicd-lab:v1 .
```

### 3. Menjalankan Container
Jalankan container dan mapping port 3000 ke host:
```bash
docker run -d -p 3000:3000 --name cicd-app cicd-lab:v1
```

### 4. Verifikasi
Buka browser atau gunakan curl:
```bash
curl http://localhost:3000
```
Status harus menunjukkan `Running`.

## Apa yang dipelajari?
- Bagaimana mendefinisikan environment Node.js di Docker.
- Penggunaan `.dockerignore` untuk menjaga image tetap ringan.
- Perbedaan antara `dependencies` dan `devDependencies` dalam konteks Docker (menggunakan `--production`).

---
[Lanjut ke Level 2: Jenkins Basic](./level-2-jenkins-basic.md)
