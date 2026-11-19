# SMAN1Klaten7Kaih — Dashboard Riset Program VERTIKAL 7 KAIH
### SMA Negeri 1 Klaten (Padmawijaya)

Sistem Informasi Evaluasi Kebiasaan Siswa, Arsip Data Penelitian, dan Pemantauan Berkelanjutan Berbasis 7 Kebiasaan Anak Indonesia Hebat (7 KAIH).

---

## 🌐 Akses Web Live (GitHub Pages)
👉 **[https://whyith699-netizen.github.io/SMAN1Klaten7Kaih/](https://whyith699-netizen.github.io/SMAN1Klaten7Kaih/)**

---

## 📌 Fitur Utama Dashboard
1. **Dashboard Vertikal (Analisis & Grafik Utama)**:
   - Galeri grafik komparatif (Profil 7 Dimensi Kebiasaan Awal vs Akhir, Profil Jenjang Kelas X vs XI vs XII, Dumbbell Chart).
   - Analisis Keystone Habit (Node 1 Batasi HP Malam, Node 2 Tidur Maks 22.30, Node 3 Bangun Pagi Mandiri).
   - Filter kohort siswa, matriks korelasi, dan analisis tantangan libur akhir pekan.
2. **Data Penelitian Vertikal**:
   - Eksplorasi interaktif seluruh **2.982 entri data asli** dari responden siswa SMA Negeri 1 Klaten dengan fitur pencarian instan, filter kelas, dan modal kartu detail siswa.
3. **Form Penulisan Instrumen 7 KAIH**:
   - Instrumen digital berbasis tanggal untuk pemantauan berkelanjutan pasca-program riset.
   - Perhitungan otomatis skor mentah (raw), persentase indeks, dan kategori pembudayaan kebiasaan.
4. **Tabel Pemantauan Berkelanjutan & Analitik Cerdas**:
   - Deteksi real-time kebiasaan paling condong (skor tertinggi) dan kebiasaan prioritas evaluasi (skor terendah).
   - Rekomendasi tindak lanjut otomatis bagi guru BK dan wali kelas.
   - Ekspor data hasil pemantauan ke format CSV/Excel.
   - **Dukungan Cloud Multi-Device (Supabase)** dengan sinkronisasi *real-time live update* serta fallback aman ke penyimpanan lokal (*offline storage*).

---

## ⚡ Setup Database Cloud (Supabase)
Dashboard ini dapat berjalan langsung secara lokal (offline) maupun terhubung ke database cloud Supabase agar data yang diisi oleh siswa dari HP/laptop di rumah langsung masuk ke layar pemantauan guru secara live:

1. Buat proyek gratis di [supabase.com](https://supabase.com) (klik **Continue with GitHub**).
2. Di dashboard Supabase, buka menu **SQL Editor**, salin dan jalankan isi file `supabase_schema.sql`.
3. Buka menu **Project Settings > API**, salin **Project URL** dan **anon public key**.
4. Buka web dashboard, klik menu **Tabel Pemantauan Berkelanjutan > HUBUNGI DATABASE**, tempelkan URL & Key, lalu klik **Simpan & Hubungkan**.
