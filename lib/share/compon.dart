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
class MyClipper extends CustomClipper <Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height / 1.25);
    path.cubicTo(
        size.width / 2 * 0.6,
        size.height * 0.5,
        size.width * 2 / 2,
        size.height * 1.2,
        size.width * 1.2,
        size.height / 1.5);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;

}

Future MyNavigator ({
  required BuildContext context ,
  required Widget widget,
}){
  return Navigator.push(
    context,
    MaterialPageRoute(builder: (context){
      return widget ;
    }),
  );
}

