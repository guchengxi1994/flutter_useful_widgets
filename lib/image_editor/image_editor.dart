import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../annotation.dart';
import 'controllers.dart';

/// 工具栏
class UsefulImageEditor extends StatelessWidget {
  const UsefulImageEditor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 50,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
    );
  }
}

/// 跳转到具体的editor页面
class NavigatorWidget extends StatelessWidget {
  const NavigatorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final details = context.watch<ImageController>().baseDetails;

    return Positioned(
        left: details == null ? 0 : details.xmax - 40,
        top: details == null ? 0 : details.ymax + 10,
        child: Visibility(
            visible: details != null,
            child: Material(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                width: 80,
                height: 40,
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: () async {
                            final Object? result;
                            if (kIsWeb) {
                              result = await context
                                  .read<ImageController>()
                                  .getImgWidget(
                                      MediaQuery.of(context).size.width,
                                      MediaQuery.of(context).size.height);
                            } else {
                              result = await context
                                  .read<ImageController>()
                                  .capture(MediaQuery.of(context).size.width,
                                      MediaQuery.of(context).size.height);
                            }

                            if (result != null) {
                              showGeneralDialog(
                                  context: context,
                                  pageBuilder: ((context, animation,
                                      secondaryAnimation) {
                                    return Center(
                                      child: Material(
                                        child: SizedBox(
                                          width: 500,
                                          height: 500,
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                width: 500,
                                                height: 400,
                                                child: kIsWeb
                                                    ? _webBuilder(
                                                        result as CustomPainter)
                                                    : _builder(
                                                        result as ByteData),
                                              ),
                                              ElevatedButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: const Text("确定"))
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  }));
                            }
                          },
                          child: const Icon(
                            Icons.check,
                            color: Colors.green,
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: () {},
                          child: const Icon(
                            Icons.close,
                            color: Colors.red,
                          ),
                        )),
                  ],
                ),
              ),
            )));
  }

  @FeatureNotSupport("better dont be used on web")
  Widget _webBuilder(CustomPainter painter) {
    return CustomPaint(
      painter: painter,
    );
  }

  Widget _builder(ByteData data) {
    return Image.memory(
      data.buffer.asUint8List(),
      fit: BoxFit.fill,
    );
  }
}
