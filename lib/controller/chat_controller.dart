import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/models/message.dart';

class ChatController extends GetxController {
  var chatMessage = <Message>[].obs;
}
