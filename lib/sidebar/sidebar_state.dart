class SidebarState {
  final bool isExpanded;
  final int selectedIndex;

  SidebarState({
    this.isExpanded = false,
    this.selectedIndex = -1,
  });

  SidebarState copyWith({
    bool? isExpanded,
    int? selectedIndex,
  }) {
    return SidebarState(
      isExpanded: isExpanded ?? this.isExpanded,
      selectedIndex: selectedIndex ?? this.selectedIndex,
    );
  }
}
