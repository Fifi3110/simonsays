import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PriorityRecord extends FirestoreRecord {
  PriorityRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "priority" field.
  int? _priority;
  int get priority => _priority ?? 0;
  bool hasPriority() => _priority != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _priority = castToType<int>(snapshotData['priority']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('priority')
          : FirebaseFirestore.instance.collectionGroup('priority');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('priority').doc(id);

  static Stream<PriorityRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PriorityRecord.fromSnapshot(s));

  static Future<PriorityRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PriorityRecord.fromSnapshot(s));

  static PriorityRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PriorityRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PriorityRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PriorityRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PriorityRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PriorityRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPriorityRecordData({
  int? priority,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'priority': priority,
    }.withoutNulls,
  );

  return firestoreData;
}

class PriorityRecordDocumentEquality implements Equality<PriorityRecord> {
  const PriorityRecordDocumentEquality();

  @override
  bool equals(PriorityRecord? e1, PriorityRecord? e2) {
    return e1?.priority == e2?.priority;
  }

  @override
  int hash(PriorityRecord? e) => const ListEquality().hash([e?.priority]);

  @override
  bool isValidKey(Object? o) => o is PriorityRecord;
}
