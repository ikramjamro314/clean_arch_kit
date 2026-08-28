import 'dart:io';

import 'package:clean_arch_kit/src/generators/files_generator.dart';

class FeatureGenerator {
  Future<void> generate(String featureName) async {
    final basePath = 'lib/features/$featureName';

    final directories = [
      basePath,
      '$basePath/providers',

      '$basePath/data',
      '$basePath/data/models',
      '$basePath/data/repositories',
      '$basePath/data/local',
      '$basePath/data/network',

      '$basePath/domain',
      '$basePath/domain/entities',
      '$basePath/domain/repositories',
      '$basePath/domain/usecases',

      '$basePath/presentation',
      '$basePath/presentation/screens',
      '$basePath/presentation/widgets',
      '$basePath/presentation/viewmodels',
    ];

    for (final directory in directories) {
      await Directory(directory).create(recursive: true);
    }

    print('✓ Feature "$featureName" created');

    final fileGenerator = FileGenerator();
    await fileGenerator.generateFeatureFiles(featureName);

    print('✓ All useful files for "$featureName" created');
  }
}
