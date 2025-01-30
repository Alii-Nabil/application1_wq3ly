import 'package:application_wq3ly/screen/documents_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

class NotificationsWidget extends StatefulWidget {
  NotificationsWidget({super.key});

  @override
  State<NotificationsWidget> createState() => _NotificationsWidgetState();
}

class _NotificationsWidgetState extends State<NotificationsWidget> {
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((_) {
      _loading = false;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFFFFAFAFA),
        elevation: 3,
        actions: [
          Container(
            height: 25.h,
            width: 25.w,
            decoration: BoxDecoration(
                color: Color(0xfffFFFFFF),
                borderRadius: BorderRadius.circular(100)),
            child: Center(
                child: Text(
              "5",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0XFFFA3A3A3)),
            )),
          ),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                // margin: EdgeInsets.all(8),
                height: 30.h,
                width: 30.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFFF96D766),
                        blurRadius: 4,
                      )
                    ],
                    color: Color(0xFFE4F3DD),
                    border: Border.all(
                      width: 2,
                      color: Color(0xFFF96D766),
                    )),
                child: Image.asset("assets/icon/cross.png"),
              ),
            ),
          ),
        ],
        title: Text(
          "WQ3LY",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 20.h,
            width: 20.w,
            decoration: BoxDecoration(
                color: Color(0xfffFFFFF),
                borderRadius: BorderRadius.circular(100)),
            child: Center(
                child: Text(
              "TK",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0XFFFA3A3A3)),
            )),
          ),
        ),
      ),
      body: Skeletonizer(
        enabled: _loading,
        child: ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text('Item number $index as title'),
                subtitle: const Text('Subtitle here'),
                trailing: Image.asset(
                  "assets/icon/yes (1).png",
                  color: Colors.green,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
