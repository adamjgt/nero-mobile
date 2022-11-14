import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/email_controller.dart';

class EmailView extends GetView<EmailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EmailView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'EmailView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
