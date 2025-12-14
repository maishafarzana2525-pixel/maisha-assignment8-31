import 'package:flutter/material.dart';

class InputField extends StatelessWidget{
  final controller, keyboardType, hint, label, errorText, icon ;
  const InputField({super.key, this.controller, this.keyboardType, this.label, this.hint,
  this.errorText, required this.icon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: keyboardType == TextInputType.visiblePassword? true:false,
      decoration: InputDecoration(
            errorText: errorText,
            hintText: hint,
            labelText: label,
            prefixIcon: Icon(Icons.person),
            border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
           ),
    );
   }
  }