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
  stdout.writeln('Borrow Date :'+'${dateFormat.format(borrowDate)}'.padLeft(87)+'Term Loan :$loanTerm'.padLeft(39));  
  stdout.writeln('-'*150);
  stdout.writeln('N'+'Date Of Payment'.padLeft(30)+'Payment'.padLeft(30)+'Interest'.padLeft(30)+'Principle'.padLeft(30)+'Balance'.padLeft(30));
  stdout.writeln('-'*150);

  int addDay=0;
  for(int i =1; i<=loanTerm;i++){
    String fInterest = interest.toStringAsFixed(2);
    String fPrinciple = principle.toStringAsFixed(2);
    String fBalance = balance.toStringAsFixed(2);
    String fPayment = payment.toStringAsFixed(2);

    
    dateOfPayment = DateTime(borrowDate.year, borrowDate.month+i , borrowDate.day,);
    // stdout.write(dateOfPayment.weekday);
    if(dateOfPayment.weekday==6){
      dateOfPayment = DateTime(borrowDate.year, borrowDate.month+i , borrowDate.day+2,);
      borrowDate= borrowDate.add(Duration(days: 2));
    }else if(dateOfPayment.weekday==7){
      dateOfPayment = DateTime(borrowDate.year, borrowDate.month+i , borrowDate.day+1,);
      borrowDate = borrowDate.add(Duration(days: 1));
    }
    balance-=principle;
    loanAmount =balance;
    interest =(loanAmount *rate)/100;
    payment = interest+principle;
    stdout.writeln('$i'+'${dateFormat.format(dateOfPayment)}'.padLeft(30)+'$fPayment'.padLeft(30)+'$fInterest'.padLeft(30)+'$fPrinciple'.padLeft(30)+'$fBalance'.padLeft(30));
    stdout.writeln('-'*150);
  }

}