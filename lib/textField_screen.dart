import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class textFieldScreen extends StatefulWidget {
  const textFieldScreen({super.key});

  @override
  State<textFieldScreen> createState() => _textFieldScreenState();
}

class _textFieldScreenState extends State<textFieldScreen> {

  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email alanı boş bırakılamaz';
    }
    // Email formatını kontrol etmek için regex
    final regex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    if (!regex.hasMatch(value)) {
      return 'Geçerli bir e-posta giriniz';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField Screen"),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: _nameController,
                keyboardType: TextInputType.name,
                autofocus: true,
                decoration: InputDecoration(
                  hintText: "Ad-Soyad Girin",
                  border: OutlineInputBorder(),
                ),
                style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),
                textInputAction: TextInputAction.done,

              ),
              SizedBox(height: 15.0,),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: "Email",
                  border: OutlineInputBorder(),
                ),
                style: TextStyle(color: Colors.blueAccent,fontStyle: FontStyle.italic),
                validator: _validateEmail,
              ),
              SizedBox(height: 15.0,),
              TextField(
                controller: _phoneController,
                keyboardType: TextInputType.phone,
                maxLength: 10,
                decoration: InputDecoration(
                  hintText: "Telefon Numarası",
                  border: OutlineInputBorder(),
                ),
                style: TextStyle(color: Colors.green,decoration: TextDecoration.underline),
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              ),

              SizedBox(height: 15.0,),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState?.validate() ?? false) {
                // Form geçerli ise işlemleri yap
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Form geçerli')));
              }
            },
            child: Text('Gönder'),),

            ],
          ),
        ),
      ),
    );
  }
}
