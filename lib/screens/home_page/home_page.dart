import 'package:flutter/material.dart';
import 'package:job_app_ui/screens/home_page/widget/app_bar.dart';
import 'package:job_app_ui/screens/home_page/widget/popular_row.dart';
import 'package:job_app_ui/screens/home_page/widget/recent_column.dart';
import 'package:job_app_ui/screens/home_page/widget/search_bar.dart';
import 'package:job_app_ui/services/get_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GetData data = GetData();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: Padding(
          padding: EdgeInsets.all(12.0),
          child: SingleChildScrollView(
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
                CustomSearchBar(size: size),
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
                PopularRow(data: data, size: size),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "Recent Jobs",
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
                RecentColum(data: data),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
