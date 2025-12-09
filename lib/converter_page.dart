import 'package:flutter/material.dart';

class ConverterPage extends StatefulWidget {
  const ConverterPage({super.key});

  @override
  State<StatefulWidget> createState() => _CoverterPageState();

}
class _CoverterPageState extends State {
  //this state class is always private
  TextEditingController nameController = TextEditingController();
  String name = "";
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
          height: 300,
          width: 300,
          child: Card(
            color: const Color.fromARGB(255, 169, 191, 209),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: nameController,
                    keyboardType: TextInputType.name,
                    //obscureText: true,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      errorText: errorText,
                      hintText: "Write Something",
                      labelText: "Name",
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (nameController.text.isEmpty) {
                          errorText = "Field is empty!";
                        } else {
                          name = nameController.text;
                        }
                      });
                    },
                    child: Text("Submit"),
                  ),
                  SizedBox(height: 30),
                  Text("Name is: $name"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

           