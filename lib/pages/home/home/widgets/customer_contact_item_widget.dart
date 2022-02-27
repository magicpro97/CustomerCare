import 'package:customer_care/dimen.dart';
import 'package:customer_care/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:url_launcher/url_launcher.dart';

import 'customer_contact_item.dart';

class CustomerContactItemWidget extends StatelessWidget {
  final CustomerContactItem item;

  const CustomerContactItemWidget({
    Key? key,
    required this.item,
  }) : super(key: key);

  void _onPhoneCallPressed() async {
    try {
      await launch('tel:${item.phone}');
    } catch (e) {
      EasyLoading.showError(S.current.common_error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kPaddingTop),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            item.tagColor ?? Colors.white,
            Colors.white,
          ],
        ),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(item.name),
        subtitle: Text(timeago.format(item.lastContactDate)),
        trailing: IconButton(
          onPressed: _onPhoneCallPressed,
          icon: const Icon(Icons.phone),
        ),
      ),
    );
  }
}
