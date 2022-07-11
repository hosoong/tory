import 'package:cloud_firestore/cloud_firestore.dart';

class Story{
  Story({
    required this.category,
    required this.doc_id,
    required this.day,
    required this.end_index,
    required this.end_type,
    required this.user_id,
    required this.like,
    required this.title,
    required this.explain,
  });

  final String category;
  final String doc_id;
  final Timestamp day;
  final int end_index;
  final String end_type;
  final String user_id;
  final int like;
  final String title;
  final String explain;
}
