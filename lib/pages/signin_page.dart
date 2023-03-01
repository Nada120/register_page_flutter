import 'package:flutter/material.dart';
import 'package:test_two/pages/home_page.dart';
import 'package:test_two/pages/register_page.dart';
import '../comp.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  
  // These variables for saving the data that come from user that used in the controller 
  var email = TextEditingController();
  var password = TextEditingController();
  var keyForm = GlobalKey<FormState>();
  //////////////////////////////////////////////////////////////////////////////////////
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      // so we can scoller the screen if the content is bigger than the screen
      body: SingleChildScrollView(
        // put column widget to apply more widgets in vertical direction
        child: Form(
          key: keyForm,
          child: Column(
            children: [
              const MyClipperComp(text: 'Login'),
              SizedBox(
                height: MediaQuery.of(context).size.height/10,
              ),
              MyTextFormField(
                text: 'Email',
                keyType: TextInputType.emailAddress,
                icon: Icons.email_outlined,
                controller: email,
                validator: (value) {
                  // if the field is empty will show error message
                  if (value!.isEmpty) {
                    return 'This Field Cannot Be Empty';
                  } 
                  // It is checking the email address format to match the (value) -> "input"
                  else if (RegExp('\\S+@\\S+\\.\\S+').hasMatch(value)) {
                    return 'Invalid Email Address';
                  }
                  // if everything okay will return null "No Errors" 
                  return null;
                },
              ),
              MyPasswordTextField(
                name: 'Password', 
                icon: Icons.lock_outline,
                validator: (value) {
                  // if the field is empty will show error message
                  if (value!.isEmpty) {
                    return 'This Field Cannot Be Empty';
                  } 
                  // If the length of the password is less than 8 show Error Message
                  else if (value.length < 8) {
                    return 'The Password So Short Less than 8';
                  } 
                  // If the length of the password is greater than 15 show Error Message
                  else if (value.length >= 15) {
                    return 'The Password So Long greater than 15';
                  }
                  // if everything okay will return null "No Errors" 
                  return null;
                }, 
                controller: password,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height/10,
              ),
              Padding(
                // To make space between the button and the edge of the screene
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                // A widget make a button
                child: ElevatedButton(
                  onPressed: () {
                    // checking the current state if there no errors then implements if body  
                    if (keyForm.currentState!.validate()) {
                      // will replace the sigin page to the home page 
                      Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) => const HomePage(), 
                      ));
                    }
                    // There is an error so print this statement
                    else {
                      debugPrint('##### There is an Error');
                    }
                  },
                  // To change the shape of the button
                  style: ElevatedButton.styleFrom(
                    // To change the shape of the button
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    // To set the width & height of the button
                    backgroundColor: Colors.purple,
                    // change the background color of the button
                    minimumSize: const Size(double.infinity, 60),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Padding(
                // To make space between the button and the edge of the screen
                padding: const EdgeInsets.symmetric(horizontal: 30),
                // A widget make a button
                child: ElevatedButton(
                  onPressed: () {
                    // navigate to the home page but the signin page still exist
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => const RegisterPage(), 
                    ));
                  },
                  // To change the shape of the button
                  style: ElevatedButton.styleFrom(
                    // To change the shape of the button
                    shape: RoundedRectangleBorder(
                      // To set the width & height of the button
                      borderRadius: BorderRadius.circular(10),
                      // Set the size of the border and the color of it
                      side: const BorderSide(
                        color: Colors.purple,
                        width: 1,
                      ),
                    ),
                    // Set the background color of button to white
                    backgroundColor: Colors.white,
                    // Change the width & height of the button
                    minimumSize: const Size(double.infinity, 60),
                  ),
                  child: const Text(
                    'Register',
                    style: TextStyle(
                      color: Colors.purple,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}