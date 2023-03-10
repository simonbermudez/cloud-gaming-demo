//
// Copyright 2022 Canonical Ltd.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

class Application {
  static Map<String, String> appDesMap = const {
    'super_mario_run': 'Test',
  };

  static Map<String, String> appNameMap = const {
    'super_mario_run': 'Super Mario Run',
  };

  String id = '';
  String name = '';
  String background = '';
  String description = '';
  Application({required this.id, required this.name, required this.background, this.description=''});

  factory Application.fromString(String id) {
    return Application(
      id: id,
      name: appNameMap[id] ?? "",
      background: 'lib/assets/' + id + '.jpeg',
      description: appDesMap[id] ?? ""
    );
  }
}
