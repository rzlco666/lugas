# Bahasa Indonesia Plain — single file

> Versi satu file dari skill `bahasa-indonesia-plain`. Tempel seluruh isi file ini ke chat dengan agent AI apa pun, atau simpan sebagai `SKILL.md` di folder skill. Repo lengkap: https://github.com/rzlco666/lugas


# Bahasa Indonesia Plain

Tulisan yang baik dalam bahasa Indonesia bukan tulisan yang paling panjang atau paling resmi. Tulisan yang baik adalah tulisan yang dipahami pembaca pada bacaan pertama, tanpa perlu membaca ulang, menebak maksud, atau bertanya ke orang lain.

Skill ini berlaku untuk semua prosa yang kamu hasilkan dalam bahasa Indonesia: teks antarmuka, email, laporan, panduan, pengumuman, dan dokumentasi. Tujuannya satu: pembaca tahu apa yang terjadi, apa yang harus dilakukan, dan apa akibatnya — dalam waktu sesingkat mungkin. Kalau teks yang kamu tulis berbahasa Inggris, atau pembacanya bukan penutur bahasa Indonesia, pakai skill saudara skill ini, english-plain — kerangka RASA-nya sama, bahasanya yang berbeda.

## Mulai Cepat 60 Detik

Tidak sempat membaca seluruh skill ini? Cukup lakukan ini:

1. Tempel teks yang mau kamu perbaiki, lalu beri satu perintah: `Perbaiki teks ini dengan skill bahasa-indonesia-plain.`
2. Tunggu hasil rewrite-nya, lalu periksa tiga hal di bawah sebelum memakai teks itu.

Tiga aturan yang memperbaiki 80% teks yang buruk:

1. **Poin dulu.** Kalimat pertama menyampaikan hal terpenting atau tindakan utama. Jangan simpan poinnya di akhir.
2. **Satu ide per kalimat.** Kalau satu kalimat memuat dua tindakan atau dua informasi, pecah menjadi dua kalimat.
3. **Kata sehari-hari.** Ganti kata birokrasi dan jargon dengan kata yang dipakai pembaca sehari-hari — `bayar`, bukan `melakukan pembayaran`.

Kalau tiga aturan ini sudah lulus, lanjut ke alur kerja 5 langkah dan rubrik RASA di bawah untuk hasil yang lebih rapi.

## Dua Mode Penggunaan

Pada aktivasi pertama dalam satu sesi, tanyakan mode yang dipakai, kecuali pengguna sudah menyebutkannya. Setelah mode ditentukan, nyatakan satu kali, misalnya: `Mode: Tulis.` atau `Mode: Periksa.` Jangan tanyakan lagi di sesi yang sama.

### Mode 1 — Tulis (selama menulis)

Pakai mode ini saat kamu diminta menulis teks baru dari nol.

- Terapkan semua aturan di skill ini **selama** menulis draf, bukan sesudahnya.
- Ikuti alur kerja 5 langkah di bawah.
- Selesaikan dengan rubrik RASA dan laporan penyerahan di akhir.

### Mode 2 — Periksa (sesudah menulis)

Pakai mode ini saat pengguna membawa teks yang sudah ada dan meminta kamu memeriksanya.

1. Baca seluruh teks, lalu susun **temuan bernomor** — satu temuan per masalah, dengan kutipan singkat, aturan yang dilanggar, dan usulan perbaikan.
2. Jangan langsung memperbaiki semuanya. Tunggu pengguna menyetujui temuan mana yang diperbaiki.
3. Setelah persetujuan, perbaiki hanya temuan yang disetujui, lalu laporkan hasilnya dengan format laporan penyerahan di akhir skill ini.
4. Jika pengguna berkata "perbaiki semua", perbaiki semua temuan, lalu laporkan.

## Alur Kerja 5 Langkah

### Langkah 1 — Pahami brief dan pembaca

Sebelum menulis satu kalimat pun, jawab empat pertanyaan ini. Kalau jawabannya belum jelas, tanyakan ke pengguna atau catat asumsimu di laporan akhir.

1. **Tujuan:** apa yang harus terjadi setelah teks ini dibaca?
2. **Tindakan yang diharapkan:** apa tepatnya yang harus dilakukan pembaca? Satu tindakan utama saja.
3. **Siapa pembaca:** siapa mereka, apa latarnya, dan apa yang sudah mereka ketahui tentang topik ini?
4. **Konteks:** di mana teks ini dibaca — layar ponsel, email, surat, papan pengumuman — dan dalam keadaan apa pembaca membacanya (terburu-buru, cemas, bingung, marah)?

Tulis jawaban ini dalam satu atau dua kalimat di kepalamu sebelum lanjut. Teks yang gagal hampir selalu gagal di langkah ini: penulisnya tidak tahu siapa yang membaca dan apa yang harus dilakukan pembaca.

### Langkah 2 — Tetapkan register

Pilih sapaan dan tingkat formalitas **sebelum** menulis, lalu konsisten dalam satu produk, satu dokumen, dan satu alur.

| Pilihan | Pakai saat | Contoh |
|---|---|---|
| **Kamu** | Produk konsumen, aplikasi sehari-hari, pembaca sebaya atau lebih muda, nada ramah | "Kamu bisa lanjut kapan saja." |
| **Anda** | Layanan publik, perbankan, kesehatan, hukum, pembaca yang belum dikenal, nada hormat | "Anda bisa lanjut kapan saja." |
| **Formal** | Surat resmi, pengumuman pemerintah, dokumen hukum, laporan tahunan | "Permohonan Anda kami terima pada 4 Juni 2026." |
| **Santai** | Aplikasi hiburan, media sosial, onboarding produk konsumen | "Yuk, lengkapi profilmu dulu." |

Aturan konsistensi:

- Jangan campur `kamu` dan `Anda` dalam satu produk atau satu dokumen.
- Jangan campur `kami` dan `kita` sembarangan. `Kami` = penulis saja, tanpa pembaca. `Kita` = penulis dan pembaca bersama.
- Kalau ragu, pilih **Anda + formal ringan**. Itu pilihan paling aman untuk layanan publik.
- Sapaan untuk kelompok: pakai `Bapak/Ibu` hanya di surat resmi. Di antarmuka, jangan pakai `Bapak/Ibu` — pakai `Anda` saja.

### Langkah 3 — Draf dengan piramida terbalik

Susun informasi dari yang paling penting ke yang paling tidak penting:

1. **Hasil atau tindakan dulu.** Kalimat pertama menjawab: apa yang terjadi, atau apa yang harus dilakukan?
2. **Detail penting.** Syarat, tenggat, jumlah, dan cara melakukannya.
3. **Latar dan penjelasan.** Alasan, konteks, dan informasi tambahan — hanya kalau pembaca membutuhkannya.

Pembaca yang berhenti di kalimat pertama tetap tahu hal terpenting. Pembaca yang lanjut membaca mendapat detailnya.

Contoh struktur:

