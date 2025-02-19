import 'package:application_wq3ly/screen/documents_singned.dart';
import 'package:application_wq3ly/widget/appbar_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignatureDisclosure extends StatelessWidget {
  const SignatureDisclosure({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              AppBarWidget(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
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
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Electronic Signature DisclosureWelcome",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0XFFF262626)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Thank you for using WQ3LY to perform your electronic document signing. The purpose of this disclosure is to inform you about the process, legality, and your rights regarding the use of electronic signatures on our platform. By opting to use an electronic signature, you are agreeing to the terms and conditions outlined below.",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0XFFF737373)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Acceptance and Consent",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0XFFF262626)),
                    ),
                    Text(
                      "When you use our platform to affix your electronic signature to documents, you are consenting to do so under the Electronic Signatures in Global and National Commerce Act (E-Sign Act) and other applicable laws. This action indicates your agreement to use electronic means to sign documents and receive notifications.",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0XFFF737373)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Legality of Electronic Signatures",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0XFFF262626)),
                    ),
                    Text(
                      "An electronic signature provided by you on our platform, achieved through clicking through to a document and entering your name, or any other electronic signing method we provide, is legally binding. It carries the same weight and enforceability as a manual signature written with ink on paper.",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0XFFF737373)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "System Requirements",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0XFFF262626)),
                    ),
                    Text(
                      "To use our electronic signature service, you must have access to:",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0XFFF737373)),
                    ),
                    Text(
                      " . A stable internet connection \n .  An email account\n . A device capable of accessing, opening, and reading  documents\n .  A means to print or download documents for your record",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0XFFF737373)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Electronic Delivery of Documents",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0XFFF262626)),
                    ),
                    Text(
                      "All documents related to the electronic signing process will be provided to you electronically through our platform or via email. It is your responsibility to ensure that your email address is current and that you can receive and open our emails.",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0XFFF737373)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Consent to Electronic Transactions",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0XFFF262626)),
                    ),
                    Text(
                      "By using the electronic signature feature, you are consenting to conduct transactions and receive disclosures electronically. You acknowledge that your electronic signature on documents is binding and that you accept the terms outlined in the documents you are signing.",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0XFFF737373)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Withdrawing Consent",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0XFFF262626)),
                    ),
                    Text(
                      "You have the right to withdraw your consent to use electronic signatures at any time before completing the signing process. To withdraw your consent, please contact the sender of the document. In failing to contact the sender you may reach out to support@app.wq3ly.com for assistance. Be aware that withdrawing consent may delay or halt the completion of the related transaction or service",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0XFFF737373)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Updating Your Information",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0XFFF262626)),
                    ),
                    Text(
                      "It is crucial to keep your contact information, especially your email address, up to date with us. Please notify us immediately of any changes to ensure that you continue to receive all necessary communications.",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0XFFF737373)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Retention of Documents",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0XFFF262626)),
                    ),
                    Text(
                      "After signing a document electronically, you will be provided the opportunity to view, download, and print the document for your records. It is highly recommended that you retain a copy of all electronically signed documents for your personal records. We will also retain a copy of the signed document for our records however we may not be able to provide you with a copy of the signed document after a certain period of time.",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0XFFF737373)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Acknowledgment",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0XFFF262626)),
                    ),
                    Text(
                      "By proceeding to use the electronic signature service provided by WQ3LY, you affirm that you have read and understood this disclosure. You agree to all terms and conditions related to the use of electronic signatures and electronic transactions as outlined herein.",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0XFFF737373)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Contact Information",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0XFFF262626)),
                    ),
                    Text(
                      "For any questions regarding this disclosure, electronic signatures, or any related process, please contact us at: support@wq3ly.com",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0XFFF737373)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return DocumentsSingned();
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
                              " Back to Documents",
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
