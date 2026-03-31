import 'dart:io';   
import 'package:intl/intl.dart';
void main(List<String> arguments) {

  int id;
  String lastName;
  String firstName;
  String gender;
  String address;
  String dob;
  String position;
  double salary;
  String subject;
  stdout.write('Enter ID: ');
  id = int.parse(stdin.readLineSync()!);
  
  stdout.write('Enter your LastName: ');
  lastName = stdin.readLineSync()!;

  stdout.write('Enter your FirstName: ');
  firstName = stdin.readLineSync()!;

  stdout.write('Enter your Gender: ');
  gender = stdin.readLineSync()!;

  stdout.write('Enter your Address: ');
  address = stdin.readLineSync()!;

  stdout.write('Enter your Date of Birth: ');
  dob = stdin.readLineSync()!;

  stdout.write('Enter your Salary: ');
  salary = double.parse(stdin.readLineSync()!);

  stdout.write('Enter your Position: ');
  position = stdin.readLineSync()!;

  stdout.write('Enter your Subject: ');
  subject = stdin.readLineSync()!;

  DateTime date = DateFormat("yyyyy-MM-dd").parse(dob);
  String outputDob = DateFormat("yyyy-MMM-dd").format(date);

  String fSalary= salary.toStringAsFixed(2);
  
  print('-------------------------Show Employee list-------------------------');
  print('ID\t\tFull Name\t\tGender\t\tAddress\t\tDate of birth');
  print('$id\t\t$firstName $lastName\t\t$gender\t\t$address\t\t$outputDob\n');
  print('\t\t\t\t\t\t\t\t\tSubject\t:$subject');
  print('\t\t\t\t\t\t\t\t\tSalary\t:\$$fSalary');
  print('\t\t\t\t\t\t\t\t\tPosition\t:$position');


}