> **Pembayaran Anda berhasil.** Dana Rp75.000 sudah kami terima pada 4 Juni 2026 pukul 10.00. Bukti pembayaran sudah kami kirim ke email Anda.

Bukan:

> Sehubungan dengan hal tersebut di atas, bersama ini kami sampaikan bahwa proses pembayaran yang telah Anda lakukan telah berhasil diproses oleh sistem kami.

### Langkah 4 — Lulus RASA

Uji drafmu dengan rubrik RASA di bawah. Skor tiap dimensi 0–2. Lulus bila total **minimal 6 dari 8** dan **tidak ada dimensi yang bernilai 0**.

### Langkah 5 — Cek mandiri + laporan perubahan

Jalankan daftar periksa mandiri di akhir skill ini. Lalu sampaikan hasil kerjamu dengan format laporan penyerahan: ringkasan perubahan, skor RASA per dimensi, dan apa yang sengaja kamu pertahankan beserta alasannya.

## Pohon Keputusan — Skill Mana yang Dipakai?

Ikuti dari atas. Berhenti di cabang pertama yang cocok.

- **Teksnya berbahasa Inggris, atau pembacanya bukan penutur bahasa Indonesia?** → Pakai skill **english-plain**. Jangan pakai skill ini untuk teks berbahasa Inggris.
- **Teksnya berbahasa Indonesia dan harus dipahami pada bacaan pertama?** → Pakai skill ini, **bahasa-indonesia-plain**. Lanjut ke alur kerja 5 langkah.
- **Belum ada teks sama sekali, hanya ide atau topik?** → Tulis dari nol dengan skill ini (Mode Tulis): pahami brief dan pembaca dulu, baru draf dengan piramida terbalik.
- **Sudah ada teks, tapi teks itu harus mengikuti aturan gaya tertentu?** → Ikuti **panduan gaya (style guide)** yang berlaku dulu — nama produk, istilah wajib, sapaan resmi — lalu pakai skill ini untuk sisanya. Kalau panduan gaya bertentangan dengan skill ini, panduan gaya yang menang, dan catat pengecualiannya di laporan penyerahan.
- **Teks itu kutipan langsung, kode, atau tabel data?** → Jangan ubah. Lihat **Catatan Cakupan** di akhir skill ini: kutipan dikutip apa adanya, kode mengikuti konvensi proyek, tabel mengikuti format datanya.
- **Ragu antara skill ini dan menulis bebas?** → Pakai skill ini. Menulis bebas hanya untuk draf kasar yang memang tidak akan dibaca orang lain.

## Target Keterbacaan

Angka-angka ini adalah target, bukan hukum yang kaku. Satu kalimat yang sedikit lebih panjang masih boleh, asal alasannya jelas. Tapi kalau sebagian besar kalimatmu melanggar target ini, drafmu perlu ditulis ulang.

| Target | Angka |
|---|---|
| Panjang kalimat | **12–20 kata**, maksimal **25 kata** |
| Panjang paragraf | Maksimal **3 kalimat**, **1 topik** per paragraf |
| Ide per kalimat | **1 ide** per kalimat |
| Panjang judul | Maksimal **~65 karakter** |
| Kapitalisasi judul | **Sentence case** — huruf besar hanya di awal dan nama diri |
| Kata kerja | Utamakan **aktif**, bukan pasif |
| Kata ganti orang | Pakai `kamu`/`Anda` langsung, jangan `pengguna` atau `yang bersangkutan` |

Cara cepat menguji: baca drafmu keras-keras. Kalau kamu kehabisan napas di tengah kalimat, kalimat itu terlalu panjang. Kalau kamu tersendat, strukturnya terlalu rumit.

## Kata yang Diganti

Ganti kata birokrasi, jargon, dan kata serapan yang tidak perlu dengan kata sehari-hari. Tabel ini adalah titik awal — tambahkan pasangan baru yang kamu temukan saat menulis.

| Jangan pakai | Pakai |
|---|---|
| sehubungan dengan hal tersebut di atas | mengenai hal ini / tentang hal ini |
| bersama ini kami sampaikan | kami beri tahu / berikut informasinya |
| dengan ini kami memberitahukan | kami beri tahu |
| dimohon untuk | silakan |
| diharapkan untuk dapat | silakan |
| melakukan pengiriman | kirim |
| melakukan pembayaran | bayar |
| melakukan pendaftaran | daftar |
| melakukan pengecekan | periksa / cek |
| melakukan pemesanan | pesan |
| melakukan pengajuan | ajukan |
| melakukan perubahan | ubah |
| melakukan pembatalan | batalkan |
| apabila | jika / kalau |
| bilamana | jika |
| dikarenakan | karena |
| sehubungan dengan | tentang / terkait |
| dalam rangka | untuk |
| guna | untuk |
| demi | untuk |
| terkait dengan hal tersebut | tentang hal itu |
| sebagaimana dimaksud | seperti yang tertulis di |
| yang bersangkutan | Anda / nama orangnya |
| pihak pertama / pihak kedua | nama orang atau perannya |
| terhitung sejak | mulai |
| selambat-lambatnya | paling lambat |
| paling lambat tanggal | sebelum tanggal |
| mohon maaf atas ketidaknyamanan ini | maaf, [sebut masalahnya] |
| kami mohon pengertian Anda | kami mengerti ini merepotkan |
| harap maklum | (hapus saja — tidak menambah informasi) |
| dengan hormat | (hapus di antarmuka; pakai hanya di surat resmi) |
| adapun | (hapus saja, langsung ke isinya) |
| hal-hal yang berkaitan dengan | tentang |
| pada saat ini | sekarang / saat ini |
| saat ini sedang | sedang |
| dapat diakses melalui | buka |
| tersedia di | ada di |
| menginformasikan | memberi tahu |
| mengonfirmasi | memastikan |
| memverifikasi | memeriksa |
| mengimplementasikan | menerapkan / memakai |
| mengoptimalkan | memperbaiki |
| memfasilitasi | membantu |
| prioritas utama | yang paling penting |
| tindak lanjut | langkah berikutnya |
| sebagaimana mestinya | (hapus saja) |

### Klise yang Dilarang

Hapus frasa ini. Frasa ini tidak menambah informasi — frasa ini hanya membuat teks terasa resmi tanpa isi.

- `dalam rangka meningkatkan`
- `demi tercapainya`
- `sehubungan dengan hal tersebut di atas`
- `bersama ini kami sampaikan`
- `perlu kami sampaikan bahwa`
- `perlu diketahui bahwa`
- `sebagai bentuk komitmen kami`
- `kami berkomitmen untuk`
- `mohon maaf atas ketidaknyamanan ini` (tanpa menyebut masalahnya)
- `terima kasih atas pengertian Anda`
- `demikian disampaikan, atas perhatiannya kami ucapkan terima kasih` (di antarmuka dan email pendek)
- `berbagai macam`
- `mungkin saja`
- `cukup`
- `sangat` yang dipakai berulang-ulang untuk menguatkan kata yang sudah kuat

