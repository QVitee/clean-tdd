class ContinentReq {
  final String getContinent = r'''
  query GetContinent($code: ID! = "AF") {
      continent(code: $code){
      name
      countries {
        code
        name}
      }
  }
''';
}
