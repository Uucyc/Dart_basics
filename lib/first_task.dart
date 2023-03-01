// Реализуйте методы вычисления НОД и НОК целых чисел.
//Реализуйте метод, который разбивает число на простые множители и возвращает их.

// Реализуйте методы для преобразования целых чисел из десятичной системы
//в двоичную и обратно.

class FirstTask {
  int gcd(int a, int b) {
    //НОД
    if (b == 0) {
      return a;
    } else {
      return gcd(b, a % b);
    }
  }

  int gcm(int a, int b) {
    //НОК
    return (a * b) ~/ gcd(a, b);
  }

  List<int> getPrimeFactors(int n) {
    //простые множители
    var primeFactors = <int>[];
    var factor = 2;
    while (n > 1) {
      if (n % factor == 0) {
        //делится ли ровно на 2?
        primeFactors.add(factor);
        n ~/= factor;
      } else {
        factor++;
      }
    }
    return primeFactors;
  }

  String toBinary(int n) {
    //перевод числа в бинарную (двоичную) систему
    return n.toRadixString(2);
  }

  int toDecimal(String binary) {
    //перевод в десятичную систему
    return int.parse(binary, radix: 2);
  }
}
