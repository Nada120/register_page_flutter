import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class MyClipperComp extends StatelessWidget {
  
  // To set the title when using the widget
  final String text;
  const MyClipperComp({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    // It is build in package 
    return ClipPath(
      // set the type the clipper shape
      clipper: WaveClipperTwo(),
      child: Container(
        width: double.infinity,
        height: 250,
        // set the color of background to purple color
        color: Colors.purple,
        // widget to show text & set style to the text
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              // to make the color of the text white
              color: Colors.white,
              // to change the font size of the text to e big
              fontSize: 40,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class MyTextFormField extends StatefulWidget {
  
  // using this variables to set their values 
  final IconData icon;
  final String text;
  final TextEditingController controller;
  String? Function(String?)? validator;
  TextInputType? keyType;
  bool obscure;
  //////////////////////////////////////////
  
  // Default constractor
  MyTextFormField({
    super.key,
    required this.text,
    required this.icon,
    required this.controller,
    this.obscure = false,
    required this.validator,
    required this.keyType,
  });

  @override
  State<MyTextFormField> createState() => _MyTextFormFieldState();
}

class _MyTextFormFieldState extends State<MyTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 7),
      child: TextFormField(
        // to set the values that come from the constractor
        keyboardType: widget.keyType,
        obscureText: widget.obscure,
        validator: widget.validator,
        ///////////////////////////////////////////////////
        style: const TextStyle(
          color: Colors.purple,
        ),
        // to control the decoration of the textForm
        decoration: InputDecoration(
          // to set background color to the TextFormField
          filled: true,
          fillColor: const Color.fromARGB(255, 237, 237, 237),
          // set the decoration of the border
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.purple),
          ),
          // whan the text field is focused this border will display
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.purple),
          ),
          // set icon to left direction
          prefixIcon: Icon(
            // set value of the icon that come from the constractor 
            widget.icon,
            color: Colors.purple,
          ),
          // to put a title to the text field
          labelText: widget.text,
          // the style of the title text
          labelStyle: const TextStyle(color: Colors.purple),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class MyPasswordTextField extends StatefulWidget {
  
  // using this variables to set their values 
  final String name;
  final IconData icon;
  String? Function(String?)? validator;
  final TextEditingController controller;
  //////////////////////////////////////////
  
  // Default constractor
  MyPasswordTextField({
    super.key,
    required this.name,
    required this.icon,
    required this.validator,
    required this.controller,
  });

  @override
  State<MyPasswordTextField> createState() => _MyPasswordTextFieldState();
}

class _MyPasswordTextFieldState extends State<MyPasswordTextField> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 7),
      child: TextFormField(
        controller: widget.controller,
        validator: widget.validator,
        obscureText: !isVisible ? true : false,
        style: const TextStyle(
          color: Colors.purple,
        ),
        // to control the decoration of the textForm
        decoration: InputDecoration(
          // to set background color to the TextFormField
          filled: true,
          fillColor: const Color.fromARGB(255, 237, 237, 237),
          //////////////////////////////////////////////////////
          // Put icon in the right direction
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                isVisible = !isVisible;
              });
            },
            // Change the icon when pressing icon
            icon: Icon(!isVisible ? Icons.visibility : Icons.visibility_off),
            // Change the color when pressing icon
            color: !isVisible ? Colors.grey : Colors.purple,
          ),
          // set the decoration of the border
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.purple),
          ),
          // whan the text field is focused this border will display
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.purple),
          ),
          // set icon to left direction
          prefixIcon: Icon(
            widget.icon,
            color: Colors.purple,
          ),
          // to put a title to the text field
          labelText: widget.name,
          // the style of the title text
          labelStyle: const TextStyle(color: Colors.purple),
        ),
      ),
    );
  }
}
