import 'package:flutter/material.dart';

enum LimitationState { less, more, none }

abstract class InputWithLimitation extends StatelessWidget {
  const InputWithLimitation({super.key});

  @override
  Widget build(BuildContext context);

  Map<String, num>? getVal();
}

class ThresholdTextInput extends InputWithLimitation {
  ThresholdTextInput({super.key, required this.threshold, required this.name});
  final num threshold;
  final String name;

  final TextEditingController controller = TextEditingController();
  final ValueNotifier<LimitationState> state =
      ValueNotifier(LimitationState.none);

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
        listenable: state,
        builder: (ctx, _) {
          return SizedBox(
            width: 500,
            child: Row(
              children: [
                Flexible(
                    child: TextField(
                  controller: controller,
                  onChanged: (value) {
                    if (value == "" || num.tryParse(value) == null) {
                      state.value = LimitationState.none;
                      return;
                    }

                    if (num.tryParse(value) != null &&
                        num.tryParse(value)! < threshold) {
                      state.value = LimitationState.less;
                      return;
                    }

                    if (num.tryParse(value) != null &&
                        num.tryParse(value)! > threshold) {
                      state.value = LimitationState.more;
                      return;
                    }
                  },
                )),
                const SizedBox(
                  width: 10,
                ),
                Visibility(
                    maintainState: true,
                    maintainSize: true,
                    visible: state.value != LimitationState.none,
                    child: num.tryParse(controller.text) == threshold
                        ? const Icon(Icons.check)
                        : state.value == LimitationState.less
                            ? Transform.rotate(
                                angle: 3.14 / 2,
                                child: const Icon(
                                  Icons.arrow_back,
                                  color: Colors.greenAccent,
                                ),
                              )
                            : Transform.rotate(
                                angle: -3.14 / 2,
                                child: const Icon(
                                  Icons.arrow_back,
                                  color: Colors.redAccent,
                                ),
                              ))
              ],
            ),
          );
        });
  }

  @override
  Map<String, num>? getVal() {
    if (num.tryParse(controller.text) == null) {
      return null;
    }
    return {name: num.tryParse(controller.text)!};
  }
}
