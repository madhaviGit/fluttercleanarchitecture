class ApiService {
  Future<String> fetchData() async {
    await Future.delayed(const Duration(seconds: 2)); // Simulate network call
    return 'Data from API';
  }
}
