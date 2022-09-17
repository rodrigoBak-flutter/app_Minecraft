import 'package:app_minecraft/components/block_component.dart';
import 'package:app_minecraft/resources/blocks.dart';
import 'package:app_minecraft/resources/items.dart';

class IronOreBlock extends BlockComponent {
  IronOreBlock({required super.blockIndex, required super.chunkIndex})
      : super(block: Blocks.ironOre);

  @override
  Future<void> onLoad() async {
    super.onLoad();
    itemDropped = Items.ironIngot;
  }
}
