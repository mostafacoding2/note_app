import 'package:hive/hive.dart';
part'note_model.g.dart';
@HiveType(typeId: 0)
class NoteModel extends HiveObject{
  @HiveField(0)
  String Title ;
  @HiveField(1)
  String subTitle;
  @HiveField(2)
  String date;
  @HiveField(3)
  int  color;
  NoteModel({
    required this.Title,
    required this.color,
    required this.date,
    required this.subTitle
  });


}