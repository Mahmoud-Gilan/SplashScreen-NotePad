import 'package:flutter/material.dart';

Widget MyTextFormField({
  required String labelText,
  required IconData prefixIcon,
  required double padding,
  required TextInputType keyboardType,

  IconData? suffixIcon,
  bool obscureText= false,
})
{
  return Padding(
    padding:  EdgeInsets.fromLTRB(padding, 0, padding, 0),

    child: TextFormField(
      style: TextStyle(color: Colors.black),
      obscureText: obscureText?? false,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50),
          borderSide: new BorderSide(
            color: Colors.black,
          ),
      ),
        labelText: labelText,
        prefixIcon: Icon(prefixIcon),
        suffixIcon: suffixIcon !=null
            ?IconButton( onPressed:(){
        },
            icon: Icon(
              suffixIcon,
            ))
            : null,
      ),
    ),
  );
}



