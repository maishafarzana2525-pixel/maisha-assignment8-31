import 'package:flutter/material.dart';
import 'package:project_maisha_031/widgets/input_field.dart';

class ConverterPage extends StatefulWidget {
  const ConverterPage({super.key});

  @override
  State<StatefulWidget> createState() => _ConverterPageState();
}

class _ConverterPageState extends State<ConverterPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  TextEditingController countryController = TextEditingController();

  String name = "";
  String pass = "";
  String email = "";
  String contact = "";
  String country = "";
  String? errorText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Converter"),
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: SizedBox(
          height: 600,
          width: 500,
          child: Card(
            color: const Color.fromARGB(255, 169, 191, 209),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 30),
                  InputField(
                    icon: Icons.person,
                    controller: nameController,
                    keyboardType: TextInputType.text,
                    label: "Name",
                    errorText: errorText,
                  ),
                  SizedBox(height: 20),
                  InputField(
                    icon: Icons.email,
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    label: "Email",
                    errorText: errorText,
                  ),
                  SizedBox(height: 20),
                  InputField(
                    icon: Icons.lock,
                    controller: passController,
                    keyboardType: TextInputType.visiblePassword,
                    hint: "Enter your password",
                    label: "Password",
                    errorText: errorText,
                  ),
                  SizedBox(height: 20),
                  InputField(
                    icon: Icons.phone,
                    controller: contactController,
                    keyboardType: TextInputType.phone,
                    label: "Contact Info",
                    errorText: errorText,
                  ),
                  SizedBox(height: 20),
                  InputField(
                    icon: Icons.public,
                    controller: countryController,
                    keyboardType: TextInputType.text,
                    label: "Country",
                    errorText: errorText,
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (nameController.text.isEmpty ||
                            emailController.text.isEmpty ||
                            passController.text.isEmpty ||
                            contactController.text.isEmpty ||
                            countryController.text.isEmpty) {
                          errorText = "Field is empty!";
                        } else {
                          errorText = null;
                          name = nameController.text;
                          email = emailController.text;
                          pass = passController.text;
                          contact = contactController.text;
                          country = countryController.text;
                        }
                      });
                    },
                    child: Text("Submit"),
                  ),
                  SizedBox(height: 30),
                  Text("Name: $name"),
                  Text("Email: $email"),
                  Text("Contact: $contact"),
                  Text("Country: $country"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
