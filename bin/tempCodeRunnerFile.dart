import 'dart:io';
import 'package:intl/intl.dart';
void main(){
  DateTime borrowDate =DateTime.parse('2024-08-13') ;
  var dateFormat = DateFormat('yyyy-MM-dd EEEE');
  double loanAmount = 1000;
  int loanTerm = 12;
  double rate = 1.5;
  double principle = loanAmount/loanTerm;
  double interest = (loanAmount*rate)/100;
  double balance = loanAmount-principle;
  DateTime dateOfPayment; 
  double payment = principle+interest;
  String fLaon = loanAmount.toStringAsFixed(2);
  String fRate = rate.toStringAsFixed(2);
  stdout.writeln('-'*150);  
  stdout.writeln('Loan Money :$fLaon'.padLeft(100)+'Loan Rate :$fRate'.padLeft(40));  
  stdout.writeln('Borrow Date :'.padLeft(94)+'${dateFormat.format(borrowDate)}'.padLeft(1)+'Term Loan :$loanTerm'.padLeft(26));  
  stdout.writeln('-'*150);
  stdout.writeln('N'+'Date Of Payment'.padLeft(30)+'Payment'.padLeft(30)+'Interest'.padLeft(30)+'Principle'.padLeft(30)+'Balance'.padLeft(30));
  stdout.writeln('-'*150);

  for(int i = 1; i <= loanTerm; i++) {

  int dayAdd = 0;
  dateOfPayment = DateTime(
    borrowDate.year,
    borrowDate.month + i,
    borrowDate.day,
  );

  if (dateOfPayment.weekday == 6) {
    dateOfPayment = DateTime(
      borrowDate.year,
      borrowDate.month + i,
      borrowDate.day + 2,
    );
    borrowDate = borrowDate.add(Duration(days: 2));
    dayAdd = 2;
  } else if (dateOfPayment.weekday == 7) {
    dateOfPayment = DateTime(
      borrowDate.year,
      borrowDate.month + i,
      borrowDate.day + 1,
    );
    borrowDate = borrowDate.add(Duration(days: 1));
    dayAdd = 1;
  }

  double newInterest = ((loanAmount * rate) / (100 * 30)) * dayAdd;
  
  interest = (loanAmount * rate) / 100 + newInterest;
  payment = interest + principle;

  String fInterest = interest.toStringAsFixed(2);
  String fPrinciple = principle.toStringAsFixed(2);
  String fBalance = balance < 0 ? "0.00" : balance.toStringAsFixed(2);
  String fPayment = payment.toStringAsFixed(2);

  stdout.writeln(
    '$i'.padRight(1)+'${dateFormat.format(dateOfPayment)}'.padLeft(30)+'$fPayment'.padLeft(30)+'$fInterest'.padLeft(30) +'$fPrinciple'.padLeft(30) +'$fBalance'.padLeft(30));
  stdout.writeln('-' * 150);
  loanAmount = balance;
  balance = loanAmount - principle;
}

}