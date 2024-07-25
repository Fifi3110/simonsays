import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TasksRecord extends FirestoreRecord {
  TasksRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "taskName" field.
  String? _taskName;
  String get taskName => _taskName ?? '';
  bool hasTaskName() => _taskName != null;

  // "dueDate" field.
  DateTime? _dueDate;
  DateTime? get dueDate => _dueDate;
  bool hasDueDate() => _dueDate != null;

  // "user" field.
  String? _user;
  String get user => _user ?? '';
  bool hasUser() => _user != null;

  // "completed" field.
  bool? _completed;
  bool get completed => _completed ?? false;
  bool hasCompleted() => _completed != null;

  // "created" field.
  DateTime? _created;
  DateTime? get created => _created;
  bool hasCreated() => _created != null;

  // "taskDetails" field.
  String? _taskDetails;
  String get taskDetails => _taskDetails ?? '';
  bool hasTaskDetails() => _taskDetails != null;

  // "taskCategory" field.
  String? _taskCategory;
  String get taskCategory => _taskCategory ?? '';
  bool hasTaskCategory() => _taskCategory != null;

  // "taskPriority" field.
  String? _taskPriority;
  String get taskPriority => _taskPriority ?? '';
  bool hasTaskPriority() => _taskPriority != null;

  // "taskID" field.
  String? _taskID;
  String get taskID => _taskID ?? '';
  bool hasTaskID() => _taskID != null;

  void _initializeFields() {
    _taskName = snapshotData['taskName'] as String?;
    _dueDate = snapshotData['dueDate'] as DateTime?;
    _user = snapshotData['user'] as String?;
    _completed = snapshotData['completed'] as bool?;
    _created = snapshotData['created'] as DateTime?;
    _taskDetails = snapshotData['taskDetails'] as String?;
    _taskCategory = snapshotData['taskCategory'] as String?;
    _taskPriority = snapshotData['taskPriority'] as String?;
    _taskID = snapshotData['taskID'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tasks');

  static Stream<TasksRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TasksRecord.fromSnapshot(s));

  static Future<TasksRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TasksRecord.fromSnapshot(s));

  static TasksRecord fromSnapshot(DocumentSnapshot snapshot) => TasksRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TasksRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TasksRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TasksRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TasksRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTasksRecordData({
  String? taskName,
  DateTime? dueDate,
  String? user,
  bool? completed,
  DateTime? created,
  String? taskDetails,
  String? taskCategory,
  String? taskPriority,
  String? taskID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'taskName': taskName,
      'dueDate': dueDate,
      'user': user,
      'completed': completed,
      'created': created,
      'taskDetails': taskDetails,
      'taskCategory': taskCategory,
      'taskPriority': taskPriority,
      'taskID': taskID,
    }.withoutNulls,
  );

  return firestoreData;
}

class TasksRecordDocumentEquality implements Equality<TasksRecord> {
  const TasksRecordDocumentEquality();

  @override
  bool equals(TasksRecord? e1, TasksRecord? e2) {
    return e1?.taskName == e2?.taskName &&
        e1?.dueDate == e2?.dueDate &&
        e1?.user == e2?.user &&
        e1?.completed == e2?.completed &&
        e1?.created == e2?.created &&
        e1?.taskDetails == e2?.taskDetails &&
        e1?.taskCategory == e2?.taskCategory &&
        e1?.taskPriority == e2?.taskPriority &&
        e1?.taskID == e2?.taskID;
  }

  @override
  int hash(TasksRecord? e) => const ListEquality().hash([
        e?.taskName,
        e?.dueDate,
        e?.user,
        e?.completed,
        e?.created,
        e?.taskDetails,
        e?.taskCategory,
        e?.taskPriority,
        e?.taskID
      ]);

  @override
  bool isValidKey(Object? o) => o is TasksRecord;
}
