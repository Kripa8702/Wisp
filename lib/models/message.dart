class Message {
  final String text;
  final bool isUser;

  Message(this.text, this.isUser);

  @override
  String toString() {
    return '${isUser ? 'User' : 'AI'}: $text';
  }
}