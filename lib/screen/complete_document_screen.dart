import 'package:application_wq3ly/screen/signature_disclosure.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CompleteDocumentScreen extends StatelessWidget {
  const CompleteDocumentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Container(
          height: 400,
          width: 340,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xfffFFFFFF),
              border: Border.all(
                color: Color(0xfffA8A8A8),
                width: 0.9.w,
              )),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Complete document",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "You are about to complete signing IV.1_inf.....logy.pdf. Are you sure?",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "By proceeding with your electronic signature,\n yhandwritten signature. \nBy completing the electronic signing process,\n you affirm your understanding and acceptance\n of these conditions.Read the full",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xfffA3A3A3),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "signature disclosure",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xfff96D766),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                          height: 55.h,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xfffE5E5E5),
                              border: Border.all(
                                color: Color(0xfffA8A8A8),
                                width: 0.5.w,
                              )),
                          child: Center(
                            child: Text(
                              "  Cancel",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          )),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return SignatureDisclosure();
                        }));
                      },
                      child: Container(
                          height: 55.h,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xfffA2E771),
                              border: Border.all(
                                color: Color(0xfffA8A8A8),
                                width: 0.5.w,
                              )),
                          child: Center(
                            child: Text(
                              " Complet",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          )),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
