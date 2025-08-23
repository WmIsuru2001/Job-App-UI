import 'package:flutter/material.dart';
import 'package:job_app_ui/screens/job%20view/job_view.dart';
import 'package:job_app_ui/services/get_data.dart';

class PopularRow extends StatelessWidget {
  const PopularRow({super.key, required this.data, required this.size});

  final GetData data;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: Row(
        children: List.generate(data.getJobData().length, (index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      JobViewPage(model: data.getJobData()[index]),
                ),
              );
            },
            child: Padding(
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
                          Icon(Icons.bookmark_add, color: Colors.grey.shade700),
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

                            label: Text(data.getJobData()[index].type),
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
                            crossAxisAlignment: CrossAxisAlignment.start,
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
            ),
          );
        }),
      ),
    );
  }
}
