class links {
  static const allBooksUri = 'http://10.192.38.46:8000/api/books';

  static const allUsersUri = 'http://10.192.38.46:8000/api/users';
  //aradıgımız isimi veya maili searchın önüne yazamalıyız

  static String allUsersNameUri(String? name) {
    return 'http://10.192.38.46:8000/api/users/search/$name';
  }

  static String allUsersEmailUri(String? email) {
    return 'http://10.192.38.46:8000/api/users/search1/$email';
  }
}
