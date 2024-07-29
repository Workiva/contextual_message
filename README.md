# contextual_message

The standard [Dart Logging package](https://pub.dev/packages/logging) doesn't support structured logs out of the box.  
This often results in log messages that include contextual information embedded within them, often frustrating and complicating efforts to aggregate logs.
This library allows context to be captured separately from the log message by way of the `ContextualMessage` object.

> [!IMPORTANT]
> **Please note**: The log reporter will need to be modified to accept a ContextualMessage and separate out the message from the context into the format your logging system supports.

It is better to use a consistent log message string, and use `ContextualMessage` to add useful
key-value pairs to the log's context. This allows for log messages to be counted/alerted on without the
use of regex, and generally makes consuming the log output less chaotic.

For example:

Instead of writing:
```dart
logger.info('Document ID ABC failed validation for user 123');
```

...you should write:
```dart
logger.info(ContextualMessage("Document failed validation", context: {"docId":"ABC", "userId":"123"}));
```

