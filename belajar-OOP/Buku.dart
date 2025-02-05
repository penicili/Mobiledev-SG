abstract  class Buku{
  String judul;
  String penulis;
  int tahunTerbit;
  double harga;
  int jumlahDalamKoleksi;

  Buku({
    required this.judul,
    required this.penulis,
    required this.tahunTerbit,
    required this.harga,
    required this.jumlahDalamKoleksi
  });

  void informasi(){
    print('Judul: $judul');
    print('Penulis: $penulis');
    print('Tahun Terbit: $tahunTerbit');
    print('Harga: $harga');
    print('Jumlah dalam koleksi: $jumlahDalamKoleksi');
  }

  void pinjamBuku(int jumlahPinjam){
    print('Meminjam Buku $judul sebanyak $jumlahPinjam');
  }

}