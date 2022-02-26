import 'package:cached_network_image/cached_network_image.dart';
import 'package:customer_care/pages/customer/upload_id_card/id_card_placeholder.dart';
import 'package:customer_care/pages/customer/upload_id_card/id_card_side.dart';
import 'package:customer_care/pages/customer/upload_id_card/upload_id_card_bloc.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class IDCardWidget extends StatefulWidget {
  final String title;
  final String? url;
  final IdCardSide side;
  final Function(String) onIdCardLoaded;
  final Function() onIdCardUploadStarted;

  const IDCardWidget({
    Key? key,
    this.url,
    required this.title,
    required this.side,
    required this.onIdCardLoaded,
    required this.onIdCardUploadStarted,
  }) : super(key: key);

  @override
  State<IDCardWidget> createState() => _IDCardWidgetState();
}

class _IDCardWidgetState extends State<IDCardWidget> {
  final _picker = ImagePicker();
  XFile? _selectedImage;
  Image? _memoryImage;

  void _onTap() async {
    final image = await _picker.pickImage(source: ImageSource.gallery);

    setState(() {
      _selectedImage = image;
    });

    if (_selectedImage != null) {
      final data = await _selectedImage!.readAsBytes();
      _memoryImage = Image.memory(data);

      context
          .read<UploadIdCardBloc>()
          .add(UploadIdCardUploadEvent(_selectedImage!, widget.side));

      widget.onIdCardUploadStarted();
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
            child: BlocConsumer<UploadIdCardBloc, UploadIdCardState>(
                listener: (context, state) {
              if (state is UploadIdCardUploadedSuccess) {
                context
                    .read<UploadIdCardBloc>()
                    .add(UploadIdCardGetDownloadUrlEvent(state.filename));
              } else if (state is UploadIdCardGetDownloadUrlSuccess) {
                widget.onIdCardLoaded(state.url);
              }
            }, builder: (context, state) {
              return Stack(
                alignment: Alignment.center,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      if (widget.url == null)
                        IDCardPlaceholder(title: widget.title),
                      if (widget.url != null)
                        CachedNetworkImage(
                          imageUrl: widget.url!,
                          placeholder: (context, url) =>
                              const CircularProgressIndicator.adaptive(),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                          fit: BoxFit.cover,
                        ),
                      if (_selectedImage != null) _memoryImage!,
                    ],
                  ),
                  if (state is UploadIdCardUploading)
                    Positioned.fill(
                      child: Container(
                        color: Colors.white.withOpacity(0.7),
                        child: Center(
                          child: CircularProgressIndicator(
                            value: state.progress,
                          ),
                        ),
                      ),
                    ),
                ],
              );
            }),
          ),
        ));
  }
}
