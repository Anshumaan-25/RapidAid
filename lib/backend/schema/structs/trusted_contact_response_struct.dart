// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class TrustedContactResponseStruct extends FFFirebaseStruct {
  TrustedContactResponseStruct({
    String? contact,
    String? response,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _contact = contact,
        _response = response,
        super(firestoreUtilData);

  // "contact" field.
  String? _contact;
  String get contact => _contact ?? '';
  set contact(String? val) => _contact = val;

  bool hasContact() => _contact != null;

  // "response" field.
  String? _response;
  String get response => _response ?? '';
  set response(String? val) => _response = val;

  bool hasResponse() => _response != null;

  static TrustedContactResponseStruct fromMap(Map<String, dynamic> data) =>
      TrustedContactResponseStruct(
        contact: data['contact'] as String?,
        response: data['response'] as String?,
      );

  static TrustedContactResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? TrustedContactResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'contact': _contact,
        'response': _response,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'contact': serializeParam(
          _contact,
          ParamType.String,
        ),
        'response': serializeParam(
          _response,
          ParamType.String,
        ),
      }.withoutNulls;

  static TrustedContactResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      TrustedContactResponseStruct(
        contact: deserializeParam(
          data['contact'],
          ParamType.String,
          false,
        ),
        response: deserializeParam(
          data['response'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TrustedContactResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TrustedContactResponseStruct &&
        contact == other.contact &&
        response == other.response;
  }

  @override
  int get hashCode => const ListEquality().hash([contact, response]);
}

TrustedContactResponseStruct createTrustedContactResponseStruct({
  String? contact,
  String? response,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TrustedContactResponseStruct(
      contact: contact,
      response: response,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TrustedContactResponseStruct? updateTrustedContactResponseStruct(
  TrustedContactResponseStruct? trustedContactResponse, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    trustedContactResponse
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTrustedContactResponseStructData(
  Map<String, dynamic> firestoreData,
  TrustedContactResponseStruct? trustedContactResponse,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (trustedContactResponse == null) {
    return;
  }
  if (trustedContactResponse.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      trustedContactResponse.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final trustedContactResponseData = getTrustedContactResponseFirestoreData(
      trustedContactResponse, forFieldValue);
  final nestedData =
      trustedContactResponseData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      trustedContactResponse.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTrustedContactResponseFirestoreData(
  TrustedContactResponseStruct? trustedContactResponse, [
  bool forFieldValue = false,
]) {
  if (trustedContactResponse == null) {
    return {};
  }
  final firestoreData = mapToFirestore(trustedContactResponse.toMap());

  // Add any Firestore field values
  trustedContactResponse.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTrustedContactResponseListFirestoreData(
  List<TrustedContactResponseStruct>? trustedContactResponses,
) =>
    trustedContactResponses
        ?.map((e) => getTrustedContactResponseFirestoreData(e, true))
        .toList() ??
    [];
