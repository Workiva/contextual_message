@TestOn('vm')
import 'package:contextual_message/contextual_message.dart';
import 'package:test/test.dart';

void main() {
  test('ContextualMessage', () {
    final message = ContextualMessage('mathematics', context: {'2+2': '4'});
    expect(message.message, 'mathematics');
    expect(message.context.containsKey('2+2'), isTrue);
    expect(message.context['2+2'], '4');
  });
}
