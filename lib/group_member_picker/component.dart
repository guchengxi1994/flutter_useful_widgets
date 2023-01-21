import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controller.dart';
import 'model.dart';

class UsefulGroupSelector extends StatefulWidget {
  const UsefulGroupSelector({Key? key, this.widgetWidth = 550})
      : super(key: key);
  final double widgetWidth;

  @override
  State<UsefulGroupSelector> createState() => _UsefulGroupSelectorState();
}

class _UsefulGroupSelectorState extends State<UsefulGroupSelector> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) =>
          GroupMemberPickerController()..prepareData(GroupDetails.mock()),
      builder: (context, child) {
        final controller = context.watch<GroupMemberPickerController>();
        return Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(8))),
          width: widget.widgetWidth,
          height: 450,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _buildTitle(),
              const SizedBox(
                height: 1,
                child: Divider(
                  thickness: 1,
                  color: Color.fromARGB(255, 232, 232, 232),
                ),
              ),
              _buildContent(controller),
              const SizedBox(
                height: 1,
                child: Divider(
                  thickness: 1,
                  color: Color.fromARGB(255, 232, 232, 232),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              _buildBottom(),
            ],
          ),
        );
      },
    );
  }

  Widget _buildTitle() {
    return Container(
      height: 32,
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 246, 250, 254),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8), topRight: Radius.circular(8))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          SizedBox(
            width: 20,
          ),
          Text(
            "选择人员",
            style: TextStyle(fontSize: 15),
          ),
          Expanded(child: SizedBox()),
          // IconButton(
          //     onPressed: () {
          //       // Navigator.of(context).pop(null);
          //     },
          //     icon: const Icon(
          //       Icons.close,
          //       color: Colors.red,
          //     )),
        ],
      ),
    );
  }

  Widget _buildBottom() {
    return Row(
      children: [
        Expanded(child: Container()),
        InkWell(
            onTap: () {
              Navigator.of(context).pop("recover");
            },
            child: Container(
              width: 73,
              height: 21,
              padding: const EdgeInsets.only(bottom: 1),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(7)),
              child: const Center(
                child: Text(
                  "取消",
                  style: TextStyle(color: Colors.blue, fontSize: 12),
                ),
              ),
            )),
        const SizedBox(
          width: 20,
        ),
        InkWell(
            onTap: () async {
              List<GroupMember> members = context
                  .read<GroupMemberPickerController>()
                  .getAllSelectedMembers();
              Navigator.of(context).pop(members);
            },
            child: Container(
              padding: const EdgeInsets.only(bottom: 1),
              width: 73,
              height: 21,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(7)),
              child: const Center(
                child: Text(
                  "确定",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            )),
        const SizedBox(
          width: 20,
        ),
      ],
    );
  }

  Widget _buildContent(GroupMemberPickerController controller) {
    return Container(
      height: 350,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: _buildLeft(controller),
          ),
          const VerticalDivider(
            thickness: 1,
            color: Color.fromARGB(255, 232, 232, 232),
          ),
          Expanded(
            flex: 1,
            child: _buildRight(controller),
          ),
        ],
      ),
    );
  }

  Widget _buildLeft(GroupMemberPickerController controller) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSearchBar(controller),
          // const Text("组织架构"),
          const SizedBox(
            height: 5,
          ),
          searchStringController.text == ""
              ? Row(
                  children: [
                    InkWell(
                      onTap: () {
                        controller.backToDefault();
                      },
                      child: const Text("成员列表"),
                    ),
                    if (controller.currentRoute != "/")
                      Text(">${controller.currentRoute}")
                  ],
                )
              : const SizedBox(),
          const SizedBox(
            height: 15,
          ),
          _buildStructure(controller),
        ],
      ),
    );
  }

  @override
  void dispose() {
    searchStringController.dispose();
    super.dispose();
  }

  final searchStringController = TextEditingController();

  Widget _buildSearchBar(GroupMemberPickerController controller) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      width: widget.widgetWidth / 2 - 50,
      height: 38,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          border: Border.all(color: const Color.fromARGB(255, 232, 232, 232))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Image.asset(
          //   "assets/icons/search.png",
          //   width: 16,
          //   height: 16,
          // ),
          const Icon(
            Icons.search,
            size: 16,
          ),
          const SizedBox(
            width: 5,
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: TextField(
              controller: searchStringController,
              onChanged: (value) {
                controller.changeCurrentSearchString(value);
              },
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: "搜索全部人员",
                hintStyle: TextStyle(
                    color: Color.fromARGB(255, 151, 151, 151), fontSize: 14),
              ),
            ),
          )),
        ],
      ),
    );
  }

  List<GroupDetails> groupDetails = [];

  Widget _buildStructure(GroupMemberPickerController controller) {
    groupDetails = controller.groupDetails;
    if (controller.currentSearchString == "") {
      if (controller.currentRoute == "/") {
        return Expanded(
            child: ListView.builder(
                itemCount: groupDetails.length,
                itemBuilder: ((context, index) {
                  bool selectedAll =
                      groupDetails[index].selectedMembers.length ==
                              groupDetails[index].members.length &&
                          groupDetails[index].members.isNotEmpty;
                  bool selectedSomeone =
                      groupDetails[index].selectedMembers.isNotEmpty;
                  Widget leading;
                  if (selectedAll) {
                    leading = const Icon(
                      Icons.check_box,
                      size: 20,
                      color: Colors.blue,
                    );
                  } else if (selectedSomeone) {
                    leading = const Icon(
                      Icons.indeterminate_check_box_rounded,
                      size: 20,
                      color: Colors.blue,
                    );
                  } else {
                    leading = const Icon(
                      Icons.crop_square,
                      size: 20,
                    );
                  }

                  return SizedBox(
                    height: 30,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            context
                                .read<GroupMemberPickerController>()
                                .selectAGroup(index);
                          },
                          child: leading,
                        ),
                        Text(
                          groupDetails[index].toString(),
                          style: const TextStyle(fontSize: 14),
                        ),
                        const Expanded(child: SizedBox()),
                        selectedAll
                            ? const Tooltip(
                                message: "全选后无法再选择个人",
                                child:
                                    Text("下级", style: TextStyle(fontSize: 14)),
                              )
                            : InkWell(
                                child: const Text("下级",
                                    style: TextStyle(fontSize: 14)),
                                onTap: () async {
                                  final d = groupDetails[index];

                                  context
                                      .read<GroupMemberPickerController>()
                                      .changeCurremtDeptDetails(d);
                                },
                              ),
                        const SizedBox(
                          width: 10,
                        )
                      ],
                    ),
                  );
                })));
      } else {
        return SelectedMembers(
            groupDetails: controller.currentDepartmentDetails);
      }
    } else {
      return Expanded(
          child: ListView.builder(
        itemCount: controller.filteredMember.length,
        itemBuilder: ((context, index) {
          return InkWell(
              onTap: () {
                controller.changeSelectedMembers(
                  controller.filteredMember[index],
                );
              },
              child: Text(controller.filteredMember[index].name.toString()));
        }),
      ));
    }
  }

  Widget _buildRight(GroupMemberPickerController controller) {
    return ListView.builder(
      padding: const EdgeInsets.all(10),
      itemBuilder: (context, index) {
        return Row(
          children: [
            Text(controller.selectedObject[index].toString()),
            const Expanded(child: SizedBox()),
            InkWell(
              onTap: () {
                controller.removeFromSelectedObject(
                  controller.selectedObject[index],
                );
              },
              child: const Icon(
                Icons.delete,
                size: 20,
              ),
            )
          ],
        );
      },
      itemCount: controller.selectedObject.length,
    );
  }
}

