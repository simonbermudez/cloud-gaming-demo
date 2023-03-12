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
    'apex_legends': 'Launch yourself into the immersive Apex Legends universe! Team up in a strategic battle royale shooter game that features Legendary character-based gameplay, best-in-class squad battles, and fast-paced combat.',
    'mario_kart_tour': 'Put the pedal to the metal in courses inspired by real-world locations as well as Mario Kart series favorites! Challenge up to 7 friends or opponents worldwide! A variety of divers, karts, and gliders can be collected and upgraded! Find the combo that will lead you to victory!',
    'pubg': 'PUBG is a classic battle royale shooter where 100 players are dropped onto an island in teams of four, and have to scavenge resources and eliminate the competition until they\'re the last ones standing.',
    'roblox': 'Roblox is the ultimate virtual universe that lets you create, share experiences with friends, and be anything you can imagine. Join millions of people and discover an infinite variety of immersive experiences created by a global community!',
    'sonic_dash': 'Run and jump through fun 3D race courses as Sonic the Hedgehog, Knuckles, Tails and other Sonic friends and heroes in this racing & endless runner game. Run and race past challenging obstacles in this fast and frenzied endless running game by SEGA! Sonic Dash is a fun game for kids and adults alike!',
    'super_mario_run': 'You control Mario by making Mario jump as he constantly runs forward through his world. You time your jumps to pull off stylish jumps, midair spins, and jump off walls to collect coins and reach the goal!',
  };

  static Map<String, String> appNameMap = const {
    'apex_legends': 'Apex Legends',
    'mario_kart_tour': 'Mario Kart Tour',
    'pubg': 'PUBG Mobile',
    'roblox': 'Roblox',
    'sonic_dash': 'Sonic Dash',
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
