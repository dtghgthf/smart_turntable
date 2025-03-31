import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_nfc_kit/flutter_nfc_kit.dart';
import 'package:ndef/ndef.dart' as ndef;

Future<bool> writeNFC(String data) async {
  var tag = await FlutterNfcKit.poll(iosMultipleTagMessage: "Multiple tags found!", iosAlertMessage: "Scan your tag");

  print(jsonEncode(tag));

  if (tag.type == NFCTagType.iso7816) {
    var result = await FlutterNfcKit.transceive("00B0950000");
    print(result);
  }

  await FlutterNfcKit.setIosAlertMessage("hi there!");

  if (tag.ndefAvailable == null) return false;
  if (tag.ndefWritable == null) return false;

  // read NDEF records if available
  if (tag.ndefAvailable!) {
    /// decoded NDEF records (see [ndef.NDEFRecord] for details)
    /// `UriRecord: id=(empty) typeNameFormat=TypeNameFormat.nfcWellKnown type=U uri=https://github.com/nfcim/ndef`
    for (var record in await FlutterNfcKit.readNDEFRecords(cached: false)) {
      print(record.toString());
    }
    /// raw NDEF records (data in hex string)
    /// `{identifier: "", payload: "00010203", type: "0001", typeNameFormat: "nfcWellKnown"}`
    for (var record in await FlutterNfcKit.readNDEFRawRecords(cached: false)) {
      print(jsonEncode(record).toString());
    }
  }

  // write NDEF records if applicable
  if (tag.ndefWritable!) {
    // decoded NDEF records
    await FlutterNfcKit.writeNDEFRecords([new ndef.UriRecord.fromString(data)]);
  }

  return true;
}