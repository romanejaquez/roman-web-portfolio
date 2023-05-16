import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:roman_web_portfolio/shared/providers/shared_providers.dart';
import 'package:roman_web_portfolio/shared/repositories/idb_provider.dart';

class DatabaseProvider implements IDBProvider {

  final Ref ref;
  DatabaseProvider(this.ref);
  
  @override
  Future<T> getPageDataFromDB<T>(Function dataParseFunc, String collectionName, String docName) {
    Completer<T> pageCompleter = Completer();
    var db = ref.read(firebaseDbInstanceProvider);
    
    db.collection(collectionName)
      .doc(docName).get()
      .then((pageDoc) {
        
        T pageDocData = dataParseFunc(pageDoc.data() as Map<String, dynamic>) as T;
        pageCompleter.complete(pageDocData);

      }).catchError((error) {
        pageCompleter.completeError(error);
      }).onError((error, stackTrace) {
        pageCompleter.completeError(error!);
      });

    return pageCompleter.future;
  }
}