//import 'dart:io';
import 'package:flutter/material.dart';
//import 'package:image_picker/image_picker.dart';
import '../../core/constants/colors.dart';
import '../../services/auth_services.dart';
import '../auth/otp_screen.dart'; // Import the OtpScreen

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _idNumberController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _address = TextEditingController();
  final TextEditingController _language = TextEditingController();
  //File? _idImage;

  // Future<void> _pickImage() async {
  //   final pickedFile = await ImagePicker().pickImage(source: ImageSource.camera);
  //   if (pickedFile != null) {
  //     setState(() {
  //       _idImage = File(pickedFile.path);
  //     });
  //   }
  // }

  void _submit() async {
    if (_formKey.currentState!.validate()) {
      // if (_idImage == null) {
      //   ScaffoldMessenger.of(context).showSnackBar(
      //     SnackBar(content: Text("Please upload your ID photo")),
      //   );
      //   return;
      // }
      // Navigator.pushNamed(context, AppRoutes.otpVerification);

      final response = await AuthService.registerUser(
          _nameController.text,
          _address.text,
          _language.text,
          _idNumberController.text,
          _phoneController.text);

      if (response.statusCode == 201) {
        print("Successfully registered");
       
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => OtpScreen(phoneNumber: _phoneController.text),
          ),
        );
      } else {
        print("Error signing up");
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Signup failed. Please try again.")),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign Up")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: "Full Name"),
                validator: (value) => value!.isEmpty ? "Enter your name" : null,
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _address,
                decoration: InputDecoration(labelText: " Address"),
                validator: (value) => value!.isEmpty ? "Enter your address" : null,
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _language,
                decoration: InputDecoration(labelText: "Language"),
                validator: (value) => value!.isEmpty ? "Enter your language" : null,
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _idNumberController,
                decoration: InputDecoration(labelText: "National ID Number"),
                validator: (value) => value!.isEmpty ? "Enter your ID number" : null,
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _phoneController,
                decoration: InputDecoration(labelText: "Phone Number"),
                keyboardType: TextInputType.phone,
                validator: (value) => value!.isEmpty ? "Enter your phone number" : null,
              ),
              // SizedBox(height: 24),
              // Text("Upload ID Photo", style: TextStyle(fontWeight: FontWeight.bold)),
              // SizedBox(height: 8),
              // _idImage != null
              //     ? Image.file(_idImage!, height: 150)
              //     : Text("No image selected"),
              // TextButton.icon(
              //   onPressed: _pickImage,
              //   icon: Icon(Icons.camera_alt, color: zbGreen),
              //   label: Text("Take Photo", style: TextStyle(color: zbGreen)),
              // ),
              SizedBox(height: 32),
              Center(
                child: ElevatedButton(
                  onPressed: _submit,
                  child: Text("Submit"),
                  style: ElevatedButton.styleFrom(backgroundColor: zbGreen),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}