import 'package:cloud_firestore/cloud_firestore.dart';

CollectionReference<Map<String, dynamic>> usersColRef =
    FirebaseFirestore.instance.collection('users-v0');

CollectionReference<Map<String, dynamic>> chatsColRef =
    FirebaseFirestore.instance.collection('chats-v0');

CollectionReference<Map<String, dynamic>> weightsColRef =
    FirebaseFirestore.instance.collection('weights');

CollectionReference<Map<String, dynamic>> constsColRef =
    FirebaseFirestore.instance.collection('constants');

CollectionReference<Map<String, dynamic>> evalsColRef =
    FirebaseFirestore.instance.collection('roommateEvals');

CollectionReference<Map<String, dynamic>> reportColRef =
    FirebaseFirestore.instance.collection('report');

CollectionReference<Map<String, dynamic>> blockColRef =
    FirebaseFirestore.instance.collection('block');
