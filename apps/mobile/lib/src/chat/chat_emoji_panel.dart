import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
import '../theme/masanawa_theme.dart';
import '../screens/chat/chat_ui_copy.dart';
import 'chat_text_editing.dart';

/// Offline emoji keyboard. Explicit editing avoids the picker's default
/// UTF-16 selection assumptions when Android closes or replaces its keyboard.
class ChatEmojiPanel extends StatelessWidget {
  const ChatEmojiPanel({
    super.key,
    required this.controller,
    required this.onClose,
  });
  final TextEditingController controller;
  final VoidCallback onClose;
  @override
  Widget build(BuildContext context) {
    final colors = context.masanawa;
    return LayoutBuilder(
      builder: (context, constraints) {
        final height = (MediaQuery.sizeOf(context).height * .36).clamp(
          220.0,
          320.0,
        );
        return Container(
          key: const ValueKey('chat-emoji-panel'),
          height: height,
          color: colors.surfaceCard,
          child: Column(
            children: [
              SizedBox(
                height: 38,
                child: Row(
                  children: [
                    const SizedBox(width: 16),
                    Text(
                      ChatUiCopy.of(context, 'Emoji'),
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: colors.textPrimary,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      tooltip: ChatUiCopy.of(context, 'Return to keyboard'),
                      onPressed: onClose,
                      icon: Icon(Icons.keyboard_rounded, color: colors.brand),
                      padding: EdgeInsets.zero,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: EmojiPicker(
                  onEmojiSelected: (_, emoji) => controller.value =
                      editChatText(controller.value, insert: emoji.emoji),
                  onBackspacePressed: () => controller.value = editChatText(
                    controller.value,
                    backspace: true,
                  ),
                  config: Config(
                    height: height - 38,
                    checkPlatformCompatibility: true,
                    emojiTextStyle: const TextStyle(
                      fontSize: 30,
                      fontFamilyFallback: [
                        'Noto Color Emoji',
                        'Apple Color Emoji',
                        'Segoe UI Emoji',
                      ],
                    ),
                    emojiViewConfig: EmojiViewConfig(
                      columns: (constraints.maxWidth / 44).floor().clamp(6, 10),
                      emojiSizeMax: 30,
                      backgroundColor: colors.surfaceCard,
                      verticalSpacing: 5,
                      horizontalSpacing: 2,
                      gridPadding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 6,
                      ),
                      recentsLimit: 48,
                      replaceEmojiOnLimitExceed: true,
                      noRecents: Text(
                        ChatUiCopy.of(context, 'Your recent emoji will appear here'),
                        style: TextStyle(fontSize: 13, color: colors.textMuted),
                      ),
                      loadingIndicator: const Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                    categoryViewConfig: CategoryViewConfig(
                      initCategory: Category.SMILEYS,
                      backgroundColor: colors.surfaceCard,
                      indicatorColor: colors.brand,
                      iconColor: colors.textMuted,
                      iconColorSelected: colors.brand,
                      dividerColor: colors.structuralBorder,
                    ),
                    bottomActionBarConfig: BottomActionBarConfig(
                      backgroundColor: colors.surfaceCard,
                      buttonColor: colors.surfaceCard,
                      buttonIconColor: colors.brand,
                    ),
                    searchViewConfig: SearchViewConfig(
                      backgroundColor: colors.surfaceCard,
                      buttonIconColor: colors.brand,
                      hintText: ChatUiCopy.of(context, 'Search emoji'),
                      inputTextStyle: TextStyle(color: colors.textPrimary),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
