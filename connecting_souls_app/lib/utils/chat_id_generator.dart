String chatID(String u1, String u2) {
  if (u1[0].toLowerCase().codeUnits[0] > u2.toLowerCase().codeUnits[0]) {
    return '$u1-$u2';
  } else {
    return '$u2-$u1';
  }
}