Kalau sebuah kalimat tetap bermakna setelah frasa itu dihapus, hapus frasanya.

## RASA — Rubrik Penilaian

RASA adalah empat dimensi kualitas tulisan. Nilai tiap dimensi **0, 1, atau 2**. Tulis skornya di laporan penyerahan.

**Lulus: total minimal 6 dari 8, dan tidak ada dimensi yang bernilai 0.**

| Dimensi | 0 — Gagal | 1 — Cukup | 2 — Kuat |
|---|---|---|---|
| **R — Ritmis** | Kalimat panjang, berbelit, dan berirama sama semua. Pembaca kehabisan napas. | Sebagian kalimat sudah pendek, tapi masih ada kalimat panjang atau ritme yang datar. | Kalimat pendek dan panjang selang-seling. Mudah dibaca keras-keras. Jeda terasa wajar. |
| **A — Akurat** | Informasi salah, kabur, atau menyesatkan. Angka, tanggal, atau syarat tidak jelas. | Informasi benar, tapi ada bagian yang bisa ditafsirkan dua arah. | Informasi benar, lengkap, dan tidak bisa ditafsirkan dua arah. Angka, tanggal, dan syarat ditulis jelas. |
| **S — Sarat Makna** | Banyak kata, sedikit isi. Kalimat pengisi dan klise di mana-mana. | Isi ada, tapi masih ada kalimat yang bisa dihapus tanpa kehilangan makna. | Setiap kalimat membawa informasi atau tindakan baru. Tidak ada kata yang sia-sia. |
| **A — Alami** | Terasa seperti terjemahan atau bahasa birokrasi. Pembaca merasa sedang membaca dokumen, bukan sedang diajak bicara. | Sebagian besar sudah natural, tapi masih ada kata kaku atau struktur yang janggal. | Terasa seperti percakapan yang ditulis. Kata sehari-hari, sapaan konsisten, nada sesuai pembaca. |

### Urutan Revisi 4 Pass

Jangan revisi semuanya sekaligus. Lakukan empat putaran, satu dimensi per putaran, dalam urutan ini:

1. **Pass Ritmis — baca keras.** Baca drafmu keras-keras. Potong kalimat yang membuatmu kehabisan napas. Variasikan panjang kalimat. Pecah paragraf yang terlalu panjang.
2. **Pass Akurat — periksa fakta.** Periksa angka, tanggal, nama, syarat, dan tautan. Pastikan setiap klaim bisa dipertanggungjawabkan. Pastikan tidak ada kalimat yang bisa dibaca dua arah.
3. **Pass Sarat Makna — hapus yang sia-sia.** Hapus kalimat pengisi, klise, dan pengulangan. Kalau satu kalimat bisa dihapus tanpa kehilangan makna, hapus.
4. **Pass Alami — dengarkan nadanya.** Baca lagi sebagai pembaca. Ganti kata birokrasi dengan kata sehari-hari. Pastikan sapaan konsisten. Pastikan nada sesuai dengan pembaca dan situasinya.

### Contoh Audit RASA — Pengumuman Layanan Publik

Satu paragraf kaku (85 kata) diaudit penuh, lalu ditulis ulang. Perhatikan bagaimana skornya berubah.

**Teks asli:**

> Sehubungan dengan adanya kegiatan pemeliharaan jaringan air bersih yang akan dilaksanakan oleh Perusahaan Daerah Air Minum dalam rangka peningkatan kualitas pelayanan kepada seluruh pelanggan, bersama ini kami sampaikan bahwa pelayanan pendistribusian air bersih kepada masyarakat di wilayah Kecamatan Sukamaju dan sekitarnya akan mengalami gangguan sementara pada hari Sabtu, tanggal 13 Juni 2026, mulai pukul 08.00 sampai dengan pukul 17.00, dan masyarakat diharapkan untuk dapat melakukan penampungan air secukupnya sebelum waktu yang telah ditentukan tersebut, serta kami mohon pengertian atas ketidaknyamanan yang ditimbulkan oleh kegiatan ini.

**Skor SEBELUM — total 1/8, belum lulus:**

- **Ritmis: 0** — satu kalimat 85 kata; pembaca kehabisan napas sebelum sampai ke tanggalnya.
- **Akurat: 1** — tanggal dan jam ada, tapi wilayahnya kabur: "Sukamaju dan sekitarnya" tidak jelas batasnya.
- **Sarat Makna: 0** — pembuka "sehubungan dengan adanya kegiatan ... dalam rangka peningkatan kualitas pelayanan" tidak menambah informasi apa pun.
- **Alami: 0** — penuh klise birokrasi ("bersama ini kami sampaikan", "diharapkan untuk dapat melakukan penampungan") yang tidak dipakai orang dalam percakapan.

**Teks sesudah rewrite:**

> **Air di Sukamaju mati pada Sabtu, 13 Juni 2026, pukul 08.00–17.00.**
>
> Kami memperbaiki jaringan pipa air bersih. Tampung air secukupnya sebelum pukul 08.00.
>
> Air kembali mengalir setelah pukul 17.00. Maaf atas gangguan ini.

**Skor SESUDAH — total 8/8, lulus:**

- **Ritmis: 2** — kalimat terpanjang 11 kata; panjang kalimat bervariasi dan mudah dibaca keras-keras.
- **Akurat: 2** — tanggal, jam mulai, dan jam selesai ditulis konkret; tidak ada wilayah kabur.
- **Sarat Makna: 2** — setiap kalimat membawa informasi baru: apa, kapan, apa yang harus dilakukan, kapan selesai.
- **Alami: 2** — kata sehari-hari ("mati", "tampung air") dengan sapaan yang konsisten; terasa seperti pengumuman yang diucapkan, bukan dibacakan dari surat.

Pelajaran dari audit ini: skor yang gagal hampir selalu berawal dari kalimat pertama yang menyimpan poin di akhir. Pindahkan poin ke depan, dan tiga dimensi lainnya biasanya ikut membaik.

## Template Siap Salin

Salin template ini, isi bagian dalam tanda kurung siku, lalu hapus tanda kurungnya. Sesuaikan sapaan (`kamu`/`Anda`) dengan register yang sudah kamu tetapkan.

### 1. Pesan error

> **[Judul singkat: apa yang terjadi]**
>
> [Satu kalimat: apa yang terjadi, dengan bahasa biasa.]
> [Satu kalimat: apa yang bisa dilakukan pembaca sekarang.]
>
> [Tombol: Coba lagi / Kembali]

Contoh terisi:

> **Pembayaran gagal.**
>
> Kartu Anda ditolak oleh bank. Periksa kembali nomor kartu Anda, lalu coba lagi.
>
> [Coba lagi]

Aturan: sebut apa yang terjadi, sebut apa yang dilakukan, jangan menyalahkan pembaca. Jangan tulis `kesalahan pengguna` atau `input tidak valid`. Tulis apa yang salah dalam bahasa biasa.

