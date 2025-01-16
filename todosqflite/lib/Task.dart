class Task {
  final int taskNo;
  final String title;
  final String description;
  final String date;

  Task(
      {required this.taskNo,
      required this.title,
      required this.description,
      required this.date});

      Map<String,dynamic> taskMap(){
        return{
          'taskNo':taskNo,
          'title':title,
          'description':description,
          'date':date
        };
      }
}
