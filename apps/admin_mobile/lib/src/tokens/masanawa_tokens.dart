library;

class TokenGradient {
  const TokenGradient(this.from, this.to);
  final String from;
  final String to;
}

class ColorTokens {
  const ColorTokens({
    required this.brandPrimary,
    required this.brandStrong,
    required this.brandGradient,
    required this.emergency,
    required this.warning,
    required this.success,
    required this.textPrimary,
    required this.textMuted,
    required this.surfaceBg,
    required this.surfaceCard,
    required this.surfaceMuted,
    required this.structuralBorder,
  });
  final String brandPrimary;
  final String brandStrong;
  final TokenGradient brandGradient;
  final String emergency;
  final String warning;
  final String success;
  final String textPrimary;
  final String textMuted;
  final String surfaceBg;
  final String surfaceCard;
  final String surfaceMuted;
  final String structuralBorder;
}

final class MasanawaTokens {
  const MasanawaTokens._();
  static const ColorTokens light = ColorTokens(
    brandPrimary: '#25D366',
    brandStrong: '#075E54',
    brandGradient: TokenGradient('#075E54', '#128C7E'),
    emergency: '#DC2626',
    warning: '#D97706',
    success: '#16A34A',
    textPrimary: '#111B21',
    textMuted: '#54656F',
    surfaceBg: '#FFFFFF',
    surfaceCard: '#FFFFFF',
    surfaceMuted: '#E7FCEB',
    structuralBorder: '#E9EDEF',
  );
  static const ColorTokens dark = ColorTokens(
    brandPrimary: '#00A884',
    brandStrong: '#00A884',
    brandGradient: TokenGradient('#00A884', '#25D366'),
    emergency: '#F87171',
    warning: '#FBBF24',
    success: '#4ADE80',
    textPrimary: '#E9EDEF',
    textMuted: '#8696A0',
    surfaceBg: '#0B141A',
    surfaceCard: '#202C33',
    surfaceMuted: '#2A3942',
    structuralBorder: '#2F3B43',
  );
}
