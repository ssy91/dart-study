void printMessage(var header, var message) {
  print("[$header] $message");
}

void main() {
  void main() {
    print("[3] String Class");
    String sString = "Hello, Dart!";

    printMessage("3-1", sString.toLowerCase());
    printMessage("3-2", sString.toUpperCase());
    printMessage("3-3", sString.length);
    printMessage("3-4", sString.substring(0, 5));
    printMessage("3-5", sString[11]);
  }
}
