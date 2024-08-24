import 'dart:io';
import 'package:encrypted_social_media_app/features/personalization/screens/profile/screens/messages/shared_images_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../../../common/widgets/list_tiles/settings_menu_tile.dart';
import '../../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../../utils/constants/sizes.dart';


class ChatSettingsPage extends StatefulWidget {


  const ChatSettingsPage({
    Key? key,

  }) : super(key: key);

  @override
  State<ChatSettingsPage> createState() => _ChatSettingsPageState();
}

class _ChatSettingsPageState extends State<ChatSettingsPage> {
  TextEditingController groupNameCon = TextEditingController();
  File? _selectedImage;

  Future<void> _openImagePicker() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _selectedImage = File(pickedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: TPrimaryHeaderContainer(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "@username",
                        style: const TextStyle(fontSize: 16.0),
                      ),
                      const SizedBox(height: 20),
                      GestureDetector(
                        onTap: _openImagePicker,
                        child: Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            shape: BoxShape.circle,
                          ),
                          child: _selectedImage != null
                              ? ClipOval(
                            child: Image.file(
                              _selectedImage!,
                              fit: BoxFit.cover,
                              width: 70,
                              height: 70,
                            ),
                          )
                              :ClipOval(
                            child: Image.network(
                              "",
                              fit: BoxFit.cover,
                              width: 70,
                              height: 70,
                            ),
                          )

                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverFillRemaining(
            child: Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TSectionHeading(
                    title: 'Group Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  const SizedBox(height: TSizes.spaceBtwItems / 3),
                  TSettingsMenuTile(
                    icon: Iconsax.gallery,
                    title: 'Shared images',
                    subtitle: 'shared images and files',
                    onTab: () {
                      Get.to(() => SharedImagesPage());
                    },
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems / 3),

                  const SizedBox(height: TSizes.spaceBtwItems / 3),
                  TSettingsMenuTile(
                    icon: Iconsax.notification,
                    title: 'Notification',
                    subtitle: 'mute notifications',
                    onTab: () {
                      Get.to(() => Container());
                    },
                  ),
                  const Spacer(),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text('Leave the Group'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
