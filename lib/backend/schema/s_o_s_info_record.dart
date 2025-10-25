import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SOSInfoRecord extends FirestoreRecord {
  SOSInfoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "aditionalinfo" field.
  List<String>? _aditionalinfo;
  List<String> get aditionalinfo => _aditionalinfo ?? const [];
  bool hasAditionalinfo() => _aditionalinfo != null;

  // "emergency" field.
  String? _emergency;
  String get emergency => _emergency ?? '';
  bool hasEmergency() => _emergency != null;

  void _initializeFields() {
    _aditionalinfo = getDataList(snapshotData['aditionalinfo']);
    _emergency = snapshotData['emergency'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('SOSInfo');

  static Stream<SOSInfoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SOSInfoRecord.fromSnapshot(s));

  static Future<SOSInfoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SOSInfoRecord.fromSnapshot(s));

  static SOSInfoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SOSInfoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SOSInfoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SOSInfoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SOSInfoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SOSInfoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSOSInfoRecordData({
  String? emergency,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'emergency': emergency,
    }.withoutNulls,
  );

  return firestoreData;
}

class SOSInfoRecordDocumentEquality implements Equality<SOSInfoRecord> {
  const SOSInfoRecordDocumentEquality();

  @override
  bool equals(SOSInfoRecord? e1, SOSInfoRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.aditionalinfo, e2?.aditionalinfo) &&
        e1?.emergency == e2?.emergency;
  }

  @override
  int hash(SOSInfoRecord? e) =>
      const ListEquality().hash([e?.aditionalinfo, e?.emergency]);

  @override
  bool isValidKey(Object? o) => o is SOSInfoRecord;
}
