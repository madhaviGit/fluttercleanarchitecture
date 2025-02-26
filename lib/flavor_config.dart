enum Environmemt { dev, stage, production }

abstract class AppEnvironment {
  static late String baseUrl;
  static late String environmentName;

  static late Environmemt _environment;

  static Environmemt get environment => _environment;

  static setUpEnv(Environmemt environment) {
    _environment = environment;
    switch (_environment) {
      case Environmemt.dev:
        baseUrl = "API base URL";
        environmentName = "dev";
        break;

      case Environmemt.stage:
        baseUrl = "API base URL";
        environmentName = "stage";
        break;
      case Environmemt.production:
        baseUrl = "API base URL";
        environmentName = "production";
        break;
      }
  }
}
