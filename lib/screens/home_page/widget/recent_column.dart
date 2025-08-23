import 'package:flutter/material.dart';
import 'package:job_app_ui/screens/job%20view/job_view.dart';
import 'package:job_app_ui/services/get_data.dart';

class RecentColum extends StatelessWidget {
  const RecentColum({super.key, required this.data});

  final GetData data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(data.getJobData().length, (index) {
        return Padding(
          padding: const EdgeInsets.all(4.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      JobViewPage(model: data.getJobData()[index]),
                ),
              );
            },
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(data.getJobData()[index].logo),
                  radius: 25,
                ),
                title: Text(
                  data.getJobData()[index].title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                subtitle: Text(
                  data.getJobData()[index].companyNmae,
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 14),
                ),
                trailing: Icon(Icons.arrow_forward_ios, size: 16),
              ),
            ),
          ),
        );
      }),
    );
  }
}
