class Message{
  final int? id;
  final String message;

  Message(this.message, {this.id});

  Message.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        message = json['message'];

  Map<String, dynamic> toJson(){
    return {
      'message' : message,
    };
  }
}