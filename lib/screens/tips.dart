import 'package:flutter/material.dart';

class Tips extends StatefulWidget {
  const Tips({super.key});

  @override
  State<Tips> createState() => _TipsState();
}

class _TipsState extends State<Tips> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title:  const Padding(
          padding: EdgeInsets.only(
            left: 64,
            right: 64,
            top: 23,
          ),
          child: Text(
            "Tips",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xFF1E1E1E),
            ),
          ),
        ),
        leading: Padding(
          padding:
          const EdgeInsets.only(left: 36, right: 4, top: 20, bottom: 20),
          child: IconButton(
            icon: const Icon(Icons.arrow_back,color: Colors.black,),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 45,top: 45),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Vaccinate your baby',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.12,

              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              height:550,
              width: 338,
              child: ListView(
                children: [
                  Text("""At HaloBaby, accessible from halobaby.com, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by HaloBaby and how we use it.

If you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us.

Log Files
HaloBaby follows a standard procedure of using log files. These files log visitors when they visit websites. All hosting companies do this and a part of hosting services' analytics. The information collected by log files include internet protocol (IP) addresses, browser type, Internet Service Provider (ISP), date and time stamp, referring/exit pages, and possibly the number of clicks. These are not linked to any information that is personally identifiable. The purpose of the information is for analyzing trends, """,
                    style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xFF4D6280),),

                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
