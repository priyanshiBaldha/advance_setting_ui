import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:setting_ui/Views/model/Global.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return (Globals.isIOS == false)
        ? MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSwatch().copyWith(
                primary: Colors.red,
                secondary: Colors.red,
              ),
              appBarTheme: AppBarTheme(
                  backgroundColor: Colors.red, foregroundColor: Colors.white),
            ),
            home: Scaffold(
              backgroundColor: Colors.grey.shade50,
              appBar: AppBar(
                title: Text(
                  "Settings UI",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
                actions: [
                  Switch(
                      value: Globals.isIOS,
                      onChanged: (val) {
                        setState(() {
                          Globals.isIOS = val;
                        });
                      })
                ],
              ),
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Common",
                      style: TextStyle(fontSize: 20, color: Colors.red),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    height: 55,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 20),
                          child: Icon(Icons.blur_circular_sharp,
                              size: 40, color: Colors.grey),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Language",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.grey.shade700),
                            ),
                            Text(
                              "English",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    height: 55,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 20),
                          child: Icon(Icons.cloud_queue_sharp,
                              size: 40, color: Colors.grey),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Environment",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.grey.shade700),
                            ),
                            Text(
                              "Production",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Account",
                      style: TextStyle(fontSize: 20, color: Colors.red),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    height: 55,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 20),
                          child:
                              Icon(Icons.phone, size: 40, color: Colors.grey),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Phone Number",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.grey.shade700),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    height: 55,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 20),
                          child: Icon(Icons.mail, size: 40, color: Colors.grey),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Email",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.grey.shade700),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    height: 55,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 20),
                          child: Icon(Icons.input_sharp,
                              size: 35, color: Colors.grey),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Sign Out",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.grey.shade700),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Secutiry",
                      style: TextStyle(fontSize: 20, color: Colors.red),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    height: 55,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 0,
                          ),
                          child: Icon(
                            Icons.phonelink_lock_sharp,
                            size: 40,
                            color: Colors.grey,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Lock app in background",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.grey.shade700),
                            ),
                          ],
                        ),
                        Switch(
                          value: true,
                          onChanged: (val) {},
                          activeColor: Colors.red,
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    height: 55,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 0,
                          ),
                          child: Icon(Icons.fingerprint_sharp,
                              size: 40, color: Colors.grey),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Use fingerPrint",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.grey.shade700),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Switch(
                          value: false,
                          onChanged: (val) {},
                          activeColor: Colors.red,
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    height: 55,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 0,
                          ),
                          child: Icon(Icons.lock, size: 40, color: Colors.grey),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Change Password",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.grey.shade700),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Switch(
                          value: true,
                          onChanged: (val) {},
                          activeColor: Colors.red,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Misc",
                      style: TextStyle(fontSize: 20, color: Colors.red),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    height: 55,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 20),
                          child: Icon(Icons.text_snippet_rounded,
                              size: 40, color: Colors.grey),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Terms Of Service",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.grey.shade700),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    height: 55,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 20),
                          child: Icon(Icons.collections_bookmark_outlined,
                              size: 40, color: Colors.grey),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Open Source Licenses",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.grey.shade700),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        : CupertinoApp(
            debugShowCheckedModeBanner: false,
            home: CupertinoPageScaffold(
              backgroundColor: CupertinoColors.white,
              navigationBar: CupertinoNavigationBar(
                middle: Text(
                  "Settings UI",
                  style: TextStyle(fontSize: 25),
                ),
                trailing: CupertinoSwitch(
                  value: Globals.isIOS,
                  onChanged: (val) {
                    setState(() {
                      Globals.isIOS = val;
                    });
                  },
                ),
                backgroundColor: CupertinoColors.destructiveRed,
              ),
              child: Container(
                color: CupertinoColors.systemGrey6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "Common",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      height: 45,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0, right: 20),
                            child: Icon(Icons.blur_circular_sharp,
                                size: 40, color: Colors.grey),
                          ),
                          Text(
                            "Language",
                            style: TextStyle(
                                fontSize: 18, color: Colors.grey.shade700),
                          ),
                          SizedBox(
                            width: 150,
                          ),
                          Text(
                            "English",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Icon(
                            CupertinoIcons.right_chevron,
                            color: CupertinoColors.systemGrey,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Container(
                      color: Colors.white,
                      height: 45,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0, right: 20),
                            child: Icon(Icons.cloud_queue_sharp,
                                size: 40, color: Colors.grey),
                          ),
                          Text(
                            "Environment",
                            style: TextStyle(
                                fontSize: 18, color: Colors.grey.shade700),
                          ),
                          SizedBox(
                            width: 100,
                          ),
                          Text(
                            "Production",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Icon(
                            CupertinoIcons.right_chevron,
                            color: CupertinoColors.systemGrey,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "Account",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      height: 45,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0, right: 20),
                            child:
                                Icon(Icons.phone, size: 40, color: Colors.grey),
                          ),
                          Text(
                            "Phone Number",
                            style: TextStyle(
                                fontSize: 18, color: Colors.grey.shade700),
                          ),
                          SizedBox(
                            width: 170,
                          ),
                          Icon(
                            CupertinoIcons.right_chevron,
                            color: CupertinoColors.systemGrey,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Container(
                      color: Colors.white,
                      height: 45,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0, right: 20),
                            child:
                                Icon(Icons.mail, size: 40, color: Colors.grey),
                          ),
                          Text(
                            "Email",
                            style: TextStyle(
                                fontSize: 18, color: Colors.grey.shade700),
                          ),
                          SizedBox(
                            width: 250,
                          ),
                          Icon(
                            CupertinoIcons.right_chevron,
                            color: CupertinoColors.systemGrey,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Container(
                      color: Colors.white,
                      height: 45,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0, right: 20),
                            child: Icon(Icons.input_sharp,
                                size: 35, color: Colors.grey),
                          ),
                          Text(
                            "Sign Out",
                            style: TextStyle(
                                fontSize: 18, color: Colors.grey.shade700),
                          ),
                          SizedBox(
                            width: 220,
                          ),
                          Icon(
                            CupertinoIcons.right_chevron,
                            color: CupertinoColors.systemGrey,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "Secutiry",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      height: 45,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 0,
                            ),
                            child: Icon(
                              Icons.phonelink_lock_sharp,
                              size: 40,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            "Lock app in background",
                            style: TextStyle(
                                fontSize: 18, color: Colors.grey.shade700),
                          ),
                          SizedBox(
                            width: 70,
                          ),
                          CupertinoSwitch(
                            value: true,
                            onChanged: (val) {},
                            activeColor: Colors.red,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Container(
                      color: Colors.white,
                      height: 45,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 0,
                            ),
                            child: Icon(Icons.fingerprint_sharp,
                                size: 40, color: Colors.grey),
                          ),
                          Text(
                            "Use fingerPrint",
                            style: TextStyle(
                                fontSize: 18, color: Colors.grey.shade700),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          SizedBox(
                            width: 90,
                          ),
                          CupertinoSwitch(
                            value: false,
                            onChanged: (val) {},
                            activeColor: Colors.red,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Container(
                      color: Colors.white,
                      height: 45,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 0,
                            ),
                            child:
                                Icon(Icons.lock, size: 40, color: Colors.grey),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Change Password",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.grey.shade700),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: 90,
                          ),
                          CupertinoSwitch(
                            value: true,
                            onChanged: (val) {},
                            activeColor: Colors.red,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "Misc",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      height: 45,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0, right: 20),
                            child: Icon(Icons.text_snippet_rounded,
                                size: 40, color: Colors.grey),
                          ),
                          Text(
                            "Terms Of Service",
                            style: TextStyle(
                                fontSize: 18, color: Colors.grey.shade700),
                          ),
                          SizedBox(
                            width: 150,
                          ),
                          Icon(
                            CupertinoIcons.right_chevron,
                            color: CupertinoColors.systemGrey,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Container(
                      color: Colors.white,
                      height: 45,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0, right: 20),
                            child: Icon(Icons.collections_bookmark_outlined,
                                size: 40, color: Colors.grey),
                          ),
                          Text(
                            "Open Source Licenses",
                            style: TextStyle(
                                fontSize: 18  , color: Colors.grey.shade700),
                          ),
                          SizedBox(
                            width: 90,
                          ),
                          Icon(
                            CupertinoIcons.right_chevron,
                            color: CupertinoColors.systemGrey,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            color: CupertinoColors.systemGrey,
          );
  }
}
