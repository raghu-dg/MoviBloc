enum SearchType {
  movie("Movie"),
  show("Tv Show"),
  person("Person");

  const SearchType(this.value);

  final String value;

  static SearchType get(String value) {
    SearchType type = SearchType.movie;
    switch (value) {
      case "Movie":
        type = SearchType.movie;
        break;
      case "Tv Show":
        type = SearchType.show;
        break;
      case "Person":
        type = SearchType.person;
        break;
      default:
        SearchType.person;
    }
    return type;
  }
}
