import 'dart:io';

class FileGenerator {
  Future<void> generateFeatureFiles(String featureName) async {
    final basePath = 'lib/features/$featureName';
    final baseProviderPath = '$basePath/providers';
    final baseDataPath = '$basePath/data';
    final baseDomainPath = '$basePath/domain';
    final basePresentationPath = '$basePath/presentation';

    // ─────────────────────────────────────────────
    // PROVIDER
    // ─────────────────────────────────────────────

    _createFile('$baseProviderPath/${featureName}_providers.dart');

    // ─────────────────────────────────────────────
    // DATA
    // ─────────────────────────────────────────────

    _createFile('$baseDataPath/local/${featureName}_local_datasource.dart');

    _createFile('$baseDataPath/models/${featureName}_model.dart');

    _createFile('$baseDataPath/network/${featureName}_api_service.dart');

    _createFile(
      '$baseDataPath/repositories/${featureName}_repository_impl.dart',
    );

    // ─────────────────────────────────────────────
    // DOMAIN
    // ─────────────────────────────────────────────

    _createFile('$baseDomainPath/entities/${featureName}_entity.dart');

    _createFile('$baseDomainPath/repositories/${featureName}_repository.dart');

    _createFile('$baseDomainPath/usecases/${featureName}_usecase.dart');

    // ─────────────────────────────────────────────
    // PRESENTATION
    // ─────────────────────────────────────────────

    _createFile('$basePresentationPath/screens/${featureName}_screen.dart');

    _createFile(
      '$basePresentationPath/viewmodels/${featureName}_view_model.dart',
    );

    _createFile('$basePresentationPath/widgets/${featureName}_widget.dart');

    print('✓ Files generated for "$featureName"');
  }

  Future<void> generateProjectLevelFiles() async {
    final baseCorePath = 'lib/core';
    final baseAppPath = 'lib/app';

    // ─────────────────────────────────────────────
    // CORE
    // ─────────────────────────────────────────────

    _createFile('$baseCorePath/constants/app_constants.dart');
    _createFile('$baseCorePath/errors/app_exceptions.dart');
    _createFile('$baseCorePath/local/app_database.dart');
    _createFile('$baseCorePath/network/dio_client.dart');

    // ─────────────────────────────────────────────
    // App
    // ─────────────────────────────────────────────

    _createFile('$baseAppPath/theme/app_theme.dart');
    _createFile('$baseAppPath/theme/app_Colors.dart');
    _createFile('$baseAppPath/routes/app_routes.dart');
    _createFile('$baseAppPath/routes/app_router.dart');

    print('✓ App Level Files generated');
  }

  // ─────────────────────────────────────────────
  // CREATE FILE
  // ─────────────────────────────────────────────

  void _createFile(String path) {
    final file = File(path);

    file.parent.createSync(recursive: true);

    file.writeAsStringSync("");

    print('✓ $path');
  }
}