### 2. Empty state

> **[Judul: belum ada apa-apa di sini]**
>
> [Satu kalimat: kenapa kosong, dan apa yang terjadi setelah pembaca bertindak.]
>
> [Tombol: tindakan utama]

Contoh terisi:

> **Belum ada pesanan.**
>
> Pesanan Anda akan muncul di sini setelah Anda memesan.
>
> [Lihat katalog]

### 3. Sukses

> **[Judul: tindakan selesai]**
>
> [Satu kalimat: apa yang berhasil, dengan detail penting seperti jumlah atau tanggal.]
> [Satu kalimat: apa yang terjadi selanjutnya, kalau ada.]

Contoh terisi:

> **Profil Anda sudah diperbarui.**
>
> Nama dan nomor telepon baru Anda sudah tersimpan. Perubahan ini langsung berlaku.

### 4. Konfirmasi destruktif

> **[Judul: sebut tindakan dan akibatnya]**
>
> [Satu kalimat: apa yang akan hilang atau berubah, dan apakah bisa dikembalikan.]
> [Satu kalimat: apa yang tetap aman, kalau ada.]
>
> [Tombol batal: Batal] [Tombol konfirmasi: Hapus [nama item]]

Contoh terisi:

> **Hapus pesanan ini?**
>
> Pesanan ini akan terhapus dan tidak bisa dikembalikan. Riwayat pembayaran Anda tetap tersimpan.
>
> [Batal] [Hapus pesanan]

Aturan: judul harus menyebut akibatnya, bukan bertanya `Apakah Anda yakin?` Tombol konfirmasi harus menyebut tindakannya, bukan `Ya` atau `OK`.

### 5. Onboarding

> **Selamat datang, [Nama].**
>
> [Satu kalimat: apa yang bisa dilakukan pengguna pertama kali.]
>
> **Langkah 1:** [tindakan pertama — satu kalimat]
> **Langkah 2:** [tindakan kedua — satu kalimat]
> **Langkah 3:** [tindakan ketiga — satu kalimat]
>
> [Tombol: Mulai]

Aturan: maksimal 3 langkah di layar pertama. Satu langkah = satu tindakan. Jangan menjelaskan semua fitur sekaligus.

### 6. Email / pengumuman layanan publik

> **Subjek: [tindakan atau perubahan — maksimal 65 karakter]**
>
> Halo [Nama],
>
> [Kalimat pertama: hal terpenting — apa yang berubah atau apa yang harus dilakukan.]
> [Paragraf kedua: detail penting — tanggal, jumlah, cara melakukannya.]
>
> **Yang perlu Anda lakukan:** [satu tindakan, atau "Tidak ada tindakan yang perlu Anda lakukan."]
>
> [Tautan atau kontak bantuan]
>
> Salam,
> [Nama tim atau instansi]

### 7. Panduan langkah-demi-langkah

> **Cara [tujuan — satu frasa]**
>
> [Satu kalimat: kapan panduan ini dipakai, atau apa syaratnya.]
>
> 1. [Langkah 1 — mulai dengan kata kerja: Buka, Pilih, Isi, Klik]
> 2. [Langkah 2]
> 3. [Langkah 3]
>
> **Jika gagal:** [satu kalimat: apa yang dilakukan kalau langkah di atas tidak berhasil]

Aturan: satu langkah = satu tindakan. Mulai tiap langkah dengan kata kerja. Jangan gabung dua tindakan dalam satu nomor. Tulis langkah gagalnya — pembaca yang gagal tidak boleh dibiarkan tanpa jalan keluar.

### 8. Penolakan / penundaan yang sopan

> **[Judul: keputusan + alasannya]**
>
> [Satu kalimat: keputusan dan alasan singkat yang jujur.]
> [Satu kalimat: apa yang bisa dilakukan pembaca selanjutnya — alternatif, langkah berikutnya, atau kapan bisa mencoba lagi.]
>
> [Kontak bantuan, kalau ada]

Contoh terisi:

> **Pengajuan Anda belum bisa kami setujui.**
>
> Penghasilan Anda belum memenuhi syarat minimal Rp3.000.000 per bulan. Anda bisa mengajukan lagi setelah penghasilan Anda memenuhi syarat, atau memilih produk dengan syarat yang lebih ringan.
>
> Butuh bantuan? Hubungi kami di [kontak].

Aturan: jangan sembunyikan keputusan di akhir paragraf. Sebut alasannya dengan jujur. Selalu beri jalan berikutnya — pembaca tidak boleh ditinggal tanpa pilihan.

## Perpustakaan Rewrite

Setiap pasangan memakai format: **Sebelum** (buruk) → **Sesudah** (baik) → **Kenapa** (satu baris, sebut aturan yang dilanggar atau diperbaiki).

### 1. UI tombol

- **Sebelum:** `Klik di sini untuk melakukan pengiriman formulir Anda`
- **Sesudah:** `Kirim formulir`
- **Kenapa:** Nominalisasi + kata pengisi — kata kerja langsung lebih pendek dan jelas.

### 2. Pesan error

- **Sebelum:** `Terjadi kesalahan pada sistem. Mohon maaf atas ketidaknyamanan ini. Silakan coba lagi nanti.`
- **Sesudah:** `Pembayaran gagal karena koneksi terputus. Periksa koneksi Anda, lalu coba lagi.`
- **Kenapa:** Klise permintaan maaf tanpa isi — sebut masalahnya dan langkah perbaikannya.

### 3. Form

- **Sebelum:** `Mohon untuk dapat mengisi seluruh kolom yang bertanda bintang (*) dikarenakan kolom tersebut bersifat wajib diisi.`
- **Sesudah:** `Isi kolom bertanda * — kolom itu wajib diisi.`
- **Kenapa:** Kalimat 17 kata yang berbelit — satu ide per kalimat, kata sehari-hari.

### 4. Email

- **Sebelum:** `Sehubungan dengan hal tersebut di atas, bersama ini kami sampaikan bahwa akun Anda telah berhasil dibuat dan dapat digunakan.`
- **Sesudah:** `Akun Anda sudah jadi. Anda bisa langsung masuk sekarang.`
- **Kenapa:** Klise birokrasi + pasif — piramida terbalik, hasil dulu, kata kerja aktif.

### 5. Laporan

- **Sebelum:** `Pada periode ini, telah terjadi peningkatan yang cukup signifikan pada jumlah pengguna yang melakukan pendaftaran pada aplikasi kami.`
- **Sesudah:** `Pendaftar baru naik 24% pada Juni 2026 — dari 1.200 menjadi 1.488 orang.`
- **Kenapa:** Sarat Makna gagal — angka konkret menggantikan kata kabur seperti "cukup signifikan".

### 6. Panduan

