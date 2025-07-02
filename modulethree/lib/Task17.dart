import 'package:flutter/material.dart';

void main() => runApp(const RegistrationApp());

class RegistrationApp extends StatelessWidget {
  const RegistrationApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const RegistrationForm());
  }
}

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({super.key});
  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Register")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: "Name"),
              ),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(labelText: "Email"),
                validator: (value) {
                  if (value == null || !value.contains("@")) {
                    return "Enter a valid email";
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _passController,
                obscureText: true,
                decoration: const InputDecoration(labelText: "Password"),
                validator: (value) {
                  if (value == null || value.length < 6) {
                    return "Password must be 6+ chars";
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: "Phone"),
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                child: const Text("Submit"),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Form Submitted")),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
