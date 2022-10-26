class Expert{
  final int? id;
  final String name;
  final String job;
  final double rate;
  final String image;
  bool isFavorite;

  Expert(this.name, this.job, this.rate, this.image, this.isFavorite, {this.id});

  Expert.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        job = json['job'],
        rate = json['rate'],
        image = json['image'],
        isFavorite = json['isFavorite'];

  Map<String, dynamic> toJson(){
    return {
      'name' : name,
      'job' : job,
      'rate' : rate,
      'image' : image,
      'isFavorite' : isFavorite,
    };
  }
}