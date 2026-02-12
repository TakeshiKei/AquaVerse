// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class TermsPage extends StatelessWidget {
  const TermsPage({super.key});

  static const baseColor = Color.fromRGBO(30, 134, 185, 1);

  static const _bannerUrl =
      "https://ccuigpzseuhwietjcyyi.supabase.co/storage/v1/object/public/aquaverse/assets/images/home/Banner-no-logo.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Column(
        children: [
          // ===== HEADER (posisi turun biar sama prototype) =====
          ClipRRect(
            borderRadius: const BorderRadius.vertical(
              bottom: Radius.circular(35),
            ),
            child: SizedBox(
              height: 120,
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.network(
                      _bannerUrl,
                      fit: BoxFit.cover,
                      opacity: const AlwaysStoppedAnimation(0.75),
                    ),
                  ),
                  Positioned.fill(
                    child: Container(
                      color: const Color.fromARGB(
                        255,
                        75,
                        172,
                        251,
                      ).withOpacity(0.5),
                    ),
                  ),

                  // ✅ custom top bar (back + title) yang diturunin
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 0,
                    child: SafeArea(
                      bottom: false,
                      child: Padding(
                        // ini yang bikin "turun" dan gak mentok atas
                        padding: const EdgeInsets.only(top: 20),
                        child: SizedBox(
                          height: 44,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              // back button (kiri)
                              Positioned(
                                left: 14,
                                child: Material(
                                  color: Colors.white.withOpacity(0.15),
                                  borderRadius: BorderRadius.circular(12),
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(12),
                                    onTap: () => Navigator.pop(context),
                                    child: const Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Icon(
                                        Icons.arrow_back,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              // title (center beneran)
                              const Text(
                                "Terms and Conditions",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // ===== BODY (putih solid, ga tembus banner) =====
          Expanded(
            child: Container(
              color: Colors.white,
              child: ListView(
                padding: const EdgeInsets.fromLTRB(18, 14, 18, 24),
                children: const [
                  Text(
                    "Terakhir diperbarui: 12 Maret 2026",
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(height: 14),

                  _Section(
                    title: "1. Penerimaan Syarat",
                    content:
                        "Dengan menggunakan Aquaverse, Anda menyetujui seluruh Syarat dan Ketentuan ini. Jika tidak setuju, harap hentikan penggunaan aplikasi.",
                  ),

                  _Section(
                    title: "2. Penggunaan Aplikasi",
                    bullets: [
                      "Dilarang menggunakan aplikasi untuk tujuan yang melanggar hukum.",
                      "Dilarang merusak, mengganggu, atau mencoba mengakses sistem secara ilegal.",
                      "Segala aktivitas dalam aplikasi merupakan tanggung jawab pengguna.",
                    ],
                  ),

                  _Section(
                    title: "3. Akun Pengguna",
                    bullets: [
                      "Pengguna bertanggung jawab atas keamanan akun dan kata sandi.",
                      "Aktivitas yang dilakukan melalui akun dianggap dilakukan oleh pemilik akun.",
                      "Aquaverse berhak membatasi atau menangguhkan akun yang melanggar aturan.",
                    ],
                  ),

                  _Section(
                    title: "4. Konten dan Hak Kekayaan Intelektual",
                    bullets: [
                      "Semua teks, grafis, ikon, ilustrasi, animasi, desain UI, dan aset lainnya adalah milik Aquaverse.",
                      "Pengguna tidak diperkenankan menyalin, mengedit, mendistribusikan, atau menggunakan aset tanpa izin.",
                    ],
                  ),

                  _Section(
                    title: "5. Konten yang Dikirim oleh Pengguna",
                    bullets: [
                      "Dengan mengirimkan konten (komentar, masukan, atau data), pengguna menyatakan konten tersebut tidak melanggar hak pihak lain.",
                      "Aquaverse diberi izin non-eksklusif untuk menampilkan konten tersebut dalam aplikasi.",
                    ],
                  ),

                  _Section(
                    title: "6. Reward, XP, dan Sistem Gamifikasi",
                    bullets: [
                      "Semua XP, poin, badge, dan streak tidak memiliki nilai uang.",
                      "Sistem gamifikasi dapat diubah sewaktu-waktu tanpa pemberitahuan.",
                    ],
                  ),

                  _Section(
                    title: "7. Perubahan Layanan",
                    bullets: [
                      "Fitur atau konten aplikasi dapat berubah sewaktu-waktu.",
                      "Aplikasi dapat dihentikan sementara atau permanen.",
                    ],
                  ),

                  _Section(
                    title: "8. Pembatasan Tanggung Jawab",
                    bullets: [
                      "Aquaverse tidak bertanggung jawab atas kerusakan akibat penggunaan aplikasi.",
                      "Tidak ada jaminan aplikasi selalu bebas gangguan, bug, atau eror.",
                      "Pengguna bertanggung jawab atas perangkat dan koneksi internet mereka.",
                    ],
                  ),

                  _Section(
                    title: "9. Pengakhiran Akses",
                    bullets: [
                      "Pelanggaran terhadap syarat dapat menyebabkan penghentian akses.",
                      "Keputusan penghentian adalah sepenuhnya kebijakan Aquaverse.",
                    ],
                  ),

                  _Section(
                    title: "10. Hukum yang Berlaku",
                    content:
                        "Syarat ini tunduk pada hukum yang berlaku di Indonesia.",
                  ),

                  _Section(
                    title: "11. Informasi yang Kami Kumpulkan",
                    content: "Kami dapat mengumpulkan:",
                    bullets: [
                      "Informasi akun (nama, email, foto profil).",
                      "Data penggunaan (riwayat eksplorasi, poin, streak, statistik interaksi).",
                      "Data perangkat (tipe perangkat, sistem operasi, versi aplikasi).",
                      "Data lokasi non-presisi (mis. negara atau zona waktu).",
                    ],
                  ),

                  _Section(
                    title: "12. Cara Penggunaan Informasi",
                    bullets: [
                      "Meningkatkan pengalaman pengguna.",
                      "Menyediakan fitur seperti penilaian progres, rekomendasi biota, dan tracking eksplorasi.",
                      "Menganalisis performa aplikasi.",
                      "Keperluan keamanan dan pencegahan penyalahgunaan.",
                    ],
                  ),

                  _Section(
                    title: "13. Berbagi Informasi",
                    bullets: [
                      "Kami tidak menjual data pengguna.",
                      "Data hanya dibagikan untuk layanan analitik (mis. crash analytics) dan kepatuhan hukum jika diwajibkan.",
                    ],
                  ),

                  _Section(
                    title: "14. Keamanan Data",
                    bullets: [
                      "Data pengguna disimpan dengan protokol keamanan standar industri.",
                      "Tidak ada sistem yang 100% aman; pengguna tetap perlu menjaga akses akun.",
                    ],
                  ),

                  _Section(
                    title: "15. Hak Pengguna",
                    content: "Pengguna dapat:",
                    bullets: [
                      "Meminta penghapusan data tertentu.",
                      "Mengubah atau memperbarui informasi akun.",
                      "Menghubungi kami untuk permintaan terkait data.",
                    ],
                  ),

                  _Section(
                    title: "16. Data Anak-Anak",
                    bullets: [
                      "Aquaverse tidak ditujukan untuk pengguna di bawah 13 tahun.",
                      "Jika ditemukan data anak di bawah batas tersebut, kami akan menghapusnya.",
                    ],
                  ),

                  _Section(
                    title: "17. Penyimpanan dan Penghapusan Data",
                    bullets: [
                      "Data disimpan selama akun masih aktif.",
                      "Jika pengguna menghapus akun, sebagian besar data akan dihapus secara permanen.",
                    ],
                  ),

                  _Section(
                    title: "18. Perubahan Kebijakan",
                    bullets: [
                      "Kebijakan dapat berubah sewaktu-waktu.",
                      "Versi terbaru akan diperbarui di aplikasi.",
                    ],
                  ),

                  _Section(
                    title: "19. Kontak",
                    content: "Pertanyaan: support@aquaverse.app",
                  ),

                  SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Section extends StatelessWidget {
  final String title;
  final String? content;
  final List<String>? bullets;

  const _Section({required this.title, this.content, this.bullets});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontFamily: "Montserrat",
              fontSize: 15,
              fontWeight: FontWeight.w900,
              color: Color.fromRGBO(63, 68, 102, 1),
            ),
          ),
          const SizedBox(height: 8),
          if (content != null)
            Text(
              content!,
              style: const TextStyle(
                fontFamily: "Montserrat",
                fontSize: 13,
                height: 1.6,
                color: Colors.black87,
              ),
            ),
          if (bullets != null) ...[
            const SizedBox(height: 6),
            ...bullets!.map(
              (b) => Padding(
                padding: const EdgeInsets.only(bottom: 6),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("• ", style: TextStyle(fontSize: 13)),
                    Expanded(
                      child: Text(
                        b,
                        style: const TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 13,
                          height: 1.6,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
