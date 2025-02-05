import 'Buku.dart';

class BukuSirkulasi extends Buku {

  BukuSirkulasi({
    required String judul,
    required String penulis,
    required int tahunTerbit,
    required double harga,
    required int jumlahDalamKoleksi
  }): super(
    judul: judul,
    penulis: penulis,
    tahunTerbit: tahunTerbit,
    harga: harga,
    jumlahDalamKoleksi: jumlahDalamKoleksi
  );

  void pinjamBuku(int jumlahPinjam){
    if (jumlahPinjam >= jumlahDalamKoleksi){
      print('Buku $judul tidak dapat dipinjam karena jumlah dalam koleksi tidak mencukupi');
    } else {
      print('Meminjam Buku $judul sebanyak $jumlahPinjam');
      jumlahDalamKoleksi -= jumlahPinjam;
    }
  }
  void kembalikanBuku(int jumlah) {
    jumlahDalamKoleksi += jumlah;
    print('$jumlah buku telah dikembalikan.');
  }
}