import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // set the title of the app to the text 'Register App'
      title: 'Register App',
      home: RegisterPage(),
    );
  }

}

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  
  // to change the visibility of the text in password field
  bool isVisible1 = false;
  bool isVisible2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        // so we can scoller the screen if the content is bigger than the screen
        body: SingleChildScrollView(
          // put column widget to apply more widgets in vertical direction 
          child: Column(
            children: [
              ClipPath(
                clipper: WaveClipperTwo(),
                child: Container(
                  width: double.infinity,
                  height: 250,
                  // set the color of background to purple color 
                  color: Colors.purple,
                  // widget to show text & set style to the text 
                  child: const Center(
                    child: Text(
                      'Register',
                      style: TextStyle(
                        // to make the color of the text white
                        color: Colors.white,
                        // to change the font size of the text to e big  
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50,),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                // to set background color to the TextFormField and the radius of the border
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color.fromARGB(26, 116, 110, 110),
                ),
                child: TextFormField(
                  style: const TextStyle(
                    color: Colors.purple,
                  ),
                  // to control the decoration of the textForm 
                  decoration: const InputDecoration(
                    // remove the border 
                    border: InputBorder.none,
                    // set icon to left direction
                    prefixIcon: Icon(
                      Icons.email_outlined, 
                      color: Colors.purple,
                    ),
                    // to put a title to the text field 
                    labelText: 'Email',
                    // the style of the title text 
                    labelStyle: TextStyle(
                      color: Colors.purple
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                // to set background color to the TextFormField and the radius of the border
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color.fromARGB(26, 116, 110, 110),
                ),
                child: TextFormField(
                  style: const TextStyle(
                    color: Colors.purple,
                  ),
                  // to control the decoration of the textForm 
                  decoration: const InputDecoration(
                    // remove the border 
                    border: InputBorder.none,
                    // set icon to left direction
                    prefixIcon: Icon(
                      Icons.person_outline, 
                      color: Colors.purple,
                    ),
                    // to put a title to the text field 
                    labelText: 'Full Name',
                    // the style of the title text 
                    labelStyle: TextStyle(
                      color: Colors.purple
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                // to set background color to the TextFormField and the radius of the border
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color.fromARGB(26, 116, 110, 110),
                ),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  style: const TextStyle(
                    color: Colors.purple,
                  ),
                  // to control the decoration of the textForm 
                  decoration: const InputDecoration(
                    // remove the border 
                    border: InputBorder.none,
                    // set icon to left direction
                    prefixIcon: Icon(
                      Icons.phone_outlined, 
                      color: Colors.purple,
                    ),
                    // to put a title to the text field 
                    labelText: 'Phone Number',
                    // the style of the title text 
                    labelStyle: TextStyle(
                      color: Colors.purple
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                // to set background color to the TextFormField and the radius of the border
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color.fromARGB(26, 116, 110, 110),
                ),
                child: TextFormField(
                  obscureText: !isVisible1? true : false,
                  style: const TextStyle(
                    color: Colors.purple,
                  ),
                  // to control the decoration of the textForm 
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: (){
                        setState(() {
                          isVisible1 = !isVisible1;
                        });
                      },
                      icon: Icon(!isVisible1? Icons.visibility : Icons.visibility_off),
                      color: !isVisible1? Colors.grey : Colors.purple,
                    ),
                    // remove the border 
                    border: InputBorder.none,
                    // set icon to left direction
                    prefixIcon: const Icon(
                      Icons.lock_outline, 
                      color: Colors.purple,
                    ),
                    // to put a title to the text field 
                    labelText: 'Password',
                    // the style of the title text 
                    labelStyle: const TextStyle(
                      color: Colors.purple
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                // to set background color to the TextFormField and the radius of the border
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color.fromARGB(26, 116, 110, 110),
                ),
                child: TextFormField(
                  obscureText: !isVisible2? true : false,
                  style: const TextStyle(
                    color: Colors.purple,
                  ),
                  // to control the decoration of the textForm 
                  decoration: InputDecoration(
                    // remove the border 
                    border: InputBorder.none,
                    suffixIcon: IconButton(
                      onPressed: (){
                        setState(() {
                          isVisible2 = !isVisible2;
                        });
                      },
                      icon: Icon(!isVisible2? Icons.visibility : Icons.visibility_off),
                      color: !isVisible2? Colors.grey : Colors.purple,
                    ),
                    // set icon to left direction
                    prefixIcon: const Icon(
                      Icons.vpn_key_outlined, 
                      color: Colors.purple,
                    ),
                    // to put a title to the text field 
                    labelText: 'Comfirm Password',
                    // the style of the title text 
                    labelStyle: const TextStyle(
                      color: Colors.purple
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30,),
              Padding(
                // To make space between the button and the edge of the screene
                padding: const EdgeInsets.symmetric(horizontal: 30),
                // A widget make a button
                child: ElevatedButton(
                  onPressed: (){},
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
                    'Register',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Padding(
                // To make space between the button and the edge of the screen
                padding: const EdgeInsets.symmetric(horizontal: 30),
                // A widget make a button
                child: ElevatedButton(
                  onPressed: (){},
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
                    'Login',
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
      );
  }
}