import 'package:flutter/material.dart';

import 'model.dart';

class GroupMemberPickerController extends ChangeNotifier {
  String currentRoute = "/";

  List<GroupMember> allMembers = [];
  List<GroupDetails> groupDetails = [];

  List<GroupMember> get filteredMember => allMembers
      .where(
        (element) => element.name!.contains(currentSearchString),
      )
      .toList();

  List<Object> selectedObject = [];

  reset() {
    for (var i in groupDetails) {
      i.selectedMembers.clear();
    }
    currentRoute = "/";
    selectedObject.clear();
    notifyListeners();
  }

  prepareData(List<GroupDetails> details) async {
    groupDetails = List.from(details);

    // // print(allMembers.length);
    notifyListeners();
  }

  backToDefault() {
    if (currentRoute != "/") {
      currentRoute = "/";
      notifyListeners();
    }
  }

  String currentSearchString = "";

  changeCurrentSearchString(String s) {
    currentSearchString = s;
    notifyListeners();
  }

  List<GroupMember> getAllSelectedMembers() {
    Set<GroupMember> members = {};
    selectedObject.clear();
    for (final i in groupDetails) {
      members.addAll(i.selectedMembers);
      selectedObject.addAll(i.selectedMembers);
    }

    return members.toList();
  }

  void recover(List<Object> members) {
    for (final i in members) {
      // addToSelectedObject(i);
      if (!selectedObject.contains(i)) {
        if (i is GroupMember) {
          changeSelectedMembers(i);
          // print(selectedObject.contains(i));
        }
      }
    }
  }

  void selectAGroup(int index) {
    bool isSelectedAll = groupDetails[index].selectedMembers.length ==
        groupDetails[index].members.length;

    if (isSelectedAll) {
      groupDetails[index].selectedMembers.clear();
      selectedObject.remove(groupDetails[index]);
    } else {
      groupDetails[index].selectedMembers = groupDetails[index].members.toSet();
      selectedObject.add(groupDetails[index]);
    }

    notifyListeners();
  }

  // ignore: avoid_init_to_null
  GroupDetails? currentDepartmentDetails = null;
  changeCurremtDeptDetails(GroupDetails group) {
    currentDepartmentDetails = group;
    currentRoute = group.groupName;
    notifyListeners();
  }

  changeSelectedMembers(GroupMember member) {
    if (selectedObject.contains(member)) {
      selectedObject.remove(member);
      for (var i in groupDetails) {
        i.selectedMembers.remove(member);
      }
    } else {
      selectedObject.add(member);
      for (var i in groupDetails) {
        if (i.members.contains(member)) {
          i.selectedMembers.add(member);
        }
      }
    }

    notifyListeners();
  }

  removeFromSelectedObject(Object o) {
    if (o is! GroupDetails && o is! GroupMember) {
      return;
    }

    selectedObject.remove(o);

    if (o is GroupDetails) {
      o.selectedMembers.clear();
    } else {
      for (var i in groupDetails) {
        i.selectedMembers.remove(o);
      }
    }

    notifyListeners();
  }
}
