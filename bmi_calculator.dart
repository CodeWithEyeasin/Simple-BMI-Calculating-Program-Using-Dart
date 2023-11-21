import 'dart:io';

import 'package:test/scaffolding.dart';

import 'BMI.dart';

void main()
{
  String UserName;
  int Password;

  BMI bmi=BMI();
  print("Welcome To Our BMI Calculation APP\n "
      "Please Enter Your UserName & Password For Login\n"
      "UserName :");
  UserName=stdin.readLineSync()!;
  print("Password :");
  Password=int.parse(stdin.readLineSync()!);
  if(UserName=="Eyeasin")
    {
      if(Password==123)
        {
          print("Successfully Login");
          bmi.CalculateBMI();
          bmi.Comparison();
        }
      else
        {
          print("Warning Your Password Is Wrong\"This Program Terminated Within 5 Second\"");
          sleep(Duration(seconds: 5));
        }
    }
  else
    {
      print("Warning Your UserName Is Wrong \"This Program Terminated Within 5 Second\"");
      sleep(Duration(seconds: 5));
    }

}
