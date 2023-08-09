import 'package:dirbbox/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController searchC = TextEditingController();
  RefreshController refreshC = RefreshController();

  void refreshData() async {
    await Future.delayed(Duration(seconds: 2));
    refreshC.refreshCompleted();
  }

  void loadingData() async {
    await Future.delayed(Duration(seconds: 2));
    refreshC.loadComplete();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SmartRefresher(
          controller: refreshC,
          onLoading: loadingData,
          onRefresh: refreshData,
          header: MaterialClassicHeader(),
          footer: CustomFooter(
            builder: (context, mode) {
              if (mode == LoadStatus.idle) {
                return Text("pull up load");
              } else if (mode == LoadStatus.loading) {
                return CupertinoActivityIndicator();
              } else if (mode == LoadStatus.failed) {
                return Text("Load Failed!Click retry!");
              } else if (mode == LoadStatus.canLoading) {
                return Text("release to load more");
              }
              return Container(
                height: 55.0,
                child: Center(child: CircularProgressIndicator()),
              );
            },
          ),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Your Dirbbox',
                          style: TextStyle(
                            color: Color(0xFF21205B),
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              // AuthServices().signOut();
                            },
                            icon: Icon(Icons.grid_view_rounded)),
                      ],
                    ),
                    SizedBox(height: 10),
                    TextField(
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide (color: biruTua),
                          ),
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                          ),
                          labelText: 'Search Folder',
                          labelStyle: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w500),
                          prefixIcon: Icon(Icons.search, color: Colors.grey,),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text("Recent"),
                            SizedBox(width: 5),
                            IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_down))
                          ],
                        ),
                        IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                      ],
                    ),
                    SizedBox(height: 20),
                    Stack(
                      children: [
                        Column(
                          children: [
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
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
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
                                              fontSize: 15,
                                              color: Color(0xFF415DB5)),
                                        ),
                                        Text(
                                          "December 20.2020",
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Color(0xFF415DB5)),
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
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
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
                                              fontSize: 15,
                                              color: Color(0xFFFFB110)),
                                        ),
                                        Text(
                                          "December 20.2020",
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Color(0xFFFFB110)),
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
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
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
                                              fontSize: 15,
                                              color: Color(0xFFAC4040)),
                                        ),
                                        Text(
                                          "December 20.2020",
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Color(0xFFAC4040)),
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
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
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
                                          "Mobile Apps",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color(0xFF23B0B0)),
                                        ),
                                        Text(
                                          "December 20.2020",
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Color(0xFF23B0B0)),
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
                                    color: Color(0xFFEEF7FE),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
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
                                          "Design",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color(0xFF415DB5)),
                                        ),
                                        Text(
                                          "December 20.2020",
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Color(0xFF415DB5)),
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
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
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
                                          "Portofolio",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color(0xFFFFB110)),
                                        ),
                                        Text(
                                          "December 20.2020",
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Color(0xFFFFB110)),
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
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
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
                                          "Referencees",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color(0xFFAC4040)),
                                        ),
                                        Text(
                                          "December 20.2020",
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Color(0xFFAC4040)),
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
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
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
                                          "Clients",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color(0xFF23B0B0)),
                                        ),
                                        Text(
                                          "December 20.2020",
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Color(0xFF23B0B0)),
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
                                    color: Color(0xFFEEF7FE),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
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
                                              fontSize: 15,
                                              color: Color(0xFF415DB5)),
                                        ),
                                        Text(
                                          "December 20.2020",
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Color(0xFF415DB5)),
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
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
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
                                              fontSize: 15,
                                              color: Color(0xFFFFB110)),
                                        ),
                                        Text(
                                          "December 20.2020",
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Color(0xFFFFB110)),
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
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
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
                                              fontSize: 15,
                                              color: Color(0xFFAC4040)),
                                        ),
                                        Text(
                                          "December 20.2020",
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Color(0xFFAC4040)),
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
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
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
                                          "Mobile Apps",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color(0xFF23B0B0)),
                                        ),
                                        Text(
                                          "December 20.2020",
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Color(0xFF23B0B0)),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),);
  }
}
