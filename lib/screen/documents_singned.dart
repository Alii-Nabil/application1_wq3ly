import 'package:application_wq3ly/widget/appbar_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocumentsSingned extends StatelessWidget {
  const DocumentsSingned({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          AppBarWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    child: Image.asset(
                      "assets/icon/left-chevron3 (2).png",
                      height: 30,
                      width: 30,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5.h,
                ),
                Text(
                  "Document",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xfff96D766)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Container(
            height: 40.h,
            width: 140.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  width: 1,
                  color: Color(0XFFFA3A3A3),
                )),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "IV.1_inf.....logy.pdf",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0XFFF737373)),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
              height: 150,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Color(0xfff96D766),
                  width: 1,
                ),
              ),
              child: Center(
                child: Text(
                  "Timur",
                  style: TextStyle(
                      fontSize: 55,
                      fontWeight: FontWeight.w400,
                      color: Color(0XFFF171717)),
                ),
              )),
          SizedBox(
            height: 20,
          ),
          Text(
            "Document Signed",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color(0XFFF171717)),
          ),
          SizedBox(
            height: 15.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.check_circle_outline,
                color: Color(0XFFF7AC455),
              ),
              SizedBox(
                width: 5.w,
              ),
              Text(
                "Everyone has signed",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color(0XFFF7AC455)),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Everyone has signed! You will receive an Email copy of the signed document.",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0XFFFA3A3A3)),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (context) {
                    //   return DocumentsSingned();
                    // }));
                  },
                  child: Container(
                      height: 40.h,
                      width: 163,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          // color: Color(0xfffA2E771),
                          border: Border.all(
                            color: Color(0xfffA8A8A8),
                            width: 0.5.w,
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.file_upload_outlined),
                          Text(
                            " Share Signature Card",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      )),
                ),
                InkWell(
                  onTap: () {
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (context) {
                    //   return DocumentsSingned();
                    // }));
                  },
                  child: Container(
                      height: 40.h,
                      width: 130,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          // color: Color(0xfffA2E771),
                          border: Border.all(
                            color: Color(0xfffA8A8A8),
                            width: 0.5.w,
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.file_download_outlined),
                          Text(
                            " Download",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 180.h,
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                "GO BACK HOME",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0XFFF96D766)),
              ))
        ],
      ),
    ));
  }
}
