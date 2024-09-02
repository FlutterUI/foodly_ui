import 'package:flutter/material.dart';

import '../../constants.dart';

import '../../components/welcome_text.dart';

class ResetEmailSentScreen extends StatelessWidget {
  const ResetEmailSentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Forgot Password"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const WelcomeText(
                title: "Reset email sent",
                text:
                    "We have sent a instructions email to \ntheflutterway@email.com."),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Send again"),
            ),
          ],
        ),
      ),
    );
  }
}
