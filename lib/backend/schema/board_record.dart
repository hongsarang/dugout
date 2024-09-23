import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BoardRecord extends FirestoreRecord {
  BoardRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "board_name" field.
  String? _boardName;
  String get boardName => _boardName ?? '';
  bool hasBoardName() => _boardName != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  void _initializeFields() {
    _boardName = snapshotData['board_name'] as String?;
    _category = snapshotData['category'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('board');

  static Stream<BoardRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BoardRecord.fromSnapshot(s));

  static Future<BoardRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BoardRecord.fromSnapshot(s));

  static BoardRecord fromSnapshot(DocumentSnapshot snapshot) => BoardRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BoardRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BoardRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BoardRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BoardRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBoardRecordData({
  String? boardName,
  String? category,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'board_name': boardName,
      'category': category,
    }.withoutNulls,
  );

  return firestoreData;
}

class BoardRecordDocumentEquality implements Equality<BoardRecord> {
  const BoardRecordDocumentEquality();

  @override
  bool equals(BoardRecord? e1, BoardRecord? e2) {
    return e1?.boardName == e2?.boardName && e1?.category == e2?.category;
  }

  @override
  int hash(BoardRecord? e) =>
      const ListEquality().hash([e?.boardName, e?.category]);

  @override
  bool isValidKey(Object? o) => o is BoardRecord;
}
