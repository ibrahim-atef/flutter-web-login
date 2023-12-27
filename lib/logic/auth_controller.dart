import 'package:flip_card/flip_card_controller.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  FlipCardController flipCardController = FlipCardController();

  void flipCard() {
    flipCardController.toggleCard();
    update();
  }
}
