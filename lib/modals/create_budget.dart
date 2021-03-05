class CreateBudget {
  int id;
  String uid;
  String title;
  String title_hindi;
  String owner;
  String user_type;
  int no_of_family_members;
  int total_income;

  CreateBudget(this.id, this.uid, this.title, this.title_hindi, this.owner,
      this.user_type, this.no_of_family_members, this.total_income);

  factory CreateBudget.fromJson(dynamic json) {
    return CreateBudget(
      json['id'],
      json['uid'],
      json['title'],
      json['title_hindi'],
      json['owner'],
      json['user_type'],
      json['no_of_family_members'],
      json['total_income'],
    );
  }
}
