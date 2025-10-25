import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "create_time" field.
  DateTime? _createTime;
  DateTime? get createTime => _createTime;
  bool hasCreateTime() => _createTime != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "isIdVerified" field.
  bool? _isIdVerified;
  bool get isIdVerified => _isIdVerified ?? false;
  bool hasIsIdVerified() => _isIdVerified != null;

  // "trustedContacts" field.
  List<String>? _trustedContacts;
  List<String> get trustedContacts => _trustedContacts ?? const [];
  bool hasTrustedContacts() => _trustedContacts != null;

  // "responderlocation" field.
  LatLng? _responderlocation;
  LatLng? get responderlocation => _responderlocation;
  bool hasResponderlocation() => _responderlocation != null;

  // "alertacceptedlocation" field.
  LatLng? _alertacceptedlocation;
  LatLng? get alertacceptedlocation => _alertacceptedlocation;
  bool hasAlertacceptedlocation() => _alertacceptedlocation != null;

  void _initializeFields() {
    _displayName = snapshotData['display_name'] as String?;
    _email = snapshotData['email'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _createTime = snapshotData['create_time'] as DateTime?;
    _uid = snapshotData['uid'] as String?;
    _isIdVerified = snapshotData['isIdVerified'] as bool?;
    _trustedContacts = getDataList(snapshotData['trustedContacts']);
    _responderlocation = snapshotData['responderlocation'] as LatLng?;
    _alertacceptedlocation = snapshotData['alertacceptedlocation'] as LatLng?;
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
  String? displayName,
  String? email,
  String? phoneNumber,
  String? photoUrl,
  DateTime? createTime,
  String? uid,
  bool? isIdVerified,
  LatLng? responderlocation,
  LatLng? alertacceptedlocation,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'display_name': displayName,
      'email': email,
      'phone_number': phoneNumber,
      'photo_url': photoUrl,
      'create_time': createTime,
      'uid': uid,
      'isIdVerified': isIdVerified,
      'responderlocation': responderlocation,
      'alertacceptedlocation': alertacceptedlocation,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.displayName == e2?.displayName &&
        e1?.email == e2?.email &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.createTime == e2?.createTime &&
        e1?.uid == e2?.uid &&
        e1?.isIdVerified == e2?.isIdVerified &&
        listEquality.equals(e1?.trustedContacts, e2?.trustedContacts) &&
        e1?.responderlocation == e2?.responderlocation &&
        e1?.alertacceptedlocation == e2?.alertacceptedlocation;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.displayName,
        e?.email,
        e?.phoneNumber,
        e?.photoUrl,
        e?.createTime,
        e?.uid,
        e?.isIdVerified,
        e?.trustedContacts,
        e?.responderlocation,
        e?.alertacceptedlocation
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
