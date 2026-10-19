import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/agents/masana_memory.dart';
import 'package:masanawa/src/core/providers.dart';
import 'package:masanawa/src/state/session_state.dart';

class FakeSession extends SessionController {
  @override
  SessionState build() => const SessionSignedOut();
}

void main() {
  testWidgets(
    'Masana memory shows authorized memories, correction, and forgetting',
    (tester) async {
      var content = 'I prefer short explanations';
      var isForgotten = false;
      final seen = <String>[];
      final dio = Dio(
        BaseOptions(
          baseUrl: 'https://masanawa-gateway-production-338f.up.railway.app',
        ),
      );
      dio.interceptors.add(
        InterceptorsWrapper(
          onRequest: (request, handler) {
            seen.add('${request.method} ${request.path}');
            final path = request.path;
            dynamic data;
            if (request.method == 'GET' && path.endsWith('/memories')) {
              data = {
                'automaticLearning': false,
                'items': isForgotten
                    ? []
                    : [
                        {
                          'memoryRecordId': 'memory-record_test',
                          'content': content,
                          'type': 'preference',
                          'revision': 1,
                          'lifecycleRevision': 1,
                          'updatedAt': '2026-10-19T12:00:00.000Z',
                        },
                      ],
              };
            } else if (request.method == 'PATCH' &&
                path.endsWith('/memories/memory-record_test')) {
              content = (request.data as Map)['content'] as String;
              data = {'updated': true};
            } else if (request.method == 'DELETE' &&
                path.endsWith('/memories/memory-record_test')) {
              isForgotten = true;
              data = {'forgotten': true};
            } else if (request.method == 'PUT' &&
                path.endsWith('/memory-preferences')) {
              data = {
                'automaticLearning': (request.data as Map)['automaticLearning'],
              };
            } else {
              handler.reject(
                DioException(requestOptions: request, error: 'unexpected path'),
              );
              return;
            }
            handler.resolve(
              Response(requestOptions: request, statusCode: 200, data: data),
            );
          },
        ),
      );
      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            dioProvider.overrideWithValue(dio),
            sessionProvider.overrideWith(FakeSession.new),
          ],
          child: const MaterialApp(
            home: MasanaMemoryScreen(
              characterId: 'character_test',
              characterName: 'Fora',
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.text('I prefer short explanations'), findsOneWidget);
      expect(find.text('Automatically learn useful details'), findsOneWidget);
      await tester.tap(find.text('Correct'));
      await tester.pumpAndSettle();
      await tester.enterText(
        find.byType(TextField),
        'I prefer thorough explanations',
      );
      await tester.tap(find.text('Save'));
      await tester.pumpAndSettle();
      expect(find.text('I prefer thorough explanations'), findsOneWidget);
      await tester.tap(find.text('Forget'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Forget').last);
      await tester.pumpAndSettle();
      expect(find.text('No saved memories yet.'), findsOneWidget);
      expect(seen.where((s) => s.startsWith('PATCH ')).length, 1);
      expect(seen.where((s) => s.startsWith('DELETE ')).length, 1);
    },
  );
}
