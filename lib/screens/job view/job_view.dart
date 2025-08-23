import 'package:flutter/material.dart';
import 'package:job_app_ui/models/job_model.dart';

class JobViewPage extends StatefulWidget {
  const JobViewPage({super.key, required this.model});

  final JobModel model;

  @override
  State<JobViewPage> createState() => _JobViewPageState();
}

class _JobViewPageState extends State<JobViewPage> {
  final tabButtons = ["Description", "Company", "Review"];
  int tabIndex = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Stack(
        children: [
          Column(
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
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: CircleAvatar(
                            backgroundColor: Colors.black,
                            child: Icon(Icons.arrow_back, color: Colors.white),
                          ),
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
                        widget.model.title,
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            widget.model.salary,
                            style: TextStyle(
                              color: Colors.grey.shade400,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(width: 20),
                          Chip(
                            backgroundColor: Colors.grey.shade300,

                            label: Text(widget.model.type),
                          ),
                        ],
                      ),
                      Spacer(),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(widget.model.logo),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.model.companyNmae,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                widget.model.city,
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
                            widget.model.time,
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
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: tabButtons.map((e) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        tabIndex = tabButtons.indexOf(e);
                      });
                    },
                    child: Chip(
                      backgroundColor: tabIndex == tabButtons.indexOf(e)
                          ? Colors.black
                          : Colors.white,
                      label: Text(
                        e,
                        style: TextStyle(
                          color: tabIndex == tabButtons.indexOf(e)
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
              tabIndex == 0
                  ? Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 20,
                      ),
                      child: Container(
                        padding: EdgeInsets.all(15),
                        height: 170,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          "strator is a professional who creates visual representations of concepts, ideas, or stories. They use various media such as pencils strator is a professional who creates visual representations of concepts, ideas, or stories. They use various media such as pencils",
                        ),
                      ),
                    )
                  : tabIndex == 1
                  ? Text("company")
                  : Text("Reviews"),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: size.width,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade900,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Icon(Icons.bookmark, color: Colors.white),
                    ),
                    SizedBox(width: 15),
                    Container(
                      width: size.width * 0.6,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade900,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          "Apply Now",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
