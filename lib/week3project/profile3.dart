import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  String name = '';
  String mobile = '';
  String email = '';
  String? imagePath;

  @override
  void initState() {
    super.initState();
    loadUserData();
  }

  Future<void> loadUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      name = prefs.getString('name') ?? '';
      mobile = prefs.getString('mobile') ?? '';
      email = prefs.getString('email') ?? '';
      imagePath = prefs.getString('profileImage');
    });
  }

  Future<void> pickImage() async {
    final picked = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (picked != null) {
      final appDir = await getApplicationDocumentsDirectory();
      final fileName = basename(picked.path);
      final savedImage = await File(picked.path).copy('${appDir.path}/$fileName');

      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('profileImage', savedImage.path);

      setState(() {
        imagePath = savedImage.path;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to My Profile',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25)),
        backgroundColor: Colors.brown,
        centerTitle: true,
      ),
      backgroundColor: Colors.brown[300],
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 80),
            Container(
              height: 620,
              width: 350,
              color: Colors.white70,
              child: Column(
                children: [
                  const SizedBox(height: 15),
                  GestureDetector(
                    onTap: pickImage,
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: imagePath != null
                          ? FileImage(File(imagePath!))
                          : const NetworkImage('https://static.vecteezy.com/system/resources/thumbnails/028/627/081/small_2x/watercolor-anime-character-high-quality-illustration-vector-background-photo.jpg') as ImageProvider,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text('Tap image to edit', style: TextStyle(fontSize: 12)),
                  const SizedBox(height: 30),

                  buildProfileTile('👤', name, 31),
                  const SizedBox(height: 30),
                  buildProfileTile('📞', mobile, 25),
                  const SizedBox(height: 30),
                  buildProfileTile('✉', email, 20),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildProfileTile(String icon, String value, double textSize) {
    return Container(
      height: 100,
      width: 300,
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(14),
            width: 70,
            color: Colors.white12,
            child: Text(icon, style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            width: 230,
            color: Colors.brown[200],
            child: Text(value, style: TextStyle(fontSize: textSize, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}
