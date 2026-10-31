import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/state/ai_chat_state.dart';
import 'package:masanawa/src/theme/masanawa_theme.dart';
import 'package:masanawa/src/ui/components/masanawa_conversation_tile.dart';
import 'package:masanawa/src/ui/components/conversation_search_field.dart';

void main() {
  test('inbox excludes archived threads and orders pinned before activity', () {
    final threads = <String, ChatThread>{
      'unread': ChatThread(characterId: 'unread', draft: 'new'),
      'pinned': ChatThread(characterId: 'pinned', pinned: true, draft: 'old'),
      'archived': ChatThread(characterId: 'archived',
        archived: true, pinned: true, draft: 'saved'),
    };
    final state = AiChatState(threads: threads);
    expect(state.chatList.map((t) => t.characterId).toList(),
      ['pinned', 'unread']);
  });

  testWidgets('shared inbox tile retains avatar, title and trailing badge',
      (tester) async {
    await tester.pumpWidget(MaterialApp(
      theme: buildMasanawaTheme(brightness: Brightness.light),
      home: Scaffold(body: MasanawaConversationTile(
        avatar: const CircleAvatar(radius: 26, child: Text('M')),
        name: 'Masana',
        preview: const Text('Last response'),
        time: '8:30 PM',
        unread: 3,
        pinned: false,
        onTap: () {},
      )),
    ));
    expect(find.text('Masana'), findsOneWidget);
    expect(find.text('Last response'), findsOneWidget);
    expect(find.text('8:30 PM'), findsOneWidget);
    expect(find.text('3'), findsOneWidget);
    final tile = tester.widget<ListTile>(find.byType(ListTile));
    expect(tile.minTileHeight, greaterThanOrEqualTo(76));
  });

  testWidgets('search uses gray field and borderless rounded pill',
      (tester) async {
    final controller = TextEditingController();
    addTearDown(controller.dispose);
    await tester.pumpWidget(MaterialApp(
      theme: buildMasanawaTheme(brightness: Brightness.light),
      home: Scaffold(body: ConversationSearchField(
        controller: controller, hintText: 'Search conversations',
        onChanged: (_) {}, onClear: () {},
      )),
    ));
    final field = tester.widget<TextField>(find.byType(TextField));
    final border = field.decoration!.enabledBorder! as OutlineInputBorder;
    expect(border.borderSide.style, BorderStyle.none);
    expect(border.borderRadius.topLeft.x, greaterThanOrEqualTo(20));
    expect(field.decoration!.fillColor, MasanawaColors.light().fieldSurface);
  });
  test('conversation viewport anchor survives storage roundtrip', () {
    final original = ChatThread(characterId: 'anchor',
      scrollOffset: 312,
      scrollAnchorMessageId: 'message-42', scrollAnchorFraction: .3);
    final restored = ChatThread.fromJson(original.toJson());
    expect(restored.scrollAnchorMessageId, 'message-42');
    expect(restored.scrollAnchorFraction, .3);
    expect(restored.scrollOffset, 312);
    final updated = restored.copyWith(scrollOffset: 337,
      scrollAnchorMessageId: 'message-43', scrollAnchorFraction: .2);
    expect(updated.scrollAnchorMessageId, 'message-43');
    expect(updated.scrollAnchorFraction, .2);
  });

}
