/// An object useful for appending context to a message.
class ContextualMessage {
  /// Original message.
  String message;

  /// Optional context map, used for including additional data.
  Map<String, dynamic> context;

  /// Returns instance of ContextualMessage.
  ContextualMessage(this.message, {this.context});

  @override
  String toString() => this.message;
}
