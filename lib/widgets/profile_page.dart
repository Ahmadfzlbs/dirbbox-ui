import 'package:dirbbox/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "My Profile",
                      style: TextStyle(
                          color: biruTua,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.more_horiz,
                          color: biruTua,
                        )),
                  ],
                ),
                SizedBox(height: 15),
                Container(
                  height: Get.height * 0.3,
                  width: Get.width,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: Colors.grey, blurRadius: 25.0)
                      ],
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white),
                  child: Stack(
                    alignment: AlignmentDirectional.topEnd,
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: [
                              CircleAvatar(
                                child: Image.asset("assets/images/profile.png"),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Ahmad Fauzi Lubis",
                                style: TextStyle(
                                    color: biruTua,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Mobile Developer",
                                style: TextStyle(
                                  color: biruTua,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(height: 13),
                              Text(
                                textAlign: TextAlign.center,
                                "Saya adalah seorang Flutter Developer yang bakat nya belum tersalurkan",
                                style: TextStyle(
                                  color: Color(0x9921205B),
                                  fontSize: 18,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                            width: 40,
                            height: 20,
                            decoration: ShapeDecoration(
                              color: Color(0xFFFF307B),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            child: Center(
                              child: Text(
                                "PRO",
                                style: TextStyle(color: Colors.white),
                              ),
                            )),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "My Folders",
                      style: TextStyle(
                          color: biruTua,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.add),
                            color: biruTua,
                            iconSize: 23),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.sort),
                            color: biruTua,
                            iconSize: 23),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_forward_ios),
                            color: biruTua,
                            iconSize: 23),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 110,
                      width: 150,
                      decoration: ShapeDecoration(
                        color: Color(0xFFEEF7FE),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.folder,
                                  color: Color(
                                    0xFF415EB6,
                                  ),
                                  size: 50,
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.more_vert),
                                    color: Color(0xFF415EB6)),
                              ],
                            ),
                            Text(
                              "Mobile Apps",
                              style: TextStyle(
                                  fontSize: 15, color: Color(0xFF415DB5)),
                            ),
                            Text(
                              "December 20.2020",
                              style: TextStyle(
                                  fontSize: 10, color: Color(0xFF415DB5)),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 110,
                      width: 150,
                      decoration: ShapeDecoration(
                        color: Color(0xFFFFFAEB),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.folder,
                                  color: Color(
                                    0xFFFFB110,
                                  ),
                                  size: 50,
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.more_vert),
                                    color: Color(0xFFFFB110)),
                              ],
                            ),
                            Text(
                              "SVG Icons",
                              style: TextStyle(
                                  fontSize: 15, color: Color(0xFFFFB110)),
                            ),
                            Text(
                              "December 20.2020",
                              style: TextStyle(
                                  fontSize: 10, color: Color(0xFFFFB110)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 110,
                      width: 150,
                      decoration: ShapeDecoration(
                        color: Color(0xFFFEEEEE),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.folder,
                                  color: Color(
                                    0xFFAC4040,
                                  ),
                                  size: 50,
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.more_vert),
                                    color: Color(0xFFAC4040)),
                              ],
                            ),
                            Text(
                              "Prototypes",
                              style: TextStyle(
                                  fontSize: 15, color: Color(0xFFAC4040)),
                            ),
                            Text(
                              "December 20.2020",
                              style: TextStyle(
                                  fontSize: 10, color: Color(0xFFAC4040)),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 110,
                      width: 150,
                      decoration: ShapeDecoration(
                        color: Color(0xFFF0FFFF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.folder,
                                  color: Color(
                                    0xFF23B0B0,
                                  ),
                                  size: 50,
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.more_vert),
                                    color: Color(0xFF23B0B0)),
                              ],
                            ),
                            Text(
                              "Kenangan",
                              style: TextStyle(
                                  fontSize: 15, color: Color(0xFF23B0B0)),
                            ),
                            Text(
                              "December 20.2020",
                              style: TextStyle(
                                  fontSize: 10, color: Color(0xFF23B0B0)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recent Uploads",
                      style: TextStyle(
                          color: biruTua,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.filter_alt_rounded),
                        color: biruTua,
                        iconSize: 23)
                  ],
                ),
                ListTile(
                  leading: CircleAvatar(
                    child: Image.asset("assets/images/doc.png"),
                  ),
                  title: Text("UJIKOM-Ahmadfzlbs.docx", style: TextStyle(fontSize: 15),),
                  subtitle: Text("November 22.2020", style: TextStyle(fontSize: 13),),
                  trailing: Text("300kb", style: TextStyle(color: Color(0xFF09921205B))),
                ),
                SizedBox(height: 25),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
