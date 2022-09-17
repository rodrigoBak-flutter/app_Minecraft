import 'package:flame/input.dart';
import 'package:app_minecraft/components/block_component.dart';
import 'package:app_minecraft/global/global_game_reference.dart';
import 'package:app_minecraft/global/inventory.dart';
import 'package:app_minecraft/resources/blocks.dart';
import 'package:app_minecraft/widgets/inventory/inventory_item_and_number.dart';

class CraftingTableBlock extends BlockComponent {
  CraftingTableBlock({required super.chunkIndex, required super.blockIndex})
      : super(block: Blocks.craftingTable);

  InventoryManager inventoryManager =
      GlobalGameReference.instance.gameReference.worldData.inventoryManager;

  @override
  bool onTapDown(TapDownInfo info) {
    //PLayer is not holding anyhting
    if (inventoryManager
            .inventorySlots[inventoryManager.currentSelectedInventorySlot.value]
            .block ==
        null) {
      GlobalGameReference.instance.gameReference.worldData.craftingManager
          .craftingInventoryIsOpen.value = true;
    } else {
      //break block
      super.onTapDown(info);
    }

    return true;
  }
}
