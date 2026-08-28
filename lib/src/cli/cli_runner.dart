import 'dart:io';

import 'package:clean_arch_kit/src/generators/feature_generator.dart';
import 'package:clean_arch_kit/src/generators/project_generator.dart';

Future<void> runCli(List<String> args) async {
  if (args.isEmpty) {
    printHelp();
    return;
  }

  if (args[0] == 'create') {
    if (args.length == 1) {
      ProjectGenerator().generate();
      return;
    }

    if (args.length == 3 && args[1] == 'feature') {
      if (!architectureExists()) {
        print('Architecture not found.');
        print('Initializing Clean Architecture...\n');
        await ProjectGenerator().generate();
      }
      await FeatureGenerator().generate(args[2]);
      return;
    }
  }

  printHelp();
}

bool architectureExists() {
  return Directory('lib/core').existsSync() &&
      Directory('lib/app').existsSync() &&
      Directory('lib/features').existsSync();
}

void printHelp() {
  print('''

CleanArchitecureKit

Commands:

  cleanarchitecurekit create
  cleanarchitecurekit create feature <feature_name>

Examples:

  cleanarchitecurekit create
  cleanarchitecurekit create feature auth
  cleanarchitecurekit create feature payments
''');
}
