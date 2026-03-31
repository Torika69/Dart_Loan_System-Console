import 'dart:ffi';
import 'dart:io';

void main() {
  int id;
  String lastName;
  String firstName;
  String gender;
  String address;
  String phone;
  int consumption;
  double payment;
  print('-'*20 +'Customer Infomation' + '-'*20);
  stdout.write("Input Id: ");
  id = int.parse(stdin.readLineSync()!);

  stdout.write("Input Last Name: ");
  lastName = stdin.readLineSync()!;

  stdout.write("Input First Name: ");
  firstName = stdin.readLineSync()!;

  stdout.write("Input Gender: ");
  gender = stdin.readLineSync()!;

  stdout.write("Input Address: ");
  address = stdin.readLineSync()!;

  stdout.write("Input Tell: ");
  phone = stdin.readLineSync()!;

  double secondCondition = 50 * 650;
  double thirdCondition = secondCondition + (50 * 750);
  double fourthCondition = secondCondition + thirdCondition + (100 * 850);
  do {
    stdout.write("Input Consumptin: ");
    consumption = int.parse(stdin.readLineSync()!);

    if (consumption > 50) {      if (consumption <= 100) {
        payment = ((consumption - 50) * 750) + secondCondition;
      } else if (consumption <= 200) {
        payment = ((consumption - 100) * 850) + thirdCondition;
      } else {
        payment = ((consumption - 200) * 950) + fourthCondition;
      }
    } else {
      payment = consumption * 650;
    }
  } while (consumption <= 0);
  
  String formatPayment= payment.toStringAsFixed(2);
  print('-'*60 +'Invoice for Customer' + '-'*60);
  print('id\t\t\tFull Name\t\t\tGender\t\t\tAddress\t\t\tTel');
  print('-'*120);
  print('$id\t\t\t$firstName $lastName\t\t\t$gender\t\t\t$address\t\t\t$phone');
  print('-'*120);
  print('\t'*13+'Consumption : $consumption Kw');
  print('\t'*13+'Payment : $formatPayment Riel');
}
