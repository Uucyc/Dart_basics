import 'dart:math';
import 'first_task.dart';
import 'second_task.dart';

void main() {
  var calculator = FirstTask();
  var a = 12;
  var b = 8;
  var gcdResult = calculator.gcd(a, b); //НОД
  var gcmResult = calculator.gcm(a, b); //НОК
  print('Task 1: The greatest common divisor of $a and $b is $gcdResult.');
  print('The greatest common multiple of $a and $b is $gcmResult.');

  var n = 24; //простые множители
  var primeFactors = calculator.getPrimeFactors(n);
  print('The prime factors of $n are: $primeFactors');

  var binary = calculator.toBinary(n); //в бинарную
  var decimal = calculator.toDecimal(binary); //в десятичную
  print('Task 2. The binary representation of $n is $binary.');
  print('The decimal representation of $binary is $decimal.');

  var utils = StringTasks(); //задача 3 (utils=utilities for strings)
  var input = 'Task 3. The numbers are 42 and 7, maybe 1654 also.';
  var numbers = utils.extractNumbers(input);
  print('The extracted numbers are $numbers.');
}
