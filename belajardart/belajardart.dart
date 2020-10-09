// void main() {
//   print("hello world");

//   var name = 'Nurrizky Imani';
//   var umur = 12;
//   var listMember = ['ALi', 'Iklhas', "fathur"];

//   var image = {
//     'url': "String",
//     'tag': ['ugm', 'univeritas']
//   };

//   // print(image);
//   // print(umur);
//   // print(name);
//   print(listMember);

//   void prediksiAngka(tahun) {
//     if (tahun > 2000) {
//       print("Generasi Z");
//     } else if (tahun < 2000) {
//       print("Generasi Milenial");
//     }

//     // print("Nomor 1");
//   }

//   // for (var member in listMember) {
//   //   print(member);
//   // }

//   // for (int bulan = 1; bulan <= 12; bulan++) {
//   //   if (bulan % 2 == 0) {
//   //     print("BUlan genap");
//   //   }
//   // }

//   // prediksiAngka(2001);

//   int angkasetelahini(int x) {
//     return x + 1;
//   }

//   var angka = angkasetelahini(1);
//   print(angka);
// }

//Classes ; OOP

import 'dart:io';

class Animal {
  //properties
  String name;
  int umur;
  String jenis;

  //Construstor
  // Animal(name, umur, jenis) {
  //   this.name = name;
  //   this.jenis = jenis;
  //   this.umur = umur;
  // }

  // Constructor
  Animal(this.name, this.umur, this.jenis);

  //Methods
  void bisaJalan() {
    print("binatang ini bisa jaaln");
  }

  void hewaninitipe() {
    print(" ini hewan nama $name dan jenis $jenis");
  }
}

class Kucing extends Animal {
  double berat;

  ///Constructor
  Kucing(String name, int umur, String jenis, double berat)
      : super(name, umur, jenis);

  void printberat() {
    print("beratnya itu $berat");
  }
}

void main() {
  // var kucing1 = Animal("Alex", 3, "Shorthair");

  // kucing1.bisaJalan();
  // kucing1.hewaninitipe();

  const buatkamumenunggu = Duration(seconds: 1);

  //guna buat ngefetching data;
  Future<Duration> printwithdelay(String message) async {
    
    //try catch; 
    // try {
    //     ......
    // } on IOException catch (e){
    //   print("$e")
    // }

    await Future.delayed(buatkamumenunggu);

    print("menunggu $buatkamumenunggu");

    return buatkamumenunggu;
  }

  printwithdelay("Aku nunggu $buatkamumenunggu detik ");
}
