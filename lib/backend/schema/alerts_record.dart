import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AlertsRecord extends FirestoreRecord {
  AlertsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "trustScore" field.
  int? _trustScore;
  int get trustScore => _trustScore ?? 0;
  bool hasTrustScore() => _trustScore != null;

  // "alertLevel" field.
  String? _alertLevel;
  String get alertLevel => _alertLevel ?? '';
  bool hasAlertLevel() => _alertLevel != null;

  // "verificationSignals" field.
  List<String>? _verificationSignals;
  List<String> get verificationSignals => _verificationSignals ?? const [];
  bool hasVerificationSignals() => _verificationSignals != null;

  // "emergencyDescription" field.
  String? _emergencyDescription;
  String get emergencyDescription => _emergencyDescription ?? '';
  bool hasEmergencyDescription() => _emergencyDescription != null;

  // "trustedContactResponses" field.
  List<TrustedContactResponseStruct>? _trustedContactResponses;
  List<TrustedContactResponseStruct> get trustedContactResponses =>
      _trustedContactResponses ?? const [];
  bool hasTrustedContactResponses() => _trustedContactResponses != null;

  // "location" field.
  List<LatLng>? _location;
  List<LatLng> get location => _location ?? const [];
  bool hasLocation() => _location != null;

  // "phonenumber" field.
  List<String>? _phonenumber;
  List<String> get phonenumber => _phonenumber ?? const [];
  bool hasPhonenumber() => _phonenumber != null;

  void _initializeFields() {
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _trustScore = castToType<int>(snapshotData['trustScore']);
    _alertLevel = snapshotData['alertLevel'] as String?;
    _verificationSignals = getDataList(snapshotData['verificationSignals']);
    _emergencyDescription = snapshotData['emergencyDescription'] as String?;
    _trustedContactResponses = getStructList(
      snapshotData['trustedContactResponses'],
      TrustedContactResponseStruct.fromMap,
    );
    _location = getDataList(snapshotData['location']);
    _phonenumber = getDataList(snapshotData['phonenumber']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('alerts');

  static Stream<AlertsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AlertsRecord.fromSnapshot(s));

  static Future<AlertsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AlertsRecord.fromSnapshot(s));

  static AlertsRecord fromSnapshot(DocumentSnapshot snapshot) => AlertsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AlertsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AlertsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AlertsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AlertsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAlertsRecordData({
  DocumentReference? userRef,
  DateTime? createdAt,
  String? status,
  int? trustScore,
  String? alertLevel,
  String? emergencyDescription,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userRef': userRef,
      'createdAt': createdAt,
      'status': status,
      'trustScore': trustScore,
      'alertLevel': alertLevel,
      'emergencyDescription': emergencyDescription,
    }.withoutNulls,
  );

  return firestoreData;
}

class AlertsRecordDocumentEquality implements Equality<AlertsRecord> {
  const AlertsRecordDocumentEquality();

  @override
  bool equals(AlertsRecord? e1, AlertsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.userRef == e2?.userRef &&
        e1?.createdAt == e2?.createdAt &&
        e1?.status == e2?.status &&
        e1?.trustScore == e2?.trustScore &&
        e1?.alertLevel == e2?.alertLevel &&
        listEquality.equals(e1?.verificationSignals, e2?.verificationSignals) &&
        e1?.emergencyDescription == e2?.emergencyDescription &&
        listEquality.equals(
            e1?.trustedContactResponses, e2?.trustedContactResponses) &&
        listEquality.equals(e1?.location, e2?.location) &&
        listEquality.equals(e1?.phonenumber, e2?.phonenumber);
  }

  @override
  int hash(AlertsRecord? e) => const ListEquality().hash([
        e?.userRef,
        e?.createdAt,
        e?.status,
        e?.trustScore,
        e?.alertLevel,
        e?.verificationSignals,
        e?.emergencyDescription,
        e?.trustedContactResponses,
        e?.location,
        e?.phonenumber
      ]);

  @override
  bool isValidKey(Object? o) => o is AlertsRecord;
}
