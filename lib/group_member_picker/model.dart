// ignore_for_file: depend_on_referenced_packages

import 'package:collection/collection.dart';

class GroupMember {
  int? id;
  String? name;
  int? groupId;
  String? groupName;

  GroupMember({this.id, this.name, this.groupId, this.groupName});

  GroupMember.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    groupId = json['groupId'];
    groupName = json['groupName'];
  }

  @override
  String toString() {
    return name ?? "";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['groupId'] = groupId;
    data['groupName'] = groupName;
    return data;
  }
}

class Group {
  int? id;
  String? groupName;

  Group({this.id, this.groupName});

  Group.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    groupName = json['groupName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['groupName'] = groupName;
    return data;
  }
}

class GroupDetails {
  String groupName;
  int groupId;
  List<GroupMember> members;
  Set<GroupMember> selectedMembers = {};
  GroupDetails(
      {required this.groupId, required this.groupName, required this.members});

  static GroupDetails fromObj(Group groups, List<GroupMember> members) {
    return GroupDetails(
        groupId: groups.id!, groupName: groups.groupName!, members: members);
  }

  @override
  String toString() {
    return "$groupName (${members.length}人)";
  }

  static List<GroupDetails> mock() {
    return ["天", "地", "玄", "黄"]
        .mapIndexed((i, e) => GroupDetails(
            groupId: i,
            groupName: e,
            members: List.generate(
                10,
                (index) => GroupMember(
                    id: index * i,
                    name: "$e成员$index",
                    groupId: i,
                    groupName: e))))
        .toList();
  }
}
