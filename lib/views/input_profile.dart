import 'package:flutter/material.dart';

class InputProfile extends StatefulWidget{

  const InputProfile({super.key});

  @override
  State<InputProfile> createState() => _InputProfileState();
}

class _InputProfileState extends State<InputProfile>
{
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dhihya Rayyanda - Input Profile'),
        backgroundColor: Colors.lightBlueAccent,
        foregroundColor: Colors.white,
      ),
      body: Form(
        key: _formKey,
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              //input field
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Masukkan NIM Anda",
                  labelText: "NIM",
                  icon: Icon(Icons.key)
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Masukkan nama lengkap Anda",
                  labelText: "Nama Lengkap",
                  icon: Icon(Icons.people)
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Masukkan Tempat Lahir Anda",
                  labelText: "Tempat Lahir",
                  icon: Icon(Icons.home)
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Masukkan Tanggal Lahir Anda",
                  labelText: "Tanggal Lahir",
                  icon: Icon(Icons.calendar_month)
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Masukkan Alamat Anda",
                  labelText: "Alamat",
                  icon: Icon(Icons.room)
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    if(_formKey.currentState!.validate()){
                      //show dialog
                     //debugPrint("${_formKey.currentWidget.toString()}");
                    }
                  },
                  child: const Text("Submit"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}