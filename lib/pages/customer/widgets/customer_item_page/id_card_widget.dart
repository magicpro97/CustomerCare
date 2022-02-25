import 'dart:typed_data';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class IDCardWidget extends StatefulWidget {
  final String title;
  final String? url;
  final Function(XFile?) onTap;

  const IDCardWidget({
    Key? key,
    required this.onTap,
    this.url,
    required this.title,
  }) : super(key: key);

  @override
  State<IDCardWidget> createState() => _IDCardWidgetState();
}

class _IDCardWidgetState extends State<IDCardWidget> {
  final _picker = ImagePicker();
  XFile? _selectedImage;

  void _onTap() async {
    final image = await _picker.pickImage(source: ImageSource.gallery);
    widget.onTap(image);

    setState(() {
      _selectedImage = image;
    });
  }

  Future<void> getLostData() async {
    final response = await _picker.retrieveLostData();
    if (response.isEmpty) {
      return;
    }
    if (response.files != null) {
      for (final XFile file in response.files!) {
        //_handleFile(file);
      }
    } else {
      //_handleError(response.exception);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: DottedBorder(
        child: SizedBox(
          width: double.infinity,
          height: 150.0.h,
          child: widget.url == null && _selectedImage == null
              ? IDCardPlaceholder(
                  title: widget.title,
                )
              : _selectedImage == null
                  ? Image.network(
                      widget.url!,
                      fit: BoxFit.contain,
                    )
                  : FutureBuilder<Uint8List>(
                      future: _selectedImage!.readAsBytes(),
                      builder: (_, snapshots) => snapshots.hasData
                          ? Image.memory(snapshots.data!)
                          : Container(),
                    ),
        ),
      ),
    );
  }
}

class IDCardPlaceholder extends StatelessWidget {
  final String title;

  const IDCardPlaceholder({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.image),
        Text(title),
      ],
    );
  }
}
