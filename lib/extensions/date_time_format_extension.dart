extension ToString on DateTime {
  String toChinese() {
    return "$year年$month月$day日";
  }

  String toEnglish() {
    return "$year/$month/$day";
  }

  String auto({required String locale}) {
    switch (locale) {
      case 'zh':
        return toChinese();
      default:
        return toEnglish();
    }
  }
}
