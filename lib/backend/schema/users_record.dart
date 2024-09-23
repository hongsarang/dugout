import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "user_state" field.
  String? _userState;
  String get userState => _userState ?? '';
  bool hasUserState() => _userState != null;

  // "user_team" field.
  String? _userTeam;
  String get userTeam => _userTeam ?? '';
  bool hasUserTeam() => _userTeam != null;

  // "last_login_time" field.
  DateTime? _lastLoginTime;
  DateTime? get lastLoginTime => _lastLoginTime;
  bool hasLastLoginTime() => _lastLoginTime != null;

  // "user_boards" field.
  List<String>? _userBoards;
  List<String> get userBoards => _userBoards ?? const [];
  bool hasUserBoards() => _userBoards != null;

  // "points" field.
  int? _points;
  int get points => _points ?? 0;
  bool hasPoints() => _points != null;

  // "push_notification" field.
  bool? _pushNotification;
  bool get pushNotification => _pushNotification ?? false;
  bool hasPushNotification() => _pushNotification != null;

  // "num_report_post" field.
  int? _numReportPost;
  int get numReportPost => _numReportPost ?? 0;
  bool hasNumReportPost() => _numReportPost != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "birth_dt" field.
  DateTime? _birthDt;
  DateTime? get birthDt => _birthDt;
  bool hasBirthDt() => _birthDt != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _userState = snapshotData['user_state'] as String?;
    _userTeam = snapshotData['user_team'] as String?;
    _lastLoginTime = snapshotData['last_login_time'] as DateTime?;
    _userBoards = getDataList(snapshotData['user_boards']);
    _points = castToType<int>(snapshotData['points']);
    _pushNotification = snapshotData['push_notification'] as bool?;
    _numReportPost = castToType<int>(snapshotData['num_report_post']);
    _gender = snapshotData['gender'] as String?;
    _birthDt = snapshotData['birth_dt'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? userState,
  String? userTeam,
  DateTime? lastLoginTime,
  int? points,
  bool? pushNotification,
  int? numReportPost,
  String? gender,
  DateTime? birthDt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'user_state': userState,
      'user_team': userTeam,
      'last_login_time': lastLoginTime,
      'points': points,
      'push_notification': pushNotification,
      'num_report_post': numReportPost,
      'gender': gender,
      'birth_dt': birthDt,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.userState == e2?.userState &&
        e1?.userTeam == e2?.userTeam &&
        e1?.lastLoginTime == e2?.lastLoginTime &&
        listEquality.equals(e1?.userBoards, e2?.userBoards) &&
        e1?.points == e2?.points &&
        e1?.pushNotification == e2?.pushNotification &&
        e1?.numReportPost == e2?.numReportPost &&
        e1?.gender == e2?.gender &&
        e1?.birthDt == e2?.birthDt;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.userState,
        e?.userTeam,
        e?.lastLoginTime,
        e?.userBoards,
        e?.points,
        e?.pushNotification,
        e?.numReportPost,
        e?.gender,
        e?.birthDt
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
