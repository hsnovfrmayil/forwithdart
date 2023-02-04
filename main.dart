import 'dart:io';

main() {
  //Daxil edilen ededin tek ve ya cut olmasini yoxlayan program
  greekOne:
  while (true) {
    stdout.write("Bir eded daxil edin : ");
    int? number = int.parse(stdin.readLineSync()!);

    if (number % 2 == 1) {
      print("Daxil etdiyiniz eded tek ededdir...");
      print("***************************************");
    } else {
      print("Daxil etdiyiniz eded cut ededdir...");
      print("***************************************");
    }
    greekTwo:
    while (true) {
      stdout.write("Yeniden yoxlamaq isteyirsiniz? y or n: ");
      String? yourAnswer = stdin.readLineSync();
      if (yourAnswer == "y") {
        continue greekOne;
      } else if (yourAnswer == "n") {
        break greekOne;
      } else {
        print("Yanlish cavab daxil etdiniz...");
        continue greekTwo;
      }
    }
  }
}
