class Model {
  int? id;
  String? name;
  List<String>? subjects;
  List<String>? qualification;
  String? profileImage;

  Model(
      {this.id,
      this.name,
      this.subjects,
      this.qualification,
      this.profileImage});

  Model.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    subjects = json['subjects'].cast<String>();
    qualification = json['qualification'].cast<String>();
    profileImage = json['profileImage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['subjects'] = this.subjects;
    data['qualification'] = this.qualification;
    data['profileImage'] = this.profileImage;
    return data;
  }
}
