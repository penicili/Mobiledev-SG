import 'Buku.dart';

class BukuNonsirkulasi extends Buku {

  BukuNonsirkulasi({
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
      print('Buku ini tidak dapat dipinjam');
    }
}