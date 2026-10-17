import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/chat/chat_text_editing.dart';
void main(){
 for(final emoji in ['😀','👍🏿','🇳🇬','👨‍👩‍👧‍👦','❤️','1️⃣']){
 test('inserts and removes a complete $emoji grapheme',(){var value=editChatText(const TextEditingValue(text:'Hi ',selection:TextSelection.collapsed(offset:3)),insert:emoji);expect(value.text,'Hi $emoji');expect(utf8.decode(utf8.encode(value.text)),value.text);value=editChatText(value,backspace:true);expect(value.text,'Hi ');expect(value.selection.extentOffset,3);});
 test('repairs a cursor inside $emoji without splitting Unicode',(){final value=editChatText(TextEditingValue(text:emoji,selection:const TextSelection.collapsed(offset:1)),backspace:true);expect(value.text,'');});
 }
 test('replaces a selected grapheme and resets composing',(){final result=editChatText(const TextEditingValue(text:'A👍🏿B',selection:TextSelection(baseOffset:1,extentOffset:5),composing:TextRange(start:0,end:1)),insert:'😀');expect(result.text,'A😀B');expect(result.composing,TextRange.empty);});
 test('unfocused or stale selection safely appends',(){expect(editChatText(const TextEditingValue(text:'Hi'),insert:'😀').text,'Hi😀');expect(editChatText(const TextEditingValue(text:'Hi',selection:TextSelection.collapsed(offset:99)),insert:'😀').text,'Hi😀');});
 test('empty backspace does not throw',(){expect(editChatText(const TextEditingValue(),backspace:true).text,'');});
 test('large emoji rendering excludes ordinary text and code',(){for(final text in ['😀','👨‍👩‍👧‍👦 🇳🇬','👍🏿❤️','1️⃣']){expect(isEmojiOnlyChatText(text),true);}for(final text in ['','hello 😀','123','```','😀😀😀😀😀😀😀']){expect(isEmojiOnlyChatText(text),false);}});
}
