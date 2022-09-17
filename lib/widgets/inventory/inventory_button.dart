import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:app_minecraft/global/global_game_reference.dart';
import 'package:app_minecraft/utils/game_methods.dart';

class InventoryButtonWidget extends StatelessWidget {
  const InventoryButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GlobalGameReference.instance.gameReference.worldData.inventoryManager
                .inventoryIsOpen.value =
            !GlobalGameReference.instance.gameReference.worldData
                .inventoryManager.inventoryIsOpen.value;
      },
      child: SizedBox(
        height: GameMethods.instance.slotSize,
        width: GameMethods.instance.slotSize,
        child: FittedBox(
          child: Image.asset("assets/images/inventory/inventory_button.png"),
        ),
      ),
    );
  }
}