- **Sebelum:** `Untuk melakukan perubahan kata sandi, pengguna diharapkan untuk dapat mengakses menu pengaturan, kemudian memilih submenu keamanan, lalu memasukkan kata sandi lama dan kata sandi baru.`
- **Sesudah:** `Cara ganti kata sandi: 1. Buka Pengaturan. 2. Pilih Keamanan. 3. Masukkan kata sandi lama, lalu kata sandi baru.`
- **Kenapa:** Satu kalimat berisi empat tindakan — panduan langkah-demi-langkah, satu tindakan per langkah.

### 7. Hukum / keuangan

- **Sebelum:** `Pihak pertama wajib melakukan pembayaran selambat-lambatnya 14 (empat belas) hari kalender terhitung sejak tanggal diterbitkannya tagihan ini, sebagaimana dimaksud dalam Pasal 5 ayat (2).`
- **Sesudah:** `Bayar tagihan ini paling lambat 14 hari setelah tanggal tagihan. Lihat Pasal 5 ayat (2) untuk rinciannya.`
- **Kenapa:** Akurat tapi tidak Alami — syarat yang sama, kata sehari-hari, satu ide per kalimat.

### 8. Kesehatan

- **Sebelum:** `Pasien diharapkan untuk mengonsumsi obat tersebut sesuai dengan dosis yang telah ditentukan oleh dokter yang menangani, yaitu 3 (tiga) kali sehari sesudah makan.`
- **Sesudah:** `Minum obat ini 3 kali sehari, sesudah makan.`
- **Kenapa:** Ritmis + Sarat Makna — 7 kata menggantikan 24 kata tanpa kehilangan informasi.

### 9. Layanan publik

- **Sebelum:** `Diberitahukan kepada seluruh masyarakat bahwa pelayanan di kantor ini akan ditutup sementara dalam rangka peningkatan kualitas layanan.`
- **Sesudah:** `Kantor ini tutup pada 10–11 Juni 2026 untuk perbaikan layanan. Kami buka lagi pada 12 Juni 2026 pukul 08.00.`
- **Kenapa:** Akurat gagal — pembaca butuh tanggal dan jam, bukan alasan umum.

### 10. Onboarding

- **Sebelum:** `Selamat datang di aplikasi kami. Aplikasi ini menyediakan berbagai macam fitur yang dapat membantu Anda dalam mengelola berbagai kebutuhan Anda sehari-hari.`
- **Sesudah:** `Selamat datang. Mulai dengan menambahkan pengeluaran pertamamu — butuh waktu kurang dari satu menit.`
- **Kenapa:** Klise "berbagai macam" + tanpa tindakan — onboarding butuh satu langkah pertama yang jelas.

### 11. Notifikasi

- **Sebelum:** `Pengingat: Anda memiliki tagihan yang belum dibayar dan akan segera jatuh tempo. Segera lakukan pembayaran untuk menghindari denda.`
- **Sesudah:** `Tagihan listrik Rp125.000 jatuh tempo besok, 12 Juni 2026. Bayar sekarang untuk menghindari denda Rp5.000.`
- **Kenapa:** Akurat + Sarat Makna — jumlah, tanggal, dan akibat ditulis konkret, bukan kabur.

### 12. FAQ diganti bagian bantuan

- **Sebelum:** `Q: Bagaimana cara saya mengajukan pengembalian dana? A: Pengajuan pengembalian dana dapat dilakukan melalui menu Riwayat Pesanan dengan memilih pesanan yang dimaksud dan mengikuti langkah-langkah yang tersedia di sana.`
- **Sesudah:** `**Cara minta pengembalian dana:** Buka Riwayat Pesanan, pilih pesanan Anda, lalu pilih Minta pengembalian dana. Dana kembali dalam 3–5 hari kerja.`
- **Kenapa:** Judul pertanyaan langsung + langkah konkret — bagian bantuan menjawab, bukan mengulang pertanyaan.

### 13. Ketentuan kecil (legal / keuangan)

- **Sebelum:** `Dengan menekan tombol setuju, Anda menyatakan telah membaca, memahami, dan menyetujui seluruh syarat dan ketentuan yang berlaku, termasuk namun tidak terbatas pada ketentuan mengenai biaya layanan, kebijakan pengembalian dana, dan perubahan tarif yang dapat dilakukan sewaktu-waktu tanpa pemberitahuan terlebih dahulu.`
- **Sesudah:** `Dengan menekan Setuju, Anda menyetujui syarat dan ketentuan ini, termasuk biaya layanan dan kebijakan pengembalian dana. Kami akan memberi tahu Anda sebelum tarif berubah.`
- **Kenapa:** Sarat Makna + Akurat — klausul "dapat berubah sewaktu-waktu tanpa pemberitahuan" yang merugikan pembaca diganti janji pemberitahuan yang jelas.

### 14. Petunjuk kesehatan

- **Sebelum:** `Apabila setelah mengonsumsi obat ini Anda mengalami gejala seperti mual, pusing, atau ruam pada kulit, maka Anda diharapkan untuk segera menghentikan penggunaan obat tersebut dan melakukan konsultasi dengan dokter atau tenaga kesehatan yang menangani Anda.`
- **Sesudah:** `Berhenti minum obat ini dan hubungi dokter kalau Anda mual, pusing, atau muncul ruam di kulit.`
- **Kenapa:** Ritmis + Akurat — peringatan keselamatan dipotong dari 35 kata menjadi 16 kata supaya dibaca dan dilakukan, bukan dilewati.

### 15. Error + coba lagi

- **Sebelum:** `Permintaan Anda tidak dapat diproses pada saat ini dikarenakan terjadinya gangguan pada server kami. Silakan coba beberapa saat lagi. Apabila masalah ini terus berlanjut, silakan hubungi layanan pelanggan kami.`
- **Sesudah:** `Gagal menyimpan. Server kami sedang gangguan — coba lagi dalam 5 menit. Kalau masih gagal, hubungi kami di 1500-123. Data Anda sudah tersimpan, tidak ada yang hilang.`
- **Kenapa:** Akurat + Alami — sebut masalahnya, beri waktu tunggu yang konkret, dan tenangkan pembaca soal datanya yang aman.

### 16. Ringkasan eksekutif laporan

- **Sebelum:** `Pada triwulan ini, program pemberdayaan masyarakat yang telah dilaksanakan oleh tim kami telah menunjukkan perkembangan yang cukup baik, dengan berbagai macam kegiatan yang telah dilakukan di sejumlah wilayah, dan diharapkan program ini dapat terus berlanjut serta memberikan manfaat yang lebih besar lagi pada periode-periode berikutnya.`
- **Sesudah:** `Program pemberdayaan masyarakat menjangkau 1.240 warga di 12 desa pada triwulan ini — naik 18% dari triwulan lalu. Tantangan terbesar: 3 desa belum punya pendamping. Anggaran triwulan depan: Rp450 juta, termasuk Rp120 juta untuk merekrut 3 pendamping baru.`
- **Kenapa:** Sarat Makna + Akurat — "cukup baik" dan "berbagai macam kegiatan" diganti jumlah warga, jumlah desa, persen kenaikan, dan angka anggaran yang bisa diperiksa.

