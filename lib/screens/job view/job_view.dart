import 'package:flutter/material.dart';

class JobViewPage extends StatefulWidget {
  const JobViewPage({super.key});

  @override
  State<JobViewPage> createState() => _JobViewPageState();
}

class _JobViewPageState extends State<JobViewPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Column(
        children: [
          Container(
            height: 250,
            width: size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "https://www.drimlike.com/IMG/jpg/hiring-designer.jpg",
                ),
              ),
            ),
            child: Stack(
              children: [
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.black,
                      child: Icon(Icons.arrow_back, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: size.width,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Senior UX Designer",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Text(
                        "\$120,000 - \$150,000",
                        style: TextStyle(
                          color: Colors.grey.shade400,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(width: 20),
                      Chip(
                        backgroundColor: Colors.grey.shade300,

                        label: Text("Full Time"),
                      ),
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://static.vecteezy.com/system/resources/previews/016/716/450/non_2x/tiktok-icon-free-png.png",
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "TikTok",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "Colombo",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Text(
                        "4 days left",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
