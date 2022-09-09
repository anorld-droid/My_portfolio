import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:url_launcher/url_launcher.dart';

class DropDownMenu extends StatefulWidget {
  const DropDownMenu({Key? key}) : super(key: key);

  @override
  State<DropDownMenu> createState() => _DropDownMenuState();
}

class _DropDownMenuState extends State<DropDownMenu> {
  late _MyController conn;
  int selectedValue = 1;
  @override
  void initState() {
    super.initState();
    conn = _MyController(this);
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return DropdownButton(
        dropdownColor: Colors.black,
        value: selectedValue,
        items: [
          DropdownMenuItem(
            value: 1,
            onTap: () {},
            child: Text('Contacts',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: width > 650
                        ? 32
                        : width > 500
                            ? 24
                            : 16,
                    fontFamily: 'Lobster')),
          ),
          DropdownMenuItem(
            value: 2,
            onTap: (() => conn.launchPhoneDialer()),
            child: Text('Phone Call',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: width > 500 ? 24 : 16,
                    fontFamily: 'Lobster')),
          ),
          DropdownMenuItem(
              value: 3,
              onTap: () => conn.launchLink("https://twitter.com/anorld_droid"),
              child: Text('Twitter',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: width > 500 ? 24 : 16,
                      fontFamily: 'Lobster'))),
          DropdownMenuItem(
              value: 4,
              onTap: () => conn
                  .launchLink("https://wa.me/+254713679320?text=Hey Anold, "),
              child: Text('Whatsapp',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: width > 500 ? 24 : 16,
                      fontFamily: 'Lobster'))),
        ],
        onChanged: (int? value) {});
  }
}

class _MyController {
  _DropDownMenuState state;
  _MyController(this.state);
  Future<void> launchPhoneDialer() async {
    final Uri phoneUri = Uri(scheme: "tel", path: "+254785142970");
    try {
      if (await canLaunchUrl(phoneUri)) {
        await launchUrl(phoneUri);
      }
    } catch (error) {
      throw ("Cannot dial");
    }
  }

  launchLink(String link) async {
    String url = link;
    Uri urlEncoded = Uri.parse(url);
    if (await canLaunchUrl(urlEncoded)) {
      await launchUrl(urlEncoded);
    } else {
      throw "Could not launch $url";
    }
  }
}
