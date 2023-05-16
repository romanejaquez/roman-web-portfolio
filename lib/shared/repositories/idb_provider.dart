abstract class IDBProvider {

  Future<T> getPageDataFromDB<T>(
    Function dataParseFunc,
    String collectionName,
    String docName
  );
}