class ApiService {
  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 2)); // Simulate network call
    return 'Data from API';
  }
}
