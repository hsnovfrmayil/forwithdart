import 'dart:io';

main() {
  //Yasini  ve adini daxil edir ve 100 illik yubileyi ucun nece ilden sonra ona tebrik mesaji gondericeleyini consola cixarir
  // stdout.write("Zehmet olmasa adinizi daxil edin: ");
  // String? name = stdin.readLineSync();
  stdout.write("Doguldugunuz ili daxil edin : ");
  int? inputBirdayYear = int.parse(stdin.readLineSync()!);

  stdout.write("Doguldugunuz ayi daxil edin : ");
  int? inputBirdayMonth = int.parse(stdin.readLineSync()!);

  stdout.write("Doguldugunuz gunu daxil edin : ");
  int? inputBirdayDay = int.parse(stdin.readLineSync()!);

  final birtday =
      DateTime.utc(inputBirdayYear, inputBirdayMonth, inputBirdayDay);
  final now = DateTime.now();
  print("Teqvimde sizin ad gunu qeyd olundugu tarix: $birtday");
  print("****************************************************");
  if ((now.year - birtday.year) >= 100) {
    print(
        "Sizin ${now.year - birtday.year} yashiniz oldugu ucun yubiley mukafaylandirilmasina qatila bilersiniz...");

  }
  else{
    print(
        "Sizin ${now.year - birtday.year} yashiniz oldugu ucun yubiley mukafaylandirilmasina qatila bilmezsiniz...");

  }
}
