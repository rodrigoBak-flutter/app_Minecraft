import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:app_minecraft/global/world_data.dart';
import 'package:app_minecraft/layout/controller_widget.dart';
import 'package:app_minecraft/layout/hunger_and_health_bar.dart';
import 'package:app_minecraft/layout/quit_and_save_button.dart';
import 'package:app_minecraft/screens/respawn_screen.dart';
import 'package:app_minecraft/utils/constants.dart';
import 'package:app_minecraft/widgets/player_health_bar.dart';
import 'package:app_minecraft/widgets/player_hunger_bar.dart';
import 'package:app_minecraft/main_game.dart';
import 'package:app_minecraft/utils/game_methods.dart';
import 'package:app_minecraft/widgets/crafting/crafting_inventory.dart';
import 'package:app_minecraft/widgets/inventory/inventory_slot.dart';
import 'package:app_minecraft/widgets/inventory/inventory_storage_widget.dart';
import 'package:app_minecraft/widgets/inventory/item_bar.dart';
import 'package:app_minecraft/widgets/inventory/player_inventory.dart';

class GameLayout extends StatelessWidget {
  final int seed;
  const GameLayout({Key? key, required this.seed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //This is the main game
          GameWidget(
            game: MainGame(
              worldData: Hive.box(worldDataBox).get(seed),
            ),
          ),

          //Everything coming here will be in the hud
          const ControllerWidget(),
          const ItemBarWidget(),
          const HungerAndHealthBar(),
          const PlayerInventoryWidget(),
          const CraftingInventory(),
          const RespawnScreen(),
          const QuitAndSaveButton()
        ],
      ),
    );
  }
}