## EYD — Ejaan yang Benar

Tulisan plain tetap harus benar ejaannya. Kesalahan ejaan merusak kepercayaan pembaca, terutama di layanan publik dan dokumen resmi.

### Kapitalisasi

- Huruf besar di awal kalimat dan nama diri saja. Judul memakai sentence case: `Cara ganti kata sandi`, bukan `Cara Ganti Kata Sandi`.
- Jangan menulis seluruh kata dengan huruf kapital untuk penekanan — pembaca layar membacanya huruf demi huruf, dan pembaca disleksia lebih sulit membacanya.
- Nama instansi, jabatan yang diikuti nama orang, dan nama produk memakai huruf besar: `Kementerian Kesehatan`, `Menteri Budi Santoso`, `Aplikasi SehatKu`.

### Tanda baca

- Satu spasi setelah koma dan titik. Tidak ada spasi sebelum koma, titik, atau tanda tanya.
- Tanda hubung `-` untuk kata ulang dan rentang pendek: `anak-anak`, `10-11 Juni`.
- Tanda pisah `—` (em dash) untuk sisipan, dengan spasi di kedua sisi: `Dana kembali dalam 3–5 hari kerja — tanpa potongan.`
- Tanda kutip Indonesia memakai `"..."`. Jangan pakai kutip Inggris `"..."` yang berbeda bentuknya di dokumen resmi.
- Jangan pakai `&` — tulis `dan`.

### Angka, uang, persen, tanggal, dan waktu

- **Tanggal:** `4 Juni 2026` — tanggal dulu, lalu bulan, lalu tahun. Jangan tulis `Juni 4, 2026`.
- **Waktu:** `10.00` — titik sebagai pemisah, bukan titik dua. Rentang: `08.00–12.00`.
- **Uang:** `Rp75.000` — tanpa spasi setelah `Rp`, titik sebagai pemisah ribuan.
- **Ribuan:** `1.500.000` — titik sebagai pemisah ribuan.
- **Desimal:** `2,5` — koma sebagai pemisah desimal.
- **Persen:** `50%` — tanpa spasi sebelum `%`.
- **Rentang angka:** `3–5 hari kerja` — tanda hubung en dash, tanpa spasi.
- **Bilangan di awal kalimat:** tulis dengan huruf: `Tiga puluh orang hadir.` Kalau angkanya besar, susun ulang kalimatnya supaya angka tidak di awal.
- **Nomor telepon dan kode:** tulis dengan spasi yang membantu dibaca: `0812 3456 7890`.

### Singkatan Latin — ganti dengan bahasa Indonesia

| Jangan pakai | Pakai |
|---|---|
| e.g. | misalnya |
| i.e. | yaitu |
| etc. | dan sebagainya |
| vs. | melawan / dibandingkan |
| NB | catatan |
| dll. | dan lain-lain |
| dsb. | dan sebagainya |
| dst. | dan seterusnya |

Singkatan Indonesia yang boleh dipakai: `a.n.` (atas nama), `d.a.` (dengan alamat), `s.d.` (sampai dengan) — tapi hanya di dokumen resmi. Di antarmuka dan email, tulis lengkap: `sampai 12 Juni 2026`.

## Inklusif, Trauma-Informed, dan Aksesibilitas Kognitif

Tulisan plain harus bisa dibaca semua orang — termasuk pembaca dengan disabilitas, pembaca yang sedang cemas, dan pembaca yang baru pertama kali berurusan dengan layananmu.

### Bahasa inklusif

- **People-first:** `orang dengan disabilitas`, bukan `penyandang cacat` atau `orang cacat`. `Orang dengan diabetes`, bukan `penderita diabetes`.
- **Tanpa stigma:** jangan pakai `korban`, `penderita`, atau `normal` sebagai lawan dari disabilitas. Jangan pakai `gila`, `bodoh`, atau `cacat` sebagai kiasan.
- **Tanpa asumsi gender:** jangan asumsikan pembaca laki-laki atau perempuan. Jangan pakai `Bapak/Ibu` di antarmuka — pakai `Anda`.
- **Tanpa asumsi kemampuan:** jangan tulis `cukup klik` atau `mudah saja` — yang mudah bagimu belum tentu mudah bagi pembaca. Tulis langkahnya, biar pembaca yang menilai.
- **Tanpa asumsi perangkat atau koneksi:** jangan tulis `pastikan internet Anda cepat`. Tulis apa yang terjadi kalau koneksi lambat, dan apa yang bisa dilakukan pembaca.

### Trauma-informed — jangan menambah beban pembaca

- **Tanpa urgensi palsu:** jangan pakai `segera!`, `terakhir!`, `jangan sampai ketinggalan!`, atau hitung mundur yang menekan — kecuali memang ada tenggat nyata dan akibat nyata. Kalau ada tenggat, sebut tanggal dan akibatnya dengan tenang.
- **Kontrol pengguna:** beri pembaca pilihan dan jalan keluar. Jangan kunci pembaca dalam satu alur tanpa tombol kembali atau batal. Tulis apa yang terjadi kalau pembaca berhenti di tengah jalan.
- **Jujur tentang akibat:** sebut akibat yang sebenarnya, jangan dilebih-lebihkan. `Akun Anda akan dihapus` lebih baik daripada `Anda akan kehilangan semuanya selamanya!`
- **Nada tenang di situasi sulit:** pesan penolakan, penagihan, dan kabar buruk ditulis dengan nada tenang dan jelas. Jangan pakai huruf kapital semua, tanda seru beruntun, atau kata yang menyalahkan.
- **Privasi:** jangan meminta informasi sensitif yang tidak perlu. Kalau memang perlu, jelaskan kenapa dan bagaimana informasi itu disimpan.

### Aksesibilitas kognitif

- **Angka dan diskalkulia:** jangan menumpuk angka dalam satu kalimat. Pisah angka ke dalam daftar. Beri perbandingan konkret: `Rp75.000 — kira-kira harga dua kali makan siang.` Urutkan langkah dengan `Pertama`, `Kedua`, `Terakhir` supaya pembaca tahu posisinya.
- **Disleksia:** kalimat pendek, paragraf pendek, spasi yang cukup. Hindari huruf kapital semua dan huruf miring panjang. Jangan pakai font yang terlalu rapat.
- **Pembaca layar (screen reader):** teks tautan harus deskriptif — `Unduh panduan PDF` bukan `klik di sini`. Jangan menyampaikan informasi hanya lewat warna atau posisi: jangan tulis `tekan tombol merah di kanan`, tulis `pilih Hapus pesanan`. Jangan pakai emoji sebagai satu-satunya penanda makna.
- **Satu tugas dalam satu waktu:** jangan minta pembaca melakukan dua hal sekaligus dalam satu kalimat. Pecah menjadi langkah bernomor.
- **Konsisten:** tombol, label, dan istilah yang sama harus selalu bernama sama di seluruh produk. Jangan ganti `Simpan` menjadi `Simpan perubahan` menjadi `Konfirmasi` untuk tindakan yang sama.

