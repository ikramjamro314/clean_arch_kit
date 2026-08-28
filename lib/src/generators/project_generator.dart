import 'dart:io';

import 'package:clean_arch_kit/src/generators/files_generator.dart';

class ProjectGenerator {
  Future<void> generate() async {
    final directories = [
      'lib/core',
      'lib/core/constants',
      'lib/core/errors',
      'lib/core/local',
      'lib/core/network',
      'lib/core/utils',
      'lib/core/widgets',

      'lib/app',
      'lib/app/routes',
      'lib/app/theme',

      'lib/features',
      'lib/features/feature-1',
      'lib/features/feature-1_providers',

      'lib/features/feature-1/data',
      'lib/features/feature-1/data/repositories',
      'lib/features/feature-1/data/models',
      'lib/features/feature-1/data/services',
      'lib/features/feature-1/data/local',
      'lib/features/feature-1/data/network',

      'lib/features/feature-1/domain',
      'lib/features/feature-1/domain/entities',
      'lib/features/feature-1/domain/repositories',
      'lib/features/feature-1/domain/usecases',

      'lib/features/feature-1/presentation',
      'lib/features/feature-1/presentation/screens',
      'lib/features/feature-1/presentation/widgets',
      'lib/features/feature-1/presentation/viewModels',
    ];

    for (final directory in directories) {
      await Directory(directory).create(recursive: true);
    }

    print('✓ Project architecture created');

    final filesGenerator = FileGenerator();
    await filesGenerator.generateProjectLevelFiles();
  }
}
