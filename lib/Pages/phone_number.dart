import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app_demo/utils/routes.dart';
import 'package:grocery_app_demo/utils/theme.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:velocity_x/velocity_x.dart';

class PhoneNumberPage extends StatefulWidget {
  const PhoneNumberPage({super.key});

  @override
  State<PhoneNumberPage> createState() => _PhoneNumberPageState();
}

class _PhoneNumberPageState extends State<PhoneNumberPage> {
  final _formkey = GlobalKey<FormState>();
  final _phoneNumberFocusNode = FocusNode();

  moveToOtp(BuildContext context) async {
    // Manually trigger validation for the phone number field
    FocusScope.of(context).unfocus(); // Ensure that any active focus is removed

    if (_formkey.currentState!.validate()) {
      setState(() {
        //changeButton = true;
      });
      await Future.delayed(
          Duration(milliseconds: 900)); //making user wait 0.8 seconds
      await Navigator.pushNamed(context, MyRoutes.otpRoute);

      setState(() {
        //changeButton = false; // to come back and button reset
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, MyRoutes.signInRoute);
          },
          icon: Icon(CupertinoIcons.back),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Vx.black,
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(right: 60, top: 50),
                child: "Enter your mobile number"
                    .text
                    .size(26)
                    .fontWeight(FontWeight.w500)
                    .make(),
              ),
              Container(
                padding: EdgeInsets.only(top: 50, right: 240),
                child: "Mobile Number"
                    .text
                    .xl
                    .textStyle(context.captionStyle)
                    .make(),
              ),
                 Container(
                  padding: EdgeInsets.only(top: 8, left: 12, right: 12),
                  child: IntlPhoneField(
                    focusNode: _phoneNumberFocusNode,
                    keyboardType: TextInputType.number,
                    autovalidateMode: AutovalidateMode.disabled,
                    autofocus: true,
                    validator: (value) {
                      if (value!.number.isEmptyOrNull) {
                        //conditioning the text field
                        return "Phone number can't be empty";
                      } else if (value.number.length < 10 ||
                          value.number.length > 10) {
                        //password length validation
                        return "Enter correct phone number";
                      } //This validation returns the user to home page
                      return null; //else no problem
                    },
                    decoration: InputDecoration(
                      labelText: 'Enter Phone Number',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                    ),
                    initialCountryCode: 'IN',
                    onChanged: (value) {
                      print(value.completeNumber);
                    },
                  ),
                ),
              Container(
                padding: EdgeInsets.only(top: 16),
                height: 79,
                child: ElevatedButton(
                    onPressed: () {
                      // Navigator.pushNamed(context, MyRoutes.otpRoute);
                      if (_formkey.currentState!.validate()) {
                        moveToOtp(context);
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Please enter a valid phone number.'),
            duration: Duration(seconds: 2),
          ),
              );
                      }
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Mycolors.buttoncolor),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(90)))),
                    child: Icon(
                      CupertinoIcons.right_chevron,
                      size: 25,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
