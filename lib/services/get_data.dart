import 'package:job_app_ui/models/job_model.dart';

class GetData {
  final instalog =
      "https://upload.wikimedia.org/wikipedia/commons/a/a5/Instagram_icon.png";

  final facebook =
      "https://upload.wikimedia.org/wikipedia/commons/6/6c/Facebook_Logo_2023.png";
  final titoklogo =
      "https://static.vecteezy.com/system/resources/previews/016/716/450/non_2x/tiktok-icon-free-png.png";
  List<JobModel> getJobData() {
    List<JobModel> jobData = [
      JobModel(
        title: "Software Engineer",
        type: "Full-time",
        salary: "\$120,000 - \$150,000",
        companyNmae: "Tech Solutions",
        logo: instalog,
        city: "New York, NY",
        time: "2 days ago",
      ),
      JobModel(
        title: "Data Scientist",
        type: "Full-time",
        salary: "\$130,000 - \$160,000",
        companyNmae: "Data Insights",
        logo: facebook,
        city: "San Francisco, CA",
        time: "1 week ago",
      ),
      JobModel(
        title: "Product Manager",
        type: "Contract",
        salary: "\$110,000 - \$140,000",
        companyNmae: "Innovate Corp",
        logo: titoklogo,
        city: "Austin, TX",
        time: "3 days ago",
      ),
      JobModel(
        title: "UX/UI Designer",
        type: "Part-time",
        salary: "\$80,000 - \$100,000",
        companyNmae: "Creative Minds",
        logo: instalog,
        city: "Los Angeles, CA",
        time: "5 days ago",
      ),
    ];
    return jobData;
  }
}