## Bahasa Daerah dan Ragam

Bahasa Indonesia dipakai di seluruh Indonesia — pembacanya tidak semuanya orang Jakarta, dan tidak semuanya memakai kata yang sama untuk hal yang sama.

- **Istilah daerah boleh dipakai kalau membantu.** Kalau sebuah istilah daerah lebih dipahami pembaca setempat daripada padanan bahasa Indonesianya, pakai istilah itu — tapi beri penjelasan singkat saat pertama kali muncul: `gotong royong (kerja bersama warga)`, `posyandu (pos pelayanan kesehatan desa)`. Setelah itu, pakai istilahnya saja.
- **Glosari sekali, lalu konsisten.** Kalau sebuah istilah daerah muncul berulang kali, cukup jelaskan di pemakaian pertama. Jangan mengulang penjelasan yang sama di setiap paragraf.
- **Jangan ganti istilah daerah dengan bahasa Jakarta.** `Warung` bukan `minimarket`. `Ojek` bukan `taksi motor`. Kalau pembaca setempat menyebutnya begitu, hormati sebutannya.
- **Jebakan Jakarta-sentris:** jangan asumsikan semua pembaca tinggal di Jakarta, punya internet cepat, atau paham referensi kota besar. Jangan tulis `naik MRT` sebagai satu-satunya cara sampai ke suatu tempat, jangan asumsikan pembaca bisa mengunduh berkas besar kapan saja, dan jangan pakai contoh harga, tempat, atau layanan yang hanya ada di Jakarta tanpa alternatif. Tulis petunjuk yang berlaku di mana pun pembaca berada — atau sebut jelas wilayahnya kalau memang hanya berlaku di satu tempat.

## Jebakan yang Sering Terjadi

### Terjemahan harfiah dari Inggris

Bahasa Inggris dan bahasa Indonesia punya struktur yang berbeda. Terjemahan kata-per-kata menghasilkan kalimat yang benar secara tata bahasa tapi janggal dibaca.

| Terjemahan harfiah (jangan) | Bahasa Indonesia yang alami |
|---|---|
| Silakan klik di sini untuk melanjutkan | Lanjutkan |
| Terima kasih telah menghubungi kami | Terima kasih sudah menghubungi kami |
| Kami menghargai kesabaran Anda | Terima kasih sudah menunggu |
| Jika Anda memiliki pertanyaan lebih lanjut | Kalau ada pertanyaan lain |
| Harap dicatat bahwa | Catatan: |
| Perlu diketahui bahwa | (hapus saja) |
| Kami ingin memberitahukan Anda bahwa | Kami beri tahu bahwa |

### Nominalisasi — kata kerja yang diubah jadi kata benda

Nominalisasi membuat kalimat panjang dan pasif. Kembalikan ke kata kerja.

| Nominalisasi (jangan) | Kata kerja (pakai) |
|---|---|
| melakukan pengiriman | kirim |
| melakukan pembayaran | bayar |
| melakukan pengecekan | periksa |
| memberikan persetujuan | setujui |
| melakukan perubahan | ubah |
| melakukan peninjauan | tinjau |
| pemberian informasi | beri tahu |
| pelaksanaan kegiatan | laksanakan / jalankan |

### Pasif berantai

Satu kalimat pasif masih boleh. Dua atau tiga kalimat pasif berturut-turut membuat pembaca kehilangan siapa pelakunya.

- Jangan: `Formulir ini harus diisi dan dikirim sebelum tanggal yang telah ditentukan. Setelah itu, formulir akan diproses oleh petugas.`
- Pakai: `Isi dan kirim formulir ini sebelum 12 Juni 2026. Petugas kami akan memprosesnya dalam 3 hari kerja.`

### Kalimat bersarang

Kalimat bersarang menyisipkan anak kalimat di tengah kalimat utama. Pembaca harus mengingat awal kalimat sambil membaca sisipannya.

- Jangan: `Pembayaran, yang harus dilakukan sebelum tanggal jatuh tempo yang tertera pada tagihan, dapat dilakukan melalui aplikasi.`
- Pakai: `Bayar tagihan sebelum tanggal jatuh tempo yang tertera. Anda bisa bayar lewat aplikasi.`

### Kata pengisi

Kata ini tidak menambah makna. Hapus.

- `cukup` — `cukup jelas` → `jelas`
- `berbagai` — `berbagai macam fitur` → sebut fiturnya, atau hapus
- `mungkin saja` — `mungkin saja terjadi` → `mungkin terjadi`
- `dalam rangka` — `dalam rangka meningkatkan` → `untuk meningkatkan`
- `pada dasarnya` — hapus
- `sebenarnya` — hapus, kecuali memang ada kontras dengan dugaan
- `tentunya` — hapus
- `sangat` yang berulang — `sangat penting sekali` → `penting`

## Kesalahan yang Sering Terjadi

Delapan kegagalan yang paling sering muncul — lengkap dengan contoh salah, perbaikannya, dan dimensi RASA yang dirusaknya.

1. **Menyembunyikan poin di akhir.**
   - Salah: `Sehubungan dengan hal tersebut, kami sampaikan bahwa mulai 1 Juli 2026 tarif air naik.`
   - Perbaiki: `Tarif air naik mulai 1 Juli 2026.`
   - Merusak: **Sarat Makna** — pembaca harus melewati pembuka yang kosong sebelum sampai ke informasi.
2. **Menumpuk kata sopan.**
   - Salah: `Dengan hormat, kami mohon dengan sangat kiranya Bapak/Ibu berkenan untuk dapat mengisi formulir ini.`
   - Perbaiki: `Silakan isi formulir ini.`
   - Merusak: **Alami** — tumpukan `dengan hormat`, `mohon dengan sangat`, dan `kiranya berkenan` membuat teks terasa seperti surat dinas, bukan ajakan.
3. **Menumpuk kata benda.**
   - Salah: `pelaksanaan kegiatan peningkatan kualitas pelayanan publik`
   - Perbaiki: `memperbaiki layanan publik`
   - Merusak: **Ritmis** — deretan kata benda tanpa kata kerja membuat kalimat berat dan lambat dibaca.
4. **Urgensi palsu.**
   - Salah: `Segera! Penawaran terakhir! Jangan sampai ketinggalan — daftar sekarang juga!`
   - Perbaiki: `Pendaftaran ditutup 30 Juni 2026. Daftar sebelum tanggal itu.`
   - Merusak: **Akurat** — urgensi tanpa tanggal dan akibat nyata adalah tekanan, bukan informasi.
