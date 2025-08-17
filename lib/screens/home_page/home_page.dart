import 'package:flutter/material.dart';
import 'package:job_app_ui/screens/home_page/widget/app_bar.dart';
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
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Row(
                    children: List.generate(data.getJobData().length, (index) {
                      return Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
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
                                      data.getJobData()[index].title,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.bookmark_add,
                                      color: Colors.grey.shade700,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      data.getJobData()[index].salary,
                                      style: TextStyle(
                                        color: Colors.grey.shade400,
                                        fontSize: 14,
                                      ),
                                    ),
                                    SizedBox(width: 20),
                                    Chip(
                                      backgroundColor: Colors.grey.shade300,

                                      label: Text(
                                        data.getJobData()[index].type,
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: NetworkImage(
                                        data.getJobData()[index].logo,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          data.getJobData()[index].companyNmae,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          data.getJobData()[index].city,
                                          style: TextStyle(
                                            color: Colors.grey.shade200,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Text(
                                      data.getJobData()[index].time,
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
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
                Column(
                  children: List.generate(data.getJobData().length, (index) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                              data.getJobData()[index].logo,
                            ),
                            radius: 25,
                          ),
                          title: Text(
                            data.getJobData()[index].title,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          subtitle: Text(
                            data.getJobData()[index].companyNmae,
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 14,
                            ),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios, size: 16),
                        ),
                      ),
                    );
                  }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
