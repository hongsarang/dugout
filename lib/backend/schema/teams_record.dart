import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TeamsRecord extends FirestoreRecord {
  TeamsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "team_name" field.
  String? _teamName;
  String get teamName => _teamName ?? '';
  bool hasTeamName() => _teamName != null;

  // "team_logo" field.
  String? _teamLogo;
  String get teamLogo => _teamLogo ?? '';
  bool hasTeamLogo() => _teamLogo != null;

  // "team_rank" field.
  int? _teamRank;
  int get teamRank => _teamRank ?? 0;
  bool hasTeamRank() => _teamRank != null;

  void _initializeFields() {
    _teamName = snapshotData['team_name'] as String?;
    _teamLogo = snapshotData['team_logo'] as String?;
    _teamRank = castToType<int>(snapshotData['team_rank']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('teams');

  static Stream<TeamsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TeamsRecord.fromSnapshot(s));

  static Future<TeamsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TeamsRecord.fromSnapshot(s));

  static TeamsRecord fromSnapshot(DocumentSnapshot snapshot) => TeamsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TeamsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TeamsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TeamsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TeamsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTeamsRecordData({
  String? teamName,
  String? teamLogo,
  int? teamRank,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'team_name': teamName,
      'team_logo': teamLogo,
      'team_rank': teamRank,
    }.withoutNulls,
  );

  return firestoreData;
}

class TeamsRecordDocumentEquality implements Equality<TeamsRecord> {
  const TeamsRecordDocumentEquality();

  @override
  bool equals(TeamsRecord? e1, TeamsRecord? e2) {
    return e1?.teamName == e2?.teamName &&
        e1?.teamLogo == e2?.teamLogo &&
        e1?.teamRank == e2?.teamRank;
  }

  @override
  int hash(TeamsRecord? e) =>
      const ListEquality().hash([e?.teamName, e?.teamLogo, e?.teamRank]);

  @override
  bool isValidKey(Object? o) => o is TeamsRecord;
}
