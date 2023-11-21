import 'dart:io';

void main(){
  stdout.write('Masukan nama :');
  var nama = stdin.readLineSync();
  stdout.write('Masukan Barang : ');
  var Barang = stdin.readLineSync();
  stdout.write('Jumlah :');
  int Jum =int.parse(stdin.readLineSync()!);
  stdout.write('Masukan Harga : ');
  int Harga = int.parse(stdin.readLineSync()!);
  var diskon;


  int jumlah = Harga * Jum;

  if (jumlah >= 500000){
    diskon = 0.2;
  }else if (jumlah >= 250000){
    diskon = 0.15;
  }else if (jumlah >= 100000){
    diskon = 0.02;
  }else{
    diskon = 0;
  }

  var Total = jumlah - (jumlah * diskon);
  print('Jumlah Bayar : $Total');

  stdout.write('Bayar : ');
  int bayar = int.parse(stdin.readLineSync()!);

  var kembali = bayar - Total;
  print('Kembalian : $kembali');
}


