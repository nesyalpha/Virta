import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class kamera extends StatefulWidget {
  const kamera({super.key});
  static const routeName = 'data';

  @override
  State<kamera> createState() => _kameraState();
}

class _kameraState extends State<kamera> {
  late CameraController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Measure Me!'),
        ),
        body: FutureBuilder(
            future: initializationCamera(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return Stack(
                  alignment: Alignment.center,
                  children: [
                    AspectRatio(
                      aspectRatio: 3 / 4,
                      child: CameraPreview(controller),
                    ),
                    InkWell(
                      onTap: () => onTakePicture(),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                      ),
                    )
                  ],
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            }));
  }

  Future<void> initializationCamera() async {
    var cameras = await availableCameras();
    controller = CameraController(
      cameras[EnumCameraDescription.back.index],
      ResolutionPreset.medium,
      imageFormatGroup: ImageFormatGroup.yuv420,
    );
    await controller.initialize();
  }

  void onTakePicture() async {
    await controller.takePicture().then((XFile xFile) {
      if (mounted) {
        if (xFile != null) {
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    title: Text('Ambil Gambar'),
                    content: SizedBox(
                        width: 200,
                        height: 200,
                        child: CircleAvatar(
                          backgroundImage: Image.file(
                            File(xFile.path),
                          ).image,
                        )),
                  ));
        }
      }

      return;
    });
  }
}

enum EnumCameraDescription { front, back }
