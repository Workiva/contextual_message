# contextual_message

Provides the `ContextualMessage` object which is useful for client-side logging in Dart.

The log reporter (currently done by the `app_intelligence_dart` package) uses this object
to add context dimensions to log messages.

It is better to use a consistent log message string, and use `ContextualMessage` to add useful
variables to the log's context. This allows for log messages to be counted/alerted on without the
use of regex, and generally makes consuming the log output less chaotic.

For example:

Instead of writing:
```dart
logger.info('Document ID <docID here> failed validation');
```

...you should write:
```dart
logger.info(ContextualMessage("Document failed validation", context: {"docId": <docID here>}));
```

