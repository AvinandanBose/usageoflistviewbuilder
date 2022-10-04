import 'package:flutter/material.dart';
import 'package:usageoflistviewbuilder/contacts.dart';
import 'package:usageoflistviewbuilder/dashboard.dart';
import 'package:usageoflistviewbuilder/privacy_policy.dart';
import 'package:usageoflistviewbuilder/send_feedback.dart';
import 'package:usageoflistviewbuilder/settings.dart';

import 'Event.dart';

class MenuItemExp extends StatefulWidget {
  const MenuItemExp({Key? key}) : super(key: key);

  @override
  State<MenuItemExp> createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItemExp> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return const Dashboard();
              }),
            );
          },
          child: Padding(
            padding:
                const EdgeInsets.only(top: 30.0, right: 100.0, bottom: 10.0),
            child: Row(
              children: const <Widget>[
                Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.dashboard_outlined,
                    size: 20,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Dashboard',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        const Divider(
          thickness: 1,
          endIndent: 0,
          indent: 0,
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return const Contacts();
              }),
            );
          },
          child: Padding(
            padding:
                const EdgeInsets.only(top: 10.0, right: 120.0, bottom: 10.0),
            child: Row(
              children: const <Widget>[
                Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.people_alt_outlined,
                    size: 20,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Contact',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        const Divider(
          thickness: 1,
          endIndent: 0,
          indent: 0,
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return const EventsEvent();
              }),
            );
          },
          child: Padding(
            padding:
                const EdgeInsets.only(top: 10.0, right: 130.0, bottom: 10.0),
            child: Row(
              children: const <Widget>[
                Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.event,
                    size: 20,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Event',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        const Divider(
          thickness: 1,
          endIndent: 0,
          indent: 0,
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return const Settings();
              }),
            );
          },
          child: Padding(
            padding:
                const EdgeInsets.only(top: 10.0, right: 110.0, bottom: 10.0),
            child: Row(
              children: const <Widget>[
                Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.settings_outlined,
                    size: 20,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Settings',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        const Divider(
          thickness: 1,
          endIndent: 0,
          indent: 0,
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return const PrivacyPolicy();
              }),
            );
          },
          child: Padding(
            padding:
                const EdgeInsets.only(top: 10.0, right: 70.0, bottom: 10.0),
            child: Row(
              children: const <Widget>[
                Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.privacy_tip_outlined,
                    size: 20,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Privacy policy',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        const Divider(
          thickness: 1,
          endIndent: 0,
          indent: 0,
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return const SendFeedback();
              }),
            );
          },
          child: Padding(
            padding:
                const EdgeInsets.only(top: 10.0, right: 70.0, bottom: 10.0),
            child: Row(
              children: const <Widget>[
                Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.feedback_outlined,
                    size: 20,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Send Feedback',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
