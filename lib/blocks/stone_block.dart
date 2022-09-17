import 'package:app_minecraft/components/block_component.dart';
import 'package:app_minecraft/resources/blocks.dart';

class StoneBlock extends BlockComponent {
  StoneBlock({required super.blockIndex, required super.chunkIndex})
      : super(block: Blocks.stone);

  @override
  Future<void> onLoad() async {
    super.onLoad();

    itemDropped = Blocks.cobblestone;
  }
}
