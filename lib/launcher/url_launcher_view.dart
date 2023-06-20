import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

import 'circle_icon_button.dart';

const defaultPhoneNumber = '+1-555-010-999';

class UrlLauncherView extends StatefulWidget {
  const UrlLauncherView({super.key});

  @override
  State<UrlLauncherView> createState() => _UrlLauncherViewState();
}

class _UrlLauncherViewState extends State<UrlLauncherView> {
  bool _hasCallSupport = false;
  final Uri websiteUrl = Uri.parse('https://www.instagram.com/camillaveloni/');

  @override
  void initState() {
    super.initState();
    // check for phone call support
    // URL schemes are only supported if there are apps installed on
    //the device that can support them. For example, iOS simulators don't have a default
    //email or phone apps installed, so can't open tel: or mailto: links.
    canLaunchUrl(Uri(scheme: 'tel', path: defaultPhoneNumber))
        .then((bool result) {
      setState(() {
        _hasCallSupport = result;
      });
    });
  }

  void _phone() {
    if (_hasCallSupport == false) {
      print('Não disponivel');
      return;
    }
    final phoneUrl = Uri(scheme: 'tel', path: defaultPhoneNumber);
    _launchUri(phoneUrl);
  }

  String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((MapEntry<String, String> e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }

  void _email() {
    final emailUrl = Uri(
      scheme: 'mailto',
      path: 'cristinaveloni@gmail.com',
      query: encodeQueryParameters(<String, String>{'subject': '[Titulo]'}),
    );
    _launchUri(emailUrl);
  }

  void _website() {
    //  You can change how is going to open
    _launchUri(websiteUrl);
  }

  void _launchUri(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleIconButton(
            onTap: _phone,
            icon: const Icon(CupertinoIcons.phone_arrow_up_right,
                color: Colors.green, size: 24),
            containerColor: Colors.white,
          ),
          const SizedBox(
            width: 15,
          ),
          CircleIconButton(
            onTap: _email,
            icon: const Icon(CupertinoIcons.mail,
                color: Colors.black87, size: 24),
            containerColor: Colors.white,
          ),
          const SizedBox(
            width: 15,
          ),
          CircleIconButton(
            onTap: _website,
            icon:
                const Icon(Icons.open_in_browser, color: Colors.blue, size: 24),
            containerColor: Colors.white,
          )
        ],
      ),
    );
  }
}
