class UserModel{
  String name;
  int age;

  UserModel({required this.name, required this.age});

  factory UserModel.fromJson(Map<String, int> json){
    return UserModel(name: json['name'] as String, age: json['age'] as int );

  }
}