class Job{
  final int? id;
  final String title;
  final int expertsNo;
  final String image;

  Job(this.title, this.expertsNo, this.image, {this.id});

  Job.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        image = json['image'],
        expertsNo = json['expertsNo'];

  Map<String, dynamic> toJson(){
    return {
      'title' : title,
      'expertsNo' : expertsNo,
      'image' : image,
    };
  }
}