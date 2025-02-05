import 'dart:io';
import 'BukuNonsirkulasi.dart';
import 'BukuSirkulasi.dart';

void main() {
  List<BukuSirkulasi> bukuSirkulasiList = [];
  List<BukuNonsirkulasi> bukuNonSirkulasiList = [];

  bool isRunning = true;

  while(isRunning) {
    print('\n=== Perpustakaan Menu ===');
    print('1. Tambah Buku Baru');
    print('2. Tampilkan Semua Buku');
    print('3. Pinjam Buku');
    print('4. Kembalikan Buku');
    print('5. Keluar');
    print('Pilih menu (1-5): ');

    var input = stdin.readLineSync();
    
    switch(input) {
      case '1':
        print('\n=== Tambah Buku Baru ===');
        print('1. Buku Sirkulasi');
        print('2. Buku Non-Sirkulasi');
        print('Pilih jenis buku (1-2): ');
        var jenisBuku = stdin.readLineSync();
        
        print('Masukkan judul: ');
        var judul = stdin.readLineSync() ?? '';
        print('Masukkan penulis: ');
        var penulis = stdin.readLineSync() ?? '';
        print('Masukkan tahun terbit: ');
        var tahunTerbit = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;
        print('Masukkan harga: ');
        var harga = double.tryParse(stdin.readLineSync() ?? '0') ?? 0;
        print('Masukkan jumlah: ');
        var jumlah = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;

        if(jenisBuku == '1') {
          bukuSirkulasiList.add(BukuSirkulasi(
            judul: judul,
            penulis: penulis,
            tahunTerbit: tahunTerbit,
            harga: harga,
            jumlahDalamKoleksi: jumlah
          ));
          print('Buku sirkulasi berhasil ditambahkan!');
        } else if(jenisBuku == '2') {
          bukuNonSirkulasiList.add(BukuNonsirkulasi(
            judul: judul,
            penulis: penulis,
            tahunTerbit: tahunTerbit,
            harga: harga,
            jumlahDalamKoleksi: jumlah
          ));
          print('Buku non-sirkulasi berhasil ditambahkan!');
        }
        else{
          'Jenis buku tidak valid!';
        }
        break;

      case '2':
        print('\n=== Daftar Buku ===');
        print('\nBuku Sirkulasi:');
        for(var i = 0; i < bukuSirkulasiList.length; i++) {
          print('\nBuku ${i + 1}:');
          bukuSirkulasiList[i].informasi();
        }
        print('\nBuku Non-Sirkulasi:');
        for(var i = 0; i < bukuNonSirkulasiList.length; i++) {
          print('\nBuku ${i + 1}:');
          bukuNonSirkulasiList[i].informasi();
        }
        break;
        
      case '3':
        if(bukuSirkulasiList.isEmpty && bukuNonSirkulasiList.isEmpty) {
          print('Belum ada buku yang tersedia!');
          break;
        }
        else{
        print('\n=== Peminjaman Buku ===');
        print('Buku Sirkulasi:');
        for(var i = 0; i < bukuSirkulasiList.length; i++) {
          print('${i + 1}. ${bukuSirkulasiList[i].judul}');
        }
        print('\nBuku Non-Sirkulasi:');
        for(var i = 0; i < bukuNonSirkulasiList.length; i++) {
          print('${i + bukuSirkulasiList.length + 1}. ${bukuNonSirkulasiList[i].judul}');
        }
        }
        
        print('\nPilih nomor buku: ');
        var pilihan = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;
        print('Masukkan jumlah: ');
        var jumlah = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;

        if(pilihan <= bukuSirkulasiList.length) {
          bukuSirkulasiList[pilihan - 1].pinjamBuku(jumlah);
        } else {
          var index = pilihan - bukuSirkulasiList.length - 1;
          if(index < bukuNonSirkulasiList.length) {
            bukuNonSirkulasiList[index].pinjamBuku(jumlah);
          }
        }
        break;
        
      case '4':
        if(bukuSirkulasiList.isEmpty) {
          print('Belum ada buku sirkulasi yang tersedia!');
          break;
        }
        
        print('\n=== Pengembalian Buku ===');
        print('Buku Sirkulasi:');
        for(var i = 0; i < bukuSirkulasiList.length; i++) {
          print('${i + 1}. ${bukuSirkulasiList[i].judul}');
        }
        
        print('\nPilih nomor buku: ');
        var pilihan = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;
        print('Masukkan jumlah: ');
        var jumlah = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;

        if(pilihan > 0 && pilihan <= bukuSirkulasiList.length) {
          bukuSirkulasiList[pilihan - 1].kembalikanBuku(jumlah);
        }
        break;
        
      case '5':
        isRunning = false;
        print('Terima kasih telah menggunakan aplikasi perpustakaan!');
        break;
        
      default:
        print('Menu tidak valid!');
    }
  }
}