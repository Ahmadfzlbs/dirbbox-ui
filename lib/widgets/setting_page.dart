import 'package:dirbbox/constant.dart';
import 'package:dirbbox/service/auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {

  void _logout(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: const Text('Logout'),
        content: const Text('Are You Sure For Logout?'),
        actions: <CupertinoDialogAction>[
          CupertinoDialogAction(
            isDefaultAction: true,
            onPressed: () async {
              Navigator.pop(context);
            },
            child: const Text('No'),
          ),
          CupertinoDialogAction(
            isDestructiveAction: true,
            onPressed: () async {
              await AuthServices().signOut();
              Navigator.pop(context);
            },
            child: const Text('Yes'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Settings",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_horiz,
                          color: Color(0xFF21205B),
                          size: 24,
                        )),
                  ],
                ),
                ListTile(
                  leading: Icon(Icons.person_add, color: biruTua,),
                  title: Text("Add Account"),
                  onTap: (){},
                ),
                ListTile(
                  leading: Icon(Icons.lock, color: biruTua),
                  title: Text("Change Password"),
                  onTap: (){},
                ),
                ListTile(
                  leading: Icon(Icons.language, color: biruTua),
                  title: Text("Change Language"),
                  onTap: (){},
                ),
                ListTile(
                  leading: Icon(Icons.update, color: biruTua),
                  title: Text("Upgrade Plan"),
                  onTap: (){},
                ),
                ListTile(
                  leading: Icon(Icons.group_add, color: biruTua),
                  title: Text("Multiple Account"),
                  onTap: (){},
                ),
                const Divider(
                  height: 5,
                  color: Colors.grey,
                ),
                ListTile(
                  leading: Icon(Icons.logout, color: biruTua),
                  title: Text("Logout"),
                  onTap: () => _logout(context)
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
