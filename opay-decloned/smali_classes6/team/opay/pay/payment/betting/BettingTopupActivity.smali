.class public final Lteam/opay/pay/payment/betting/BettingTopupActivity;
.super Lteam/opay/pay/payment/betting/Hilt_BettingTopupActivity;
.source "BettingTopupActivity.kt"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InflateParams"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/payment/betting/BettingTopupActivity$Companion;,
        Lteam/opay/pay/payment/betting/BettingTopupActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00be\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u000e*\u0002\u00ca\u0001\u0008\u0007\u0018\u0000 \u00fb\u00012\u00020\u0001:\u0002\u00fc\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0003J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0003J\u0017\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0017\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0014J\u0019\u0010\u0017\u001a\u00020\u00042\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0014J\u0019\u0010\u0019\u001a\u00020\u00042\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u000bH\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\'\u0010\u001c\u001a\u00020\u00042\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0011H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u0003J\u000f\u0010\u001f\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u001f\u0010\u0003J\u000f\u0010 \u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008 \u0010\u0003J\u0017\u0010\"\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\"\u0010\u001aJ!\u0010%\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\r2\u0008\u0008\u0002\u0010$\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008%\u0010&J\u000f\u0010\'\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\'\u0010\u0003J=\u0010.\u001a\u00020\u00042\u0006\u0010)\u001a\u00020(2\u0006\u0010*\u001a\u00020\u000b2\u0008\u0008\u0002\u0010+\u001a\u00020\r2\u0008\u0008\u0002\u0010,\u001a\u00020\r2\u0008\u0008\u0002\u0010-\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008.\u0010/J\u000f\u00100\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u00080\u00101J#\u00104\u001a\u00020\u00042\u0008\u00103\u001a\u0004\u0018\u0001022\u0008\u0008\u0002\u0010+\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u00084\u00105J\u000f\u00106\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u00086\u00101J\u0017\u00107\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u00087\u00108J\u000f\u00109\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u00089\u0010\u0003J\u000f\u0010:\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008:\u0010;J\u000f\u0010<\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008<\u0010\u0003J\u0019\u0010=\u001a\u00020\u00042\u0008\u0008\u0002\u0010-\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008=\u00108J\u000f\u0010>\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008>\u0010\u0003J\u0019\u0010A\u001a\u00020\u00042\u0008\u0010@\u001a\u0004\u0018\u00010?H\u0002\u00a2\u0006\u0004\u0008A\u0010BJ\u0019\u0010D\u001a\u00020\r2\u0008\u0010C\u001a\u0004\u0018\u00010\rH\u0002\u00a2\u0006\u0004\u0008D\u0010EJ!\u0010I\u001a\u00020\u00042\u0010\u0010H\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010G\u0018\u00010FH\u0002\u00a2\u0006\u0004\u0008I\u0010JJ#\u0010L\u001a\u00020\u00042\u0006\u0010K\u001a\u00020G2\n\u0008\u0002\u0010C\u001a\u0004\u0018\u00010\rH\u0002\u00a2\u0006\u0004\u0008L\u0010MJ/\u0010Q\u001a\u00020\u00042\u0006\u0010N\u001a\u00020G2\n\u0008\u0002\u0010C\u001a\u0004\u0018\u00010\r2\n\u0008\u0002\u0010P\u001a\u0004\u0018\u00010OH\u0002\u00a2\u0006\u0004\u0008Q\u0010RJ#\u0010U\u001a\u00020\u00042\u0008\u0008\u0002\u0010S\u001a\u00020\r2\u0008\u0008\u0002\u0010T\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008U\u0010VJ\u0019\u0010X\u001a\u00020\u00042\u0008\u0008\u0002\u0010W\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008X\u00108J\u000f\u0010Y\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008Y\u0010\u0003J\u0019\u0010[\u001a\u00020\u00042\u0008\u0010Z\u001a\u0004\u0018\u00010\u000bH\u0002\u00a2\u0006\u0004\u0008[\u0010\u001aJ\u0017\u0010^\u001a\u00020\u00042\u0006\u0010]\u001a\u00020\\H\u0002\u00a2\u0006\u0004\u0008^\u0010_J\u000f\u0010`\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008`\u00101J\u0017\u0010b\u001a\u00020\u00042\u0006\u0010)\u001a\u00020aH\u0002\u00a2\u0006\u0004\u0008b\u0010cJ\u000f\u0010d\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008d\u0010\u0003J\u0019\u0010g\u001a\u00020\u00042\u0008\u0010f\u001a\u0004\u0018\u00010eH\u0017\u00a2\u0006\u0004\u0008g\u0010hJ\u0019\u0010i\u001a\u00020\u00042\u0008\u00103\u001a\u0004\u0018\u000102H\u0014\u00a2\u0006\u0004\u0008i\u0010jJ)\u0010n\u001a\u00020\u00042\u0006\u0010l\u001a\u00020k2\u0006\u0010m\u001a\u00020k2\u0008\u0010\u0015\u001a\u0004\u0018\u000102H\u0015\u00a2\u0006\u0004\u0008n\u0010oJ\u0017\u0010p\u001a\u00020\u00042\u0006\u0010]\u001a\u00020\\H\u0007\u00a2\u0006\u0004\u0008p\u0010_J\u0017\u0010p\u001a\u00020\u00042\u0006\u0010]\u001a\u00020qH\u0007\u00a2\u0006\u0004\u0008p\u0010rJ\u000f\u0010s\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008s\u0010\u0003R\u001b\u0010y\u001a\u00020t8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008u\u0010v\u001a\u0004\u0008w\u0010xR\u001b\u0010~\u001a\u00020z8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008{\u0010v\u001a\u0004\u0008|\u0010}R\u001f\u0010\u0083\u0001\u001a\u00020\u007f8BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u0080\u0001\u0010v\u001a\u0006\u0008\u0081\u0001\u0010\u0082\u0001R \u0010\u0088\u0001\u001a\u00030\u0084\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u0085\u0001\u0010v\u001a\u0006\u0008\u0086\u0001\u0010\u0087\u0001R \u0010\u008d\u0001\u001a\u00030\u0089\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u008a\u0001\u0010v\u001a\u0006\u0008\u008b\u0001\u0010\u008c\u0001R \u0010\u0092\u0001\u001a\u00030\u008e\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u008f\u0001\u0010v\u001a\u0006\u0008\u0090\u0001\u0010\u0091\u0001R \u0010\u0097\u0001\u001a\u00030\u0093\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u0094\u0001\u0010v\u001a\u0006\u0008\u0095\u0001\u0010\u0096\u0001R \u0010\u009c\u0001\u001a\u00030\u0098\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u0099\u0001\u0010v\u001a\u0006\u0008\u009a\u0001\u0010\u009b\u0001R \u0010\u00a1\u0001\u001a\u00030\u009d\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u009e\u0001\u0010v\u001a\u0006\u0008\u009f\u0001\u0010\u00a0\u0001R\u001c\u0010\u00a5\u0001\u001a\u0005\u0018\u00010\u00a2\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a3\u0001\u0010\u00a4\u0001R \u0010\u00aa\u0001\u001a\u00030\u00a6\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u00a7\u0001\u0010v\u001a\u0006\u0008\u00a8\u0001\u0010\u00a9\u0001R\u001c\u0010\u00ae\u0001\u001a\u0005\u0018\u00010\u00ab\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ac\u0001\u0010\u00ad\u0001R\u001a\u0010\u00b2\u0001\u001a\u00030\u00af\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00b0\u0001\u0010\u00b1\u0001R\u001a\u0010\u00b4\u0001\u001a\u00030\u00af\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00b3\u0001\u0010\u00b1\u0001R\u0019\u0010\u00b7\u0001\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b5\u0001\u0010\u00b6\u0001R\u0019\u0010\u00b9\u0001\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b8\u0001\u0010\u00b6\u0001R \u0010\u00be\u0001\u001a\u00030\u00ba\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u00bb\u0001\u0010v\u001a\u0006\u0008\u00bc\u0001\u0010\u00bd\u0001R\u0017\u0010\u00c1\u0001\u001a\u00020k8\u0002X\u0082D\u00a2\u0006\u0008\n\u0006\u0008\u00bf\u0001\u0010\u00c0\u0001R\u001a\u0010\u00c5\u0001\u001a\u00030\u00c2\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c3\u0001\u0010\u00c4\u0001R\u001c\u0010\u00c9\u0001\u001a\u0005\u0018\u00010\u00c6\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c7\u0001\u0010\u00c8\u0001R\u0018\u0010\u00cd\u0001\u001a\u00030\u00ca\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00cb\u0001\u0010\u00cc\u0001R\u0019\u0010\u00ce\u0001\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c4\u0001\u0010\u00b6\u0001R \u0010\u00d3\u0001\u001a\u00030\u00cf\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u00d0\u0001\u0010v\u001a\u0006\u0008\u00d1\u0001\u0010\u00d2\u0001R \u0010\u00d8\u0001\u001a\u00030\u00d4\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u00d5\u0001\u0010v\u001a\u0006\u0008\u00d6\u0001\u0010\u00d7\u0001R\u001c\u0010\u00dc\u0001\u001a\u0005\u0018\u00010\u00d9\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00da\u0001\u0010\u00db\u0001R \u0010\u00e1\u0001\u001a\u00030\u00dd\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u00de\u0001\u0010v\u001a\u0006\u0008\u00df\u0001\u0010\u00e0\u0001R \u0010\u00e5\u0001\u001a\u00030\u00e2\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u00c0\u0001\u0010v\u001a\u0006\u0008\u00e3\u0001\u0010\u00e4\u0001R\u001f\u0010\u00e9\u0001\u001a\u00020k8BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u00e6\u0001\u0010v\u001a\u0006\u0008\u00e7\u0001\u0010\u00e8\u0001R\u001f\u0010\u00ec\u0001\u001a\u00020k8BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u00ea\u0001\u0010v\u001a\u0006\u0008\u00eb\u0001\u0010\u00e8\u0001R\u0019\u0010\u00ee\u0001\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ed\u0001\u0010\u00b6\u0001R\u0018\u0010\u00f2\u0001\u001a\u00030\u00ef\u00018BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00f0\u0001\u0010\u00f1\u0001R\u0019\u0010\u00f5\u0001\u001a\u0004\u0018\u00010?8BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00f3\u0001\u0010\u00f4\u0001R\u0018\u0010\u00f8\u0001\u001a\u00030\u00c2\u00018BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00f6\u0001\u0010\u00f7\u0001R\u0013\u0010\u00fa\u0001\u001a\u00020\u000b8F\u00a2\u0006\u0007\u001a\u0005\u0008\u00f9\u0001\u0010;\u00a8\u0006\u00fd\u0001"
    }
    d2 = {
        "Lteam/opay/pay/payment/betting/BettingTopupActivity;",
        "Lteam/opay/pay/advertising/BaseDeepLinkAdActivity;",
        "<init>",
        "()V",
        "",
        "initView",
        "S0",
        "Lteam/opay/odialog/net/ADListResponse;",
        "bean",
        "x1",
        "(Lteam/opay/odialog/net/ADListResponse;)V",
        "",
        "serviceId",
        "",
        "v1",
        "(Ljava/lang/String;)Z",
        "W1",
        "Lteam/opay/pay/api/RecordsTopupRsp;",
        "record",
        "A2",
        "(Lteam/opay/pay/api/RecordsTopupRsp;)V",
        "data",
        "B2",
        "a3",
        "d",
        "Y2",
        "(Ljava/lang/String;)V",
        "accountNo",
        "M2",
        "(Ljava/lang/String;Lteam/opay/pay/api/RecordsTopupRsp;)V",
        "K2",
        "l3",
        "W2",
        "id",
        "D2",
        "error",
        "message",
        "e3",
        "(ZLjava/lang/String;)V",
        "v2",
        "Lteam/opay/core/api/graphql/BettingInfo;",
        "bettingInfo",
        "userIdString",
        "fromCache",
        "isAutoSelect",
        "forceFetch",
        "T2",
        "(Lteam/opay/core/api/graphql/BettingInfo;Ljava/lang/String;ZZZ)V",
        "Z2",
        "()Z",
        "Landroid/content/Intent;",
        "intent",
        "w2",
        "(Landroid/content/Intent;Z)V",
        "k3",
        "m3",
        "(Z)V",
        "V1",
        "P1",
        "()Ljava/lang/String;",
        "X2",
        "R2",
        "P2",
        "Lteam/opay/core/api/BettingProvider;",
        "provider",
        "h2",
        "(Lteam/opay/core/api/BettingProvider;)V",
        "showBindVoucherSalePage",
        "f2",
        "(Ljava/lang/Boolean;)Z",
        "Lteam/opay/core/android/arch/Resource;",
        "Lteam/opay/core/api/BettingAccount;",
        "it",
        "z2",
        "(Lteam/opay/core/android/arch/Resource;)V",
        "user",
        "h3",
        "(Lteam/opay/core/api/BettingAccount;Ljava/lang/Boolean;)V",
        "bettingAccount",
        "Lteam/opay/pay/payment/voucherpackage/VoucherPackageResult;",
        "voucherPackageResult",
        "E2",
        "(Lteam/opay/core/api/BettingAccount;Ljava/lang/Boolean;Lteam/opay/pay/payment/voucherpackage/VoucherPackageResult;)V",
        "reqVoucher",
        "hotOffersUpdateAll",
        "y1",
        "(ZZ)V",
        "status",
        "c3",
        "H2",
        "text",
        "j3",
        "Lteam/opay/pay/payment/betting/UseVoucherEvent;",
        "event",
        "C2",
        "(Lteam/opay/pay/payment/betting/UseVoucherEvent;)V",
        "e2",
        "Lteam/opay/core/api/graphql/BettingOutInfo;",
        "k2",
        "(Lteam/opay/core/api/graphql/BettingOutInfo;)V",
        "onBackPressed",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onNewIntent",
        "(Landroid/content/Intent;)V",
        "",
        "requestCode",
        "resultCode",
        "onActivityResult",
        "(IILandroid/content/Intent;)V",
        "onEvent",
        "Lteam/opay/pay/payment/betting/GetVoucherSuccessEvent;",
        "(Lteam/opay/pay/payment/betting/GetVoucherSuccessEvent;)V",
        "onDestroy",
        "Lge;",
        "i",
        "Lid8;",
        "S1",
        "()Lge;",
        "viewBinding",
        "Lteam/opay/pay/payment/betting/LifeCommonViewModel;",
        "j",
        "H1",
        "()Lteam/opay/pay/payment/betting/LifeCommonViewModel;",
        "lifeCommonViewModel",
        "Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;",
        "k",
        "getTopBottomViewModel",
        "()Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;",
        "topBottomViewModel",
        "Lteam/opay/pay/payment/data/LifeMarketingViewModel;",
        "l",
        "I1",
        "()Lteam/opay/pay/payment/data/LifeMarketingViewModel;",
        "marketViewModel",
        "Lteam/opay/pay/module/offers/HotOffersViewModel;",
        "m",
        "G1",
        "()Lteam/opay/pay/module/offers/HotOffersViewModel;",
        "hotOffersViewModel",
        "Lteam/opay/pay/coupon/OpayVoucherViewModel;",
        "n",
        "U1",
        "()Lteam/opay/pay/coupon/OpayVoucherViewModel;",
        "voucherViewModel",
        "Lteam/opay/pay/payment/betting/BettingTopupViewModel;",
        "o",
        "T1",
        "()Lteam/opay/pay/payment/betting/BettingTopupViewModel;",
        "viewModel",
        "Lteam/opay/pay/opay/PaymentViewModel;",
        "p",
        "M1",
        "()Lteam/opay/pay/opay/PaymentViewModel;",
        "paymentViewModel",
        "Lteam/opay/pay/ad/OpayAdBannerViewModel;",
        "q",
        "A1",
        "()Lteam/opay/pay/ad/OpayAdBannerViewModel;",
        "adBannerViewModel",
        "Lteam/opay/pay/payment/data/LifeMarketingFragment;",
        "r",
        "Lteam/opay/pay/payment/data/LifeMarketingFragment;",
        "lifeMarketingFragment",
        "Ljava/text/DecimalFormat;",
        "s",
        "F1",
        "()Ljava/text/DecimalFormat;",
        "decimalFormat",
        "Lvp7;",
        "t",
        "Lvp7;",
        "keyboardChangeListener",
        "Lteam/opay/core/android/money/MoneyAmount;",
        "u",
        "Lteam/opay/core/android/money/MoneyAmount;",
        "minAmount",
        "v",
        "maxAmount",
        "w",
        "Z",
        "hasMaskUserId",
        "x",
        "hasMaskAmount",
        "Lteam/opay/pay/payment/betting/BettingBundlesAdapter;",
        "y",
        "D1",
        "()Lteam/opay/pay/payment/betting/BettingBundlesAdapter;",
        "bundlesAdapter",
        "z",
        "I",
        "MAX_AMOUNT",
        "",
        "A",
        "D",
        "customAmount",
        "Lteam/opay/pay/payment/betting/BettingBundle;",
        "B",
        "Lteam/opay/pay/payment/betting/BettingBundle;",
        "customBundle",
        "team/opay/pay/payment/betting/BettingTopupActivity$loginListener$1",
        "C",
        "Lteam/opay/pay/payment/betting/BettingTopupActivity$loginListener$1;",
        "loginListener",
        "phoneInputHasFocus",
        "Lteam/opay/pay/payment/record/RecordsTopupViewModel;",
        "E",
        "O1",
        "()Lteam/opay/pay/payment/record/RecordsTopupViewModel;",
        "recordsViewModel",
        "Lteam/opay/pay/payment/record/RecordsTopupAdapter;",
        "F",
        "N1",
        "()Lteam/opay/pay/payment/record/RecordsTopupAdapter;",
        "recordsAdapter",
        "Lteam/opay/pay/module/offers/HotOffersFragment;",
        "G",
        "Lteam/opay/pay/module/offers/HotOffersFragment;",
        "hotOfferFragment",
        "Lteam/opay/pay/payment/betting/BettingServiceAdapter;",
        "H",
        "C1",
        "()Lteam/opay/pay/payment/betting/BettingServiceAdapter;",
        "bettingServiceAdapter",
        "Landroidx/recyclerview/widget/GridLayoutManager;",
        "Q1",
        "()Landroidx/recyclerview/widget/GridLayoutManager;",
        "serviceLayoutManager",
        "J",
        "L1",
        "()I",
        "paddingAd",
        "K",
        "K1",
        "padding",
        "L",
        "log",
        "Lteam/opay/core/api/GraphQL$Currency;",
        "E1",
        "()Lteam/opay/core/api/GraphQL$Currency;",
        "currency",
        "J1",
        "()Lteam/opay/core/api/BettingProvider;",
        "operator",
        "B1",
        "()D",
        "amount",
        "R1",
        "userId",
        "M",
        "Companion",
        "sdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final M:Lteam/opay/pay/payment/betting/BettingTopupActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public A:D

.field public B:Lteam/opay/pay/payment/betting/BettingBundle;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final C:Lteam/opay/pay/payment/betting/BettingTopupActivity$loginListener$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public D:Z

.field public final E:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final F:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public G:Lteam/opay/pay/module/offers/HotOffersFragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final H:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final I:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final J:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final K:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public L:Z

.field public final i:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final m:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final n:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final o:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final p:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final q:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public r:Lteam/opay/pay/payment/data/LifeMarketingFragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final s:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public t:Lvp7;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public u:Lteam/opay/core/android/money/MoneyAmount;

.field public v:Lteam/opay/core/android/money/MoneyAmount;

.field public w:Z

.field public x:Z

.field public final y:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/payment/betting/BettingTopupActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/payment/betting/BettingTopupActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->M:Lteam/opay/pay/payment/betting/BettingTopupActivity$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->activity_betting_topup:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/payment/betting/Hilt_BettingTopupActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lt21;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lt21;-><init>(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->i:Lid8;

    .line 16
    .line 17
    new-instance v0, Lteam/opay/pay/payment/betting/BettingTopupActivity$special$$inlined$viewModels$default$1;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 23
    .line 24
    const-class v2, Lteam/opay/pay/payment/betting/LifeCommonViewModel;

    .line 25
    .line 26
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    new-instance v3, Lteam/opay/pay/payment/betting/BettingTopupActivity$special$$inlined$viewModels$default$2;

    .line 31
    .line 32
    invoke-direct {v3, p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 33
    .line 34
    .line 35
    new-instance v4, Lteam/opay/pay/payment/betting/BettingTopupActivity$special$$inlined$viewModels$default$3;

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    invoke-direct {v4, v5, p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->j:Lid8;

    .line 45
    .line 46
    new-instance v0, Lteam/opay/pay/payment/betting/BettingTopupActivity$special$$inlined$viewModels$default$4;

    .line 47
    .line 48
    invoke-direct {v0, p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity$special$$inlined$viewModels$default$4;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 49
    .line 50
    .line 51
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 52
    .line 53
    const-class v2, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;

    .line 54
    .line 55
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    new-instance v3, Lteam/opay/pay/payment/betting/BettingTopupActivity$special$$inlined$viewModels$default$5;

    .line 60
    .line 61
    invoke-direct {v3, p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity$special$$inlined$viewModels$default$5;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 62
    .line 63
    .line 64
    new-instance v4, Lteam/opay/pay/payment/betting/BettingTopupActivity$special$$inlined$viewModels$default$6;

    .line 65
    .line 66
    invoke-direct {v4, v5, p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity$special$$inlined$viewModels$default$6;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 67
    .line 68
    .line 69
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 70
    .line 71
    .line 72
    iput-object v1, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->k:Lid8;

    .line 73
    .line 74
    new-instance v0, Lteam/opay/pay/payment/betting/BettingTopupActivity$special$$inlined$viewModels$default$7;

    .line 75
    .line 76
    invoke-direct {v0, p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity$special$$inlined$viewModels$default$7;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 77
    .line 78
    .line 79
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 80
    .line 81
    const-class v2, Lteam/opay/pay/payment/data/LifeMarketingViewModel;

    .line 82
    .line 83
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    new-instance v3, Lteam/opay/pay/payment/betting/BettingTopupActivity$special$$inlined$viewModels$default$8;

    .line 88
    .line 89
    invoke-direct {v3, p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity$special$$inlined$viewModels$default$8;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 90
    .line 91
    .line 92
    new-instance v4, Lteam/opay/pay/payment/betting/BettingTopupActivity$special$$inlined$viewModels$default$9;

    .line 93
    .line 94
    invoke-direct {v4, v5, p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity$special$$inlined$viewModels$default$9;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 95
    .line 96
    .line 97
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 98
    .line 99
    .line 100
    iput-object v1, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->l:Lid8;

    .line 101
    .line 102
    new-instance v0, Lteam/opay/pay/payment/betting/BettingTopupActivity$special$$inlined$viewModels$default$10;

    .line 103
    .line 104
    invoke-direct {v0, p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity$special$$inlined$viewModels$default$10;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 105
    .line 106
    .line 107
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 108
    .line 109
    const-class v2, Lteam/opay/pay/module/offers/HotOffersViewModel;

    .line 110
    .line 111
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    new-instance v3, Lteam/opay/pay/payment/betting/BettingTopupActivity$special$$inlined$viewModels$default$11;

    .line 116
    .line 117
    invoke-direct {v3, p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity$special$$inlined$viewModels$default$11;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 118
    .line 119
    .line 120
    new-instance v4, Lteam/opay/pay/payment/betting/BettingTopupActivity$special$$inlined$viewModels$default$12;

    .line 121
    .line 122
    invoke-direct {v4, v5, p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity$special$$inlined$viewModels$default$12;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 123
    .line 124
    .line 125
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 126
    .line 127
    .line 128
    iput-object v1, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->m:Lid8;

    .line 129
    .line 130
    new-instance v0, Lteam/opay/pay/payment/betting/BettingTopupActivity$special$$inlined$viewModels$default$13;

    .line 131
    .line 132
    invoke-direct {v0, p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity$special$$inlined$viewModels$default$13;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 133
    .line 134
    .line 135
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 136
    .line 137
    const-class v2, Lteam/opay/pay/coupon/OpayVoucherViewModel;

    .line 138
    .line 139
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    new-instance v3, Lteam/opay/pay/payment/betting/BettingTopupActivity$special$$inlined$viewModels$default$14;

    .line 144
    .line 145
    invoke-direct {v3, p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity$special$$inlined$viewModels$default$14;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 146
    .line 147
    .line 148
    new-instance v4, Lteam/opay/pay/payment/betting/BettingTopupActivity$special$$inlined$viewModels$default$15;

    .line 149
    .line 150
    invoke-direct {v4, v5, p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity$special$$inlined$viewModels$default$15;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 151
    .line 152
    .line 153
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 154
    .line 155
    .line 156
    iput-object v1, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->n:Lid8;

    .line 157
    .line 158
    new-instance v0, Lteam/opay/pay/payment/betting/BettingTopupActivity$special$$inlined$viewModels$default$16;

    .line 159
    .line 160
    invoke-direct {v0, p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity$special$$inlined$viewModels$default$16;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 161
    .line 162
    .line 163
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 164
    .line 165
    const-class v2, Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 166
    .line 167
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    new-instance v3, Lteam/opay/pay/payment/betting/BettingTopupActivity$special$$inlined$viewModels$default$17;

    .line 172
    .line 173
    invoke-direct {v3, p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity$special$$inlined$viewModels$default$17;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 174
    .line 175
    .line 176
    new-instance v4, Lteam/opay/pay/payment/betting/BettingTopupActivity$special$$inlined$viewModels$default$18;

    .line 177
    .line 178
    invoke-direct {v4, v5, p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity$special$$inlined$viewModels$default$18;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 179
    .line 180
    .line 181
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 182
    .line 183
    .line 184
    iput-object v1, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->o:Lid8;

    .line 185
    .line 186
    new-instance v0, Lteam/opay/pay/payment/betting/BettingTopupActivity$special$$inlined$viewModels$default$19;

    .line 187
    .line 188
    invoke-direct {v0, p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity$special$$inlined$viewModels$default$19;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 189
    .line 190
    .line 191
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 192
    .line 193
    const-class v2, Lteam/opay/pay/opay/PaymentViewModel;

    .line 194
    .line 195
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    new-instance v3, Lteam/opay/pay/payment/betting/BettingTopupActivity$special$$inlined$viewModels$default$20;

    .line 200
    .line 201
    invoke-direct {v3, p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity$special$$inlined$viewModels$default$20;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 202
    .line 203
    .line 204
    new-instance v4, Lteam/opay/pay/payment/betting/BettingTopupActivity$special$$inlined$viewModels$default$21;

    .line 205
    .line 206
    invoke-direct {v4, v5, p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity$special$$inlined$viewModels$default$21;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 207
    .line 208
    .line 209
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 210
    .line 211
    .line 212
    iput-object v1, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->p:Lid8;

    .line 213
    .line 214
    new-instance v0, Lteam/opay/pay/payment/betting/BettingTopupActivity$special$$inlined$viewModels$default$22;

    .line 215
    .line 216
    invoke-direct {v0, p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity$special$$inlined$viewModels$default$22;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 217
    .line 218
    .line 219
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 220
    .line 221
    const-class v2, Lteam/opay/pay/ad/OpayAdBannerViewModel;

    .line 222
    .line 223
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    new-instance v3, Lteam/opay/pay/payment/betting/BettingTopupActivity$special$$inlined$viewModels$default$23;

    .line 228
    .line 229
    invoke-direct {v3, p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity$special$$inlined$viewModels$default$23;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 230
    .line 231
    .line 232
    new-instance v4, Lteam/opay/pay/payment/betting/BettingTopupActivity$special$$inlined$viewModels$default$24;

    .line 233
    .line 234
    invoke-direct {v4, v5, p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity$special$$inlined$viewModels$default$24;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 235
    .line 236
    .line 237
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 238
    .line 239
    .line 240
    iput-object v1, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->q:Lid8;

    .line 241
    .line 242
    new-instance v0, Le31;

    .line 243
    .line 244
    invoke-direct {v0}, Le31;-><init>()V

    .line 245
    .line 246
    .line 247
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    iput-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->s:Lid8;

    .line 252
    .line 253
    new-instance v0, Lp31;

    .line 254
    .line 255
    invoke-direct {v0}, Lp31;-><init>()V

    .line 256
    .line 257
    .line 258
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    iput-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->y:Lid8;

    .line 263
    .line 264
    const v0, 0x5f5e0ff

    .line 265
    .line 266
    .line 267
    iput v0, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->z:I

    .line 268
    .line 269
    new-instance v0, Lteam/opay/pay/payment/betting/BettingTopupActivity$loginListener$1;

    .line 270
    .line 271
    invoke-direct {v0, p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity$loginListener$1;-><init>(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V

    .line 272
    .line 273
    .line 274
    iput-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->C:Lteam/opay/pay/payment/betting/BettingTopupActivity$loginListener$1;

    .line 275
    .line 276
    new-instance v0, Lteam/opay/pay/payment/betting/BettingTopupActivity$special$$inlined$viewModels$default$25;

    .line 277
    .line 278
    invoke-direct {v0, p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity$special$$inlined$viewModels$default$25;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 279
    .line 280
    .line 281
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 282
    .line 283
    const-class v2, Lteam/opay/pay/payment/record/RecordsTopupViewModel;

    .line 284
    .line 285
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    new-instance v3, Lteam/opay/pay/payment/betting/BettingTopupActivity$special$$inlined$viewModels$default$26;

    .line 290
    .line 291
    invoke-direct {v3, p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity$special$$inlined$viewModels$default$26;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 292
    .line 293
    .line 294
    new-instance v4, Lteam/opay/pay/payment/betting/BettingTopupActivity$special$$inlined$viewModels$default$27;

    .line 295
    .line 296
    invoke-direct {v4, v5, p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity$special$$inlined$viewModels$default$27;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 297
    .line 298
    .line 299
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 300
    .line 301
    .line 302
    iput-object v1, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->E:Lid8;

    .line 303
    .line 304
    new-instance v0, Lq31;

    .line 305
    .line 306
    invoke-direct {v0, p0}, Lq31;-><init>(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V

    .line 307
    .line 308
    .line 309
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    iput-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->F:Lid8;

    .line 314
    .line 315
    new-instance v0, Lr31;

    .line 316
    .line 317
    invoke-direct {v0, p0}, Lr31;-><init>(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V

    .line 318
    .line 319
    .line 320
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    iput-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->H:Lid8;

    .line 325
    .line 326
    new-instance v0, Ls31;

    .line 327
    .line 328
    invoke-direct {v0, p0}, Ls31;-><init>(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V

    .line 329
    .line 330
    .line 331
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    iput-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->I:Lid8;

    .line 336
    .line 337
    new-instance v0, Lt31;

    .line 338
    .line 339
    invoke-direct {v0}, Lt31;-><init>()V

    .line 340
    .line 341
    .line 342
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    iput-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->J:Lid8;

    .line 347
    .line 348
    new-instance v0, Ln11;

    .line 349
    .line 350
    invoke-direct {v0}, Ln11;-><init>()V

    .line 351
    .line 352
    .line 353
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    iput-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->K:Lid8;

    .line 358
    .line 359
    return-void
.end method

.method public static synthetic A0(Lteam/opay/pay/payment/betting/BettingTopupActivity;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->n2(Lteam/opay/pay/payment/betting/BettingTopupActivity;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B0(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/pay/api/QueryVoucherItem;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->c1(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/pay/api/QueryVoucherItem;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C0(Lteam/opay/core/api/BettingProvider;Lteam/opay/pay/payment/betting/BettingTopupActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->i2(Lteam/opay/core/api/BettingProvider;Lteam/opay/pay/payment/betting/BettingTopupActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic D0(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/pay/cashier/LifePreOrder;Lteam/opay/pay/cashier/OrderInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->G2(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/pay/cashier/LifePreOrder;Lteam/opay/pay/cashier/OrderInfo;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic E(Lteam/opay/pay/payment/betting/BettingTopupActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->a2(Lteam/opay/pay/payment/betting/BettingTopupActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic E0(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->u2(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic F(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->t1(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic F0(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/pay/payment/data/DataMarketingRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T0(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/pay/payment/data/DataMarketingRsp;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic F2(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/core/api/BettingAccount;Ljava/lang/Boolean;Lteam/opay/pay/payment/voucherpackage/VoucherPackageResult;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x2

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    const/4 p3, 0x0

    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->E2(Lteam/opay/core/api/BettingAccount;Ljava/lang/Boolean;Lteam/opay/pay/payment/voucherpackage/VoucherPackageResult;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static synthetic G(Lteam/opay/pay/payment/betting/BettingTopupActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->X1(Lteam/opay/pay/payment/betting/BettingTopupActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic G0()Ljava/text/DecimalFormat;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->w1()Ljava/text/DecimalFormat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final G2(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/pay/cashier/LifePreOrder;Lteam/opay/pay/cashier/OrderInfo;)Lkotlin/Unit;
    .locals 13

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->H1()Lteam/opay/pay/payment/betting/LifeCommonViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lteam/opay/pay/cashier/LifePreOrder;->getPaymentAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lteam/opay/pay/payment/betting/LifeCommonViewModel;->I(Lteam/opay/core/api/GraphQL$CurrencyAmount;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lteam/opay/pay/cashier/PaymentTask;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lteam/opay/pay/cashier/PaymentTask;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lteam/opay/pay/cashier/LifePreOrder;->getServiceType()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {p1}, Lteam/opay/pay/cashier/LifePreOrder;->getProviderId()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    const-string v2, ""

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    if-nez v6, :cond_0

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :goto_0
    move-object v6, v0

    .line 39
    goto :goto_4

    .line 40
    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    .line 41
    .line 42
    invoke-virtual {p2}, Lteam/opay/pay/cashier/OrderInfo;->getCouponId()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    goto :goto_2

    .line 47
    :cond_2
    move-object v0, v4

    .line 48
    :goto_2
    if-nez v0, :cond_3

    .line 49
    .line 50
    move-object v0, v2

    .line 51
    :cond_3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-nez v6, :cond_0

    .line 56
    .line 57
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->B:Lteam/opay/pay/payment/betting/BettingBundle;

    .line 58
    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    invoke-virtual {v0}, Lteam/opay/pay/payment/betting/BettingBundle;->g()Lteam/opay/pay/api/MarketingPlan;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-eqz v0, :cond_4

    .line 66
    .line 67
    invoke-virtual {v0}, Lteam/opay/pay/api/MarketingPlan;->getVoucherList()Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Lteam/opay/pay/api/MarketingVoucher;

    .line 78
    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    invoke-virtual {v0}, Lteam/opay/pay/api/MarketingVoucher;->getVoucherId()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    goto :goto_3

    .line 86
    :cond_4
    move-object v0, v4

    .line 87
    :goto_3
    if-nez v0, :cond_0

    .line 88
    .line 89
    move-object v0, v2

    .line 90
    goto :goto_0

    .line 91
    :goto_4
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->M1()Lteam/opay/pay/opay/PaymentViewModel;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {p0, p1}, Lteam/opay/pay/opay/PaymentViewModel;->Q(Lteam/opay/pay/cashier/LifePreOrder;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v8

    .line 99
    if-eqz p2, :cond_5

    .line 100
    .line 101
    invoke-virtual {p2}, Lteam/opay/pay/cashier/OrderInfo;->getOrderNo()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    :cond_5
    if-nez v4, :cond_6

    .line 106
    .line 107
    move-object v4, v2

    .line 108
    :cond_6
    new-instance p0, Lteam/opay/swarmfoundation/payment/PayInput;

    .line 109
    .line 110
    const/16 v11, 0xd0

    .line 111
    .line 112
    const/4 v12, 0x0

    .line 113
    const/4 v7, 0x0

    .line 114
    const/4 v9, 0x0

    .line 115
    const/4 v10, 0x0

    .line 116
    move-object v2, p0

    .line 117
    invoke-direct/range {v2 .. v12}, Lteam/opay/swarmfoundation/payment/PayInput;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Lteam/opay/pay/cashier/LifePreOrder;->getPaymentAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    const/16 v6, 0xc

    .line 125
    .line 126
    const/4 v4, 0x0

    .line 127
    const/4 v5, 0x0

    .line 128
    invoke-static/range {v1 .. v7}, Lteam/opay/pay/cashier/PaymentTask;->c(Lteam/opay/pay/cashier/PaymentTask;Lteam/opay/swarmfoundation/payment/PayInput;Lteam/opay/core/api/GraphQL$CurrencyAmount;ZZILjava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 132
    .line 133
    return-object p0
.end method

.method public static synthetic H(Lteam/opay/pay/payment/betting/BettingTopupActivity;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->d1(Lteam/opay/pay/payment/betting/BettingTopupActivity;Ljava/util/List;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic H0()I
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->J2()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static synthetic I(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/pay/android/views/KeyboardEditText;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->o2(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/pay/android/views/KeyboardEditText;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic I0(Lteam/opay/pay/payment/betting/BettingTopupActivity;)Lteam/opay/pay/payment/betting/BettingServiceAdapter;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->s1(Lteam/opay/pay/payment/betting/BettingTopupActivity;)Lteam/opay/pay/payment/betting/BettingServiceAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final I2()I
    .locals 1

    .line 1
    const/16 v0, 0xe

    .line 2
    .line 3
    invoke-static {v0}, Lkmf;->g(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public static synthetic J(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/pay/api/QueryVoucherItem;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->k1(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/pay/api/QueryVoucherItem;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic J0(Lteam/opay/pay/payment/betting/BettingTopupActivity;Landroid/text/Editable;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->s2(Lteam/opay/pay/payment/betting/BettingTopupActivity;Landroid/text/Editable;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final J2()I
    .locals 1

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    invoke-static {v0}, Lkmf;->g(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public static synthetic K(Lteam/opay/pay/payment/betting/BettingTopupActivity;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->l1(Lteam/opay/pay/payment/betting/BettingTopupActivity;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic K0(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/odialog/net/AdDataItem;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->o1(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/odialog/net/AdDataItem;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic L(Lteam/opay/pay/payment/betting/BettingTopupActivity;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->t2(Lteam/opay/pay/payment/betting/BettingTopupActivity;Landroid/view/View;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic L0(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/pay/android/views/KeyboardEditText;Landroid/text/Editable;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->m2(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/pay/android/views/KeyboardEditText;Landroid/text/Editable;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final L2(Lteam/opay/pay/payment/betting/BettingTopupActivity;)Lteam/opay/pay/payment/record/RecordsTopupAdapter;
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/payment/record/RecordsTopupAdapter;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->BETTING:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lteam/opay/pay/payment/record/RecordsTopupAdapter;-><init>(Lteam/opay/core/api/GraphQL$ServiceType;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lteam/opay/pay/payment/betting/BettingTopupActivity$recordsAdapter$2$1$1;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity$recordsAdapter$2$1$1;-><init>(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lteam/opay/pay/payment/record/RecordsTopupAdapter;->r(Lkotlin/jvm/functions/Function1;)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lteam/opay/pay/payment/betting/BettingTopupActivity$recordsAdapter$2$1$2;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity$recordsAdapter$2$1$2;-><init>(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lteam/opay/pay/payment/record/RecordsTopupAdapter;->s(Lkotlin/jvm/functions/Function1;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public static synthetic M(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->g3(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic M0(Lteam/opay/pay/payment/betting/BettingTopupActivity;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->v1(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic N()Lteam/opay/pay/payment/betting/BettingBundlesAdapter;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->u1()Lteam/opay/pay/payment/betting/BettingBundlesAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic N0(Lteam/opay/pay/payment/betting/BettingTopupActivity;)Lteam/opay/pay/payment/betting/BettingTopupViewModel;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T1()Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic N2(Lteam/opay/pay/payment/betting/BettingTopupActivity;Ljava/lang/String;Lteam/opay/pay/api/RecordsTopupRsp;ILjava/lang/Object;)V
    .locals 1

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p4, :cond_0

    .line 5
    .line 6
    move-object p1, v0

    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    move-object p2, v0

    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->M2(Ljava/lang/String;Lteam/opay/pay/api/RecordsTopupRsp;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static synthetic O(Lteam/opay/pay/payment/betting/BettingTopupActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->W0(Lteam/opay/pay/payment/betting/BettingTopupActivity;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic O0(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/pay/api/RecordsTopupRsp;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->A2(Lteam/opay/pay/api/RecordsTopupRsp;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final O2(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/pay/api/RecordsTopupRsp;Z)Lkotlin/Unit;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "common_"

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->O1()Lteam/opay/pay/payment/record/RecordsTopupViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    sget-object v2, Lteam/opay/core/api/GraphQL$ServiceType;->BETTING:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 11
    .line 12
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {p2, p0, v3, p1}, Lteam/opay/pay/payment/record/RecordsTopupViewModel;->w(Lag8;Ljava/lang/String;Lteam/opay/pay/api/RecordsTopupRsp;)V

    .line 17
    .line 18
    .line 19
    sget-object p0, Lx7b;->a:Lx7b;

    .line 20
    .line 21
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    new-instance p2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p1, "_delete_window_delete"

    .line 37
    .line 38
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    new-array p2, v0, [Lkotlin/Pair;

    .line 46
    .line 47
    invoke-virtual {p0, p1, p2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    sget-object p0, Lx7b;->a:Lx7b;

    .line 52
    .line 53
    sget-object p1, Lteam/opay/core/api/GraphQL$ServiceType;->BETTING:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 54
    .line 55
    invoke-virtual {p1}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    new-instance p2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string p1, "_delete_window_cancel"

    .line 71
    .line 72
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    new-array p2, v0, [Lkotlin/Pair;

    .line 80
    .line 81
    invoke-virtual {p0, p1, p2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 82
    .line 83
    .line 84
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 85
    .line 86
    return-object p0
.end method

.method public static synthetic P(Lteam/opay/pay/payment/betting/BettingTopupActivity;Ljava/lang/Float;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->Z0(Lteam/opay/pay/payment/betting/BettingTopupActivity;Ljava/lang/Float;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic P0(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/pay/api/RecordsTopupRsp;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->B2(Lteam/opay/pay/api/RecordsTopupRsp;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Q(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/pay/api/QueryVoucherItem;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->f1(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/pay/api/QueryVoucherItem;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic Q0(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->H2()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final Q2(Ljava/lang/String;Lteam/opay/pay/payment/betting/BettingTopupActivity;)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1, p0}, Lkmf;->E(Landroid/content/Context;Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    sget-object p1, Lx7b;->a:Lx7b;

    .line 11
    .line 12
    sget-object v0, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 13
    .line 14
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager;->u()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "Userid"

    .line 23
    .line 24
    invoke-static {v1, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "publicityTipsLink"

    .line 29
    .line 30
    invoke-static {v1, p0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const/4 v1, 0x2

    .line 35
    new-array v1, v1, [Lkotlin/Pair;

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    aput-object v0, v1, v2

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    aput-object p0, v1, v0

    .line 42
    .line 43
    const-string p0, "common_betting_topup_area_comp2_click"

    .line 44
    .line 45
    invoke-virtual {p1, p0, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 49
    .line 50
    return-object p0
.end method

.method public static synthetic R(Lteam/opay/pay/payment/betting/BettingTopupActivity;Ljava/lang/Float;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->Y0(Lteam/opay/pay/payment/betting/BettingTopupActivity;Ljava/lang/Float;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic R0(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->W2()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic S(Lteam/opay/pay/payment/betting/BettingTopupActivity;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->V2(Lteam/opay/pay/payment/betting/BettingTopupActivity;)Landroidx/recyclerview/widget/GridLayoutManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final S0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->I1()Lteam/opay/pay/payment/data/LifeMarketingViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/payment/data/LifeMarketingViewModel;->C()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, La21;

    .line 10
    .line 11
    invoke-direct {v1, p0}, La21;-><init>(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Lteam/opay/pay/payment/betting/BettingTopupActivity$b;

    .line 15
    .line 16
    invoke-direct {v2, v1}, Lteam/opay/pay/payment/betting/BettingTopupActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T1()Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->a0()Landroidx/lifecycle/MutableLiveData;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Lm21;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Lm21;-><init>(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V

    .line 33
    .line 34
    .line 35
    new-instance v2, Lteam/opay/pay/payment/betting/BettingTopupActivity$b;

    .line 36
    .line 37
    invoke-direct {v2, v1}, Lteam/opay/pay/payment/betting/BettingTopupActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T1()Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->b0()Landroidx/lifecycle/MutableLiveData;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    new-instance v1, Lq21;

    .line 52
    .line 53
    invoke-direct {v1, p0}, Lq21;-><init>(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V

    .line 54
    .line 55
    .line 56
    new-instance v2, Lteam/opay/pay/payment/betting/BettingTopupActivity$b;

    .line 57
    .line 58
    invoke-direct {v2, v1}, Lteam/opay/pay/payment/betting/BettingTopupActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T1()Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->X()Landroidx/lifecycle/MutableLiveData;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    new-instance v1, Lr21;

    .line 73
    .line 74
    invoke-direct {v1, p0}, Lr21;-><init>(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V

    .line 75
    .line 76
    .line 77
    new-instance v2, Lteam/opay/pay/payment/betting/BettingTopupActivity$b;

    .line 78
    .line 79
    invoke-direct {v2, v1}, Lteam/opay/pay/payment/betting/BettingTopupActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T1()Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->T()Landroidx/lifecycle/MutableLiveData;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    new-instance v1, Ls21;

    .line 94
    .line 95
    invoke-direct {v1, p0}, Ls21;-><init>(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V

    .line 96
    .line 97
    .line 98
    new-instance v2, Lteam/opay/pay/payment/betting/BettingTopupActivity$b;

    .line 99
    .line 100
    invoke-direct {v2, v1}, Lteam/opay/pay/payment/betting/BettingTopupActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T1()Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->j0()Landroidx/lifecycle/MutableLiveData;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    new-instance v1, Lu21;

    .line 115
    .line 116
    invoke-direct {v1, p0}, Lu21;-><init>(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V

    .line 117
    .line 118
    .line 119
    new-instance v2, Lteam/opay/pay/payment/betting/BettingTopupActivity$b;

    .line 120
    .line 121
    invoke-direct {v2, v1}, Lteam/opay/pay/payment/betting/BettingTopupActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T1()Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->Y()Landroidx/lifecycle/MutableLiveData;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    new-instance v1, Lv21;

    .line 136
    .line 137
    invoke-direct {v1, p0}, Lv21;-><init>(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V

    .line 138
    .line 139
    .line 140
    new-instance v2, Lteam/opay/pay/payment/betting/BettingTopupActivity$b;

    .line 141
    .line 142
    invoke-direct {v2, v1}, Lteam/opay/pay/payment/betting/BettingTopupActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T1()Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v0}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->o0()Landroidx/lifecycle/MutableLiveData;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    new-instance v2, Lw21;

    .line 157
    .line 158
    invoke-direct {v2, p0}, Lw21;-><init>(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V

    .line 159
    .line 160
    .line 161
    new-instance v3, Lteam/opay/pay/payment/betting/BettingTopupActivity$b;

    .line 162
    .line 163
    invoke-direct {v3, v2}, Lteam/opay/pay/payment/betting/BettingTopupActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->n0()Landroidx/lifecycle/MutableLiveData;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    new-instance v1, Lx21;

    .line 174
    .line 175
    invoke-direct {v1, p0}, Lx21;-><init>(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V

    .line 176
    .line 177
    .line 178
    new-instance v2, Lteam/opay/pay/payment/betting/BettingTopupActivity$b;

    .line 179
    .line 180
    invoke-direct {v2, v1}, Lteam/opay/pay/payment/betting/BettingTopupActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->G1()Lteam/opay/pay/module/offers/HotOffersViewModel;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {v0}, Lteam/opay/pay/module/offers/HotOffersViewModel;->x()Landroidx/lifecycle/MutableLiveData;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    new-instance v1, Ly21;

    .line 195
    .line 196
    invoke-direct {v1, p0}, Ly21;-><init>(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V

    .line 197
    .line 198
    .line 199
    new-instance v2, Lteam/opay/pay/payment/betting/BettingTopupActivity$b;

    .line 200
    .line 201
    invoke-direct {v2, v1}, Lteam/opay/pay/payment/betting/BettingTopupActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->G1()Lteam/opay/pay/module/offers/HotOffersViewModel;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-virtual {v0}, Lteam/opay/pay/module/offers/HotOffersViewModel;->B()Landroidx/lifecycle/MutableLiveData;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    new-instance v1, Lb21;

    .line 216
    .line 217
    invoke-direct {v1, p0}, Lb21;-><init>(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V

    .line 218
    .line 219
    .line 220
    new-instance v2, Lteam/opay/pay/payment/betting/BettingTopupActivity$b;

    .line 221
    .line 222
    invoke-direct {v2, v1}, Lteam/opay/pay/payment/betting/BettingTopupActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->G1()Lteam/opay/pay/module/offers/HotOffersViewModel;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-virtual {v0}, Lteam/opay/pay/module/offers/HotOffersViewModel;->F()Lteam/opay/pay/util/SingleLiveEvent;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    new-instance v1, Lc21;

    .line 237
    .line 238
    invoke-direct {v1, p0}, Lc21;-><init>(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V

    .line 239
    .line 240
    .line 241
    new-instance v2, Lteam/opay/pay/payment/betting/BettingTopupActivity$b;

    .line 242
    .line 243
    invoke-direct {v2, v1}, Lteam/opay/pay/payment/betting/BettingTopupActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0, p0, v2}, Lteam/opay/pay/util/SingleLiveEvent;->observe(Lag8;Lvfa;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->M1()Lteam/opay/pay/opay/PaymentViewModel;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    invoke-virtual {v0}, Lteam/opay/pay/opay/PaymentViewModel;->M()Landroidx/lifecycle/MutableLiveData;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    new-instance v1, Ld21;

    .line 258
    .line 259
    invoke-direct {v1, p0}, Ld21;-><init>(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V

    .line 260
    .line 261
    .line 262
    new-instance v2, Lteam/opay/pay/payment/betting/BettingTopupActivity$b;

    .line 263
    .line 264
    invoke-direct {v2, v1}, Lteam/opay/pay/payment/betting/BettingTopupActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->M1()Lteam/opay/pay/opay/PaymentViewModel;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-virtual {v0}, Lteam/opay/pay/opay/PaymentViewModel;->M()Landroidx/lifecycle/MutableLiveData;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    new-instance v1, Le21;

    .line 279
    .line 280
    invoke-direct {v1, p0}, Le21;-><init>(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V

    .line 281
    .line 282
    .line 283
    new-instance v2, Lteam/opay/pay/payment/betting/BettingTopupActivity$b;

    .line 284
    .line 285
    invoke-direct {v2, v1}, Lteam/opay/pay/payment/betting/BettingTopupActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->A1()Lteam/opay/pay/ad/OpayAdBannerViewModel;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    invoke-virtual {v0}, Lteam/opay/pay/ad/OpayAdBannerViewModel;->x()Landroidx/lifecycle/MutableLiveData;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    new-instance v1, Lf21;

    .line 300
    .line 301
    invoke-direct {v1, p0}, Lf21;-><init>(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V

    .line 302
    .line 303
    .line 304
    new-instance v2, Lteam/opay/pay/payment/betting/BettingTopupActivity$b;

    .line 305
    .line 306
    invoke-direct {v2, v1}, Lteam/opay/pay/payment/betting/BettingTopupActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->U1()Lteam/opay/pay/coupon/OpayVoucherViewModel;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    invoke-virtual {v0}, Lteam/opay/pay/coupon/OpayVoucherViewModel;->A()Landroidx/lifecycle/MutableLiveData;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    new-instance v1, Lg21;

    .line 321
    .line 322
    invoke-direct {v1, p0}, Lg21;-><init>(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V

    .line 323
    .line 324
    .line 325
    new-instance v2, Lteam/opay/pay/payment/betting/BettingTopupActivity$b;

    .line 326
    .line 327
    invoke-direct {v2, v1}, Lteam/opay/pay/payment/betting/BettingTopupActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T1()Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    invoke-virtual {v0}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->h0()Lteam/opay/pay/util/SingleLiveEvent;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    new-instance v1, Lh21;

    .line 342
    .line 343
    invoke-direct {v1, p0}, Lh21;-><init>(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V

    .line 344
    .line 345
    .line 346
    new-instance v2, Lteam/opay/pay/payment/betting/BettingTopupActivity$b;

    .line 347
    .line 348
    invoke-direct {v2, v1}, Lteam/opay/pay/payment/betting/BettingTopupActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v0, p0, v2}, Lteam/opay/pay/util/SingleLiveEvent;->observe(Lag8;Lvfa;)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T1()Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    invoke-virtual {v0}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->R()Landroidx/lifecycle/MutableLiveData;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    new-instance v1, Lj21;

    .line 363
    .line 364
    invoke-direct {v1, p0}, Lj21;-><init>(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V

    .line 365
    .line 366
    .line 367
    new-instance v2, Lteam/opay/pay/payment/betting/BettingTopupActivity$b;

    .line 368
    .line 369
    invoke-direct {v2, v1}, Lteam/opay/pay/payment/betting/BettingTopupActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->getTopBottomViewModel()Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    invoke-virtual {v0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->f0()Lteam/opay/pay/util/SingleLiveEvent;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    new-instance v1, Lk21;

    .line 384
    .line 385
    invoke-direct {v1, p0}, Lk21;-><init>(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V

    .line 386
    .line 387
    .line 388
    new-instance v2, Lteam/opay/pay/payment/betting/BettingTopupActivity$b;

    .line 389
    .line 390
    invoke-direct {v2, v1}, Lteam/opay/pay/payment/betting/BettingTopupActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v0, p0, v2}, Lteam/opay/pay/util/SingleLiveEvent;->observe(Lag8;Lvfa;)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->getTopBottomViewModel()Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    invoke-virtual {v0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->r0()Lteam/opay/pay/util/SingleLiveEvent;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    new-instance v1, Ll21;

    .line 405
    .line 406
    invoke-direct {v1, p0}, Ll21;-><init>(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V

    .line 407
    .line 408
    .line 409
    new-instance v2, Lteam/opay/pay/payment/betting/BettingTopupActivity$b;

    .line 410
    .line 411
    invoke-direct {v2, v1}, Lteam/opay/pay/payment/betting/BettingTopupActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v0, p0, v2}, Lteam/opay/pay/util/SingleLiveEvent;->observe(Lag8;Lvfa;)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->getTopBottomViewModel()Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    invoke-virtual {v0, p0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->z0(Lag8;)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->getTopBottomViewModel()Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    invoke-virtual {v0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->p0()Lteam/opay/pay/util/SingleLiveEvent;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    new-instance v1, Ln21;

    .line 433
    .line 434
    invoke-direct {v1, p0}, Ln21;-><init>(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V

    .line 435
    .line 436
    .line 437
    new-instance v2, Lteam/opay/pay/payment/betting/BettingTopupActivity$b;

    .line 438
    .line 439
    invoke-direct {v2, v1}, Lteam/opay/pay/payment/betting/BettingTopupActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v0, p0, v2}, Lteam/opay/pay/util/SingleLiveEvent;->observe(Lag8;Lvfa;)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->H1()Lteam/opay/pay/payment/betting/LifeCommonViewModel;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    invoke-virtual {v0}, Lteam/opay/pay/payment/betting/LifeCommonViewModel;->a0()Landroidx/lifecycle/MutableLiveData;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    new-instance v1, Lo21;

    .line 454
    .line 455
    invoke-direct {v1, p0}, Lo21;-><init>(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V

    .line 456
    .line 457
    .line 458
    new-instance v2, Lteam/opay/pay/payment/betting/BettingTopupActivity$b;

    .line 459
    .line 460
    invoke-direct {v2, v1}, Lteam/opay/pay/payment/betting/BettingTopupActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->H1()Lteam/opay/pay/payment/betting/LifeCommonViewModel;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    invoke-virtual {v0}, Lteam/opay/pay/payment/betting/LifeCommonViewModel;->Z()Landroidx/lifecycle/MutableLiveData;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    new-instance v1, Lp21;

    .line 475
    .line 476
    invoke-direct {v1, p0}, Lp21;-><init>(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V

    .line 477
    .line 478
    .line 479
    new-instance v2, Lteam/opay/pay/payment/betting/BettingTopupActivity$b;

    .line 480
    .line 481
    invoke-direct {v2, v1}, Lteam/opay/pay/payment/betting/BettingTopupActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 485
    .line 486
    .line 487
    return-void
.end method

.method public static synthetic S2(Lteam/opay/pay/payment/betting/BettingTopupActivity;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->R2(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic T(Lteam/opay/pay/payment/betting/BettingTopupActivity;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->h1(Lteam/opay/pay/payment/betting/BettingTopupActivity;Ljava/lang/Boolean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final T0(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/pay/payment/data/DataMarketingRsp;)Lkotlin/Unit;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_b

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_5

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v0, v0, Lge;->q:Landroid/widget/FrameLayout;

    .line 20
    .line 21
    const-string v1, "marketingContainer"

    .line 22
    .line 23
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    const/4 v3, 0x1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    const/4 v4, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v4, 0x0

    .line 33
    :goto_0
    invoke-static {v0, v4}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 34
    .line 35
    .line 36
    if-eqz p1, :cond_9

    .line 37
    .line 38
    invoke-virtual {p1}, Lteam/opay/pay/payment/data/DataMarketingRsp;->a()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const/4 v4, 0x0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lteam/opay/pay/payment/data/DataMarketingGroup;

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    invoke-virtual {v0}, Lteam/opay/pay/payment/data/DataMarketingGroup;->a()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    move-object v0, v4

    .line 59
    :goto_1
    if-eqz v0, :cond_9

    .line 60
    .line 61
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    goto/16 :goto_3

    .line 68
    .line 69
    :cond_3
    invoke-virtual {p1}, Lteam/opay/pay/payment/data/DataMarketingRsp;->b()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->J1()Lteam/opay/core/api/BettingProvider;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    if-eqz v0, :cond_4

    .line 78
    .line 79
    invoke-virtual {v0}, Lteam/opay/core/api/BettingProvider;->f()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    goto :goto_2

    .line 84
    :cond_4
    move-object v0, v4

    .line 85
    :goto_2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_9

    .line 90
    .line 91
    new-instance p1, Lteam/opay/pay/payment/data/MarketInput;

    .line 92
    .line 93
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->J1()Lteam/opay/core/api/BettingProvider;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    if-eqz v0, :cond_5

    .line 98
    .line 99
    invoke-virtual {v0}, Lteam/opay/core/api/BettingProvider;->f()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    :cond_5
    const-string v0, ""

    .line 104
    .line 105
    if-nez v4, :cond_6

    .line 106
    .line 107
    move-object v4, v0

    .line 108
    :cond_6
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->BETTING:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 109
    .line 110
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-direct {p1, v4, v1, v0}, Lteam/opay/pay/payment/data/MarketInput;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->r:Lteam/opay/pay/payment/data/LifeMarketingFragment;

    .line 118
    .line 119
    if-nez v0, :cond_7

    .line 120
    .line 121
    sget v0, Lteam/opay/pay/R$id;->marketing_container:I

    .line 122
    .line 123
    new-instance v1, Lteam/opay/pay/payment/data/LifeMarketingFragment;

    .line 124
    .line 125
    invoke-direct {v1}, Lteam/opay/pay/payment/data/LifeMarketingFragment;-><init>()V

    .line 126
    .line 127
    .line 128
    iput-object v1, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->r:Lteam/opay/pay/payment/data/LifeMarketingFragment;

    .line 129
    .line 130
    invoke-virtual {v1, p1}, Lteam/opay/pay/payment/data/LifeMarketingFragment;->y0(Lteam/opay/pay/payment/data/MarketInput;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    iget-object p1, p1, Lge;->q:Landroid/widget/FrameLayout;

    .line 138
    .line 139
    invoke-virtual {v1, p1}, Lteam/opay/pay/payment/data/LifeMarketingFragment;->z0(Landroid/view/ViewGroup;)V

    .line 140
    .line 141
    .line 142
    new-instance p1, Lteam/opay/pay/payment/betting/BettingTopupActivity$addObserver$1$1$1;

    .line 143
    .line 144
    invoke-direct {p1, p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity$addObserver$1$1$1;-><init>(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, p1}, Lteam/opay/pay/payment/data/LifeMarketingFragment;->x0(Lkotlin/jvm/functions/Function1;)V

    .line 148
    .line 149
    .line 150
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 151
    .line 152
    invoke-static {p0, v0, v1}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 153
    .line 154
    .line 155
    goto :goto_4

    .line 156
    :cond_7
    if-eqz v0, :cond_a

    .line 157
    .line 158
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-ne v0, v3, :cond_a

    .line 163
    .line 164
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->r:Lteam/opay/pay/payment/data/LifeMarketingFragment;

    .line 165
    .line 166
    if-eqz v0, :cond_8

    .line 167
    .line 168
    invoke-virtual {v0, p1}, Lteam/opay/pay/payment/data/LifeMarketingFragment;->y0(Lteam/opay/pay/payment/data/MarketInput;)V

    .line 169
    .line 170
    .line 171
    :cond_8
    iget-object p0, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->r:Lteam/opay/pay/payment/data/LifeMarketingFragment;

    .line 172
    .line 173
    if-eqz p0, :cond_a

    .line 174
    .line 175
    invoke-virtual {p0}, Lteam/opay/pay/payment/data/LifeMarketingFragment;->j0()V

    .line 176
    .line 177
    .line 178
    goto :goto_4

    .line 179
    :cond_9
    :goto_3
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    iget-object p0, p0, Lge;->q:Landroid/widget/FrameLayout;

    .line 184
    .line 185
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-static {p0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 189
    .line 190
    .line 191
    :cond_a
    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 192
    .line 193
    return-object p0

    .line 194
    :cond_b
    :goto_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 195
    .line 196
    return-object p0
.end method

.method public static synthetic U(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->V0(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final U0(Lteam/opay/pay/payment/betting/BettingTopupActivity;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lge;->p:Lteam/opay/core/android/views/PulseLoaderView;

    .line 6
    .line 7
    const-string v0, "loading"

    .line 8
    .line 9
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-static {p0, p1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 20
    .line 21
    .line 22
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0
.end method

.method public static synthetic U2(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/core/api/graphql/BettingInfo;Ljava/lang/String;ZZZILjava/lang/Object;)V
    .locals 7

    .line 1
    and-int/lit8 p7, p6, 0x4

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p7, :cond_0

    .line 5
    .line 6
    const/4 v4, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v4, p3

    .line 9
    :goto_0
    and-int/lit8 p3, p6, 0x8

    .line 10
    .line 11
    if-eqz p3, :cond_1

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move v5, p4

    .line 16
    :goto_1
    and-int/lit8 p3, p6, 0x10

    .line 17
    .line 18
    if-eqz p3, :cond_2

    .line 19
    .line 20
    const/4 v6, 0x0

    .line 21
    goto :goto_2

    .line 22
    :cond_2
    move v6, p5

    .line 23
    :goto_2
    move-object v1, p0

    .line 24
    move-object v2, p1

    .line 25
    move-object v3, p2

    .line 26
    invoke-virtual/range {v1 .. v6}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T2(Lteam/opay/core/api/graphql/BettingInfo;Ljava/lang/String;ZZZ)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public static synthetic V()I
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->I2()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static final V0(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->z2(Lteam/opay/core/android/arch/Resource;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final V2(Lteam/opay/pay/payment/betting/BettingTopupActivity;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 2

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public static synthetic W(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/pay/api/RecordsTopupRsp;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->O2(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/pay/api/RecordsTopupRsp;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final W0(Lteam/opay/pay/payment/betting/BettingTopupActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1}, Lkmf;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    return-object p0
.end method

.method public static synthetic X(Landroid/content/Intent;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->y2(Landroid/content/Intent;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final X0(Lteam/opay/pay/payment/betting/BettingTopupActivity;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-virtual {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->m3(Z)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method

.method public static final X1(Lteam/opay/pay/payment/betting/BettingTopupActivity;)Lkotlin/Unit;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x3

    .line 3
    invoke-static {p0, v0, v0, v1, v0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->N2(Lteam/opay/pay/payment/betting/BettingTopupActivity;Ljava/lang/String;Lteam/opay/pay/api/RecordsTopupRsp;ILjava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method public static synthetic Y(Lteam/opay/pay/payment/betting/BettingTopupActivity;ZI)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->b2(Lteam/opay/pay/payment/betting/BettingTopupActivity;ZI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final Y0(Lteam/opay/pay/payment/betting/BettingTopupActivity;Ljava/lang/Float;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->P2()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final Y1(Lteam/opay/pay/payment/betting/BettingTopupActivity;Landroid/view/View;Z)V
    .locals 0

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->O1()Lteam/opay/pay/payment/record/RecordsTopupViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lteam/opay/pay/payment/record/RecordsTopupViewModel;->H()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object p1, p1, Lge;->w:Landroidx/constraintlayout/widget/Group;

    .line 18
    .line 19
    const-string p2, "recordsGroup"

    .line 20
    .line 21
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->N1()Lteam/opay/pay/payment/record/RecordsTopupAdapter;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p2}, Lteam/opay/pay/payment/record/RecordsTopupAdapter;->getDataList()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    xor-int/lit8 p2, p2, 0x1

    .line 37
    .line 38
    invoke-static {p1, p2}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->O1()Lteam/opay/pay/payment/record/RecordsTopupViewModel;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const/4 p2, 0x0

    .line 46
    invoke-virtual {p1, p2}, Lteam/opay/pay/payment/record/RecordsTopupViewModel;->L(Z)V

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget-object p1, p1, Lge;->x:Lteam/opay/pay/payment/betting/ParentViewPagerNestScrollView;

    .line 54
    .line 55
    new-instance p2, Lo31;

    .line 56
    .line 57
    invoke-direct {p2, p0}, Lo31;-><init>(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iget-object p1, p1, Lge;->m:Lteam/opay/pay/android/views/KeyboardEditText;

    .line 69
    .line 70
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    if-lez p2, :cond_2

    .line 83
    .line 84
    invoke-virtual {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->D2(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->l3()V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public static synthetic Z(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lcom/opay/team/newhome/home/FloatingWidget;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->n1(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lcom/opay/team/newhome/home/FloatingWidget;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final Z0(Lteam/opay/pay/payment/betting/BettingTopupActivity;Ljava/lang/Float;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->D1()Lteam/opay/pay/payment/betting/BettingBundlesAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Lteam/opay/pay/payment/betting/BettingBundlesAdapter;->o(Ljava/lang/Float;)V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method

.method public static final Z1(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lge;->x:Lteam/opay/pay/payment/betting/ParentViewPagerNestScrollView;

    .line 6
    .line 7
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    iget-object p0, p0, Lge;->h:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    const/16 v1, 0xc8

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v0, v2, p0, v1}, Landroidx/core/widget/NestedScrollView;->Q(III)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static synthetic a0(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/odialog/net/ADListResponse;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->j1(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/odialog/net/ADListResponse;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final a1(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/pay/api/QueryVoucherItem;)Lkotlin/Unit;
    .locals 9

    .line 1
    invoke-virtual {p1}, Lteam/opay/pay/api/QueryVoucherItem;->getProviderInfoList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T1()Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->r0(Lteam/opay/pay/api/QueryVoucherItem;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    invoke-virtual {p0, v0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->R2(Z)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T1()Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0, p1}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->p0(Lteam/opay/pay/api/QueryVoucherItem;)Lteam/opay/core/api/graphql/BettingInfo;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    const/16 v7, 0xc

    .line 43
    .line 44
    const/4 v8, 0x0

    .line 45
    const-string v3, ""

    .line 46
    .line 47
    const/4 v4, 0x0

    .line 48
    const/4 v5, 0x0

    .line 49
    const/4 v6, 0x1

    .line 50
    move-object v1, p0

    .line 51
    invoke-static/range {v1 .. v8}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->U2(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/core/api/graphql/BettingInfo;Ljava/lang/String;ZZZILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-object v0, v0, Lge;->x:Lteam/opay/pay/payment/betting/ParentViewPagerNestScrollView;

    .line 59
    .line 60
    new-instance v1, Ln31;

    .line 61
    .line 62
    invoke-direct {v1, p0, p1}, Ln31;-><init>(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/pay/api/QueryVoucherItem;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lteam/opay/pay/api/QueryVoucherItem;->getVoucherUrl()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-nez p1, :cond_4

    .line 74
    .line 75
    const-string p1, ""

    .line 76
    .line 77
    :cond_4
    invoke-static {p1}, Lkotlin/text/StringsKt;->q1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-static {p0, p1}, Lkmf;->E(Landroid/content/Context;Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 89
    .line 90
    return-object p0
.end method

.method public static final a2(Lteam/opay/pay/payment/betting/BettingTopupActivity;)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lge;->m:Lteam/opay/pay/android/views/KeyboardEditText;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    iget-object p0, p0, Lge;->m:Lteam/opay/pay/android/views/KeyboardEditText;

    .line 18
    .line 19
    const-string v0, ""

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    sget-object v0, Ltfb;->a:Ltfb;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    new-array v1, v1, [Lkotlin/Pair;

    .line 29
    .line 30
    const-string v2, "betting_beneficiary_dialog_show"

    .line 31
    .line 32
    invoke-virtual {v0, v2, v1}, Ltfb;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v0, v0, Lge;->w:Landroidx/constraintlayout/widget/Group;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const-string v1, "recordsGroup"

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    iget-object p0, p0, Lge;->w:Landroidx/constraintlayout/widget/Group;

    .line 54
    .line 55
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {p0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->O1()Lteam/opay/pay/payment/record/RecordsTopupViewModel;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lteam/opay/pay/payment/record/RecordsTopupViewModel;->H()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    iget-object p0, p0, Lge;->w:Landroidx/constraintlayout/widget/Group;

    .line 77
    .line 78
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-static {p0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->N1()Lteam/opay/pay/payment/record/RecordsTopupAdapter;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lteam/opay/pay/payment/record/RecordsTopupAdapter;->getDataList()Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_3

    .line 98
    .line 99
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->N1()Lteam/opay/pay/payment/record/RecordsTopupAdapter;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lteam/opay/pay/payment/record/RecordsTopupAdapter;->u()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    iget-object p0, p0, Lge;->w:Landroidx/constraintlayout/widget/Group;

    .line 111
    .line 112
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-static {p0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 116
    .line 117
    .line 118
    :cond_3
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 119
    .line 120
    return-object p0
.end method

.method public static synthetic b0(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/core/api/graphql/BettingInfo;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->l2(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/core/api/graphql/BettingInfo;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final b1(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/pay/api/QueryVoucherItem;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lge;->x:Lteam/opay/pay/payment/betting/ParentViewPagerNestScrollView;

    .line 6
    .line 7
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v1, v1, Lge;->B:Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/16 v2, 0x258

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-virtual {v0, v3, v1, v2}, Landroidx/core/widget/NestedScrollView;->Q(III)V

    .line 21
    .line 22
    .line 23
    invoke-static {p0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    new-instance v7, Lteam/opay/pay/payment/betting/BettingTopupActivity$addObserver$8$1$2$1;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-direct {v7, p0, p1, v0}, Lteam/opay/pay/payment/betting/BettingTopupActivity$addObserver$8$1$2$1;-><init>(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/pay/api/QueryVoucherItem;Ljr2;)V

    .line 35
    .line 36
    .line 37
    const/4 v8, 0x2

    .line 38
    const/4 v9, 0x0

    .line 39
    const/4 v6, 0x0

    .line 40
    invoke-static/range {v4 .. v9}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public static final b2(Lteam/opay/pay/payment/betting/BettingTopupActivity;ZI)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-nez p2, :cond_3

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->H1()Lteam/opay/pay/payment/betting/LifeCommonViewModel;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p2}, Lteam/opay/pay/payment/betting/LifeCommonViewModel;->i0()Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->H1()Lteam/opay/pay/payment/betting/LifeCommonViewModel;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/LifeCommonViewModel;->l0()Landroidx/lifecycle/MutableLiveData;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    if-eqz p1, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    iget-object p2, p2, Lge;->m:Lteam/opay/pay/android/views/KeyboardEditText;

    .line 47
    .line 48
    invoke-virtual {p2}, Landroid/view/View;->hasFocus()Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-eqz p2, :cond_2

    .line 53
    .line 54
    const/4 p2, 0x1

    .line 55
    iput-boolean p2, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->D:Z

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    const/4 p2, 0x0

    .line 59
    iput-boolean p2, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->D:Z

    .line 60
    .line 61
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    iget-object p2, p2, Lge;->m:Lteam/opay/pay/android/views/KeyboardEditText;

    .line 66
    .line 67
    invoke-virtual {p2}, Landroid/view/View;->clearFocus()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    iget-object p2, p2, Lge;->w:Landroidx/constraintlayout/widget/Group;

    .line 75
    .line 76
    const-string v0, "recordsGroup"

    .line 77
    .line 78
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-static {p2}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 82
    .line 83
    .line 84
    :goto_0
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->l3()V

    .line 85
    .line 86
    .line 87
    if-nez p1, :cond_3

    .line 88
    .line 89
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    iget-object p0, p0, Lge;->o:Lvc8;

    .line 94
    .line 95
    iget-object p0, p0, Lvc8;->b:Lteam/opay/pay/android/views/AmountEditText;

    .line 96
    .line 97
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 98
    .line 99
    .line 100
    :cond_3
    :goto_1
    return-void
.end method

.method public static final b3(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/pay/api/RecordsTopupRsp;Z)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->O1()Lteam/opay/pay/payment/record/RecordsTopupViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    sget-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->BETTING:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 6
    .line 7
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p2, p0, v0, p1}, Lteam/opay/pay/payment/record/RecordsTopupViewModel;->w(Lag8;Ljava/lang/String;Lteam/opay/pay/api/RecordsTopupRsp;)V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method

.method public static synthetic c0(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/core/api/BettingAccount;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->r1(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/core/api/BettingAccount;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final c1(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/pay/api/QueryVoucherItem;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T1()Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p1}, Lteam/opay/pay/api/QueryVoucherItem;->getPayAmount()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->v0(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final c2(Lteam/opay/pay/payment/betting/BettingTopupActivity;Ljava/util/List;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->N1()Lteam/opay/pay/payment/record/RecordsTopupAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lteam/opay/pay/payment/record/RecordsTopupAdapter;->t(Ljava/util/List;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->O1()Lteam/opay/pay/payment/record/RecordsTopupViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lteam/opay/pay/payment/record/RecordsTopupViewModel;->H()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->l3()V

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p0
.end method

.method private final c3(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lge;->p:Lteam/opay/core/android/views/PulseLoaderView;

    .line 6
    .line 7
    const-string v1, "loading"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0, p1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v0, v0, Lge;->o:Lvc8;

    .line 20
    .line 21
    iget-object v0, v0, Lvc8;->b:Lteam/opay/pay/android/views/AmountEditText;

    .line 22
    .line 23
    xor-int/lit8 v1, p1, 0x1

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v0, v0, Lge;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 33
    .line 34
    xor-int/lit8 v1, p1, 0x1

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->D1()Lteam/opay/pay/payment/betting/BettingBundlesAdapter;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    xor-int/lit8 v1, p1, 0x1

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lteam/opay/pay/payment/betting/BettingBundlesAdapter;->p(Z)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v0, v0, Lge;->m:Lteam/opay/pay/android/views/KeyboardEditText;

    .line 53
    .line 54
    xor-int/lit8 p1, p1, 0x1

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public static synthetic d0(Lteam/opay/pay/payment/betting/BettingTopupActivity;Ljava/lang/Boolean;Lteam/opay/core/api/BettingAccount;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->g2(Lteam/opay/pay/payment/betting/BettingTopupActivity;Ljava/lang/Boolean;Lteam/opay/core/api/BettingAccount;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final d1(Lteam/opay/pay/payment/betting/BettingTopupActivity;Ljava/util/List;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object p1, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->G:Lteam/opay/pay/module/offers/HotOffersFragment;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    sget-object p1, Lteam/opay/pay/module/offers/HotOffersFragment;->w:Lteam/opay/pay/module/offers/HotOffersFragment$Companion;

    .line 6
    .line 7
    sget-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->BETTING:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 8
    .line 9
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Lteam/opay/pay/module/offers/HotOffersFragment$Companion;->a(Ljava/lang/String;)Lteam/opay/pay/module/offers/HotOffersFragment;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    sget v0, Lteam/opay/pay/R$id;->hot_offers_container:I

    .line 18
    .line 19
    invoke-static {p0, v0, p1}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->G:Lteam/opay/pay/module/offers/HotOffersFragment;

    .line 23
    .line 24
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p0
.end method

.method public static final d2(Lteam/opay/pay/payment/betting/BettingTopupActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->K2()V

    .line 11
    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->O1()Lteam/opay/pay/payment/record/RecordsTopupViewModel;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lteam/opay/pay/payment/record/RecordsTopupViewModel;->D()Landroidx/lifecycle/MutableLiveData;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    iget-object p0, p0, Lge;->w:Landroidx/constraintlayout/widget/Group;

    .line 34
    .line 35
    const-string p1, "recordsGroup"

    .line 36
    .line 37
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 41
    .line 42
    .line 43
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 44
    .line 45
    return-object p0
.end method

.method public static synthetic d3(Lteam/opay/pay/payment/betting/BettingTopupActivity;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    const/4 p3, 0x1

    .line 2
    and-int/2addr p2, p3

    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->c3(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic e0(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/pay/api/QueryVoucherItem;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->b1(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/pay/api/QueryVoucherItem;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final e1(Lteam/opay/pay/payment/betting/BettingTopupActivity;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lge;->l:Landroidx/fragment/app/FragmentContainerView;

    .line 6
    .line 7
    const-string v0, "hotOffersContainer"

    .line 8
    .line 9
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-static {p0, p1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 20
    .line 21
    .line 22
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0
.end method

.method public static synthetic f0(Lteam/opay/pay/payment/betting/BettingTopupActivity;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->e1(Lteam/opay/pay/payment/betting/BettingTopupActivity;Ljava/lang/Boolean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final f1(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/pay/api/QueryVoucherItem;)Lkotlin/Unit;
    .locals 3

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {p0, v2, v2, v0, v1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->z1(Lteam/opay/pay/payment/betting/BettingTopupActivity;ZZILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    sget-object v0, Lteam/opay/pay/coupon/GetVoucherSuccessDialogV2;->m:Lteam/opay/pay/coupon/GetVoucherSuccessDialogV2$Companion;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lteam/opay/pay/coupon/GetVoucherSuccessDialogV2$Companion;->a(Lteam/opay/pay/api/QueryVoucherItem;)Lteam/opay/pay/coupon/GetVoucherSuccessDialogV2;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    new-instance v0, Lk31;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lk31;-><init>(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lteam/opay/pay/coupon/GetVoucherSuccessDialogV2;->Q(Lkotlin/jvm/functions/Function1;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0, p1}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 27
    .line 28
    .line 29
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 30
    .line 31
    return-object p0
.end method

.method public static synthetic f3(Lteam/opay/pay/payment/betting/BettingTopupActivity;ZLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const-string p2, ""

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->e3(ZLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static synthetic g0(Ljava/lang/String;Lteam/opay/pay/payment/betting/BettingTopupActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->Q2(Ljava/lang/String;Lteam/opay/pay/payment/betting/BettingTopupActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final g1(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/pay/api/QueryVoucherItem;)Lkotlin/Unit;
    .locals 3

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/pay/payment/betting/UseVoucherEvent;

    .line 7
    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    invoke-direct {v0, p1, v1, v2}, Lteam/opay/pay/payment/betting/UseVoucherEvent;-><init>(Lteam/opay/pay/api/QueryVoucherItem;J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->C2(Lteam/opay/pay/payment/betting/UseVoucherEvent;)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0
.end method

.method public static final g2(Lteam/opay/pay/payment/betting/BettingTopupActivity;Ljava/lang/Boolean;Lteam/opay/core/api/BettingAccount;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->h3(Lteam/opay/core/api/BettingAccount;Ljava/lang/Boolean;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method public static final g3(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lge;->x:Lteam/opay/pay/payment/betting/ParentViewPagerNestScrollView;

    .line 6
    .line 7
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    iget-object p0, p0, Lge;->n:Landroidx/appcompat/widget/AppCompatTextView;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1, p0}, Landroidx/core/widget/NestedScrollView;->P(II)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static synthetic h0(Lteam/opay/pay/payment/betting/BettingTopupActivity;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->i1(Lteam/opay/pay/payment/betting/BettingTopupActivity;Ljava/lang/Boolean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final h1(Lteam/opay/pay/payment/betting/BettingTopupActivity;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-direct {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->c3(Z)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method

.method public static synthetic i0(Lteam/opay/pay/payment/betting/BettingTopupActivity;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->c2(Lteam/opay/pay/payment/betting/BettingTopupActivity;Ljava/util/List;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final i1(Lteam/opay/pay/payment/betting/BettingTopupActivity;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-direct {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->c3(Z)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method

.method public static final i2(Lteam/opay/core/api/BettingProvider;Lteam/opay/pay/payment/betting/BettingTopupActivity;)Lkotlin/Unit;
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/core/api/BettingProvider;->n()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/core/api/BettingProvider;->y()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    sget-object p0, Lteam/opay/pay/payment/betting/OperatorPromptFragment;->k:Lteam/opay/pay/payment/betting/OperatorPromptFragment$Companion;

    .line 16
    .line 17
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/OperatorPromptFragment$Companion;->a()Lteam/opay/pay/payment/betting/OperatorPromptFragment;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    new-instance v1, Lm31;

    .line 22
    .line 23
    invoke-direct {v1, p1, v0}, Lm31;-><init>(Lteam/opay/pay/payment/betting/BettingTopupActivity;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v1}, Lteam/opay/pay/payment/betting/OperatorPromptFragment;->Q(Lkotlin/jvm/functions/Function0;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p1, p0}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-static {p1, v0}, Lkmf;->E(Landroid/content/Context;Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 37
    .line 38
    return-object p0
.end method

.method public static synthetic i3(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/core/api/BettingAccount;Ljava/lang/Boolean;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->h3(Lteam/opay/core/api/BettingAccount;Ljava/lang/Boolean;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final initView()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lge;->B:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->Q1()Landroidx/recyclerview/widget/GridLayoutManager;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->C1()Lteam/opay/pay/payment/betting/BettingServiceAdapter;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static synthetic j0(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/pay/payment/data/BettingVoucherRsq;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->q1(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/pay/payment/data/BettingVoucherRsq;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final j1(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/odialog/net/ADListResponse;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->x1(Lteam/opay/odialog/net/ADListResponse;)V

    .line 5
    .line 6
    .line 7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    return-object p0
.end method

.method public static final j2(Lteam/opay/pay/payment/betting/BettingTopupActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkmf;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static synthetic k0(Lteam/opay/pay/payment/betting/BettingTopupActivity;)Lge;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->n3(Lteam/opay/pay/payment/betting/BettingTopupActivity;)Lge;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final k1(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/pay/api/QueryVoucherItem;)Lkotlin/Unit;
    .locals 3

    .line 1
    new-instance v0, Lteam/opay/pay/payment/betting/UseVoucherEvent;

    .line 2
    .line 3
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    invoke-direct {v0, p1, v1, v2}, Lteam/opay/pay/payment/betting/UseVoucherEvent;-><init>(Lteam/opay/pay/api/QueryVoucherItem;J)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->C2(Lteam/opay/pay/payment/betting/UseVoucherEvent;)V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method

.method public static synthetic l0(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/pay/api/QueryVoucherItem;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->a1(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/pay/api/QueryVoucherItem;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final l1(Lteam/opay/pay/payment/betting/BettingTopupActivity;Z)Lkotlin/Unit;
    .locals 2

    .line 1
    const/4 p1, 0x3

    .line 2
    const/4 v0, 0x0

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p0, v1, v1, p1, v0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->z1(Lteam/opay/pay/payment/betting/BettingTopupActivity;ZZILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    return-object p0
.end method

.method public static final l2(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/core/api/graphql/BettingInfo;I)Lkotlin/Unit;
    .locals 8

    .line 1
    const-string p2, "provider"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/BettingInfo;->d()Lteam/opay/core/api/BettingProvider;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    const/4 v0, 0x0

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2}, Lteam/opay/core/api/BettingProvider;->f()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object p2, v0

    .line 19
    :goto_0
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T1()Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->k0()Lteam/opay/core/api/graphql/BettingInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-virtual {v1}, Lteam/opay/core/api/graphql/BettingInfo;->d()Lteam/opay/core/api/BettingProvider;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-virtual {v1}, Lteam/opay/core/api/BettingProvider;->f()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :cond_1
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-nez p2, :cond_2

    .line 44
    .line 45
    const/4 p2, 0x0

    .line 46
    iput-boolean p2, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->L:Z

    .line 47
    .line 48
    const/16 v6, 0x1c

    .line 49
    .line 50
    const/4 v7, 0x0

    .line 51
    const-string v2, ""

    .line 52
    .line 53
    const/4 v3, 0x0

    .line 54
    const/4 v4, 0x0

    .line 55
    const/4 v5, 0x0

    .line 56
    move-object v0, p0

    .line 57
    move-object v1, p1

    .line 58
    invoke-static/range {v0 .. v7}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->U2(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/core/api/graphql/BettingInfo;Ljava/lang/String;ZZZILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 62
    .line 63
    return-object p0
.end method

.method public static synthetic m0(Lteam/opay/pay/payment/betting/BettingTopupActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->p2(Lteam/opay/pay/payment/betting/BettingTopupActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final m1(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/core/api/graphql/BettingConfig;)Lkotlin/Unit;
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/BettingConfig;->a()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v1, v1, Lge;->j:Landroid/widget/FrameLayout;

    .line 24
    .line 25
    const-string v2, "fMatchContent"

    .line 26
    .line 27
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    sget v1, Lteam/opay/pay/R$id;->f_match_content:I

    .line 35
    .line 36
    sget-object v2, Lteam/opay/pay/payment/betting/BettingMatchFragment;->p:Lteam/opay/pay/payment/betting/BettingMatchFragment$Companion;

    .line 37
    .line 38
    invoke-virtual {v2, v0}, Lteam/opay/pay/payment/betting/BettingMatchFragment$Companion;->a(Ljava/util/List;)Lteam/opay/pay/payment/betting/BettingMatchFragment;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {p0, v1, v0}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    if-eqz p1, :cond_2

    .line 46
    .line 47
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/BettingConfig;->d()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Lteam/opay/core/api/graphql/TopCompetition;

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/BettingConfig;->c()Ljava/lang/Boolean;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 66
    .line 67
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    sget-object v0, Lteam/opay/pay/payment/betting/BettingQuickFragment;->o:Lteam/opay/pay/payment/betting/BettingQuickFragment$Companion;

    .line 74
    .line 75
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/BettingConfig;->b()Lteam/opay/core/api/graphql/GamesAndCodes;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {v0, p1}, Lteam/opay/pay/payment/betting/BettingQuickFragment$Companion;->a(Lteam/opay/core/api/graphql/GamesAndCodes;)Lteam/opay/pay/payment/betting/BettingQuickFragment;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    if-eqz p1, :cond_2

    .line 84
    .line 85
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iget-object v0, v0, Lge;->s:Landroidx/fragment/app/FragmentContainerView;

    .line 90
    .line 91
    const-string v1, "quickContainer"

    .line 92
    .line 93
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 97
    .line 98
    .line 99
    sget v0, Lteam/opay/pay/R$id;->quickContainer:I

    .line 100
    .line 101
    invoke-static {p0, v0, p1}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 102
    .line 103
    .line 104
    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 105
    .line 106
    return-object p0
.end method

.method public static final m2(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/pay/android/views/KeyboardEditText;Landroid/text/Editable;)Lkotlin/Unit;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->k3()Z

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    move-object v2, p2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v2, v0

    .line 14
    :goto_0
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    iget-object p2, p2, Lge;->n:Landroidx/appcompat/widget/AppCompatTextView;

    .line 19
    .line 20
    invoke-virtual {p2}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    sget v1, Lteam/opay/pay/R$string;->label_service_userid:I

    .line 25
    .line 26
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    if-nez p2, :cond_1

    .line 35
    .line 36
    const/4 p2, 0x0

    .line 37
    const/4 v1, 0x2

    .line 38
    invoke-static {p0, p2, v0, v1, v0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->f3(Lteam/opay/pay/payment/betting/BettingTopupActivity;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->l3()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->N1()Lteam/opay/pay/payment/record/RecordsTopupAdapter;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    new-instance v4, Lz11;

    .line 55
    .line 56
    invoke-direct {v4, p0}, Lz11;-><init>(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V

    .line 57
    .line 58
    .line 59
    const/4 v5, 0x2

    .line 60
    const/4 v6, 0x0

    .line 61
    const/4 v3, 0x0

    .line 62
    invoke-static/range {v1 .. v6}, Lteam/opay/pay/payment/record/RecordsTopupAdapter;->q(Lteam/opay/pay/payment/record/RecordsTopupAdapter;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 66
    .line 67
    return-object p0
.end method

.method public static synthetic n0(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/core/api/graphql/BettingConfig;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->m1(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/core/api/graphql/BettingConfig;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final n1(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lcom/opay/team/newhome/home/FloatingWidget;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->getTopBottomViewModel()Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lge;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v1, "getRoot(...)"

    .line 14
    .line 15
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0, p1}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->U0(Landroid/view/ViewGroup;Lcom/opay/team/newhome/home/FloatingWidget;)V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p0
.end method

.method public static final n2(Lteam/opay/pay/payment/betting/BettingTopupActivity;Z)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lge;->w:Landroidx/constraintlayout/widget/Group;

    .line 6
    .line 7
    const-string v0, "recordsGroup"

    .line 8
    .line 9
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p0, p1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 13
    .line 14
    .line 15
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    return-object p0
.end method

.method public static final n3(Lteam/opay/pay/payment/betting/BettingTopupActivity;)Lge;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lge;->inflate(Landroid/view/LayoutInflater;)Lge;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static synthetic o0(Lteam/opay/pay/payment/betting/BettingTopupActivity;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->p1(Lteam/opay/pay/payment/betting/BettingTopupActivity;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final o1(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/odialog/net/AdDataItem;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T1()Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->q0(Landroid/content/Intent;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T1()Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0, p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->w0(Lteam/opay/pay/android/BaseShowAdActivity;Lteam/opay/odialog/net/AdDataItem;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 28
    .line 29
    return-object p0
.end method

.method public static final o2(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/pay/android/views/KeyboardEditText;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-boolean p2, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->w:Z

    .line 2
    .line 3
    const/4 p3, 0x0

    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    const/4 p2, 0x1

    .line 7
    iput-boolean p2, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->w:Z

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Ltfb;->a:Ltfb;

    .line 14
    .line 15
    const-string p1, "betting_userID_click"

    .line 16
    .line 17
    new-array p2, p3, [Lkotlin/Pair;

    .line 18
    .line 19
    invoke-virtual {p0, p1, p2}, Ltfb;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return p3
.end method

.method public static synthetic p0(Lteam/opay/pay/payment/betting/BettingTopupActivity;ILteam/opay/pay/payment/betting/BettingBundle;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->r2(Lteam/opay/pay/payment/betting/BettingTopupActivity;ILteam/opay/pay/payment/betting/BettingBundle;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final p1(Lteam/opay/pay/payment/betting/BettingTopupActivity;Z)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lge;->p:Lteam/opay/core/android/views/PulseLoaderView;

    .line 6
    .line 7
    const-string v0, "loading"

    .line 8
    .line 9
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p0, p1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 13
    .line 14
    .line 15
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    return-object p0
.end method

.method public static final p2(Lteam/opay/pay/payment/betting/BettingTopupActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-boolean p1, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->x:Z

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->x:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    iget-object p0, p0, Lge;->o:Lvc8;

    .line 14
    .line 15
    invoke-virtual {p0}, Lvc8;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const/4 p1, 0x0

    .line 20
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 21
    .line 22
    .line 23
    sget-object p0, Ltfb;->a:Ltfb;

    .line 24
    .line 25
    const-string p1, "betting_amount_enter_click"

    .line 26
    .line 27
    new-array v0, p2, [Lkotlin/Pair;

    .line 28
    .line 29
    invoke-virtual {p0, p1, v0}, Ltfb;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return p2
.end method

.method public static synthetic q0(Lteam/opay/pay/payment/betting/BettingTopupActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->j2(Lteam/opay/pay/payment/betting/BettingTopupActivity;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final q1(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/pay/payment/data/BettingVoucherRsq;)Lkotlin/Unit;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/pay/payment/data/BettingVoucherRsq;->c()Lteam/opay/pay/coupon/Voucher;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Lteam/opay/pay/payment/data/BettingVoucherRsq;->b()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->H1()Lteam/opay/pay/payment/betting/LifeCommonViewModel;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-virtual {v0, v1}, Lteam/opay/pay/payment/betting/LifeCommonViewModel;->Q0(Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v1}, Lteam/opay/pay/payment/data/BettingVoucherRsq;->e(Z)V

    .line 26
    .line 27
    .line 28
    sget-object p1, Lteam/opay/pay/payment/betting/LifeVoucherDialog;->v:Lteam/opay/pay/payment/betting/LifeVoucherDialog$Companion;

    .line 29
    .line 30
    sget-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->BETTING:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 31
    .line 32
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p1, v0}, Lteam/opay/pay/payment/betting/LifeVoucherDialog$Companion;->a(Ljava/lang/String;)Lteam/opay/pay/payment/betting/LifeVoucherDialog;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const-string v0, "getSupportFragmentManager(...)"

    .line 45
    .line 46
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string v0, "LifeVoucherDialog"

    .line 50
    .line 51
    invoke-virtual {p1, p0, v0}, Lteam/opay/core/base/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 55
    .line 56
    return-object p0
.end method

.method public static final q2(Lteam/opay/pay/payment/betting/BettingTopupActivity;)Lkotlin/Unit;
    .locals 6

    .line 1
    sget-object v0, Ltfb;->a:Ltfb;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->B1()D

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "amount"

    .line 12
    .line 13
    invoke-static {v2, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "AccountNumber"

    .line 18
    .line 19
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->R1()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-static {v2, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->J1()Lteam/opay/core/api/BettingProvider;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    invoke-virtual {v3}, Lteam/opay/core/api/BettingProvider;->c()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v3, 0x0

    .line 39
    :goto_0
    const-string v4, "operator_name"

    .line 40
    .line 41
    invoke-static {v4, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const/4 v4, 0x3

    .line 46
    new-array v4, v4, [Lkotlin/Pair;

    .line 47
    .line 48
    const/4 v5, 0x0

    .line 49
    aput-object v1, v4, v5

    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    aput-object v2, v4, v1

    .line 53
    .line 54
    const/4 v1, 0x2

    .line 55
    aput-object v3, v4, v1

    .line 56
    .line 57
    const-string v1, "betting_amount_enter_confirm_click"

    .line 58
    .line 59
    invoke-virtual {v0, v1, v4}, Ltfb;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T1()Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->l0()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {p0, v0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->f2(Ljava/lang/Boolean;)Z

    .line 75
    .line 76
    .line 77
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 78
    .line 79
    return-object p0
.end method

.method public static synthetic r0(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->Z1(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final r1(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/core/api/BettingAccount;)Lkotlin/Unit;
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lge;->m:Lteam/opay/pay/android/views/KeyboardEditText;

    .line 8
    .line 9
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->H1()Lteam/opay/pay/payment/betting/LifeCommonViewModel;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lteam/opay/pay/payment/betting/LifeCommonViewModel;->k0()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "LifeVoucherDialog"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->l0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    instance-of v1, v0, Lteam/opay/pay/payment/betting/LifeVoucherDialog;

    .line 39
    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    check-cast v0, Lteam/opay/pay/payment/betting/LifeVoucherDialog;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->D1()Lteam/opay/pay/payment/betting/BettingBundlesAdapter;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lteam/opay/pay/payment/betting/BettingBundlesAdapter;->l()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->H1()Lteam/opay/pay/payment/betting/LifeCommonViewModel;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lteam/opay/pay/payment/betting/LifeCommonViewModel;->d0()D

    .line 59
    .line 60
    .line 61
    move-result-wide v0

    .line 62
    iput-wide v0, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->A:D

    .line 63
    .line 64
    const/4 v0, 0x2

    .line 65
    const/4 v1, 0x0

    .line 66
    invoke-static {p0, p1, v1, v0, v1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->i3(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/core/api/BettingAccount;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->H1()Lteam/opay/pay/payment/betting/LifeCommonViewModel;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/LifeCommonViewModel;->Z()Landroidx/lifecycle/MutableLiveData;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {p0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 81
    .line 82
    return-object p0
.end method

.method public static final r2(Lteam/opay/pay/payment/betting/BettingTopupActivity;ILteam/opay/pay/payment/betting/BettingBundle;Z)Lkotlin/Unit;
    .locals 4

    .line 1
    const-string p1, "bundle"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object p1, p1, Lge;->o:Lvc8;

    .line 11
    .line 12
    iget-object p1, p1, Lvc8;->b:Lteam/opay/pay/android/views/AmountEditText;

    .line 13
    .line 14
    const-string v0, ""

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lli2;->f(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    invoke-direct {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->c3(Z)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->k3()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->J1()Lteam/opay/core/api/BettingProvider;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const/4 v3, 0x0

    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    invoke-virtual {v2}, Lteam/opay/core/api/BettingProvider;->f()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    move-object v2, v3

    .line 49
    :goto_0
    if-eqz v2, :cond_1

    .line 50
    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    if-eqz p3, :cond_1

    .line 54
    .line 55
    iput-object p2, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->B:Lteam/opay/pay/payment/betting/BettingBundle;

    .line 56
    .line 57
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T1()Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 58
    .line 59
    .line 60
    move-result-object p3

    .line 61
    invoke-virtual {p3}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->l0()Z

    .line 62
    .line 63
    .line 64
    move-result p3

    .line 65
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    invoke-virtual {p0, p3}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->f2(Ljava/lang/Boolean;)Z

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_1
    if-nez v1, :cond_4

    .line 74
    .line 75
    if-eqz p3, :cond_4

    .line 76
    .line 77
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    iget-object p3, p3, Lge;->m:Lteam/opay/pay/android/views/KeyboardEditText;

    .line 82
    .line 83
    invoke-virtual {p3}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    if-eqz p3, :cond_3

    .line 88
    .line 89
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p3

    .line 93
    if-nez p3, :cond_2

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    move-object v0, p3

    .line 97
    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->D2(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :cond_4
    :goto_2
    sget-object p3, Ltfb;->a:Ltfb;

    .line 101
    .line 102
    invoke-virtual {p2}, Lteam/opay/pay/payment/betting/BettingBundle;->b()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    if-eqz p2, :cond_5

    .line 107
    .line 108
    invoke-virtual {p2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    goto :goto_3

    .line 113
    :cond_5
    move-object p2, v3

    .line 114
    :goto_3
    const-string v0, "amount"

    .line 115
    .line 116
    invoke-static {v0, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->J1()Lteam/opay/core/api/BettingProvider;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    if-eqz v0, :cond_6

    .line 125
    .line 126
    invoke-virtual {v0}, Lteam/opay/core/api/BettingProvider;->c()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    :cond_6
    const-string v0, "operator_name"

    .line 131
    .line 132
    invoke-static {v0, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    const-string v1, "AccountNumber"

    .line 137
    .line 138
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->R1()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    invoke-static {v1, p0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    const/4 v1, 0x3

    .line 147
    new-array v1, v1, [Lkotlin/Pair;

    .line 148
    .line 149
    aput-object p2, v1, p1

    .line 150
    .line 151
    const/4 p1, 0x1

    .line 152
    aput-object v0, v1, p1

    .line 153
    .line 154
    const/4 p1, 0x2

    .line 155
    aput-object p0, v1, p1

    .line 156
    .line 157
    const-string p0, "betting_amount_click"

    .line 158
    .line 159
    invoke-virtual {p3, p0, v1}, Ltfb;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 160
    .line 161
    .line 162
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 163
    .line 164
    return-object p0
.end method

.method public static synthetic s0(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/pay/api/QueryVoucherItem;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->g1(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/pay/api/QueryVoucherItem;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final s1(Lteam/opay/pay/payment/betting/BettingTopupActivity;)Lteam/opay/pay/payment/betting/BettingServiceAdapter;
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/payment/betting/BettingServiceAdapter;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/payment/betting/BettingServiceAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lj31;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lj31;-><init>(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static final s2(Lteam/opay/pay/payment/betting/BettingTopupActivity;Landroid/text/Editable;)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->v2()V

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->k3()Z

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-direct {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->c3(Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object p1, p1, Lge;->o:Lvc8;

    .line 18
    .line 19
    iget-object p1, p1, Lvc8;->b:Lteam/opay/pay/android/views/AmountEditText;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->j3(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 33
    .line 34
    return-object p0
.end method

.method public static synthetic t0(Lteam/opay/pay/payment/betting/BettingTopupActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->d2(Lteam/opay/pay/payment/betting/BettingTopupActivity;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final t1(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string p2, "null cannot be cast to non-null type team.opay.core.api.graphql.BettingOutInfo"

    .line 10
    .line 11
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    check-cast p1, Lteam/opay/core/api/graphql/BettingOutInfo;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->k2(Lteam/opay/core/api/graphql/BettingOutInfo;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static final t2(Lteam/opay/pay/payment/betting/BettingTopupActivity;Landroid/view/View;Z)V
    .locals 3

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    sget-object p1, Lx7b;->a:Lx7b;

    .line 4
    .line 5
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->J1()Lteam/opay/core/api/BettingProvider;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2}, Lteam/opay/core/api/BettingProvider;->c()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p2, 0x0

    .line 17
    :goto_0
    const-string v0, "operator_name"

    .line 18
    .line 19
    invoke-static {v0, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    const-string v0, "AccountNumber"

    .line 24
    .line 25
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->R1()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v0, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const/4 v1, 0x2

    .line 34
    new-array v1, v1, [Lkotlin/Pair;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    aput-object p2, v1, v2

    .line 38
    .line 39
    const/4 p2, 0x1

    .line 40
    aput-object v0, v1, p2

    .line 41
    .line 42
    const-string p2, "betting_enter_amount_click"

    .line 43
    .line 44
    invoke-virtual {p1, p2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget-object p1, p1, Lge;->x:Lteam/opay/pay/payment/betting/ParentViewPagerNestScrollView;

    .line 52
    .line 53
    new-instance p2, Lz21;

    .line 54
    .line 55
    invoke-direct {p2, p0}, Lz21;-><init>(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 59
    .line 60
    .line 61
    :cond_1
    return-void
.end method

.method public static synthetic u0(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/pay/api/RecordsTopupRsp;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->b3(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/pay/api/RecordsTopupRsp;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final u1()Lteam/opay/pay/payment/betting/BettingBundlesAdapter;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/pay/payment/betting/BettingBundlesAdapter;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/payment/betting/BettingBundlesAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final u2(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lge;->x:Lteam/opay/pay/payment/betting/ParentViewPagerNestScrollView;

    .line 6
    .line 7
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    iget-object p0, p0, Lge;->z:Landroidx/appcompat/widget/AppCompatTextView;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    const/16 v1, 0xc8

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v0, v2, p0, v1}, Landroidx/core/widget/NestedScrollView;->Q(III)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static synthetic v0(Lteam/opay/pay/payment/betting/BettingTopupActivity;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->X0(Lteam/opay/pay/payment/betting/BettingTopupActivity;Ljava/lang/Boolean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic w0(Lteam/opay/pay/payment/betting/BettingTopupActivity;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->U0(Lteam/opay/pay/payment/betting/BettingTopupActivity;Ljava/lang/Boolean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final w1()Ljava/text/DecimalFormat;
    .locals 1

    .line 1
    sget-object v0, Lbd9;->a:Lbd9;

    .line 2
    .line 3
    invoke-virtual {v0}, Lbd9;->g()Ljava/text/DecimalFormat;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static synthetic x0(Lteam/opay/pay/payment/betting/BettingTopupActivity;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->Y1(Lteam/opay/pay/payment/betting/BettingTopupActivity;Landroid/view/View;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic x2(Lteam/opay/pay/payment/betting/BettingTopupActivity;Landroid/content/Intent;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->w2(Landroid/content/Intent;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic y0(Lteam/opay/pay/payment/betting/BettingTopupActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->q2(Lteam/opay/pay/payment/betting/BettingTopupActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final y2(Landroid/content/Intent;)Ljava/lang/Object;
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v1, "hql action = "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public static synthetic z0(Lteam/opay/pay/payment/betting/BettingTopupActivity;)Lteam/opay/pay/payment/record/RecordsTopupAdapter;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->L2(Lteam/opay/pay/payment/betting/BettingTopupActivity;)Lteam/opay/pay/payment/record/RecordsTopupAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic z1(Lteam/opay/pay/payment/betting/BettingTopupActivity;ZZILjava/lang/Object;)V
    .locals 1

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p4, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    const/4 p2, 0x1

    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->y1(ZZ)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final A1()Lteam/opay/pay/ad/OpayAdBannerViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->q:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/ad/OpayAdBannerViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public final A2(Lteam/opay/pay/api/RecordsTopupRsp;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Lteam/opay/pay/api/RecordsTopupRsp;->g()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->a3(Lteam/opay/pay/api/RecordsTopupRsp;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T1()Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->S()Lteam/opay/core/api/graphql/BettingCalculateRsp;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_7

    .line 20
    .line 21
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/BettingCalculateRsp;->a()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_7

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const/4 v2, 0x1

    .line 36
    const/4 v3, 0x0

    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    move-object v4, v1

    .line 44
    check-cast v4, Lteam/opay/core/api/graphql/BettingInfo;

    .line 45
    .line 46
    invoke-virtual {v4}, Lteam/opay/core/api/graphql/BettingInfo;->d()Lteam/opay/core/api/BettingProvider;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    if-eqz v4, :cond_2

    .line 51
    .line 52
    invoke-virtual {v4}, Lteam/opay/core/api/BettingProvider;->f()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    move-object v4, v3

    .line 58
    :goto_0
    invoke-virtual {p1}, Lteam/opay/pay/api/RecordsTopupRsp;->d()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-static {v4, v5, v2}, Lkotlin/text/StringsKt;->I(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    move-object v1, v3

    .line 70
    :goto_1
    move-object v5, v1

    .line 71
    check-cast v5, Lteam/opay/core/api/graphql/BettingInfo;

    .line 72
    .line 73
    if-eqz v5, :cond_7

    .line 74
    .line 75
    invoke-virtual {v5}, Lteam/opay/core/api/graphql/BettingInfo;->d()Lteam/opay/core/api/BettingProvider;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    if-eqz v0, :cond_5

    .line 80
    .line 81
    invoke-virtual {v0}, Lteam/opay/core/api/BettingProvider;->w()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-ne v0, v2, :cond_5

    .line 86
    .line 87
    invoke-virtual {p1}, Lteam/opay/pay/api/RecordsTopupRsp;->c()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    if-nez p1, :cond_4

    .line 92
    .line 93
    const-string p1, ""

    .line 94
    .line 95
    :cond_4
    move-object v6, p1

    .line 96
    const/16 v10, 0x18

    .line 97
    .line 98
    const/4 v11, 0x0

    .line 99
    const/4 v7, 0x0

    .line 100
    const/4 v8, 0x0

    .line 101
    const/4 v9, 0x0

    .line 102
    move-object v4, p0

    .line 103
    invoke-static/range {v4 .. v11}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->U2(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/core/api/graphql/BettingInfo;Ljava/lang/String;ZZZILjava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_5
    invoke-virtual {v5}, Lteam/opay/core/api/graphql/BettingInfo;->d()Lteam/opay/core/api/BettingProvider;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    if-eqz p1, :cond_6

    .line 112
    .line 113
    invoke-virtual {p1}, Lteam/opay/core/api/BettingProvider;->v()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    :cond_6
    invoke-virtual {p0, v3}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->Y2(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    iget-object p1, p1, Lge;->m:Lteam/opay/pay/android/views/KeyboardEditText;

    .line 125
    .line 126
    const-string v0, "inputServiceUserid"

    .line 127
    .line 128
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-static {p1}, Lli2;->f(Landroid/view/View;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    iget-object p1, p1, Lge;->w:Landroidx/constraintlayout/widget/Group;

    .line 139
    .line 140
    const-string v0, "recordsGroup"

    .line 141
    .line 142
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 146
    .line 147
    .line 148
    return-void
.end method

.method public final B1()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->D1()Lteam/opay/pay/payment/betting/BettingBundlesAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/payment/betting/BettingBundlesAdapter;->m()Lteam/opay/pay/payment/betting/BettingBundle;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lteam/opay/pay/payment/betting/BettingBundle;->b()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-static {v0}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Double;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-wide v0, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->A:D

    .line 35
    .line 36
    :goto_0
    return-wide v0
.end method

.method public final B2(Lteam/opay/pay/api/RecordsTopupRsp;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lteam/opay/pay/api/RecordsTopupRsp;->c()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->M2(Ljava/lang/String;Lteam/opay/pay/api/RecordsTopupRsp;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final C1()Lteam/opay/pay/payment/betting/BettingServiceAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->H:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/payment/betting/BettingServiceAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method public final C2(Lteam/opay/pay/payment/betting/UseVoucherEvent;)V
    .locals 6

    .line 1
    invoke-static {p0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v3, Lteam/opay/pay/payment/betting/BettingTopupActivity$onUseVoucherClick$1;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v3, p1, p0, v2}, Lteam/opay/pay/payment/betting/BettingTopupActivity$onUseVoucherClick$1;-><init>(Lteam/opay/pay/payment/betting/UseVoucherEvent;Lteam/opay/pay/payment/betting/BettingTopupActivity;Ljr2;)V

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    const/4 v5, 0x0

    .line 17
    invoke-static/range {v0 .. v5}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final D1()Lteam/opay/pay/payment/betting/BettingBundlesAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->y:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/payment/betting/BettingBundlesAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method public final D2(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->J1()Lteam/opay/core/api/BettingProvider;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lteam/opay/core/api/BettingProvider;->h()Lteam/opay/core/api/BettingInputType;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v1

    .line 14
    :goto_0
    if-nez v0, :cond_1

    .line 15
    .line 16
    const/4 v0, -0x1

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    sget-object v2, Lteam/opay/pay/payment/betting/BettingTopupActivity$a;->a:[I

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    aget v0, v2, v0

    .line 25
    .line 26
    :goto_1
    const-string v2, "getString(...)"

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    const/4 v4, 0x2

    .line 30
    const/4 v5, 0x1

    .line 31
    if-eq v0, v5, :cond_5

    .line 32
    .line 33
    if-eq v0, v4, :cond_3

    .line 34
    .line 35
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-lez p1, :cond_2

    .line 40
    .line 41
    invoke-static {p0, v3, v1, v4, v1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->f3(Lteam/opay/pay/payment/betting/BettingTopupActivity;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    sget p1, Lteam/opay/pay/R$string;->betting_user_id_other_error_tip:I

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v5, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->e3(ZLjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-lez v0, :cond_4

    .line 63
    .line 64
    invoke-static {p1}, Lda2;->b(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_4

    .line 69
    .line 70
    invoke-static {p0, v3, v1, v4, v1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->f3(Lteam/opay/pay/payment/betting/BettingTopupActivity;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_4
    sget p1, Lteam/opay/pay/R$string;->betting_user_id_other_error_tip:I

    .line 75
    .line 76
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v5, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->e3(ZLjava/lang/String;)V

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_5
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T1()Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->o()Lteam/opay/core/api/Country;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-static {p1, v0}, Lxob;->p(Ljava/lang/String;Lteam/opay/core/api/Country;)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_6

    .line 100
    .line 101
    invoke-static {p0, v3, v1, v4, v1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->f3(Lteam/opay/pay/payment/betting/BettingTopupActivity;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_6
    sget p1, Lteam/opay/pay/R$string;->betting_user_id_phone_error_tip:I

    .line 106
    .line 107
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v5, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->e3(ZLjava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :goto_2
    return-void
.end method

.method public final E1()Lteam/opay/core/api/GraphQL$Currency;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T1()Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->p()Lteam/opay/core/api/GraphQL$Currency;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final E2(Lteam/opay/core/api/BettingAccount;Ljava/lang/Boolean;Lteam/opay/pay/payment/voucherpackage/VoucherPackageResult;)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->J1()Lteam/opay/core/api/BettingProvider;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Lteam/opay/core/api/BettingProvider;->f()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    const-string v3, ""

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    move-object v6, v3

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move-object v6, v1

    .line 22
    :goto_1
    sget-object v1, Lteam/opay/core/api/GraphQL$CurrencyAmount;->Companion:Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;

    .line 23
    .line 24
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->B1()D

    .line 25
    .line 26
    .line 27
    move-result-wide v4

    .line 28
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v1, v4}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->b(Ljava/lang/String;)Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    if-nez v4, :cond_2

    .line 37
    .line 38
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    :cond_2
    move-object v1, v4

    .line 43
    new-instance v10, Lteam/opay/pay/cashier/LifePreOrder;

    .line 44
    .line 45
    sget-object v4, Lteam/opay/core/api/GraphQL$ServiceType;->BETTING:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 46
    .line 47
    invoke-virtual {v4}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    sget-object v4, Lteam/opay/core/api/Country;->NIGERIA:Lteam/opay/core/api/Country;

    .line 52
    .line 53
    invoke-virtual {v4}, Lteam/opay/core/api/Country;->getCode()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->R1()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/BettingAccount;->b()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    if-nez v4, :cond_3

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_3
    move-object v3, v4

    .line 69
    :goto_2
    const v29, 0xffffc0

    .line 70
    .line 71
    .line 72
    const/16 v30, 0x0

    .line 73
    .line 74
    const/4 v11, 0x0

    .line 75
    const/4 v12, 0x0

    .line 76
    const/4 v13, 0x0

    .line 77
    const/4 v14, 0x0

    .line 78
    const/4 v15, 0x0

    .line 79
    const/16 v16, 0x0

    .line 80
    .line 81
    const/16 v17, 0x0

    .line 82
    .line 83
    const/16 v18, 0x0

    .line 84
    .line 85
    const/16 v19, 0x0

    .line 86
    .line 87
    const/16 v20, 0x0

    .line 88
    .line 89
    const/16 v21, 0x0

    .line 90
    .line 91
    const/16 v22, 0x0

    .line 92
    .line 93
    const/16 v23, 0x0

    .line 94
    .line 95
    const/16 v24, 0x0

    .line 96
    .line 97
    const/16 v25, 0x0

    .line 98
    .line 99
    const/16 v26, 0x0

    .line 100
    .line 101
    const/16 v27, 0x0

    .line 102
    .line 103
    const/16 v28, 0x0

    .line 104
    .line 105
    move-object v4, v10

    .line 106
    move-object v7, v1

    .line 107
    move-object v2, v10

    .line 108
    move-object v10, v3

    .line 109
    invoke-direct/range {v4 .. v30}, Lteam/opay/pay/cashier/LifePreOrder;-><init>(Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 110
    .line 111
    .line 112
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 113
    .line 114
    move-object/from16 v4, p2

    .line 115
    .line 116
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    if-eqz v3, :cond_4

    .line 121
    .line 122
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T1()Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    move-object/from16 v3, p1

    .line 127
    .line 128
    invoke-virtual {v1, v3}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->u0(Lteam/opay/core/api/BettingAccount;)V

    .line 129
    .line 130
    .line 131
    sget-object v1, Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;->h:Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity$Companion;

    .line 132
    .line 133
    invoke-virtual {v1, v0, v2}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity$Companion;->b(Landroid/app/Activity;Lteam/opay/pay/cashier/LifePreOrder;)V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :cond_4
    sget-object v3, Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;->h:Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity$Companion;

    .line 138
    .line 139
    move-object/from16 v4, p3

    .line 140
    .line 141
    invoke-virtual {v3, v2, v4}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity$Companion;->a(Lteam/opay/pay/cashier/LifePreOrder;Lteam/opay/pay/payment/voucherpackage/VoucherPackageResult;)V

    .line 142
    .line 143
    .line 144
    sget-object v3, Lx7b;->a:Lx7b;

    .line 145
    .line 146
    const-string v4, "amount"

    .line 147
    .line 148
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-static {v4, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->J1()Lteam/opay/core/api/BettingProvider;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    if-eqz v4, :cond_5

    .line 161
    .line 162
    invoke-virtual {v4}, Lteam/opay/core/api/BettingProvider;->c()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    goto :goto_3

    .line 167
    :cond_5
    const/4 v4, 0x0

    .line 168
    :goto_3
    const-string v5, "operator_name"

    .line 169
    .line 170
    invoke-static {v5, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    const-string v5, "AccountNumber"

    .line 175
    .line 176
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->R1()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    invoke-static {v5, v6}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    const/4 v6, 0x3

    .line 185
    new-array v6, v6, [Lkotlin/Pair;

    .line 186
    .line 187
    const/4 v7, 0x0

    .line 188
    aput-object v1, v6, v7

    .line 189
    .line 190
    const/4 v1, 0x1

    .line 191
    aput-object v4, v6, v1

    .line 192
    .line 193
    const/4 v1, 0x2

    .line 194
    aput-object v5, v6, v1

    .line 195
    .line 196
    const-string v1, "betting_pay_click"

    .line 197
    .line 198
    invoke-virtual {v3, v1, v6}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->M1()Lteam/opay/pay/opay/PaymentViewModel;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    new-instance v3, Lx11;

    .line 206
    .line 207
    invoke-direct {v3, v0, v2}, Lx11;-><init>(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/pay/cashier/LifePreOrder;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1, v0, v2, v3}, Lteam/opay/pay/opay/PaymentViewModel;->S(Landroidx/fragment/app/FragmentActivity;Lteam/opay/pay/cashier/LifePreOrder;Lkotlin/jvm/functions/Function1;)V

    .line 211
    .line 212
    .line 213
    return-void
.end method

.method public final F1()Ljava/text/DecimalFormat;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->s:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/text/DecimalFormat;

    .line 8
    .line 9
    return-object v0
.end method

.method public final G1()Lteam/opay/pay/module/offers/HotOffersViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->m:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/module/offers/HotOffersViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public final H1()Lteam/opay/pay/payment/betting/LifeCommonViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->j:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/payment/betting/LifeCommonViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public final H2()V
    .locals 6

    .line 1
    sget-object v0, Lql8;->a:Lql8;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/pay/home/Service;->BETTING:Lteam/opay/pay/home/Service;

    .line 4
    .line 5
    invoke-virtual {v1}, Lteam/opay/pay/home/Service;->getAction()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    move-object v1, p0

    .line 13
    invoke-static/range {v0 .. v5}, Lql8;->j(Lql8;Landroidx/fragment/app/FragmentActivity;ZLjava/lang/String;ILjava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    sget-object v0, Lteam/opay/pay/payment/betting/BettingHistoryActivity;->h:Lteam/opay/pay/payment/betting/BettingHistoryActivity$Companion;

    .line 21
    .line 22
    invoke-virtual {v0, p0}, Lteam/opay/pay/payment/betting/BettingHistoryActivity$Companion;->a(Landroid/app/Activity;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final I1()Lteam/opay/pay/payment/data/LifeMarketingViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->l:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/payment/data/LifeMarketingViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public final J1()Lteam/opay/core/api/BettingProvider;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T1()Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->k0()Lteam/opay/core/api/graphql/BettingInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/BettingInfo;->d()Lteam/opay/core/api/BettingProvider;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return-object v0
.end method

.method public final K1()I
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->K:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final K2()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->O1()Lteam/opay/pay/payment/record/RecordsTopupViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->BETTING:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 6
    .line 7
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x5

    .line 12
    invoke-virtual {v0, p0, v1, v2}, Lteam/opay/pay/payment/record/RecordsTopupViewModel;->I(Lag8;Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final L1()I
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->J:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final M1()Lteam/opay/pay/opay/PaymentViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->p:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/opay/PaymentViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public final M2(Ljava/lang/String;Lteam/opay/pay/api/RecordsTopupRsp;)V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    sget v1, Lteam/opay/pay/R$string;->osdk_records_deltet_title:I

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v3, "\n"

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const/4 v2, 0x1

    .line 31
    new-array v2, v2, [Ljava/lang/Object;

    .line 32
    .line 33
    aput-object p1, v2, v0

    .line 34
    .line 35
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :goto_0
    move-object v3, p1

    .line 40
    goto :goto_2

    .line 41
    :cond_1
    :goto_1
    sget p1, Lteam/opay/pay/R$string;->osdk_records_delete_all:I

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    goto :goto_0

    .line 48
    :goto_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    new-instance p1, Lteam/opay/pay/settings/CommonTwoButtonDialogFragmentInfo;

    .line 52
    .line 53
    sget v1, Lteam/opay/pay/R$string;->confirm:I

    .line 54
    .line 55
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    const-string v1, "getString(...)"

    .line 60
    .line 61
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const/16 v10, 0xf8

    .line 65
    .line 66
    const/4 v11, 0x0

    .line 67
    const-string v2, ""

    .line 68
    .line 69
    const/4 v5, 0x0

    .line 70
    const/4 v6, 0x0

    .line 71
    const/4 v7, 0x0

    .line 72
    const/4 v8, 0x0

    .line 73
    const/4 v9, 0x0

    .line 74
    move-object v1, p1

    .line 75
    invoke-direct/range {v1 .. v11}, Lteam/opay/pay/settings/CommonTwoButtonDialogFragmentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZFLjava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 76
    .line 77
    .line 78
    sget-object v1, Lx7b;->a:Lx7b;

    .line 79
    .line 80
    sget-object v2, Lteam/opay/core/api/GraphQL$ServiceType;->BETTING:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 81
    .line 82
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v4, "common_"

    .line 92
    .line 93
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v2, "_delete_window_show"

    .line 100
    .line 101
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    new-array v0, v0, [Lkotlin/Pair;

    .line 109
    .line 110
    invoke-virtual {v1, v2, v0}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 111
    .line 112
    .line 113
    sget-object v0, Lteam/opay/pay/settings/CommonTwoButtonDialogFragment;->l:Lteam/opay/pay/settings/CommonTwoButtonDialogFragment$Companion;

    .line 114
    .line 115
    invoke-virtual {v0, p1}, Lteam/opay/pay/settings/CommonTwoButtonDialogFragment$Companion;->a(Lteam/opay/pay/settings/CommonTwoButtonDialogFragmentInfo;)Lteam/opay/pay/settings/CommonTwoButtonDialogFragment;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-static {p0, p1}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 120
    .line 121
    .line 122
    new-instance v0, Lp11;

    .line 123
    .line 124
    invoke-direct {v0, p0, p2}, Lp11;-><init>(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/pay/api/RecordsTopupRsp;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v0}, Lteam/opay/pay/settings/CommonTwoButtonDialogFragment;->Q(Lkotlin/jvm/functions/Function1;)V

    .line 128
    .line 129
    .line 130
    return-void
.end method

.method public final N1()Lteam/opay/pay/payment/record/RecordsTopupAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->F:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/payment/record/RecordsTopupAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method public final O1()Lteam/opay/pay/payment/record/RecordsTopupViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->E:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/payment/record/RecordsTopupViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public final P1()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T1()Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->S()Lteam/opay/core/api/graphql/BettingCalculateRsp;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_3

    .line 15
    .line 16
    invoke-virtual {v1}, Lteam/opay/core/api/graphql/BettingCalculateRsp;->b()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_3

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x0

    .line 27
    const/4 v3, 0x0

    .line 28
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_3

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    add-int/lit8 v5, v3, 0x1

    .line 39
    .line 40
    if-gez v3, :cond_0

    .line 41
    .line 42
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 43
    .line 44
    .line 45
    :cond_0
    check-cast v4, Lteam/opay/core/api/graphql/BettingOutInfo;

    .line 46
    .line 47
    invoke-virtual {v4}, Lteam/opay/core/api/graphql/BettingOutInfo;->b()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T1()Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v4}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->S()Lteam/opay/core/api/graphql/BettingCalculateRsp;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    if-eqz v4, :cond_1

    .line 63
    .line 64
    invoke-virtual {v4}, Lteam/opay/core/api/graphql/BettingCalculateRsp;->b()Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    if-eqz v4, :cond_1

    .line 69
    .line 70
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    goto :goto_1

    .line 75
    :cond_1
    const/4 v4, 0x0

    .line 76
    :goto_1
    add-int/lit8 v4, v4, -0x1

    .line 77
    .line 78
    if-ge v3, v4, :cond_2

    .line 79
    .line 80
    const-string v3, ","

    .line 81
    .line 82
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    :cond_2
    move v3, v5

    .line 86
    goto :goto_0

    .line 87
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    const-string v1, "toString(...)"

    .line 92
    .line 93
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return-object v0
.end method

.method public final P2()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T1()Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->U()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->D1()Lteam/opay/pay/payment/betting/BettingBundlesAdapter;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->u:Lteam/opay/core/android/money/MoneyAmount;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    const-string v2, "minAmount"

    .line 19
    .line 20
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    move-object v2, v3

    .line 24
    :cond_0
    iget-object v4, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->v:Lteam/opay/core/android/money/MoneyAmount;

    .line 25
    .line 26
    if-nez v4, :cond_1

    .line 27
    .line 28
    const-string v4, "maxAmount"

    .line 29
    .line 30
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    move-object v4, v3

    .line 34
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    iget-object v5, v5, Lge;->o:Lvc8;

    .line 39
    .line 40
    iget-object v5, v5, Lvc8;->b:Lteam/opay/pay/android/views/AmountEditText;

    .line 41
    .line 42
    invoke-virtual {v5}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    const/4 v6, 0x1

    .line 47
    const/4 v7, 0x0

    .line 48
    if-eqz v5, :cond_3

    .line 49
    .line 50
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-nez v5, :cond_2

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    const/4 v5, 0x0

    .line 58
    goto :goto_1

    .line 59
    :cond_3
    :goto_0
    const/4 v5, 0x1

    .line 60
    :goto_1
    invoke-virtual {v1, v0, v2, v4, v5}, Lteam/opay/pay/payment/betting/BettingBundlesAdapter;->t(Ljava/util/List;Lteam/opay/core/android/money/MoneyAmount;Lteam/opay/core/android/money/MoneyAmount;Z)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T1()Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->k0()Lteam/opay/core/api/graphql/BettingInfo;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/BettingInfo;->d()Lteam/opay/core/api/BettingProvider;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    if-eqz v0, :cond_4

    .line 78
    .line 79
    invoke-virtual {v0}, Lteam/opay/core/api/BettingProvider;->s()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    goto :goto_2

    .line 84
    :cond_4
    move-object v0, v3

    .line 85
    :goto_2
    const-string v1, ""

    .line 86
    .line 87
    if-nez v0, :cond_5

    .line 88
    .line 89
    move-object v0, v1

    .line 90
    :cond_5
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T1()Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v2}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->k0()Lteam/opay/core/api/graphql/BettingInfo;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    if-eqz v2, :cond_6

    .line 99
    .line 100
    invoke-virtual {v2}, Lteam/opay/core/api/graphql/BettingInfo;->d()Lteam/opay/core/api/BettingProvider;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    if-eqz v2, :cond_6

    .line 105
    .line 106
    invoke-virtual {v2}, Lteam/opay/core/api/BettingProvider;->t()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    :cond_6
    if-nez v3, :cond_7

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_7
    move-object v1, v3

    .line 114
    :goto_3
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    iget-object v2, v2, Lge;->E:Landroidx/appcompat/widget/AppCompatTextView;

    .line 119
    .line 120
    const-string v3, "tvPromo"

    .line 121
    .line 122
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-lez v4, :cond_8

    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_8
    const/4 v6, 0x0

    .line 133
    :goto_4
    invoke-static {v2, v6}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 134
    .line 135
    .line 136
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-lez v2, :cond_9

    .line 141
    .line 142
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    iget-object v2, v2, Lge;->E:Landroidx/appcompat/widget/AppCompatTextView;

    .line 147
    .line 148
    invoke-static {v0}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    iget-object v0, v0, Lge;->E:Landroidx/appcompat/widget/AppCompatTextView;

    .line 160
    .line 161
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    new-instance v2, Lo11;

    .line 165
    .line 166
    invoke-direct {v2, v1, p0}, Lo11;-><init>(Ljava/lang/String;Lteam/opay/pay/payment/betting/BettingTopupActivity;)V

    .line 167
    .line 168
    .line 169
    invoke-static {v0, v2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 170
    .line 171
    .line 172
    :cond_9
    return-void
.end method

.method public final Q1()Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->I:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 8
    .line 9
    return-object v0
.end method

.method public final R1()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lge;->m:Lteam/opay/pay/android/views/KeyboardEditText;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    :cond_0
    const-string v0, ""

    .line 20
    .line 21
    :cond_1
    return-object v0
.end method

.method public final R2(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T1()Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->F(Lag8;Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->P2()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public S1()Lge;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->i:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lge;

    .line 8
    .line 9
    return-object v0
.end method

.method public final T1()Lteam/opay/pay/payment/betting/BettingTopupViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->o:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public final T2(Lteam/opay/core/api/graphql/BettingInfo;Ljava/lang/String;ZZZ)V
    .locals 16

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    const/4 v1, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/graphql/BettingInfo;->d()Lteam/opay/core/api/BettingProvider;

    move-result-object v10

    .line 2
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T1()Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    move-result-object v2

    invoke-virtual {v2, v0}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->x0(Lteam/opay/core/api/graphql/BettingInfo;)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->C1()Lteam/opay/pay/payment/betting/BettingServiceAdapter;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T1()Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->V()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 4
    invoke-virtual {v9, v10}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->h2(Lteam/opay/core/api/BettingProvider;)V

    .line 5
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->J1()Lteam/opay/core/api/BettingProvider;

    move-result-object v2

    const/4 v11, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lteam/opay/core/api/BettingProvider;->g()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v11

    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v12, "getString(...)"

    if-eqz v2, :cond_1

    sget v2, Lteam/opay/pay/R$string;->betting_service_userid_hint:I

    invoke-virtual {v9, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->J1()Lteam/opay/core/api/BettingProvider;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lteam/opay/core/api/BettingProvider;->g()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 6
    :cond_2
    sget v2, Lteam/opay/pay/R$string;->betting_service_userid_hint:I

    invoke-virtual {v9, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    :goto_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 7
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    move-result-object v3

    iget-object v3, v3, Lge;->m:Lteam/opay/pay/android/views/KeyboardEditText;

    .line 8
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 9
    new-instance v5, Landroid/text/style/RelativeSizeSpan;

    const/high16 v6, 0x3f600000    # 0.875f

    invoke-direct {v5, v6}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 10
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    .line 11
    invoke-virtual {v4, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 12
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v13, 0x11

    invoke-virtual {v4, v5, v6, v2, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 13
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v2, v5, :cond_4

    .line 14
    invoke-static {}, Lm28;->a()V

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v2}, Ll28;->a(Landroid/graphics/Typeface;)Landroid/text/style/TypefaceSpan;

    move-result-object v2

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {v4, v2, v8, v5, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 15
    :cond_4
    new-instance v2, Landroid/text/SpannedString;

    invoke-direct {v2, v4}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 16
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 17
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    move-result-object v2

    iget-object v2, v2, Lge;->m:Lteam/opay/pay/android/views/KeyboardEditText;

    .line 18
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->J1()Lteam/opay/core/api/BettingProvider;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lteam/opay/core/api/BettingProvider;->h()Lteam/opay/core/api/BettingInputType;

    move-result-object v3

    goto :goto_2

    :cond_5
    move-object v3, v11

    :goto_2
    sget-object v4, Lteam/opay/core/api/BettingInputType;->TEXT:Lteam/opay/core/api/BettingInputType;

    const/4 v13, 0x3

    if-ne v3, v4, :cond_6

    const/4 v3, 0x1

    goto :goto_3

    :cond_6
    const/4 v3, 0x3

    .line 19
    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setInputType(I)V

    .line 20
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->J1()Lteam/opay/core/api/BettingProvider;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lteam/opay/core/api/BettingProvider;->k()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->asMoneyAmount()Lteam/opay/core/android/money/MoneyAmount;

    move-result-object v2

    if-nez v2, :cond_8

    :cond_7
    sget-object v2, Lteam/opay/core/android/money/MoneyAmount;->Companion:Lteam/opay/core/android/money/MoneyAmount$Companion;

    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->E1()Lteam/opay/core/api/GraphQL$Currency;

    move-result-object v3

    invoke-virtual {v3}, Lteam/opay/core/api/GraphQL$Currency;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lteam/opay/core/android/money/MoneyAmount$Companion;->b(Ljava/lang/String;)Lteam/opay/core/android/money/MoneyAmount;

    move-result-object v2

    :cond_8
    iput-object v2, v9, Lteam/opay/pay/payment/betting/BettingTopupActivity;->u:Lteam/opay/core/android/money/MoneyAmount;

    .line 21
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->J1()Lteam/opay/core/api/BettingProvider;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lteam/opay/core/api/BettingProvider;->j()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->asMoneyAmount()Lteam/opay/core/android/money/MoneyAmount;

    move-result-object v2

    if-nez v2, :cond_a

    :cond_9
    new-instance v2, Lteam/opay/core/android/money/MoneyAmount;

    .line 22
    new-instance v3, Ljava/math/BigDecimal;

    iget v4, v9, Lteam/opay/pay/payment/betting/BettingTopupActivity;->z:I

    invoke-direct {v3, v4}, Ljava/math/BigDecimal;-><init>(I)V

    .line 23
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->E1()Lteam/opay/core/api/GraphQL$Currency;

    move-result-object v4

    invoke-virtual {v4}, Lteam/opay/core/api/GraphQL$Currency;->a()Ljava/lang/String;

    move-result-object v4

    .line 24
    invoke-direct {v2, v3, v4}, Lteam/opay/core/android/money/MoneyAmount;-><init>(Ljava/math/BigDecimal;Ljava/lang/String;)V

    :cond_a
    iput-object v2, v9, Lteam/opay/pay/payment/betting/BettingTopupActivity;->v:Lteam/opay/core/android/money/MoneyAmount;

    .line 25
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    move-result-object v2

    iget-object v2, v2, Lge;->o:Lvc8;

    iget-object v2, v2, Lvc8;->b:Lteam/opay/pay/android/views/AmountEditText;

    .line 26
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->F1()Ljava/text/DecimalFormat;

    move-result-object v3

    iget-object v4, v9, Lteam/opay/pay/payment/betting/BettingTopupActivity;->u:Lteam/opay/core/android/money/MoneyAmount;

    if-nez v4, :cond_b

    const-string v4, "minAmount"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    move-object v4, v11

    :cond_b
    invoke-virtual {v4}, Lteam/opay/core/android/money/MoneyAmount;->getAmount()Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->F1()Ljava/text/DecimalFormat;

    move-result-object v4

    iget-object v5, v9, Lteam/opay/pay/payment/betting/BettingTopupActivity;->v:Lteam/opay/core/android/money/MoneyAmount;

    if-nez v5, :cond_c

    const-string v5, "maxAmount"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    move-object v5, v11

    :cond_c
    invoke-virtual {v5}, Lteam/opay/core/android/money/MoneyAmount;->getAmount()Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 27
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 28
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    move-result-object v2

    iget-object v2, v2, Lge;->m:Lteam/opay/pay/android/views/KeyboardEditText;

    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v3

    const-string v14, ""

    invoke-virtual {v3, v14}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    move-result-object v2

    iget-object v2, v2, Lge;->m:Lteam/opay/pay/android/views/KeyboardEditText;

    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 30
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T1()Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    move-result-object v2

    invoke-virtual {v2, v0}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->i0(Lteam/opay/core/api/graphql/BettingInfo;)Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_d

    if-nez v0, :cond_e

    move-object v0, v14

    goto :goto_4

    :cond_d
    move-object/from16 v0, p2

    .line 32
    :cond_e
    :goto_4
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_f

    .line 33
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    move-result-object v2

    iget-object v2, v2, Lge;->m:Lteam/opay/pay/android/views/KeyboardEditText;

    .line 34
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v3

    .line 35
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    move-result-object v2

    iget-object v2, v2, Lge;->m:Lteam/opay/pay/android/views/KeyboardEditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 37
    invoke-virtual {v9, v0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->D2(Ljava/lang/String;)V

    goto :goto_5

    .line 38
    :cond_f
    invoke-static {v9, v8, v11, v1, v11}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->f3(Lteam/opay/pay/payment/betting/BettingTopupActivity;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 39
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->k3()Z

    .line 40
    iget-boolean v0, v9, Lteam/opay/pay/payment/betting/BettingTopupActivity;->L:Z

    if-nez v0, :cond_11

    .line 41
    iput-boolean v7, v9, Lteam/opay/pay/payment/betting/BettingTopupActivity;->L:Z

    .line 42
    sget-object v0, Ltfb;->a:Ltfb;

    if-eqz v10, :cond_10

    .line 43
    invoke-virtual {v10}, Lteam/opay/core/api/BettingProvider;->c()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_10
    move-object v2, v11

    :goto_6
    const-string v3, "service"

    invoke-static {v3, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 44
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "isAutoSelect"

    invoke-static {v4, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    new-array v1, v1, [Lkotlin/Pair;

    aput-object v2, v1, v8

    aput-object v3, v1, v7

    .line 45
    const-string v2, "betting_service_click"

    invoke-virtual {v0, v2, v1}, Ltfb;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 46
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->I1()Lteam/opay/pay/payment/data/LifeMarketingViewModel;

    move-result-object v0

    .line 47
    new-instance v1, Lteam/opay/pay/payment/DataMarketingReq;

    .line 48
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->J1()Lteam/opay/core/api/BettingProvider;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Lteam/opay/core/api/BettingProvider;->f()Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_12
    move-object v2, v11

    :goto_7
    if-nez v2, :cond_13

    move-object v2, v14

    :cond_13
    sget-object v15, Lteam/opay/core/api/GraphQL$ServiceType;->BETTING:Lteam/opay/core/api/GraphQL$ServiceType;

    invoke-virtual {v15}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 49
    invoke-direct {v1, v2, v3}, Lteam/opay/pay/payment/DataMarketingReq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0, v9, v1, v8}, Lteam/opay/pay/payment/data/LifeMarketingViewModel;->w(Lag8;Lteam/opay/pay/payment/DataMarketingReq;Z)V

    if-nez p3, :cond_16

    .line 51
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->G1()Lteam/opay/pay/module/offers/HotOffersViewModel;

    move-result-object v0

    .line 52
    invoke-virtual {v15}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T1()Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->k0()Lteam/opay/core/api/graphql/BettingInfo;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lteam/opay/core/api/graphql/BettingInfo;->d()Lteam/opay/core/api/BettingProvider;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lteam/opay/core/api/BettingProvider;->f()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_14
    move-object v1, v11

    :goto_8
    if-nez v1, :cond_15

    move-object v3, v14

    goto :goto_9

    :cond_15
    move-object v3, v1

    :goto_9
    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p0

    .line 54
    invoke-static/range {v0 .. v6}, Lteam/opay/pay/module/offers/HotOffersViewModel;->H(Lteam/opay/pay/module/offers/HotOffersViewModel;Lag8;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_16
    if-eqz v10, :cond_17

    .line 55
    invoke-virtual {v10}, Lteam/opay/core/api/BettingProvider;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_17
    move-object v0, v11

    :goto_a
    if-eqz v0, :cond_1b

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_18

    goto :goto_b

    .line 56
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    move-result-object v0

    iget-object v0, v0, Lge;->z:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v10, :cond_19

    .line 57
    invoke-virtual {v10}, Lteam/opay/core/api/BettingProvider;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1a

    :cond_19
    sget v1, Lteam/opay/pay/R$string;->label_select_amount:I

    invoke-virtual {v9, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    :cond_1a
    invoke-static {v1}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41800000    # 16.0f

    .line 59
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 60
    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v13}, Landroidx/appcompat/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 61
    sget v1, Lteam/opay/pay/R$color;->osdk_airtime_rewards_amount:I

    .line 62
    invoke-static {v9, v1}, Lzq2;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 63
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_c

    .line 64
    :cond_1b
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    move-result-object v0

    iget-object v0, v0, Lge;->z:Landroidx/appcompat/widget/AppCompatTextView;

    .line 65
    sget v1, Lteam/opay/pay/R$string;->label_select_amount:I

    invoke-virtual {v9, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41600000    # 14.0f

    .line 66
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 67
    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 68
    sget v1, Lteam/opay/pay/R$color;->black_85:I

    .line 69
    invoke-static {v9, v1}, Lzq2;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 70
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    move-result-object v0

    iget-object v0, v0, Lge;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 72
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    if-eqz v10, :cond_1c

    invoke-virtual {v10}, Lteam/opay/core/api/BettingProvider;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    :cond_1c
    move-object v1, v11

    :goto_d
    if-eqz v1, :cond_1d

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1e

    :cond_1d
    const/4 v8, 0x1

    :cond_1e
    xor-int/lit8 v1, v8, 0x1

    invoke-static {v0, v1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    if-eqz v10, :cond_1f

    .line 73
    invoke-virtual {v10}, Lteam/opay/core/api/BettingProvider;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_1f
    move-object v1, v11

    :goto_e
    if-nez v1, :cond_20

    goto :goto_f

    :cond_20
    move-object v14, v1

    :goto_f
    invoke-static {v14}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move/from16 v0, p5

    .line 74
    invoke-virtual {v9, v0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->R2(Z)V

    if-nez p3, :cond_25

    .line 75
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->H1()Lteam/opay/pay/payment/betting/LifeCommonViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lteam/opay/pay/payment/betting/LifeCommonViewModel;->J()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 76
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->H1()Lteam/opay/pay/payment/betting/LifeCommonViewModel;

    move-result-object v0

    invoke-virtual {v0, v7}, Lteam/opay/pay/payment/betting/LifeCommonViewModel;->R0(Z)V

    .line 77
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->H1()Lteam/opay/pay/payment/betting/LifeCommonViewModel;

    move-result-object v0

    .line 78
    invoke-virtual {v15}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->J1()Lteam/opay/core/api/BettingProvider;

    move-result-object v2

    if-eqz v2, :cond_21

    invoke-virtual {v2}, Lteam/opay/core/api/BettingProvider;->f()Ljava/lang/String;

    move-result-object v2

    goto :goto_10

    :cond_21
    move-object v2, v11

    .line 80
    :goto_10
    invoke-virtual {v0, v1, v2}, Lteam/opay/pay/payment/betting/LifeCommonViewModel;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->H1()Lteam/opay/pay/payment/betting/LifeCommonViewModel;

    move-result-object v0

    .line 82
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->R1()Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->J1()Lteam/opay/core/api/BettingProvider;

    move-result-object v2

    if-eqz v2, :cond_22

    invoke-virtual {v2}, Lteam/opay/core/api/BettingProvider;->f()Ljava/lang/String;

    move-result-object v2

    goto :goto_11

    :cond_22
    move-object v2, v11

    .line 84
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->J1()Lteam/opay/core/api/BettingProvider;

    move-result-object v3

    if-eqz v3, :cond_23

    invoke-virtual {v3}, Lteam/opay/core/api/BettingProvider;->i()Ljava/lang/String;

    move-result-object v3

    goto :goto_12

    :cond_23
    move-object v3, v11

    .line 85
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->J1()Lteam/opay/core/api/BettingProvider;

    move-result-object v4

    if-eqz v4, :cond_24

    invoke-virtual {v4}, Lteam/opay/core/api/BettingProvider;->c()Ljava/lang/String;

    move-result-object v4

    goto :goto_13

    :cond_24
    move-object v4, v11

    :goto_13
    const/16 v7, 0x20

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object/from16 v5, p0

    .line 86
    invoke-static/range {v0 .. v8}, Lteam/opay/pay/payment/betting/LifeCommonViewModel;->G0(Lteam/opay/pay/payment/betting/LifeCommonViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lag8;ZILjava/lang/Object;)V

    :cond_25
    return-void
.end method

.method public final U1()Lteam/opay/pay/coupon/OpayVoucherViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->n:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/coupon/OpayVoucherViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public final V1()V
    .locals 5

    .line 1
    sget-object v0, Lxt9;->a:Lxt9;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/pay/home/Service;->BETTING:Lteam/opay/pay/home/Service;

    .line 4
    .line 5
    invoke-virtual {v1}, Lteam/opay/pay/home/Service;->getAction()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->J1()Lteam/opay/core/api/BettingProvider;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v2}, Lteam/opay/core/api/BettingProvider;->f()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v2, 0x0

    .line 21
    :goto_0
    if-nez v2, :cond_1

    .line 22
    .line 23
    const-string v2, ""

    .line 24
    .line 25
    :cond_1
    invoke-virtual {v0, v1, v2}, Lxt9;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iget-object v1, v1, Lge;->x:Lteam/opay/pay/payment/betting/ParentViewPagerNestScrollView;

    .line 43
    .line 44
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    iget-object v2, v2, Lge;->m:Lteam/opay/pay/android/views/KeyboardEditText;

    .line 49
    .line 50
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    const/16 v3, 0x258

    .line 55
    .line 56
    const/4 v4, 0x0

    .line 57
    invoke-virtual {v1, v4, v2, v3}, Landroidx/core/widget/NestedScrollView;->Q(III)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T1()Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1, v0}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->v0(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_3
    :goto_1
    return-void
.end method

.method public final W1()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lge;->u:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->N1()Lteam/opay/pay/payment/record/RecordsTopupAdapter;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v0, v0, Lge;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 27
    .line 28
    const-string v1, "recordsDeleteAll"

    .line 29
    .line 30
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v1, Lb31;

    .line 34
    .line 35
    invoke-direct {v1, p0}, Lb31;-><init>(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v0, v0, Lge;->m:Lteam/opay/pay/android/views/KeyboardEditText;

    .line 46
    .line 47
    new-instance v1, Lc31;

    .line 48
    .line 49
    invoke-direct {v1, p0}, Lc31;-><init>(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-object v0, v0, Lge;->A:Landroidx/appcompat/widget/AppCompatImageView;

    .line 60
    .line 61
    const-string v1, "selectIcon"

    .line 62
    .line 63
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    new-instance v1, Ld31;

    .line 67
    .line 68
    invoke-direct {v1, p0}, Ld31;-><init>(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V

    .line 69
    .line 70
    .line 71
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 72
    .line 73
    .line 74
    invoke-static {p0}, Lvp7;->b(Landroid/app/Activity;)Lvp7;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iput-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->t:Lvp7;

    .line 79
    .line 80
    if-eqz v0, :cond_0

    .line 81
    .line 82
    new-instance v1, Lf31;

    .line 83
    .line 84
    invoke-direct {v1, p0}, Lf31;-><init>(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Lvp7;->g(Lvp7$a;)V

    .line 88
    .line 89
    .line 90
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->O1()Lteam/opay/pay/payment/record/RecordsTopupViewModel;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lteam/opay/pay/payment/record/RecordsTopupViewModel;->D()Landroidx/lifecycle/MutableLiveData;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    new-instance v1, Lg31;

    .line 99
    .line 100
    invoke-direct {v1, p0}, Lg31;-><init>(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V

    .line 101
    .line 102
    .line 103
    new-instance v2, Lteam/opay/pay/payment/betting/BettingTopupActivity$b;

    .line 104
    .line 105
    invoke-direct {v2, v1}, Lteam/opay/pay/payment/betting/BettingTopupActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->O1()Lteam/opay/pay/payment/record/RecordsTopupViewModel;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lteam/opay/pay/payment/record/RecordsTopupViewModel;->z()Landroidx/lifecycle/MutableLiveData;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    new-instance v1, Lh31;

    .line 120
    .line 121
    invoke-direct {v1, p0}, Lh31;-><init>(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V

    .line 122
    .line 123
    .line 124
    new-instance v2, Lteam/opay/pay/payment/betting/BettingTopupActivity$b;

    .line 125
    .line 126
    invoke-direct {v2, v1}, Lteam/opay/pay/payment/betting/BettingTopupActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 130
    .line 131
    .line 132
    return-void
.end method

.method public final W2()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T1()Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->H(Lag8;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->K2()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T1()Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p0}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->P(Lag8;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->A1()Lteam/opay/pay/ad/OpayAdBannerViewModel;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "ng_betting_bottom_banner"

    .line 23
    .line 24
    const-string v2, "ng_banner_betting_more"

    .line 25
    .line 26
    const-string v3, "ng_betting_notice_first"

    .line 27
    .line 28
    const-string v4, "ng_betting_middle_banner"

    .line 29
    .line 30
    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->n([Ljava/lang/Object;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, p0, v1}, Lteam/opay/pay/ad/OpayAdBannerViewModel;->u(Lag8;Ljava/util/List;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final X2()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Lge;->b:Lteam/opay/core/android/views/OpayActionBar;

    .line 6
    .line 7
    sget v0, Lteam/opay/pay/R$string;->history:I

    .line 8
    .line 9
    invoke-static {v0}, Ljmf;->k(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    sget v5, Lteam/opay/pay/R$color;->color_00B876:I

    .line 14
    .line 15
    new-instance v6, Lteam/opay/pay/payment/betting/BettingTopupActivity$showActionBarHistory$1;

    .line 16
    .line 17
    invoke-direct {v6, p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity$showActionBarHistory$1;-><init>(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    const/4 v7, 0x1

    .line 21
    const/4 v8, 0x0

    .line 22
    const/4 v2, 0x0

    .line 23
    const-string v4, "font/roboto_400.xml"

    .line 24
    .line 25
    invoke-static/range {v1 .. v8}, Lteam/opay/core/android/views/OpayActionBar;->j(Lteam/opay/core/android/views/OpayActionBar;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final Y2(Ljava/lang/String;)V
    .locals 12

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    :goto_0
    move-object v3, p1

    .line 11
    goto :goto_2

    .line 12
    :cond_1
    :goto_1
    sget p1, Lteam/opay/pay/R$string;->osdk_service_unavailable_tips:I

    .line 13
    .line 14
    invoke-static {p1}, Ljmf;->k(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    :goto_2
    sget-object p1, Lteam/opay/pay/wallet/OneButtonDialog;->p:Lteam/opay/pay/wallet/OneButtonDialog$Companion;

    .line 20
    .line 21
    new-instance v11, Lteam/opay/pay/wallet/OneButtonDialogData;

    .line 22
    .line 23
    sget v0, Lteam/opay/pay/R$string;->osdk_got_it:I

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    const-string v0, "getString(...)"

    .line 30
    .line 31
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/16 v9, 0xf3

    .line 35
    .line 36
    const/4 v10, 0x0

    .line 37
    const/4 v1, 0x0

    .line 38
    const/4 v2, 0x0

    .line 39
    const/4 v5, 0x0

    .line 40
    const/4 v6, 0x0

    .line 41
    const/4 v7, 0x0

    .line 42
    const/4 v8, 0x0

    .line 43
    move-object v0, v11

    .line 44
    invoke-direct/range {v0 .. v10}, Lteam/opay/pay/wallet/OneButtonDialogData;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v11}, Lteam/opay/pay/wallet/OneButtonDialog$Companion;->a(Lteam/opay/pay/wallet/OneButtonDialogData;)Lteam/opay/pay/wallet/OneButtonDialog;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {p0, p1}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final Z2()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T1()Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->k0()Lteam/opay/core/api/graphql/BettingInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/BettingInfo;->d()Lteam/opay/core/api/BettingProvider;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lteam/opay/core/api/BettingProvider;->w()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-ne v0, v1, :cond_0

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T1()Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->k0()Lteam/opay/core/api/graphql/BettingInfo;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/BettingInfo;->d()Lteam/opay/core/api/BettingProvider;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {v0}, Lteam/opay/core/api/BettingProvider;->v()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 v0, 0x0

    .line 48
    :goto_0
    invoke-virtual {p0, v0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->Y2(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :goto_1
    return v1
.end method

.method public final a3(Lteam/opay/pay/api/RecordsTopupRsp;)V
    .locals 13

    .line 1
    sget-object v0, Lteam/opay/pay/wallet/OneButtonDialog;->p:Lteam/opay/pay/wallet/OneButtonDialog$Companion;

    .line 2
    .line 3
    new-instance v12, Lteam/opay/pay/wallet/OneButtonDialogData;

    .line 4
    .line 5
    sget v1, Lteam/opay/pay/R$string;->osdk_service_offline:I

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    const-string v1, "getString(...)"

    .line 12
    .line 13
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget v2, Lteam/opay/pay/R$string;->osdk_got_it:I

    .line 17
    .line 18
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/16 v10, 0xf3

    .line 26
    .line 27
    const/4 v11, 0x0

    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v6, 0x0

    .line 31
    const/4 v7, 0x0

    .line 32
    const/4 v8, 0x0

    .line 33
    const/4 v9, 0x0

    .line 34
    move-object v1, v12

    .line 35
    invoke-direct/range {v1 .. v11}, Lteam/opay/pay/wallet/OneButtonDialogData;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v12}, Lteam/opay/pay/wallet/OneButtonDialog$Companion;->a(Lteam/opay/pay/wallet/OneButtonDialogData;)Lteam/opay/pay/wallet/OneButtonDialog;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    new-instance v1, Ly11;

    .line 43
    .line 44
    invoke-direct {v1, p0, p1}, Ly11;-><init>(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/pay/api/RecordsTopupRsp;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lteam/opay/pay/wallet/OneButtonDialog;->S(Lkotlin/jvm/functions/Function1;)V

    .line 48
    .line 49
    .line 50
    invoke-static {p0, v0}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final e2()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-object v0, Lteam/opay/pay/home/Service;->BETTING:Lteam/opay/pay/home/Service;

    .line 25
    .line 26
    invoke-virtual {v0}, Lteam/opay/pay/home/Service;->getAction()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :goto_0
    sget-object v1, Lql8;->a:Lql8;

    .line 31
    .line 32
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->H1()Lteam/opay/pay/payment/betting/LifeCommonViewModel;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2, v0}, Lteam/opay/pay/payment/betting/LifeCommonViewModel;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-virtual {v1, p0, v2, v0}, Lql8;->i(Landroidx/fragment/app/FragmentActivity;ZLjava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    return v0
.end method

.method public final e3(ZLjava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lge;->n:Landroidx/appcompat/widget/AppCompatTextView;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    sget v2, Lteam/opay/pay/R$color;->red_pink:I

    .line 14
    .line 15
    invoke-static {v1, v2}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    iget-object p2, p2, Lge;->x:Lteam/opay/pay/payment/betting/ParentViewPagerNestScrollView;

    .line 30
    .line 31
    new-instance v0, Li21;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Li21;-><init>(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    sget v1, Lteam/opay/pay/R$color;->black_85:I

    .line 45
    .line 46
    invoke-static {p2, v1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    .line 52
    .line 53
    sget p2, Lteam/opay/pay/R$string;->label_service_userid:I

    .line 54
    .line 55
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 56
    .line 57
    .line 58
    :goto_0
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    iget-object p2, p2, Lge;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 63
    .line 64
    if-eqz p1, :cond_1

    .line 65
    .line 66
    sget p1, Lteam/opay/pay/R$drawable;->shape_f8_8_stroke_red:I

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    sget p1, Lteam/opay/pay/R$drawable;->shape_f8f8f8_8:I

    .line 70
    .line 71
    :goto_1
    invoke-static {p0, p1}, Lzq2;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final f2(Ljava/lang/Boolean;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :goto_0
    move-object v4, v0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    sget-object v0, Lteam/opay/pay/home/Service;->BETTING:Lteam/opay/pay/home/Service;

    .line 26
    .line 27
    invoke-virtual {v0}, Lteam/opay/pay/home/Service;->getAction()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    goto :goto_0

    .line 32
    :goto_1
    sget-object v1, Lql8;->a:Lql8;

    .line 33
    .line 34
    const/4 v5, 0x2

    .line 35
    const/4 v6, 0x0

    .line 36
    const/4 v3, 0x0

    .line 37
    move-object v2, p0

    .line 38
    invoke-static/range {v1 .. v6}, Lql8;->j(Lql8;Landroidx/fragment/app/FragmentActivity;ZLjava/lang/String;ILjava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/4 v1, 0x0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    return v1

    .line 46
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->J1()Lteam/opay/core/api/BettingProvider;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const/4 v2, 0x0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    invoke-virtual {v0}, Lteam/opay/core/api/BettingProvider;->f()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    move-object v0, v2

    .line 59
    :goto_2
    const-string v3, ""

    .line 60
    .line 61
    if-nez v0, :cond_3

    .line 62
    .line 63
    move-object v0, v3

    .line 64
    :cond_3
    invoke-virtual {p0, v0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->v1(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_4

    .line 69
    .line 70
    return v1

    .line 71
    :cond_4
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T1()Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lteam/opay/pay/payment/ServiceViewModel;->t()V

    .line 76
    .line 77
    .line 78
    const/4 v0, 0x1

    .line 79
    invoke-static {p0, v1, v0, v2}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->d3(Lteam/opay/pay/payment/betting/BettingTopupActivity;ZILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T1()Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->R1()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->J1()Lteam/opay/core/api/BettingProvider;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    if-eqz v5, :cond_5

    .line 95
    .line 96
    invoke-virtual {v5}, Lteam/opay/core/api/BettingProvider;->f()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    :cond_5
    if-nez v2, :cond_6

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_6
    move-object v3, v2

    .line 104
    :goto_3
    new-instance v2, La31;

    .line 105
    .line 106
    invoke-direct {v2, p0, p1}, La31;-><init>(Lteam/opay/pay/payment/betting/BettingTopupActivity;Ljava/lang/Boolean;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v4, v3, p0, v2}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->L(Ljava/lang/String;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;)V

    .line 110
    .line 111
    .line 112
    return v0
.end method

.method public final getTopBottomViewModel()Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->k:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public bridge synthetic getViewBinding()Lxyf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final h2(Lteam/opay/core/api/BettingProvider;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lge;->D:Landroidx/appcompat/widget/AppCompatTextView;

    .line 6
    .line 7
    const-string v1, "tvNewAccountPrompt"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Lteam/opay/core/api/BettingProvider;->m()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v2, 0x0

    .line 20
    :goto_0
    const/4 v3, 0x1

    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/4 v2, 0x0

    .line 31
    goto :goto_2

    .line 32
    :cond_2
    :goto_1
    const/4 v2, 0x1

    .line 33
    :goto_2
    xor-int/2addr v2, v3

    .line 34
    invoke-static {v0, v2}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 35
    .line 36
    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    invoke-virtual {p1}, Lteam/opay/core/api/BettingProvider;->m()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    iget-object v2, v2, Lge;->D:Landroidx/appcompat/widget/AppCompatTextView;

    .line 50
    .line 51
    invoke-static {v0}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    :cond_3
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v0, v0, Lge;->D:Landroidx/appcompat/widget/AppCompatTextView;

    .line 63
    .line 64
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    new-instance v1, Li31;

    .line 68
    .line 69
    invoke-direct {v1, p1, p0}, Li31;-><init>(Lteam/opay/core/api/BettingProvider;Lteam/opay/pay/payment/betting/BettingTopupActivity;)V

    .line 70
    .line 71
    .line 72
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public final h3(Lteam/opay/core/api/BettingAccount;Ljava/lang/Boolean;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->B1()D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmpg-double v4, v0, v2

    .line 8
    .line 9
    if-nez v4, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v9, 0x4

    .line 13
    const/4 v10, 0x0

    .line 14
    const/4 v8, 0x0

    .line 15
    move-object v5, p0

    .line 16
    move-object v6, p1

    .line 17
    move-object v7, p2

    .line 18
    invoke-static/range {v5 .. v10}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->F2(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/core/api/BettingAccount;Ljava/lang/Boolean;Lteam/opay/pay/payment/voucherpackage/VoucherPackageResult;ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final j3(Ljava/lang/String;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v0, v0, Lge;->o:Lvc8;

    .line 15
    .line 16
    iget-object v0, v0, Lvc8;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 17
    .line 18
    sget v1, Lteam/opay/pay/R$string;->tv_upgrade_button_text:I

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    new-array v2, v2, [Ljava/lang/Object;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    aput-object p1, v2, v3

    .line 25
    .line 26
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object p1, p1, Lge;->o:Lvc8;

    .line 39
    .line 40
    iget-object p1, p1, Lvc8;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 41
    .line 42
    sget v0, Lteam/opay/pay/R$string;->payment_pay:I

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    :goto_1
    return-void
.end method

.method public final k2(Lteam/opay/core/api/graphql/BettingOutInfo;)V
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/BettingOutInfo;->a()Lteam/opay/core/api/graphql/BettingInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v2}, Lteam/opay/core/api/graphql/BettingInfo;->d()Lteam/opay/core/api/BettingProvider;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v2}, Lteam/opay/core/api/BettingProvider;->f()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v2, v3

    .line 22
    :goto_0
    const-string v4, "Userid"

    .line 23
    .line 24
    if-nez v2, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T1()Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->c0()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    sget-object p1, Lteam/opay/pay/payment/betting/BettingProviderFragment;->v:Lteam/opay/pay/payment/betting/BettingProviderFragment$Companion;

    .line 42
    .line 43
    invoke-virtual {p1}, Lteam/opay/pay/payment/betting/BettingProviderFragment$Companion;->a()Lteam/opay/pay/payment/betting/BettingProviderFragment;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    new-instance v2, Ll31;

    .line 48
    .line 49
    invoke-direct {v2, p0}, Ll31;-><init>(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v2}, Lteam/opay/pay/payment/betting/BettingProviderFragment;->w0(Lkotlin/jvm/functions/Function2;)V

    .line 53
    .line 54
    .line 55
    invoke-static {p0, p1}, Lteam/opay/pay/base/FragmentKt;->F(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseSheetFragmentV2;)V

    .line 56
    .line 57
    .line 58
    sget-object p1, Lx7b;->a:Lx7b;

    .line 59
    .line 60
    sget-object v2, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 61
    .line 62
    invoke-virtual {v2}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v2}, Lteam/opay/core/account/AccountInfoManager;->u()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-static {v4, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    new-array v0, v0, [Lkotlin/Pair;

    .line 75
    .line 76
    aput-object v2, v0, v1

    .line 77
    .line 78
    const-string v2, "common_betting_topup_area_more_click"

    .line 79
    .line 80
    invoke-virtual {p1, v2, v0}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 81
    .line 82
    .line 83
    sget-object p1, Ltfb;->a:Ltfb;

    .line 84
    .line 85
    new-array v0, v1, [Lkotlin/Pair;

    .line 86
    .line 87
    const-string v1, "betting_services_dialog_show"

    .line 88
    .line 89
    invoke-virtual {p1, v1, v0}, Ltfb;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_2
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/BettingOutInfo;->a()Lteam/opay/core/api/graphql/BettingInfo;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    if-eqz v6, :cond_3

    .line 98
    .line 99
    const/16 v11, 0xc

    .line 100
    .line 101
    const/4 v12, 0x0

    .line 102
    const-string v7, ""

    .line 103
    .line 104
    const/4 v8, 0x0

    .line 105
    const/4 v9, 0x0

    .line 106
    const/4 v10, 0x1

    .line 107
    move-object v5, p0

    .line 108
    invoke-static/range {v5 .. v12}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->U2(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/core/api/graphql/BettingInfo;Ljava/lang/String;ZZZILjava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    :cond_3
    sget-object v2, Lx7b;->a:Lx7b;

    .line 112
    .line 113
    sget-object v5, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 114
    .line 115
    invoke-virtual {v5}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    invoke-virtual {v5}, Lteam/opay/core/account/AccountInfoManager;->u()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    invoke-static {v4, v5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/BettingOutInfo;->a()Lteam/opay/core/api/graphql/BettingInfo;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    if-eqz p1, :cond_4

    .line 132
    .line 133
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/BettingInfo;->d()Lteam/opay/core/api/BettingProvider;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    if-eqz p1, :cond_4

    .line 138
    .line 139
    invoke-virtual {p1}, Lteam/opay/core/api/BettingProvider;->f()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    :cond_4
    const-string p1, "prividerId"

    .line 144
    .line 145
    invoke-static {p1, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    const/4 v3, 0x2

    .line 150
    new-array v3, v3, [Lkotlin/Pair;

    .line 151
    .line 152
    aput-object v4, v3, v1

    .line 153
    .line 154
    aput-object p1, v3, v0

    .line 155
    .line 156
    const-string p1, "common_betting_topup_area_comp1_click"

    .line 157
    .line 158
    invoke-virtual {v2, p1, v3}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 159
    .line 160
    .line 161
    :goto_1
    return-void
.end method

.method public final k3()Z
    .locals 15

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->J1()Lteam/opay/core/api/BettingProvider;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_11

    .line 7
    .line 8
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->J1()Lteam/opay/core/api/BettingProvider;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lteam/opay/core/api/BettingProvider;->f()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v0, v2

    .line 21
    :goto_0
    if-nez v0, :cond_1

    .line 22
    .line 23
    goto/16 :goto_4

    .line 24
    .line 25
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v0, v0, Lge;->m:Lteam/opay/pay/android/views/KeyboardEditText;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->J1()Lteam/opay/core/api/BettingProvider;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    invoke-virtual {v3}, Lteam/opay/core/api/BettingProvider;->h()Lteam/opay/core/api/BettingInputType;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move-object v3, v2

    .line 51
    :goto_1
    if-nez v3, :cond_3

    .line 52
    .line 53
    const/4 v3, -0x1

    .line 54
    goto :goto_2

    .line 55
    :cond_3
    sget-object v4, Lteam/opay/pay/payment/betting/BettingTopupActivity$a;->a:[I

    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    aget v3, v4, v3

    .line 62
    .line 63
    :goto_2
    const/4 v4, 0x1

    .line 64
    if-eq v3, v4, :cond_6

    .line 65
    .line 66
    const/4 v5, 0x2

    .line 67
    if-eq v3, v5, :cond_4

    .line 68
    .line 69
    invoke-static {v0}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_7

    .line 74
    .line 75
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iget-object v0, v0, Lge;->o:Lvc8;

    .line 80
    .line 81
    iget-object v0, v0, Lvc8;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 84
    .line 85
    .line 86
    return v1

    .line 87
    :cond_4
    invoke-static {v0}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-nez v3, :cond_5

    .line 92
    .line 93
    invoke-static {v0}, Lda2;->b(Ljava/lang/CharSequence;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_7

    .line 98
    .line 99
    :cond_5
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iget-object v0, v0, Lge;->o:Lvc8;

    .line 104
    .line 105
    iget-object v0, v0, Lvc8;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 108
    .line 109
    .line 110
    return v1

    .line 111
    :cond_6
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T1()Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-virtual {v3}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->o()Lteam/opay/core/api/Country;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-static {v0, v3}, Lxob;->p(Ljava/lang/String;Lteam/opay/core/api/Country;)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-nez v0, :cond_7

    .line 124
    .line 125
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    iget-object v0, v0, Lge;->o:Lvc8;

    .line 130
    .line 131
    iget-object v0, v0, Lvc8;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 134
    .line 135
    .line 136
    return v1

    .line 137
    :cond_7
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->B1()D

    .line 138
    .line 139
    .line 140
    move-result-wide v5

    .line 141
    const-wide/16 v7, 0x0

    .line 142
    .line 143
    cmpg-double v0, v5, v7

    .line 144
    .line 145
    if-gtz v0, :cond_8

    .line 146
    .line 147
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    iget-object v0, v0, Lge;->o:Lvc8;

    .line 152
    .line 153
    iget-object v0, v0, Lvc8;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 154
    .line 155
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 156
    .line 157
    .line 158
    return v1

    .line 159
    :cond_8
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->v:Lteam/opay/core/android/money/MoneyAmount;

    .line 160
    .line 161
    const-string v3, "maxAmount"

    .line 162
    .line 163
    if-nez v0, :cond_9

    .line 164
    .line 165
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    move-object v0, v2

    .line 169
    :cond_9
    invoke-virtual {v0}, Lteam/opay/core/android/money/MoneyAmount;->getPositive()Z

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-eqz v0, :cond_10

    .line 174
    .line 175
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->u:Lteam/opay/core/android/money/MoneyAmount;

    .line 176
    .line 177
    const-string v5, "minAmount"

    .line 178
    .line 179
    if-nez v0, :cond_a

    .line 180
    .line 181
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    move-object v0, v2

    .line 185
    :cond_a
    invoke-virtual {v0}, Lteam/opay/core/android/money/MoneyAmount;->getAmount()Ljava/math/BigDecimal;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    .line 190
    .line 191
    .line 192
    move-result-wide v9

    .line 193
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->v:Lteam/opay/core/android/money/MoneyAmount;

    .line 194
    .line 195
    if-nez v0, :cond_b

    .line 196
    .line 197
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    move-object v0, v2

    .line 201
    :cond_b
    invoke-virtual {v0}, Lteam/opay/core/android/money/MoneyAmount;->getAmount()Ljava/math/BigDecimal;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    .line 206
    .line 207
    .line 208
    move-result-wide v11

    .line 209
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->B1()D

    .line 210
    .line 211
    .line 212
    move-result-wide v13

    .line 213
    cmpg-double v0, v9, v13

    .line 214
    .line 215
    if-gtz v0, :cond_10

    .line 216
    .line 217
    cmpg-double v0, v13, v11

    .line 218
    .line 219
    if-gtz v0, :cond_10

    .line 220
    .line 221
    iget-wide v9, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->A:D

    .line 222
    .line 223
    cmpg-double v0, v9, v7

    .line 224
    .line 225
    if-lez v0, :cond_f

    .line 226
    .line 227
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->v:Lteam/opay/core/android/money/MoneyAmount;

    .line 228
    .line 229
    if-nez v0, :cond_c

    .line 230
    .line 231
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    move-object v0, v2

    .line 235
    :cond_c
    invoke-virtual {v0}, Lteam/opay/core/android/money/MoneyAmount;->getPositive()Z

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    if-eqz v0, :cond_f

    .line 240
    .line 241
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->u:Lteam/opay/core/android/money/MoneyAmount;

    .line 242
    .line 243
    if-nez v0, :cond_d

    .line 244
    .line 245
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    move-object v0, v2

    .line 249
    :cond_d
    invoke-virtual {v0}, Lteam/opay/core/android/money/MoneyAmount;->getAmount()Ljava/math/BigDecimal;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    .line 254
    .line 255
    .line 256
    move-result-wide v5

    .line 257
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->v:Lteam/opay/core/android/money/MoneyAmount;

    .line 258
    .line 259
    if-nez v0, :cond_e

    .line 260
    .line 261
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    goto :goto_3

    .line 265
    :cond_e
    move-object v2, v0

    .line 266
    :goto_3
    invoke-virtual {v2}, Lteam/opay/core/android/money/MoneyAmount;->getAmount()Ljava/math/BigDecimal;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    .line 271
    .line 272
    .line 273
    move-result-wide v2

    .line 274
    iget-wide v7, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->A:D

    .line 275
    .line 276
    cmpg-double v0, v5, v7

    .line 277
    .line 278
    if-gtz v0, :cond_f

    .line 279
    .line 280
    cmpg-double v0, v7, v2

    .line 281
    .line 282
    if-gtz v0, :cond_f

    .line 283
    .line 284
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    iget-object v0, v0, Lge;->o:Lvc8;

    .line 289
    .line 290
    iget-object v0, v0, Lvc8;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 291
    .line 292
    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 293
    .line 294
    .line 295
    return v4

    .line 296
    :cond_f
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    iget-object v0, v0, Lge;->o:Lvc8;

    .line 301
    .line 302
    iget-object v0, v0, Lvc8;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 303
    .line 304
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 305
    .line 306
    .line 307
    return v4

    .line 308
    :cond_10
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    iget-object v0, v0, Lge;->o:Lvc8;

    .line 313
    .line 314
    iget-object v0, v0, Lvc8;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 315
    .line 316
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 317
    .line 318
    .line 319
    return v1

    .line 320
    :cond_11
    :goto_4
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    iget-object v0, v0, Lge;->o:Lvc8;

    .line 325
    .line 326
    iget-object v0, v0, Lvc8;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 327
    .line 328
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 329
    .line 330
    .line 331
    return v1
.end method

.method public final l3()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lge;->m:Lteam/opay/pay/android/views/KeyboardEditText;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const-string v2, "selectIcon"

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v0, v0, Lge;->A:Landroidx/appcompat/widget/AppCompatImageView;

    .line 22
    .line 23
    sget v4, Lteam/opay/pay/R$mipmap;->osdk_ic_topup_close:I

    .line 24
    .line 25
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v0, v0, Lge;->A:Landroidx/appcompat/widget/AppCompatImageView;

    .line 33
    .line 34
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->L1()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->L1()I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->L1()I

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->L1()I

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object v0, v0, Lge;->A:Landroidx/appcompat/widget/AppCompatImageView;

    .line 58
    .line 59
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    iget-object v2, v2, Lge;->m:Lteam/opay/pay/android/views/KeyboardEditText;

    .line 67
    .line 68
    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    if-eqz v2, :cond_0

    .line 73
    .line 74
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-nez v2, :cond_1

    .line 79
    .line 80
    :cond_0
    const/4 v1, 0x1

    .line 81
    :cond_1
    xor-int/2addr v1, v3

    .line 82
    invoke-static {v0, v1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iget-object v0, v0, Lge;->A:Landroidx/appcompat/widget/AppCompatImageView;

    .line 91
    .line 92
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->K1()I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->K1()I

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->K1()I

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->K1()I

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    iget-object v0, v0, Lge;->A:Landroidx/appcompat/widget/AppCompatImageView;

    .line 116
    .line 117
    sget v4, Lteam/opay/pay/R$mipmap;->osdk_airtime_arrow_down:I

    .line 118
    .line 119
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iget-object v0, v0, Lge;->A:Landroidx/appcompat/widget/AppCompatImageView;

    .line 127
    .line 128
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->O1()Lteam/opay/pay/payment/record/RecordsTopupViewModel;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {v2}, Lteam/opay/pay/payment/record/RecordsTopupViewModel;->D()Landroidx/lifecycle/MutableLiveData;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    check-cast v2, Ljava/util/Collection;

    .line 144
    .line 145
    if-eqz v2, :cond_3

    .line 146
    .line 147
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    if-eqz v2, :cond_4

    .line 152
    .line 153
    :cond_3
    const/4 v1, 0x1

    .line 154
    :cond_4
    xor-int/2addr v1, v3

    .line 155
    invoke-static {v0, v1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 156
    .line 157
    .line 158
    :goto_0
    return-void
.end method

.method public final m3(Z)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T1()Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-virtual {v2}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->O()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {p0, v2, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->w2(Landroid/content/Intent;Z)V

    .line 23
    .line 24
    .line 25
    sget-object v2, Lx7b;->a:Lx7b;

    .line 26
    .line 27
    sget-object v3, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 28
    .line 29
    invoke-virtual {v3}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v3}, Lteam/opay/core/account/AccountInfoManager;->u()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const-string v4, "Userid"

    .line 38
    .line 39
    invoke-static {v4, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const-string v4, "prividerIds"

    .line 44
    .line 45
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->P1()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-static {v4, v5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    const/4 v5, 0x2

    .line 54
    new-array v5, v5, [Lkotlin/Pair;

    .line 55
    .line 56
    aput-object v3, v5, v1

    .line 57
    .line 58
    aput-object v4, v5, v0

    .line 59
    .line 60
    const-string v3, "common_betting_topup_area_comp_show"

    .line 61
    .line 62
    invoke-virtual {v2, v3, v5}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->X2()V

    .line 66
    .line 67
    .line 68
    const/4 v2, 0x0

    .line 69
    invoke-static {p0, v1, v0, v2}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S2(Lteam/opay/pay/payment/betting/BettingTopupActivity;ZILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->P2()V

    .line 73
    .line 74
    .line 75
    if-nez p1, :cond_1

    .line 76
    .line 77
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->V1()V

    .line 78
    .line 79
    .line 80
    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lxt9;->a:Lxt9;

    .line 5
    .line 6
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->ELECTRICITY:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2, p3, v1}, Lxt9;->d(IILandroid/content/Intent;Lteam/opay/core/api/GraphQL$ServiceType;)V

    .line 9
    .line 10
    .line 11
    const/16 v0, 0x12d

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eq p1, v0, :cond_2

    .line 16
    .line 17
    const/16 p2, 0x1b6

    .line 18
    .line 19
    if-eq p1, p2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T1()Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->m0()Lteam/opay/core/api/BettingAccount;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_6

    .line 31
    .line 32
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 33
    .line 34
    if-eqz p3, :cond_1

    .line 35
    .line 36
    const-string v0, "rsqData"

    .line 37
    .line 38
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    move-object v1, p3

    .line 43
    check-cast v1, Lteam/opay/pay/payment/voucherpackage/VoucherPackageResult;

    .line 44
    .line 45
    :cond_1
    invoke-virtual {p0, p1, p2, v1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->E2(Lteam/opay/core/api/BettingAccount;Ljava/lang/Boolean;Lteam/opay/pay/payment/voucherpackage/VoucherPackageResult;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/4 p1, 0x3

    .line 50
    const/16 p3, 0xca

    .line 51
    .line 52
    if-eq p2, p3, :cond_4

    .line 53
    .line 54
    const/16 v0, 0xcb

    .line 55
    .line 56
    if-eq p2, v0, :cond_4

    .line 57
    .line 58
    const/16 p3, 0xcd

    .line 59
    .line 60
    if-eq p2, p3, :cond_3

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    invoke-static {p0, v2, v2, p1, v1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->z1(Lteam/opay/pay/payment/betting/BettingTopupActivity;ZZILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_4
    if-ne p2, p3, :cond_5

    .line 68
    .line 69
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->O1()Lteam/opay/pay/payment/record/RecordsTopupViewModel;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    const/4 p3, 0x1

    .line 74
    invoke-virtual {p2, p3}, Lteam/opay/pay/payment/record/RecordsTopupViewModel;->L(Z)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->K2()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T1()Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-virtual {p2, p0}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->H(Lag8;)V

    .line 85
    .line 86
    .line 87
    :cond_5
    invoke-static {p0, v2, v2, p1, v1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->z1(Lteam/opay/pay/payment/betting/BettingTopupActivity;ZZILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    :cond_6
    :goto_0
    invoke-direct {p0, v2}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->c3(Z)V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Lkotlin/Pair;

    .line 5
    .line 6
    const-string v2, "COMMON_betting_leave"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0}, Lteam/opay/core/android/InjectableActivity;->onBackPressed()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility",
            "UseCompatLoadingForDrawables"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lteam/opay/pay/payment/betting/Hilt_BettingTopupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T1()Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p1, v0}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->q0(Landroid/content/Intent;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->e2()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->H1()Lteam/opay/pay/payment/betting/LifeCommonViewModel;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p1, v0}, Lteam/opay/pay/payment/betting/LifeCommonViewModel;->z0(Landroid/content/Intent;)V

    .line 39
    .line 40
    .line 41
    sget-object p1, Lteam/opay/core/android/money/MoneyAmount;->Companion:Lteam/opay/core/android/money/MoneyAmount$Companion;

    .line 42
    .line 43
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->E1()Lteam/opay/core/api/GraphQL$Currency;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$Currency;->a()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p1, v0}, Lteam/opay/core/android/money/MoneyAmount$Companion;->b(Ljava/lang/String;)Lteam/opay/core/android/money/MoneyAmount;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iput-object p1, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->u:Lteam/opay/core/android/money/MoneyAmount;

    .line 56
    .line 57
    new-instance p1, Lteam/opay/core/android/money/MoneyAmount;

    .line 58
    .line 59
    iget v0, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->z:I

    .line 60
    .line 61
    int-to-long v0, v0

    .line 62
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const-string v1, "valueOf(...)"

    .line 67
    .line 68
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->E1()Lteam/opay/core/api/GraphQL$Currency;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$Currency;->a()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-direct {p1, v0, v1}, Lteam/opay/core/android/money/MoneyAmount;-><init>(Ljava/math/BigDecimal;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iput-object p1, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->v:Lteam/opay/core/android/money/MoneyAmount;

    .line 83
    .line 84
    sget-object p1, Ltfb;->a:Ltfb;

    .line 85
    .line 86
    const-string v0, "betting_show"

    .line 87
    .line 88
    const/4 v1, 0x0

    .line 89
    new-array v2, v1, [Lkotlin/Pair;

    .line 90
    .line 91
    invoke-virtual {p1, v0, v2}, Ltfb;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    iget-object p1, p1, Lge;->m:Lteam/opay/pay/android/views/KeyboardEditText;

    .line 99
    .line 100
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    new-instance v0, Lq11;

    .line 104
    .line 105
    invoke-direct {v0, p0, p1}, Lq11;-><init>(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/pay/android/views/KeyboardEditText;)V

    .line 106
    .line 107
    .line 108
    invoke-static {p1, v0}, Lpf5;->a(Landroid/widget/EditText;Lkotlin/jvm/functions/Function1;)Landroid/text/TextWatcher;

    .line 109
    .line 110
    .line 111
    new-instance v0, Lr11;

    .line 112
    .line 113
    invoke-direct {v0, p0, p1}, Lr11;-><init>(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/pay/android/views/KeyboardEditText;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    iget-object p1, p1, Lge;->o:Lvc8;

    .line 124
    .line 125
    invoke-virtual {p1}, Lvc8;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    new-instance v0, Ls11;

    .line 130
    .line 131
    invoke-direct {v0, p0}, Ls11;-><init>(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    iget-object p1, p1, Lge;->o:Lvc8;

    .line 142
    .line 143
    iget-object p1, p1, Lvc8;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 144
    .line 145
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->E1()Lteam/opay/core/api/GraphQL$Currency;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$Currency;->b()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    iget-object p1, p1, Lge;->o:Lvc8;

    .line 161
    .line 162
    iget-object p1, p1, Lvc8;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 163
    .line 164
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->X2()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    iget-object p1, p1, Lge;->o:Lvc8;

    .line 175
    .line 176
    iget-object p1, p1, Lvc8;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 177
    .line 178
    const-string v0, "nextButton"

    .line 179
    .line 180
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    new-instance v0, Lt11;

    .line 184
    .line 185
    invoke-direct {v0, p0}, Lt11;-><init>(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V

    .line 186
    .line 187
    .line 188
    invoke-static {p1, v0}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    iget-object p1, p1, Lge;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 196
    .line 197
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->D1()Lteam/opay/pay/payment/betting/BettingBundlesAdapter;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    iget-object p1, p1, Lge;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 209
    .line 210
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 211
    .line 212
    const/4 v1, 0x3

    .line 213
    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->D1()Lteam/opay/pay/payment/betting/BettingBundlesAdapter;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    new-instance v0, Lu11;

    .line 224
    .line 225
    invoke-direct {v0, p0}, Lu11;-><init>(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p1, v0}, Lteam/opay/pay/payment/betting/BettingBundlesAdapter;->u(Lhm6;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    iget-object p1, p1, Lge;->o:Lvc8;

    .line 236
    .line 237
    iget-object p1, p1, Lvc8;->b:Lteam/opay/pay/android/views/AmountEditText;

    .line 238
    .line 239
    const-string v0, "customAmount"

    .line 240
    .line 241
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    new-instance v0, Lv11;

    .line 245
    .line 246
    invoke-direct {v0, p0}, Lv11;-><init>(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V

    .line 247
    .line 248
    .line 249
    invoke-static {p1, v0}, Lpf5;->a(Landroid/widget/EditText;Lkotlin/jvm/functions/Function1;)Landroid/text/TextWatcher;

    .line 250
    .line 251
    .line 252
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    iget-object p1, p1, Lge;->o:Lvc8;

    .line 257
    .line 258
    iget-object p1, p1, Lvc8;->b:Lteam/opay/pay/android/views/AmountEditText;

    .line 259
    .line 260
    new-instance v0, Lw11;

    .line 261
    .line 262
    invoke-direct {v0, p0}, Lw11;-><init>(Lteam/opay/pay/payment/betting/BettingTopupActivity;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->W2()V

    .line 269
    .line 270
    .line 271
    sget-object p1, Lzl8;->a:Lzl8;

    .line 272
    .line 273
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->C:Lteam/opay/pay/payment/betting/BettingTopupActivity$loginListener$1;

    .line 274
    .line 275
    invoke-virtual {p1, v0}, Lzl8;->a(Lteam/opay/swarmfoundation/login/ILoginListener;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->W1()V

    .line 279
    .line 280
    .line 281
    invoke-direct {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S0()V

    .line 282
    .line 283
    .line 284
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->c()Lorg/greenrobot/eventbus/EventBus;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->q(Ljava/lang/Object;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->H1()Lteam/opay/pay/payment/betting/LifeCommonViewModel;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    invoke-virtual {p1}, Lteam/opay/pay/payment/betting/LifeCommonViewModel;->U0()Z

    .line 296
    .line 297
    .line 298
    move-result p1

    .line 299
    if-nez p1, :cond_1

    .line 300
    .line 301
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->getTopBottomViewModel()Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    const-string v0, "betting_pop"

    .line 306
    .line 307
    filled-new-array {v0}, [Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->g([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    const-string v1, "Betting"

    .line 316
    .line 317
    invoke-virtual {p1, p0, v1, v0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->x0(Lag8;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 318
    .line 319
    .line 320
    :cond_1
    invoke-direct {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->initView()V

    .line 321
    .line 322
    .line 323
    invoke-virtual {p0}, Lteam/opay/core/android/InjectableActivity;->getTAG()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lteam/opay/pay/payment/betting/Hilt_BettingTopupActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->r:Lteam/opay/pay/payment/data/LifeMarketingFragment;

    .line 8
    .line 9
    sget-object v0, Lzl8;->a:Lzl8;

    .line 10
    .line 11
    iget-object v1, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->C:Lteam/opay/pay/payment/betting/BettingTopupActivity$loginListener$1;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lzl8;->d(Lteam/opay/swarmfoundation/login/ILoginListener;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->c()Lorg/greenrobot/eventbus/EventBus;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->s(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lteam/opay/core/android/InjectableActivity;->getTAG()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->t:Lvp7;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0}, Lvp7;->c()V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public final onEvent(Lteam/opay/pay/payment/betting/GetVoucherSuccessEvent;)V
    .locals 2
    .param p1    # Lteam/opay/pay/payment/betting/GetVoucherSuccessEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lb8e;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lteam/opay/core/android/InjectableActivity;->getTAG()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eventbus "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 p1, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4
    invoke-static {p0, v1, v1, p1, v0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->z1(Lteam/opay/pay/payment/betting/BettingTopupActivity;ZZILjava/lang/Object;)V

    return-void
.end method

.method public final onEvent(Lteam/opay/pay/payment/betting/UseVoucherEvent;)V
    .locals 1
    .param p1    # Lteam/opay/pay/payment/betting/UseVoucherEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lb8e;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/android/InjectableActivity;->getTAG()Ljava/lang/String;

    .line 2
    invoke-virtual {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->C2(Lteam/opay/pay/payment/betting/UseVoucherEvent;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/pay/advertising/BaseDeepLinkAdActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {p0, p1, v2, v0, v1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->x2(Lteam/opay/pay/payment/betting/BettingTopupActivity;Landroid/content/Intent;ZILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final v1(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->R1()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string p1, ""

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->D2(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return v1

    .line 18
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->Z2()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    return v1

    .line 25
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T1()Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->S()Lteam/opay/core/api/graphql/BettingCalculateRsp;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const/4 v2, 0x0

    .line 34
    if-eqz v0, :cond_5

    .line 35
    .line 36
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/BettingCalculateRsp;->a()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_5

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_4

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    move-object v4, v3

    .line 57
    check-cast v4, Lteam/opay/core/api/graphql/BettingInfo;

    .line 58
    .line 59
    invoke-virtual {v4}, Lteam/opay/core/api/graphql/BettingInfo;->d()Lteam/opay/core/api/BettingProvider;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    if-eqz v4, :cond_3

    .line 64
    .line 65
    invoke-virtual {v4}, Lteam/opay/core/api/BettingProvider;->f()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    goto :goto_0

    .line 70
    :cond_3
    move-object v4, v2

    .line 71
    :goto_0
    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_2

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_4
    move-object v3, v2

    .line 79
    :goto_1
    check-cast v3, Lteam/opay/core/api/graphql/BettingInfo;

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_5
    move-object v3, v2

    .line 83
    :goto_2
    if-eqz v3, :cond_6

    .line 84
    .line 85
    invoke-virtual {v3}, Lteam/opay/core/api/graphql/BettingInfo;->d()Lteam/opay/core/api/BettingProvider;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    if-eqz p1, :cond_6

    .line 90
    .line 91
    invoke-virtual {p1}, Lteam/opay/core/api/BettingProvider;->u()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    :cond_6
    const-string p1, "unAvailable"

    .line 96
    .line 97
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-eqz p1, :cond_8

    .line 102
    .line 103
    invoke-virtual {v3}, Lteam/opay/core/api/graphql/BettingInfo;->d()Lteam/opay/core/api/BettingProvider;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p1}, Lteam/opay/core/api/BettingProvider;->v()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    if-nez p1, :cond_7

    .line 112
    .line 113
    sget p1, Lteam/opay/pay/R$string;->bad_gateway_error:I

    .line 114
    .line 115
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    const-string v0, "getString(...)"

    .line 120
    .line 121
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    :cond_7
    invoke-static {p0, p1}, Lkmf;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    return v1

    .line 128
    :cond_8
    iget-object p1, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->r:Lteam/opay/pay/payment/data/LifeMarketingFragment;

    .line 129
    .line 130
    if-eqz p1, :cond_9

    .line 131
    .line 132
    invoke-virtual {p1}, Lteam/opay/pay/payment/data/LifeMarketingFragment;->n0()Lteam/opay/pay/payment/data/MarketInput;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    if-eqz p1, :cond_9

    .line 137
    .line 138
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->R1()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {p1, v0}, Lteam/opay/pay/payment/data/MarketInput;->d(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    :cond_9
    const/4 p1, 0x1

    .line 146
    return p1
.end method

.method public final v2()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lge;->o:Lvc8;

    .line 6
    .line 7
    iget-object v0, v0, Lvc8;->b:Lteam/opay/pay/android/views/AmountEditText;

    .line 8
    .line 9
    invoke-virtual {v0}, Lteam/opay/pay/android/views/AmountEditText;->getFormatText()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const-wide/16 v2, 0x0

    .line 18
    .line 19
    if-lez v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->D1()Lteam/opay/pay/payment/betting/BettingBundlesAdapter;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lteam/opay/pay/payment/betting/BettingBundlesAdapter;->l()V

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Double;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 35
    .line 36
    .line 37
    move-result-wide v2

    .line 38
    :cond_0
    iput-wide v2, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->A:D

    .line 39
    .line 40
    new-instance v1, Lteam/opay/pay/payment/betting/BettingBundle;

    .line 41
    .line 42
    new-instance v6, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 43
    .line 44
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->E1()Lteam/opay/core/api/GraphQL$Currency;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$Currency;->b()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-direct {v6, v0, v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const/16 v9, 0x8

    .line 56
    .line 57
    const/4 v10, 0x0

    .line 58
    const-string v5, ""

    .line 59
    .line 60
    const/4 v7, 0x0

    .line 61
    const/4 v8, 0x0

    .line 62
    move-object v4, v1

    .line 63
    invoke-direct/range {v4 .. v10}, Lteam/opay/pay/payment/betting/BettingBundle;-><init>(Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/pay/api/MarketingPlan;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 64
    .line 65
    .line 66
    iput-object v1, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->B:Lteam/opay/pay/payment/betting/BettingBundle;

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    iput-wide v2, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->A:D

    .line 70
    .line 71
    :goto_0
    return-void
.end method

.method public final w2(Landroid/content/Intent;Z)V
    .locals 12

    .line 1
    sget-object v0, Lxk8;->a:Lxk8;

    .line 2
    .line 3
    new-instance v1, Lm11;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lm11;-><init>(Landroid/content/Intent;)V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static {v0, v3, v1, v2, v3}, Lxk8;->l(Lxk8;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T1()Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->W(Landroid/content/Intent;)Lkotlin/Pair;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    move-object v5, v0

    .line 39
    check-cast v5, Lteam/opay/core/api/graphql/BettingInfo;

    .line 40
    .line 41
    if-nez v5, :cond_0

    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    if-eqz v1, :cond_e

    .line 45
    .line 46
    invoke-virtual {v5}, Lteam/opay/core/api/graphql/BettingInfo;->d()Lteam/opay/core/api/BettingProvider;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    invoke-virtual {v0}, Lteam/opay/core/api/BettingProvider;->f()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    move-object v0, v3

    .line 58
    :goto_0
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T1()Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->f0()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_d

    .line 71
    .line 72
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T1()Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->g0()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const-string v1, ""

    .line 81
    .line 82
    if-nez v0, :cond_2

    .line 83
    .line 84
    move-object v6, v1

    .line 85
    goto :goto_1

    .line 86
    :cond_2
    move-object v6, v0

    .line 87
    :goto_1
    const/16 v10, 0x10

    .line 88
    .line 89
    const/4 v11, 0x0

    .line 90
    const/4 v8, 0x1

    .line 91
    const/4 v9, 0x0

    .line 92
    move-object v4, p0

    .line 93
    move v7, p2

    .line 94
    invoke-static/range {v4 .. v11}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->U2(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/core/api/graphql/BettingInfo;Ljava/lang/String;ZZZILjava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T1()Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    iget-object v4, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->u:Lteam/opay/core/android/money/MoneyAmount;

    .line 102
    .line 103
    const-string v5, "minAmount"

    .line 104
    .line 105
    if-nez v4, :cond_3

    .line 106
    .line 107
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    move-object v4, v3

    .line 111
    :cond_3
    iget-object v6, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->v:Lteam/opay/core/android/money/MoneyAmount;

    .line 112
    .line 113
    const-string v7, "maxAmount"

    .line 114
    .line 115
    if-nez v6, :cond_4

    .line 116
    .line 117
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    move-object v6, v3

    .line 121
    :cond_4
    invoke-virtual {v0, v4, v6}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->s0(Lteam/opay/core/android/money/MoneyAmount;Lteam/opay/core/android/money/MoneyAmount;)Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-nez p2, :cond_6

    .line 126
    .line 127
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    iget-object v4, v4, Lge;->o:Lvc8;

    .line 132
    .line 133
    iget-object v4, v4, Lvc8;->b:Lteam/opay/pay/android/views/AmountEditText;

    .line 134
    .line 135
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T1()Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    invoke-virtual {v8}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->e0()Ljava/lang/CharSequence;

    .line 144
    .line 145
    .line 146
    move-result-object v8

    .line 147
    if-nez v8, :cond_5

    .line 148
    .line 149
    move-object v8, v1

    .line 150
    :cond_5
    invoke-virtual {v6, v8}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    .line 156
    .line 157
    :cond_6
    if-nez v0, :cond_a

    .line 158
    .line 159
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T1()Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    invoke-virtual {v4}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->e0()Ljava/lang/CharSequence;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    if-eqz v4, :cond_a

    .line 168
    .line 169
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 170
    .line 171
    .line 172
    move-result v4

    .line 173
    if-nez v4, :cond_7

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_7
    if-nez p2, :cond_a

    .line 177
    .line 178
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->F1()Ljava/text/DecimalFormat;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    iget-object v6, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->u:Lteam/opay/core/android/money/MoneyAmount;

    .line 183
    .line 184
    if-nez v6, :cond_8

    .line 185
    .line 186
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    move-object v6, v3

    .line 190
    :cond_8
    invoke-virtual {v6}, Lteam/opay/core/android/money/MoneyAmount;->getAmount()Ljava/math/BigDecimal;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    invoke-virtual {v4, v5}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->F1()Ljava/text/DecimalFormat;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    iget-object v6, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity;->v:Lteam/opay/core/android/money/MoneyAmount;

    .line 203
    .line 204
    if-nez v6, :cond_9

    .line 205
    .line 206
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    move-object v6, v3

    .line 210
    :cond_9
    invoke-virtual {v6}, Lteam/opay/core/android/money/MoneyAmount;->getAmount()Ljava/math/BigDecimal;

    .line 211
    .line 212
    .line 213
    move-result-object v6

    .line 214
    invoke-virtual {v5, v6}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    sget v6, Lteam/opay/pay/R$string;->osdk_betting_amount_between:I

    .line 219
    .line 220
    const/4 v7, 0x2

    .line 221
    new-array v7, v7, [Ljava/lang/Object;

    .line 222
    .line 223
    const/4 v8, 0x0

    .line 224
    aput-object v4, v7, v8

    .line 225
    .line 226
    aput-object v5, v7, v2

    .line 227
    .line 228
    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    const-string v4, "getString(...)"

    .line 233
    .line 234
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-static {p0, v2}, Lkmf;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    :cond_a
    :goto_2
    if-eqz p1, :cond_b

    .line 241
    .line 242
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    if-eqz p1, :cond_b

    .line 247
    .line 248
    const-string v2, "para_open_cashDesk"

    .line 249
    .line 250
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    :cond_b
    if-nez v3, :cond_c

    .line 255
    .line 256
    goto :goto_3

    .line 257
    :cond_c
    move-object v1, v3

    .line 258
    :goto_3
    const-string p1, "false"

    .line 259
    .line 260
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result p1

    .line 264
    if-nez p1, :cond_f

    .line 265
    .line 266
    if-nez p2, :cond_f

    .line 267
    .line 268
    if-eqz v0, :cond_f

    .line 269
    .line 270
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 271
    .line 272
    invoke-virtual {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->f2(Ljava/lang/Boolean;)Z

    .line 273
    .line 274
    .line 275
    goto :goto_4

    .line 276
    :cond_d
    const/16 v10, 0x10

    .line 277
    .line 278
    const/4 v11, 0x0

    .line 279
    const-string v6, ""

    .line 280
    .line 281
    const/4 v8, 0x1

    .line 282
    const/4 v9, 0x0

    .line 283
    move-object v4, p0

    .line 284
    move v7, p2

    .line 285
    invoke-static/range {v4 .. v11}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->U2(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/core/api/graphql/BettingInfo;Ljava/lang/String;ZZZILjava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    goto :goto_4

    .line 289
    :cond_e
    const/16 v10, 0x10

    .line 290
    .line 291
    const/4 v11, 0x0

    .line 292
    const-string v6, ""

    .line 293
    .line 294
    const/4 v8, 0x1

    .line 295
    const/4 v9, 0x0

    .line 296
    move-object v4, p0

    .line 297
    move v7, p2

    .line 298
    invoke-static/range {v4 .. v11}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->U2(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/core/api/graphql/BettingInfo;Ljava/lang/String;ZZZILjava/lang/Object;)V

    .line 299
    .line 300
    .line 301
    :cond_f
    :goto_4
    return-void
.end method

.method public final x1(Lteam/opay/odialog/net/ADListResponse;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lteam/opay/odialog/net/ADListResponse;->getAds()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_d

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    move-object v3, v1

    .line 28
    check-cast v3, Lteam/opay/odialog/net/ADListItem;

    .line 29
    .line 30
    invoke-virtual {v3}, Lteam/opay/odialog/net/ADListItem;->getAdList()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    :cond_1
    const/4 v2, 0x1

    .line 43
    :cond_2
    if-nez v2, :cond_0

    .line 44
    .line 45
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_d

    .line 58
    .line 59
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Lteam/opay/odialog/net/ADListItem;

    .line 64
    .line 65
    invoke-virtual {v0}, Lteam/opay/odialog/net/ADListItem;->getAdpCode()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    if-eqz v1, :cond_4

    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    const/4 v4, 0x0

    .line 76
    const/4 v5, 0x2

    .line 77
    sparse-switch v3, :sswitch_data_0

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :sswitch_0
    const-string v3, "ng_betting_bottom_banner"

    .line 82
    .line 83
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-nez v1, :cond_5

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_5
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    iget-object v1, v1, Lge;->d:Lteam/opay/pay/ad/OpayAdBannerView;

    .line 95
    .line 96
    invoke-virtual {v0}, Lteam/opay/odialog/net/ADListItem;->getAdList()Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    if-nez v0, :cond_6

    .line 101
    .line 102
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    :cond_6
    invoke-static {v1, v0, v2, v5, v4}, Lteam/opay/pay/ad/OpayAdBannerView;->e(Lteam/opay/pay/ad/OpayAdBannerView;Ljava/util/List;ZILjava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :sswitch_1
    const-string v3, "ng_banner_betting_more"

    .line 111
    .line 112
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-nez v1, :cond_7

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_7
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    iget-object v1, v1, Lge;->k:Landroid/widget/FrameLayout;

    .line 124
    .line 125
    const-string v4, "fMoreBanner"

    .line 126
    .line 127
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 131
    .line 132
    .line 133
    sget v1, Lteam/opay/pay/R$id;->f_more_banner:I

    .line 134
    .line 135
    sget-object v4, Lteam/opay/pay/payment/betting/MoreBannerListFragment;->q:Lteam/opay/pay/payment/betting/MoreBannerListFragment$Companion;

    .line 136
    .line 137
    invoke-virtual {v0}, Lteam/opay/odialog/net/ADListItem;->getAdList()Ljava/util/List;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    if-nez v0, :cond_8

    .line 142
    .line 143
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    :cond_8
    invoke-virtual {v4, v0, v3}, Lteam/opay/pay/payment/betting/MoreBannerListFragment$Companion;->a(Ljava/util/List;Ljava/lang/String;)Lteam/opay/pay/payment/betting/MoreBannerListFragment;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-static {p0, v1, v0}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :sswitch_2
    const-string v3, "ng_betting_notice_first"

    .line 156
    .line 157
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-nez v1, :cond_9

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_9
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    iget-object v1, v1, Lge;->f:Lteam/opay/pay/wallet/view/AnnouncementView;

    .line 169
    .line 170
    invoke-virtual {v1, v0}, Lteam/opay/pay/wallet/view/AnnouncementView;->d(Lteam/opay/odialog/net/ADListItem;)Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    iget-object v1, v1, Lge;->f:Lteam/opay/pay/wallet/view/AnnouncementView;

    .line 179
    .line 180
    const-string v3, "bettingAv"

    .line 181
    .line 182
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    if-eqz v0, :cond_a

    .line 186
    .line 187
    const/4 v0, 0x0

    .line 188
    goto :goto_2

    .line 189
    :cond_a
    const/16 v0, 0x8

    .line 190
    .line 191
    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 192
    .line 193
    .line 194
    goto/16 :goto_1

    .line 195
    .line 196
    :sswitch_3
    const-string v3, "ng_betting_middle_banner"

    .line 197
    .line 198
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    if-nez v1, :cond_b

    .line 203
    .line 204
    goto/16 :goto_1

    .line 205
    .line 206
    :cond_b
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    iget-object v1, v1, Lge;->C:Landroidx/legacy/widget/Space;

    .line 211
    .line 212
    const-string v3, "spaceMidBanner"

    .line 213
    .line 214
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    iget-object v1, v1, Lge;->r:Lteam/opay/pay/ad/OpayAdBannerView;

    .line 225
    .line 226
    invoke-virtual {v0}, Lteam/opay/odialog/net/ADListItem;->getAdList()Ljava/util/List;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    if-nez v0, :cond_c

    .line 231
    .line 232
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    :cond_c
    invoke-static {v1, v0, v2, v5, v4}, Lteam/opay/pay/ad/OpayAdBannerView;->e(Lteam/opay/pay/ad/OpayAdBannerView;Ljava/util/List;ZILjava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    goto/16 :goto_1

    .line 240
    .line 241
    :cond_d
    return-void

    .line 242
    nop

    .line 243
    :sswitch_data_0
    .sparse-switch
        -0x5b82ca30 -> :sswitch_3
        -0x4d3bc971 -> :sswitch_2
        -0x38d22cbe -> :sswitch_1
        0x21bec07a -> :sswitch_0
    .end sparse-switch
.end method

.method public final y1(ZZ)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T1()Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->K()V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->R2(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->G1()Lteam/opay/pay/module/offers/HotOffersViewModel;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    sget-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->BETTING:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 17
    .line 18
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->T1()Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->k0()Lteam/opay/core/api/graphql/BettingInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-virtual {v1}, Lteam/opay/core/api/graphql/BettingInfo;->d()Lteam/opay/core/api/BettingProvider;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    invoke-virtual {v1}, Lteam/opay/core/api/BettingProvider;->f()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v1, 0x0

    .line 44
    :goto_0
    if-nez v1, :cond_1

    .line 45
    .line 46
    const-string v1, ""

    .line 47
    .line 48
    :cond_1
    invoke-virtual {p1, p0, v0, v1, p2}, Lteam/opay/pay/module/offers/HotOffersViewModel;->G(Lag8;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final z2(Lteam/opay/core/android/arch/Resource;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/core/api/BettingAccount;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    if-eqz v1, :cond_5

    .line 10
    .line 11
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->e()I

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    const/16 v6, -0x3ec

    .line 16
    .line 17
    if-ne v5, v6, :cond_0

    .line 18
    .line 19
    goto/16 :goto_2

    .line 20
    .line 21
    :cond_0
    invoke-direct {v0, v4}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->c3(Z)V

    .line 22
    .line 23
    .line 24
    const-string v5, "04888"

    .line 25
    .line 26
    const-string v6, "04889"

    .line 27
    .line 28
    filled-new-array {v5, v6}, [Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->n([Ljava/lang/Object;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    invoke-static {v5, v6}, Lkotlin/collections/CollectionsKt;->X(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-eqz v5, :cond_3

    .line 45
    .line 46
    sget-object v1, Lteam/opay/pay/wallet/OneButtonDialog;->p:Lteam/opay/pay/wallet/OneButtonDialog$Companion;

    .line 47
    .line 48
    new-instance v15, Lteam/opay/pay/wallet/OneButtonDialogData;

    .line 49
    .line 50
    sget v6, Lteam/opay/pay/R$mipmap;->osdk_ic_kyc_warning:I

    .line 51
    .line 52
    sget v5, Lteam/opay/pay/R$string;->osdk_betting_user_not_found:I

    .line 53
    .line 54
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->R1()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->J1()Lteam/opay/core/api/BettingProvider;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    if-eqz v8, :cond_1

    .line 63
    .line 64
    invoke-virtual {v8}, Lteam/opay/core/api/BettingProvider;->c()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    :cond_1
    if-nez v3, :cond_2

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    move-object v2, v3

    .line 72
    :goto_0
    const/4 v3, 0x2

    .line 73
    new-array v3, v3, [Ljava/lang/Object;

    .line 74
    .line 75
    aput-object v7, v3, v4

    .line 76
    .line 77
    const/4 v4, 0x1

    .line 78
    aput-object v2, v3, v4

    .line 79
    .line 80
    invoke-static {v5, v3}, Ljmf;->l(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    sget v2, Lteam/opay/pay/R$string;->got_it_label:I

    .line 85
    .line 86
    invoke-static {v2}, Ljmf;->k(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    const/16 v14, 0xd2

    .line 91
    .line 92
    const/4 v2, 0x0

    .line 93
    const/4 v7, 0x0

    .line 94
    const/4 v10, 0x0

    .line 95
    const/4 v11, 0x1

    .line 96
    const/4 v12, 0x0

    .line 97
    const/4 v13, 0x0

    .line 98
    move-object v5, v15

    .line 99
    move-object v3, v15

    .line 100
    move-object v15, v2

    .line 101
    invoke-direct/range {v5 .. v15}, Lteam/opay/pay/wallet/OneButtonDialogData;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v3}, Lteam/opay/pay/wallet/OneButtonDialog$Companion;->a(Lteam/opay/pay/wallet/OneButtonDialogData;)Lteam/opay/pay/wallet/OneButtonDialog;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-static {v0, v1}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_3
    sget-object v2, Lteam/opay/pay/settings/TipsDialogFragment;->u:Lteam/opay/pay/settings/TipsDialogFragment$Companion;

    .line 113
    .line 114
    sget v3, Lteam/opay/pay/R$string;->failed:I

    .line 115
    .line 116
    invoke-static {v3}, Ljmf;->k(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-static {v1, v0}, Lzo5;->a(Lteam/opay/core/android/arch/Resource;Landroid/content/Context;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    if-nez v1, :cond_4

    .line 125
    .line 126
    sget v1, Lteam/opay/pay/R$string;->betting_lookup_error:I

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    const-string v4, "getString(...)"

    .line 133
    .line 134
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    :cond_4
    move-object v4, v1

    .line 138
    sget v1, Lteam/opay/pay/R$string;->confirm:I

    .line 139
    .line 140
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    sget v7, Lteam/opay/pay/R$mipmap;->transaction_failed:I

    .line 145
    .line 146
    const/16 v11, 0xe8

    .line 147
    .line 148
    const/4 v12, 0x0

    .line 149
    const/4 v6, 0x0

    .line 150
    const/4 v8, 0x0

    .line 151
    const/4 v9, 0x0

    .line 152
    const/4 v10, 0x0

    .line 153
    invoke-static/range {v2 .. v12}, Lteam/opay/pay/settings/TipsDialogFragment$Companion;->b(Lteam/opay/pay/settings/TipsDialogFragment$Companion;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;IIZZILjava/lang/Object;)Lteam/opay/pay/settings/TipsDialogFragment;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-static {v0, v1}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 158
    .line 159
    .line 160
    :goto_1
    return-void

    .line 161
    :cond_5
    :goto_2
    sget-object v5, Lteam/opay/pay/kyc/ConnectionFailedDialog;->m:Lteam/opay/pay/kyc/ConnectionFailedDialog$Companion;

    .line 162
    .line 163
    sget-object v6, Lteam/opay/core/api/GraphQL$ServiceType;->BETTING:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 164
    .line 165
    invoke-virtual {v6}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    if-eqz v1, :cond_6

    .line 170
    .line 171
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    :cond_6
    if-nez v3, :cond_7

    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_7
    move-object v2, v3

    .line 179
    :goto_3
    invoke-virtual {v5, v0, v6, v2}, Lteam/opay/pay/kyc/ConnectionFailedDialog$Companion;->a(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-direct {v0, v4}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->c3(Z)V

    .line 183
    .line 184
    .line 185
    return-void
.end method