class SelectedMembers extends StatelessWidget {
  const SelectedMembers({Key? key, required this.groupDetails})
      : super(key: key);

  final GroupDetails? groupDetails;

  @override
  Widget build(BuildContext context) {
    if (groupDetails == null) {
      return const SizedBox(
        height: 200,
        width: 200,
      );
    }
    return Expanded(
        child: ListView.builder(
            itemCount: groupDetails!.members.length,
            itemBuilder: ((context, index) {
              Widget leading;
              if (groupDetails!.selectedMembers
                  .contains(groupDetails!.members[index])) {
                leading = const Icon(
                  Icons.check_box,
                  size: 20,
                  color: Colors.blue,
                );
              } else {
                leading = const Icon(
                  Icons.crop_square,
                  size: 20,
                );
              }

              // // print(groupDetails!.members[index].avatarUrl);

              return SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        context
                            .read<GroupMemberPickerController>()
                            .changeSelectedMembers(
                                groupDetails!.members[index]);
                      },
                      child: leading,
                    ),
                    AvatarWidget(
                      username: groupDetails!.members[index].name.toString(),
                    )
                  ],
                ),
              );
            })));
  }
}

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({
    Key? key,
    required this.username,
  }) : super(key: key);

  final String username;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Row(
        children: [
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.blue)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: const SizedBox(
                    width: 35, height: 35, child: Icon(Icons.people)),
              )),
          const SizedBox(
            width: 8,
          ),
          Text(
            username,
          ),
        ],
      ),
    );
  }
}
