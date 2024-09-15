import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MembrosRecord extends FirestoreRecord {
  MembrosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "faccao" field.
  DocumentReference? _faccao;
  DocumentReference? get faccao => _faccao;
  bool hasFaccao() => _faccao != null;

  // "nome_completo" field.
  String? _nomeCompleto;
  String get nomeCompleto => _nomeCompleto ?? '';
  bool hasNomeCompleto() => _nomeCompleto != null;

  // "vulgo" field.
  List<String>? _vulgo;
  List<String> get vulgo => _vulgo ?? const [];
  bool hasVulgo() => _vulgo != null;

  void _initializeFields() {
    _faccao = snapshotData['faccao'] as DocumentReference?;
    _nomeCompleto = snapshotData['nome_completo'] as String?;
    _vulgo = getDataList(snapshotData['vulgo']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('membros');

  static Stream<MembrosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MembrosRecord.fromSnapshot(s));

  static Future<MembrosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MembrosRecord.fromSnapshot(s));

  static MembrosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MembrosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MembrosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MembrosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MembrosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MembrosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMembrosRecordData({
  DocumentReference? faccao,
  String? nomeCompleto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'faccao': faccao,
      'nome_completo': nomeCompleto,
    }.withoutNulls,
  );

  return firestoreData;
}

class MembrosRecordDocumentEquality implements Equality<MembrosRecord> {
  const MembrosRecordDocumentEquality();

  @override
  bool equals(MembrosRecord? e1, MembrosRecord? e2) {
    const listEquality = ListEquality();
    return e1?.faccao == e2?.faccao &&
        e1?.nomeCompleto == e2?.nomeCompleto &&
        listEquality.equals(e1?.vulgo, e2?.vulgo);
  }

  @override
  int hash(MembrosRecord? e) =>
      const ListEquality().hash([e?.faccao, e?.nomeCompleto, e?.vulgo]);

  @override
  bool isValidKey(Object? o) => o is MembrosRecord;
}
