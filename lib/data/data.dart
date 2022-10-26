import 'package:assessment/model/expert.dart';

import '../model/job.dart';

List<Job> jobs = [
  Job('Information Technology', 23, 'assets/images/jobs/it.png'),
  Job('Supply Chain', 12, 'assets/images/jobs/supply.png'),
  Job('Security', 14, 'assets/images/jobs/security.png'),
  Job('Human Resource', 8, 'assets/images/jobs/hr.png'),
  Job('Immigration', 18, 'assets/images/jobs/immigration.png'),
  Job('Translation', 3, 'assets/images/jobs/translation.png'),
];

List<Expert> experts = [
  Expert('Kareem ramzy', 'supply chain', 4.3, 'assets/images/person1.jpg', false),
  Expert('Ahmad Ashraf', 'security', 5.0, 'assets/images/person1.jpg', true),
  Expert('Nada Sayed', 'information technology', 4.8, 'assets/images/person2.jpg', false),
  Expert('ibrahim', 'human resource', 3.3, 'assets/images/person1.jpg', true),
  Expert('medhat', 'immigration', 4.3, 'assets/images/person1.jpg', true),
  Expert('salma', 'translation', 2.0, 'assets/images/person2.jpg', false),
];