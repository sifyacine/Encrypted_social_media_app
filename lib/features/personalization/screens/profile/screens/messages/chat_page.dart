import 'package:encrypted_social_media_app/features/personalization/screens/profile/screens/messages/shared_images_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:file_picker/file_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'dart:async';
import 'package:flutter_sound/flutter_sound.dart';

import 'chat_settings.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController messageController = TextEditingController();
  final FlutterSoundRecorder _audioRecorder = FlutterSoundRecorder();
  bool _isRecording = false;
  String? _audioPath;

  @override
  void initState() {
    super.initState();
    _initRecorder();
  }

  Future<void> _initRecorder() async {
    await _audioRecorder.openRecorder();  // Corrected method
    if (await Permission.microphone.request().isGranted) {
      // Microphone permission granted
    }
  }

  @override
  void dispose() {
    messageController.dispose();
    _audioRecorder.closeRecorder();  // Corrected method
    super.dispose();
  }

  void _sendMessage(String messageContent) {
    if (messageContent.isNotEmpty) {
      messageController.clear();
      // Logic to send the message
    }
  }

  void _sendImage(String imagePath) async {
    // Logic to upload the image and get a URL to send
  }

  void _sendFile(String filePath) async {
    // Logic to upload the file and get a URL to send
  }

  void _sendAudio(String audioPath) async {
    // Logic to upload the audio file and get a URL to send
  }

  void _startRecording() async {
    if (!_isRecording) {
      final String path = '/audio_${DateTime.now().millisecondsSinceEpoch}.aac';
      await _audioRecorder.startRecorder(toFile: path);
      setState(() {
        _isRecording = true;
        _audioPath = path;
      });
    }
  }

  void _stopRecording() async {
    if (_isRecording) {
      await _audioRecorder.stopRecorder();
      setState(() {
        _isRecording = false;
      });
      if (_audioPath != null) {
        _sendAudio(_audioPath!);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: InkWell(
          onTap: () {
            Get.to(() => SharedImagesPage());
          },
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: const AssetImage('assets/images/profile_image.jpg') as ImageProvider,
                radius: 20,
              ),
              const SizedBox(width: 10),
              const Text("@username"),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                children: [
                  // Placeholder for chat messages
                ],
              ),
            ),
            ChatInputField(
              controller: messageController,
              onSendPressed: () {
                if (messageController.text.isNotEmpty) {
                  _sendMessage(messageController.text);
                }
              },
              onImagePressed: () async {
                final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
                if (pickedFile != null) {
                  _sendImage(pickedFile.path);
                }
              },
              onFilePressed: () async {
                final result = await FilePicker.platform.pickFiles();
                if (result != null && result.files.single.path != null) {
                  _sendFile(result.files.single.path!);
                }
              },
              onVoicePressed: () {
                if (_isRecording) {
                  _stopRecording();
                } else {
                  _startRecording();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ChatInputField extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onSendPressed;
  final VoidCallback onImagePressed;
  final VoidCallback onFilePressed;
  final VoidCallback onVoicePressed;

  const ChatInputField({
    required this.controller,
    required this.onSendPressed,
    required this.onImagePressed,
    required this.onFilePressed,
    required this.onVoicePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      color: Colors.white,
      child: Row(
        children: <Widget>[
          PopupMenuButton<String>(
            icon: const Icon(Icons.add),
            onSelected: (value) {
              switch (value) {
                case 'Image':
                  onImagePressed();
                  break;
                case 'File':
                  onFilePressed();
                  break;
                case 'Voice':
                  onVoicePressed();
                  break;
              }
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'Image',
                child: ListTile(
                  leading: Icon(Icons.image),
                  title: Text('Send Image'),
                ),
              ),
              const PopupMenuItem<String>(
                value: 'File',
                child: ListTile(
                  leading: Icon(Icons.attach_file),
                  title: Text('Send File'),
                ),
              ),
              const PopupMenuItem<String>(
                value: 'Voice',
                child: ListTile(
                  leading: Icon(Icons.mic),
                  title: Text('Send Voice Message'),
                ),
              ),
            ],
          ),
          Expanded(
            child: TextField(
              controller: controller,
              decoration: const InputDecoration(
                hintText: 'Type a message',
                border: InputBorder.none,
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.send),
            onPressed: onSendPressed,
          ),
        ],
      ),
    );
  }
}

class ChatMessage {
  final String sender;
  final String content;
  final String type;
  final bool isMine;
  final String? imageUrl;
  final String? fileUrl;

  ChatMessage({
    required this.sender,
    required this.content,
    required this.type,
    required this.isMine,
    this.imageUrl,
    this.fileUrl,
  });

  factory ChatMessage.fromJson(Map<String, dynamic> json) {
    return ChatMessage(
      sender: json['sender'],
      content: json['content'],
      type: json['type'],
      isMine: json['isMine'],
      imageUrl: json['imageUrl'],
      fileUrl: json['fileUrl'],
    );
  }
}
