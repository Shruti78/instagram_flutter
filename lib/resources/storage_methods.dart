import 'dart:typed_data';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

class StorageMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseStorage _storage = FirebaseStorage.instance;
  // add image to firebase storage

  Future<String> uploadImagetoStorage(
      String childnName, Uint8List file, bool isPost) async {
    Reference ref = _storage
        .ref()
        .child(childnName)
        .child(_auth.currentUser!.uid); // folder to file that exists

    UploadTask uploadTask = ref.putData(
        file); // with upload task we hwve abilty to control how file is being uploded in firebase

    TaskSnapshot snap = await uploadTask;

    String downloadUrl = await snap.ref
        .getDownloadURL(); // we can download image from our firebase storage

    return downloadUrl;
  }
}