5. **Rantai pasif.**
   - Salah: `Formulir ini harus diisi dan dikirim sebelum tanggal yang telah ditentukan. Setelah itu, formulir akan diproses oleh petugas.`
   - Perbaiki: `Isi dan kirim formulir ini sebelum 12 Juni 2026. Petugas kami akan memprosesnya dalam 3 hari kerja.`
   - Merusak: **Alami** — pembaca kehilangan siapa yang harus bertindak dan siapa yang memproses.
6. **Angka tanpa konteks.**
   - Salah: `Kinerja meningkat 24% pada periode ini.`
   - Perbaiki: `Pendaftar baru naik 24% pada Juni 2026 — dari 1.200 menjadi 1.488 orang.`
   - Merusak: **Akurat** — persen tanpa angka awal, angka akhir, dan periode tidak bisa diperiksa kebenarannya.
7. **Basa-basi minta maaf.**
   - Salah: `Mohon maaf atas ketidaknyamanan ini, kami mohon pengertian Anda.`
   - Perbaiki: `Maaf, pembayaran Anda gagal karena koneksi terputus. Periksa koneksi Anda, lalu coba lagi.`
   - Merusak: **Sarat Makna** — permintaan maaf tanpa menyebut masalah dan tanpa langkah perbaikan tidak membantu pembaca.
8. **Suara templat.**
   - Salah: `Terima kasih telah menggunakan layanan kami. Kami berkomitmen untuk terus memberikan yang terbaik bagi Anda.`
   - Perbaiki: `Terima kasih sudah membayar. Bukti pembayaran sudah kami kirim ke email Anda.`
   - Merusak: **Alami** — kalimat yang bisa ditempel di produk apa pun berarti tidak mengatakan apa-apa tentang produk ini.

## Daftar Periksa Mandiri

Jalankan daftar ini sebelum menyerahkan hasil. Kalau ada kotak yang belum tercentang, perbaiki dulu atau catat alasannya di laporan.

### Konten

- [ ] Kalimat pertama menyampaikan hal terpenting atau tindakan utama.
- [ ] Setiap kalimat maksimal 25 kata; sebagian besar 12–20 kata.
- [ ] Setiap paragraf maksimal 3 kalimat dan 1 topik.
- [ ] Satu ide per kalimat — tidak ada kalimat yang memuat dua tindakan.
- [ ] Kata kerja aktif lebih banyak daripada pasif.
- [ ] Angka, tanggal, jumlah, dan tenggat ditulis konkret, bukan kabur.
- [ ] Tidak ada klise dari daftar larangan.
- [ ] Tidak ada kata dari tabel pengganti yang masih tertinggal.
- [ ] EYD benar: tanggal `4 Juni 2026`, waktu `10.00`, uang `Rp75.000`, persen `50%`.
- [ ] Judul memakai sentence case dan maksimal ~65 karakter.

### Inklusivitas

- [ ] Sapaan konsisten (`kamu` atau `Anda`) di seluruh teks.
- [ ] Bahasa people-first, tanpa stigma, tanpa asumsi gender atau kemampuan.
- [ ] Tidak ada urgensi palsu, huruf kapital semua, atau tanda seru beruntun.
- [ ] Teks tautan deskriptif — tidak ada `klik di sini`.
- [ ] Informasi tidak hanya disampaikan lewat warna atau posisi.
- [ ] Angka dipisah ke daftar atau diberi perbandingan konkret, bukan ditumpuk dalam satu kalimat.
- [ ] Pembaca diberi jalan keluar — tombol kembali, batal, atau langkah kalau gagal.

### RASA

- [ ] Ritmis: dibaca keras-keras tanpa kehabisan napas; panjang kalimat bervariasi.
- [ ] Akurat: angka, tanggal, nama, dan syarat sudah diperiksa; tidak ada kalimat bermakna ganda.
- [ ] Sarat Makna: setiap kalimat membawa informasi atau tindakan baru.
- [ ] Alami: terasa seperti percakapan yang ditulis, bukan terjemahan atau bahasa birokrasi.
- [ ] Skor total minimal 6 dari 8, dan tidak ada dimensi yang bernilai 0.

## Format Laporan Penyerahan

Setiap tugas selesai — Mode Tulis maupun Mode Periksa — diakhiri dengan laporan ini. Tulis dalam bahasa Indonesia.

```markdown
## Ringkasan perubahan
- [Perubahan 1 — satu baris, sebut bagian yang diubah]
- [Perubahan 2]

## Skor RASA
- Ritmis: [0/1/2] — [satu kalimat alasan]
- Akurat: [0/1/2] — [satu kalimat alasan]
- Sarat Makna: [0/1/2] — [satu kalimat alasan]
- Alami: [0/1/2] — [satu kalimat alasan]
- **Total: [X]/8 — [Lulus / Belum lulus]**

## Yang sengaja dipertahankan
- [Hal yang dipertahankan 1] — [kenapa dipertahankan]
- [Hal yang dipertahankan 2] — [kenapa dipertahankan]

## Catatan
- [Asumsi tentang pembaca atau register, kalau ada]
- [Hal yang masih butuh keputusan pengguna, kalau ada]
```

Contoh bagian "Yang sengaja dipertahankan": istilah hukum yang wajib dipakai sesuai peraturan, nama produk resmi, atau kalimat pasif yang memang diperlukan karena pelakunya tidak diketahui.

## Jembatan Dua Bahasa

Tim yang bekerja dalam bahasa Indonesia dan bahasa Inggris memakai istilah yang sama untuk konsep yang sama. Tabel ini menjaga konsistensinya — pakai padanan ini di kedua bahasa, jangan membuat padanan baru sendiri.

| Bahasa Indonesia | English |
|---|---|
| bahasa polos | plain language |
| Ritmis | Rhythmic |
| Akurat | Accurate |
| Sarat Makna | Substantive |
| Alami | Authentic |
| ajakan | call to action |
| sapaan | form of address |
| kalimat aktif | active voice |
| kalimat pasif | passive voice |
| piramida terbalik | inverted pyramid |
| kata sehari-hari | everyday word |
| jargon | jargon |
| klise | cliché |
| daftar periksa | checklist |
| laporan penyerahan | delivery report |
| pesan error | error message |
| empty state | empty state |
| onboarding | onboarding |
| diskalkulia | dyscalculia |
| pembaca layar | screen reader |

Skill saudara skill ini, english-plain, memakai glosarium yang sama — istilah di atas berarti sama di kedua skill.

## Catatan Cakupan

Aturan format di skill ini berlaku untuk **prosa yang dihasilkan** — kalimat dan paragraf yang kamu tulis. Tiga hal memakai konvensinya sendiri:

- **Kode:** ikuti konvensi bahasa pemrograman dan gaya penulisan kode proyek, bukan aturan prosa ini.
- **Tabel data:** angka dan label dalam tabel mengikuti format data aslinya; aturan keterbacaan prosa tidak berlaku di dalam sel tabel.
- **Kutipan langsung:** kutip apa adanya, termasuk ejaan dan kata aslinya. Jangan "memperbaiki" kutipan — kalau perlu, beri penjelasan di luar kutipan.
