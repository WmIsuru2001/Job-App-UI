import 'package:flutter/material.dart';
import 'package:job_app_ui/screens/home_page/widget/app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              SizedBox(height: 10),
              Text(
                "Good Morning Isuru",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Find Your\nCreative Job",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: size.width * 0.75,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Search for jobs",
                        prefixIcon: Icon(Icons.search, color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 55,
                    height: 55,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Icon(
                      Icons.filter_list,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    "Popular Jobs",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See All",
                      style: TextStyle(fontSize: 16, color: Colors.blue),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                width: size.width * 0.75,
                height: size.width * 0.4,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Senior UX Designer",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.bookmark_add, color: Colors.grey.shade700),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
