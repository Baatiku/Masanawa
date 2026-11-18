.class public final Lteam/opay/core/card/CardViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "CardViewModel.kt"

# interfaces
.implements Lteam/opay/core/api/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/core/card/CardViewModel$Companion;,
        Lteam/opay/core/card/CardViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \u00c7\u00022\u00020\u00012\u00020\u0002:\u0002\u00c8\u0002B)\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ!\u0010\u000f\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J1\u0010\u0017\u001a\u0012\u0012\u0004\u0012\u00020\u00150\u0014j\u0008\u0012\u0004\u0012\u00020\u0015`\u00162\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0013\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0017\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ)\u0010!\u001a\u0014\u0012\u0004\u0012\u00020\u000c\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020 0\u001f0\u001e2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008!\u0010\"J)\u0010#\u001a\u0014\u0012\u0004\u0012\u00020\u000c\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020 0\u001f0\u001e2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008#\u0010\"J\'\u0010$\u001a\u0012\u0012\u0004\u0012\u00020 0\u0014j\u0008\u0012\u0004\u0012\u00020 `\u00162\u0006\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008$\u0010%J5\u0010)\u001a\u0008\u0012\u0004\u0012\u00020 0\u001f*\u00020&2\u0006\u0010\'\u001a\u00020\u000c2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u000c2\u0008\u0010(\u001a\u0004\u0018\u00010\u000cH\u0002\u00a2\u0006\u0004\u0008)\u0010*J\'\u0010,\u001a\u0008\u0012\u0004\u0012\u00020 0\u001f*\u0008\u0012\u0004\u0012\u00020+0\u001f2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008,\u0010-J/\u0010.\u001a\u0008\u0012\u0004\u0012\u00020 0\u001f*\u0008\u0012\u0004\u0012\u00020+0\u001f2\u0006\u0010\u0013\u001a\u00020\u000c2\u0006\u0010(\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008.\u0010/J\'\u00100\u001a\u0012\u0012\u0004\u0012\u00020 0\u0014j\u0008\u0012\u0004\u0012\u00020 `\u00162\u0006\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u00080\u0010%J+\u00101\u001a\u0016\u0012\u0004\u0012\u00020\u000c\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020 0\u001f\u0018\u00010\u001e2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u00081\u0010\"J)\u00102\u001a\u0014\u0012\u0004\u0012\u00020\u000c\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020 0\u001f0\u001e2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u00082\u0010\"J%\u00105\u001a\u0008\u0012\u0004\u0012\u00020 0\u001f2\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u00104\u001a\u000203H\u0002\u00a2\u0006\u0004\u00085\u00106J)\u00107\u001a\u0014\u0012\u0004\u0012\u00020\u000c\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020 0\u001f0\u001e2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u00087\u0010\"J\u001d\u00108\u001a\u0008\u0012\u0004\u0012\u00020 0\u001f2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u00088\u00109J7\u0010C\u001a\u00020B2\u0008\u0010\u0012\u001a\u0004\u0018\u00010:2\u0006\u0010<\u001a\u00020;2\u0006\u0010>\u001a\u00020=2\u000c\u0010A\u001a\u0008\u0012\u0004\u0012\u00020@0?H\u0002\u00a2\u0006\u0004\u0008C\u0010DJ)\u0010E\u001a\u0014\u0012\u0004\u0012\u00020\u000c\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020 0\u001f0\u001e2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008E\u0010\"J)\u0010F\u001a\u0014\u0012\u0004\u0012\u00020\u000c\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020 0\u001f0\u001e2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008F\u0010\"J)\u0010G\u001a\u0014\u0012\u0004\u0012\u00020\u000c\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020 0\u001f0\u001e2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008G\u0010\"J\u001d\u0010H\u001a\u0008\u0012\u0004\u0012\u00020 0\u001f2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008H\u00109J\u001d\u0010I\u001a\u0008\u0012\u0004\u0012\u00020 0\u001f2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008I\u00109J\u001d\u0010J\u001a\u0008\u0012\u0004\u0012\u00020 0\u001f2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008J\u00109J\u001d\u0010K\u001a\u0008\u0012\u0004\u0012\u00020 0\u001f2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008K\u00109J\u001f\u0010M\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u001f2\u0006\u0010L\u001a\u00020;H\u0002\u00a2\u0006\u0004\u0008M\u0010NJ\u0019\u0010Q\u001a\u00020P2\u0008\u0010\u0012\u001a\u0004\u0018\u00010OH\u0002\u00a2\u0006\u0004\u0008Q\u0010RJ%\u0010U\u001a\u000203*\u00020S2\u0008\u0008\u0002\u0010T\u001a\u00020B2\u0006\u0010\u0013\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008U\u0010VJ\u001f\u0010W\u001a\u0004\u0018\u00010\u000c*\u00020S2\u0008\u0008\u0002\u0010T\u001a\u00020BH\u0002\u00a2\u0006\u0004\u0008W\u0010XJ;\u0010[\u001a\u0008\u0012\u0004\u0012\u00020 0\u001f*\u0008\u0012\u0004\u0012\u00020Y0\u001f2\u0006\u0010Z\u001a\u00020;2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u000c2\u0008\u0010(\u001a\u0004\u0018\u00010\u000cH\u0002\u00a2\u0006\u0004\u0008[\u0010\\J%\u0010_\u001a\u00020\u000c2\u0006\u0010]\u001a\u00020\u000c2\u000c\u0010^\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u001fH\u0002\u00a2\u0006\u0004\u0008_\u0010`J\u0017\u0010a\u001a\u00020\u001b2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008a\u0010\u001dJ)\u0010b\u001a\u0014\u0012\u0004\u0012\u00020\u000c\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020 0\u001f0\u001e2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008b\u0010\"J)\u0010c\u001a\u0014\u0012\u0004\u0012\u00020\u000c\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020 0\u001f0\u001e2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008c\u0010\"J+\u0010d\u001a\u0016\u0012\u0004\u0012\u00020\u000c\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020 0\u001f\u0018\u00010\u001e2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008d\u0010\"J)\u0010e\u001a\u0014\u0012\u0004\u0012\u00020\u000c\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020 0\u001f0\u001e2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008e\u0010\"J)\u0010f\u001a\u0014\u0012\u0004\u0012\u00020\u000c\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020 0\u001f0\u001e2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008f\u0010\"J\'\u0010i\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010h\u0012\u0006\u0012\u0004\u0018\u00010h0\u001e2\u0006\u0010\u0012\u001a\u00020gH\u0002\u00a2\u0006\u0004\u0008i\u0010jJ\u0017\u0010k\u001a\u00020B2\u0006\u0010\u0012\u001a\u00020hH\u0002\u00a2\u0006\u0004\u0008k\u0010lJ\u001f\u0010p\u001a\u00020@2\u0006\u0010m\u001a\u00020\u000c2\u0006\u0010o\u001a\u00020nH\u0002\u00a2\u0006\u0004\u0008p\u0010qJ\u0017\u0010r\u001a\u00020@2\u0006\u0010o\u001a\u00020nH\u0002\u00a2\u0006\u0004\u0008r\u0010sJ!\u0010u\u001a\u00020B2\u0006\u0010t\u001a\u00020;2\u0008\u0010Z\u001a\u0004\u0018\u00010\u000cH\u0002\u00a2\u0006\u0004\u0008u\u0010vJ\u0015\u0010x\u001a\u00020@2\u0006\u0010o\u001a\u00020w\u00a2\u0006\u0004\u0008x\u0010yJ\u0015\u0010z\u001a\u00020@2\u0006\u0010o\u001a\u00020n\u00a2\u0006\u0004\u0008z\u0010sJ\u001d\u0010}\u001a\u00020@2\u0006\u0010o\u001a\u00020n2\u0006\u0010|\u001a\u00020{\u00a2\u0006\u0004\u0008}\u0010~J\u001f\u0010\u0080\u0001\u001a\u00020@2\u0006\u0010o\u001a\u00020n2\u0006\u0010\u007f\u001a\u00020{\u00a2\u0006\u0005\u0008\u0080\u0001\u0010~J-\u0010\u0084\u0001\u001a\u00020@2\u0006\u0010o\u001a\u00020n2\u0008\u0010\u0082\u0001\u001a\u00030\u0081\u00012\t\u0010\u0083\u0001\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0006\u0008\u0084\u0001\u0010\u0085\u0001J-\u0010\u0088\u0001\u001a\u00020@2\u0006\u0010o\u001a\u00020n2\u0008\u0010\u0087\u0001\u001a\u00030\u0086\u00012\t\u0010\u0083\u0001\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0006\u0008\u0088\u0001\u0010\u0089\u0001J+\u0010\u008d\u0001\u001a\u00020\u000c2\u0007\u0010\u008a\u0001\u001a\u00020\u000c2\u0007\u0010\u008b\u0001\u001a\u00020\u000c2\u0007\u0010\u008c\u0001\u001a\u00020\u000c\u00a2\u0006\u0006\u0008\u008d\u0001\u0010\u008e\u0001JM\u0010\u0096\u0001\u001a\u0010\u0012\u000b\u0012\t\u0012\u0004\u0012\u00020\u000c0\u0095\u00010\u0094\u00012\u0007\u0010\u008f\u0001\u001a\u00020\u000c2\u0007\u0010\u0090\u0001\u001a\u00020\u000c2\u0007\u0010\u0091\u0001\u001a\u00020\u000c2\u0007\u0010\u0092\u0001\u001a\u00020\u000c2\t\u0008\u0002\u0010\u0093\u0001\u001a\u00020;\u00a2\u0006\u0006\u0008\u0096\u0001\u0010\u0097\u0001J\u001f\u0010\u0098\u0001\u001a\u00020@2\u0006\u0010m\u001a\u00020\u000c2\u0006\u0010o\u001a\u00020n\u00a2\u0006\u0005\u0008\u0098\u0001\u0010qJ\u0017\u0010\u0099\u0001\u001a\u00020@2\u0006\u0010o\u001a\u00020n\u00a2\u0006\u0005\u0008\u0099\u0001\u0010sJ6\u0010\u009c\u0001\u001a\u00020@2\u0007\u0010\u009a\u0001\u001a\u00020\u000c2\u0006\u0010o\u001a\u00020n2\u0013\u0010A\u001a\u000f\u0012\u0004\u0012\u00020B\u0012\u0004\u0012\u00020@0\u009b\u0001\u00a2\u0006\u0006\u0008\u009c\u0001\u0010\u009d\u0001R\u0016\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u009e\u0001\u0010\u009f\u0001R\u0016\u0010\u0005\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00a0\u0001\u0010\u00a1\u0001R\u0016\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00a2\u0001\u0010\u00a3\u0001R(\u0010\u00a9\u0001\u001a\u00020B8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008\u00a4\u0001\u0010z\u001a\u0006\u0008\u00a5\u0001\u0010\u00a6\u0001\"\u0006\u0008\u00a7\u0001\u0010\u00a8\u0001R#\u0010\u00af\u0001\u001a\t\u0012\u0004\u0012\u00020B0\u00aa\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u00ab\u0001\u0010\u00ac\u0001\u001a\u0006\u0008\u00ad\u0001\u0010\u00ae\u0001R$\u0010\u00b3\u0001\u001a\n\u0012\u0005\u0012\u00030\u00b0\u00010\u00aa\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u00b1\u0001\u0010\u00ac\u0001\u001a\u0006\u0008\u00b2\u0001\u0010\u00ae\u0001R<\u0010\u00b7\u0001\u001a\"\u0012\u001d\u0012\u001b\u0012\u0006\u0012\u0004\u0018\u00010;\u0012\u0006\u0012\u0004\u0018\u00010\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u00b4\u00010\u00aa\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u00b5\u0001\u0010\u00ac\u0001\u001a\u0006\u0008\u00b6\u0001\u0010\u00ae\u0001R#\u0010\u00ba\u0001\u001a\t\u0012\u0004\u0012\u00020B0\u00aa\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u00b8\u0001\u0010\u00ac\u0001\u001a\u0006\u0008\u00b9\u0001\u0010\u00ae\u0001R\'\u0010\u00be\u0001\u001a\t\u0012\u0004\u0012\u00020B0\u00aa\u00018FX\u0086\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00bb\u0001\u0010\u00bc\u0001\u001a\u0006\u0008\u00bd\u0001\u0010\u00ae\u0001R+\u0010\u00c5\u0001\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00bf\u0001\u0010\u00c0\u0001\u001a\u0006\u0008\u00c1\u0001\u0010\u00c2\u0001\"\u0006\u0008\u00c3\u0001\u0010\u00c4\u0001R+\u0010\u00c9\u0001\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00c6\u0001\u0010\u00c0\u0001\u001a\u0006\u0008\u00c7\u0001\u0010\u00c2\u0001\"\u0006\u0008\u00c8\u0001\u0010\u00c4\u0001R,\u0010\u00d1\u0001\u001a\u0005\u0018\u00010\u00ca\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00cb\u0001\u0010\u00cc\u0001\u001a\u0006\u0008\u00cd\u0001\u0010\u00ce\u0001\"\u0006\u0008\u00cf\u0001\u0010\u00d0\u0001R+\u0010\u00d5\u0001\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00d2\u0001\u0010\u00c0\u0001\u001a\u0006\u0008\u00d3\u0001\u0010\u00c2\u0001\"\u0006\u0008\u00d4\u0001\u0010\u00c4\u0001R+\u0010\u00dc\u0001\u001a\u0004\u0018\u0001038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00d6\u0001\u0010\u00d7\u0001\u001a\u0006\u0008\u00d8\u0001\u0010\u00d9\u0001\"\u0006\u0008\u00da\u0001\u0010\u00db\u0001R\u001d\u0010\u00e2\u0001\u001a\u00030\u00dd\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u00de\u0001\u0010\u00df\u0001\u001a\u0006\u0008\u00e0\u0001\u0010\u00e1\u0001R\'\u0010\u00e7\u0001\u001a\t\u0012\u0004\u0012\u00020\u001b0\u00e3\u00018FX\u0086\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00e4\u0001\u0010\u00bc\u0001\u001a\u0006\u0008\u00e5\u0001\u0010\u00e6\u0001R\'\u0010\u00ea\u0001\u001a\t\u0012\u0004\u0012\u00020B0\u00aa\u00018FX\u0086\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00e8\u0001\u0010\u00bc\u0001\u001a\u0006\u0008\u00e9\u0001\u0010\u00ae\u0001R\'\u0010\u00ed\u0001\u001a\t\u0012\u0004\u0012\u00020B0\u00aa\u00018FX\u0086\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00eb\u0001\u0010\u00bc\u0001\u001a\u0006\u0008\u00ec\u0001\u0010\u00ae\u0001R)\u0010\u00f2\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010g0\u00ee\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00ef\u0001\u0010\u00bc\u0001\u001a\u0006\u0008\u00f0\u0001\u0010\u00f1\u0001R#\u0010\u00f5\u0001\u001a\t\u0012\u0004\u0012\u00020B0\u00aa\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u00f3\u0001\u0010\u00ac\u0001\u001a\u0006\u0008\u00f4\u0001\u0010\u00ae\u0001R$\u0010\u00f9\u0001\u001a\n\u0012\u0005\u0012\u00030\u00f6\u00010\u00aa\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u00f7\u0001\u0010\u00ac\u0001\u001a\u0006\u0008\u00f8\u0001\u0010\u00ae\u0001R$\u0010\u00fc\u0001\u001a\n\u0012\u0005\u0012\u00030\u00f6\u00010\u00aa\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u00fa\u0001\u0010\u00ac\u0001\u001a\u0006\u0008\u00fb\u0001\u0010\u00ae\u0001R)\u0010\u00ff\u0001\u001a\u000f\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u001f0\u00aa\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u00fd\u0001\u0010\u00ac\u0001\u001a\u0006\u0008\u00fe\u0001\u0010\u00ae\u0001R)\u0010\u0082\u0002\u001a\u000f\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u001f0\u00aa\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u0080\u0002\u0010\u00ac\u0001\u001a\u0006\u0008\u0081\u0002\u0010\u00ae\u0001R$\u0010\u0086\u0002\u001a\n\u0012\u0005\u0012\u00030\u0083\u00020\u00aa\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u0084\u0002\u0010\u00ac\u0001\u001a\u0006\u0008\u0085\u0002\u0010\u00ae\u0001R\u001e\u0010\u0089\u0002\u001a\u0004\u0018\u00010\u000c8\u0006\u00a2\u0006\u0010\n\u0006\u0008\u0087\u0002\u0010\u00c0\u0001\u001a\u0006\u0008\u0088\u0002\u0010\u00c2\u0001R(\u0010\u008d\u0002\u001a\u00020B8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008\u008a\u0002\u0010z\u001a\u0006\u0008\u008b\u0002\u0010\u00a6\u0001\"\u0006\u0008\u008c\u0002\u0010\u00a8\u0001R#\u0010\u0092\u0002\u001a\u0005\u0018\u00010\u008e\u00028BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u008f\u0002\u0010\u00bc\u0001\u001a\u0006\u0008\u0090\u0002\u0010\u0091\u0002R$\u0010\u0096\u0002\u001a\n\u0012\u0005\u0012\u00030\u0093\u00020\u00aa\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u0094\u0002\u0010\u00ac\u0001\u001a\u0006\u0008\u0095\u0002\u0010\u00ae\u0001R+\u0010\u009a\u0002\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0097\u0002\u0010\u00c0\u0001\u001a\u0006\u0008\u0098\u0002\u0010\u00c2\u0001\"\u0006\u0008\u0099\u0002\u0010\u00c4\u0001R+\u0010\u009e\u0002\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u009b\u0002\u0010\u00c0\u0001\u001a\u0006\u0008\u009c\u0002\u0010\u00c2\u0001\"\u0006\u0008\u009d\u0002\u0010\u00c4\u0001R+\u0010\u00a2\u0002\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u009f\u0002\u0010\u00c0\u0001\u001a\u0006\u0008\u00a0\u0002\u0010\u00c2\u0001\"\u0006\u0008\u00a1\u0002\u0010\u00c4\u0001R!\u0010\u00a7\u0002\u001a\u00030\u00a3\u00028BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00a4\u0002\u0010\u00bc\u0001\u001a\u0006\u0008\u00a5\u0002\u0010\u00a6\u0002R+\u0010\u00ab\u0002\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00a8\u0002\u0010\u00c0\u0001\u001a\u0006\u0008\u00a9\u0002\u0010\u00c2\u0001\"\u0006\u0008\u00aa\u0002\u0010\u00c4\u0001R?\u0010\u00ae\u0002\u001a!\u0012\u001c\u0012\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020h0\u001f\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020h0\u001f0\u001e0\u00aa\u00018FX\u0086\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00ac\u0002\u0010\u00bc\u0001\u001a\u0006\u0008\u00ad\u0002\u0010\u00ae\u0001R,\u0010\u00b6\u0002\u001a\u0005\u0018\u00010\u00af\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00b0\u0002\u0010\u00b1\u0002\u001a\u0006\u0008\u00b2\u0002\u0010\u00b3\u0002\"\u0006\u0008\u00b4\u0002\u0010\u00b5\u0002R1\u0010\u00b9\u0002\u001a\u0013\u0012\u000e\u0012\u000c\u0012\u0005\u0012\u00030\u00af\u0002\u0018\u00010\u0095\u00010\u00ee\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00b7\u0002\u0010\u00bc\u0001\u001a\u0006\u0008\u00b8\u0002\u0010\u00f1\u0001R1\u0010\u00bd\u0002\u001a\u0013\u0012\u000e\u0012\u000c\u0012\u0005\u0012\u00030\u00ba\u0002\u0018\u00010\u0095\u00010\u00ee\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00bb\u0002\u0010\u00bc\u0001\u001a\u0006\u0008\u00bc\u0002\u0010\u00f1\u0001R\u0018\u0010\u00c0\u0002\u001a\u00030\u00be\u00028\u0016X\u0096\u0005\u00a2\u0006\u0008\u001a\u0006\u0008\u00d6\u0001\u0010\u00bf\u0002R\u0018\u0010\u00c3\u0002\u001a\u00030\u00c1\u00028\u0016X\u0096\u0005\u00a2\u0006\u0008\u001a\u0006\u0008\u00de\u0001\u0010\u00c2\u0002R\u001a\u0010\u00c6\u0002\u001a\u0005\u0018\u00010\u00c4\u00028\u0016X\u0096\u0005\u00a2\u0006\u0008\u001a\u0006\u0008\u00cb\u0001\u0010\u00c5\u0002\u00a8\u0006\u00c9\u0002"
    }
    d2 = {
        "Lteam/opay/core/card/CardViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Lteam/opay/core/api/e;",
        "Lteam/opay/core/card/CardDataRepository;",
        "dataRepository",
        "sessionProvider",
        "Lteam/opay/pay/account/verify/VerifyRepository;",
        "repository",
        "Landroid/app/Application;",
        "app",
        "<init>",
        "(Lteam/opay/core/card/CardDataRepository;Lteam/opay/core/api/e;Lteam/opay/pay/account/verify/VerifyRepository;Landroid/app/Application;)V",
        "",
        "applyStatus",
        "applySubStatus",
        "c1",
        "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;",
        "Lteam/opay/core/card/CardDataDetailRsp;",
        "data",
        "cardType",
        "Ljava/util/ArrayList;",
        "Lteam/opay/core/card/CardDetailsData;",
        "Lkotlin/collections/ArrayList;",
        "z0",
        "(Lteam/opay/core/card/CardDataDetailRsp;Ljava/lang/String;)Ljava/util/ArrayList;",
        "Lteam/opay/core/card/PhysicalCardData;",
        "originData",
        "Lteam/opay/core/card/CardPageData;",
        "P1",
        "(Lteam/opay/core/card/PhysicalCardData;)Lteam/opay/core/card/CardPageData;",
        "Lkotlin/Pair;",
        "",
        "Lteam/opay/core/card/MultiDataItemEntry;",
        "w1",
        "(Lteam/opay/core/card/PhysicalCardData;)Lkotlin/Pair;",
        "p1",
        "i1",
        "(Lteam/opay/core/card/PhysicalCardData;)Ljava/util/ArrayList;",
        "Lteam/opay/core/card/CardNotAppliedContentDto;",
        "noApplyType",
        "cardClassify",
        "b1",
        "(Lteam/opay/core/card/CardNotAppliedContentDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;",
        "Lteam/opay/core/card/IntroduceContextDto;",
        "a1",
        "(Ljava/util/List;Lteam/opay/core/card/PhysicalCardData;)Ljava/util/List;",
        "Z0",
        "(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;",
        "k1",
        "q1",
        "r1",
        "Lteam/opay/core/card/CardPageTipsData;",
        "cardTipsData",
        "R0",
        "(Lteam/opay/core/card/PhysicalCardData;Lteam/opay/core/card/CardPageTipsData;)Ljava/util/List;",
        "t1",
        "j1",
        "(Lteam/opay/core/card/PhysicalCardData;)Ljava/util/List;",
        "Lteam/opay/core/card/CardPopupFrequency;",
        "",
        "currentCount",
        "",
        "currentTime",
        "Lkotlin/Function0;",
        "",
        "callback",
        "",
        "b2",
        "(Lteam/opay/core/card/CardPopupFrequency;IJLkotlin/jvm/functions/Function0;)Z",
        "v1",
        "l1",
        "n1",
        "o1",
        "g1",
        "r0",
        "s0",
        "size",
        "X",
        "(I)Ljava/util/List;",
        "Lteam/opay/core/card/PhysicalCardNativeActivated;",
        "Lteam/opay/core/card/CardNumberItemData;",
        "t0",
        "(Lteam/opay/core/card/PhysicalCardNativeActivated;)Lteam/opay/core/card/CardNumberItemData;",
        "Lteam/opay/core/card/CardFaceDto;",
        "blocked",
        "d1",
        "(Lteam/opay/core/card/CardFaceDto;ZLjava/lang/String;)Lteam/opay/core/card/CardPageTipsData;",
        "u0",
        "(Lteam/opay/core/card/CardFaceDto;Z)Ljava/lang/String;",
        "Lteam/opay/core/card/ButtonDto;",
        "type",
        "Y0",
        "(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;",
        "id",
        "list",
        "P0",
        "(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;",
        "Q1",
        "C1",
        "A1",
        "x1",
        "B1",
        "y1",
        "Lteam/opay/odialog/net/ADListResponse;",
        "Lteam/opay/core/api/CardHomePagePopUpDtoListItem;",
        "h0",
        "(Lteam/opay/odialog/net/ADListResponse;)Lkotlin/Pair;",
        "Z1",
        "(Lteam/opay/core/api/CardHomePagePopUpDtoListItem;)Z",
        "classify",
        "Lag8;",
        "lifecycleOwner",
        "W0",
        "(Ljava/lang/String;Lag8;)V",
        "I1",
        "(Lag8;)V",
        "showRate",
        "a2",
        "(ILjava/lang/String;)Z",
        "Landroidx/fragment/app/Fragment;",
        "L1",
        "(Landroidx/fragment/app/Fragment;)V",
        "Z",
        "Lteam/opay/core/api/CardDetailReq;",
        "req",
        "d2",
        "(Lag8;Lteam/opay/core/api/CardDetailReq;)V",
        "cardDetailReq",
        "D1",
        "Lteam/opay/core/card/PhysicalRequestNowReq;",
        "physicalRequestNowReq",
        "jumpUrl",
        "F1",
        "(Lag8;Lteam/opay/core/card/PhysicalRequestNowReq;Ljava/lang/String;)V",
        "Lteam/opay/core/card/VirtualRequestNowReq;",
        "virtualRequestNowReq",
        "f2",
        "(Lag8;Lteam/opay/core/card/VirtualRequestNowReq;Ljava/lang/String;)V",
        "url",
        "key",
        "value",
        "N1",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;",
        "cardClass",
        "securityId",
        "valChainId",
        "refreshToken",
        "flag",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/Resource;",
        "d0",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroidx/lifecycle/LiveData;",
        "H1",
        "i0",
        "applyNo",
        "Lkotlin/Function1;",
        "f0",
        "(Ljava/lang/String;Lag8;Lkotlin/jvm/functions/Function1;)V",
        "b",
        "Lteam/opay/core/card/CardDataRepository;",
        "c",
        "Lteam/opay/core/api/e;",
        "d",
        "Lteam/opay/pay/account/verify/VerifyRepository;",
        "e",
        "B0",
        "()Z",
        "V1",
        "(Z)V",
        "needRefresh",
        "Landroidx/lifecycle/MutableLiveData;",
        "f",
        "Landroidx/lifecycle/MutableLiveData;",
        "C0",
        "()Landroidx/lifecycle/MutableLiveData;",
        "needRefreshEvent",
        "Lteam/opay/core/card/CardResultData;",
        "g",
        "F0",
        "onDataLoadSuccess",
        "Lkotlin/Triple;",
        "h",
        "E0",
        "onDataLoadError",
        "i",
        "getOnDataLoading",
        "onDataLoading",
        "j",
        "Lid8;",
        "L0",
        "requestDetailsEvent",
        "k",
        "Ljava/lang/String;",
        "H0",
        "()Ljava/lang/String;",
        "setPhyClassify",
        "(Ljava/lang/String;)V",
        "phyClassify",
        "l",
        "S0",
        "setVirClassify",
        "virClassify",
        "Lteam/opay/core/card/CardActiviteDialogData;",
        "m",
        "Lteam/opay/core/card/CardActiviteDialogData;",
        "G0",
        "()Lteam/opay/core/card/CardActiviteDialogData;",
        "W1",
        "(Lteam/opay/core/card/CardActiviteDialogData;)V",
        "phyCardWaitActivated",
        "n",
        "m0",
        "R1",
        "cardBlockedEvent",
        "o",
        "Lteam/opay/core/card/CardPageTipsData;",
        "v0",
        "()Lteam/opay/core/card/CardPageTipsData;",
        "S1",
        "(Lteam/opay/core/card/CardPageTipsData;)V",
        "cardUnInEvent",
        "Lteam/opay/core/settings/NoClearStorage;",
        "p",
        "Lteam/opay/core/settings/NoClearStorage;",
        "Q0",
        "()Lteam/opay/core/settings/NoClearStorage;",
        "storage",
        "",
        "q",
        "q0",
        "()Ljava/util/List;",
        "cardFragmentDatas",
        "r",
        "D0",
        "notifySetData",
        "s",
        "N0",
        "showDialogEvent",
        "Lxe9;",
        "t",
        "k0",
        "()Lxe9;",
        "adDialogFlow",
        "u",
        "A0",
        "loadingEvent",
        "Lteam/opay/core/card/RequestNowEventData;",
        "v",
        "J0",
        "physicalRequestNowEvent",
        "w",
        "U0",
        "virtualRequestNowEvent",
        "x",
        "w0",
        "cardVirtualDataDetailEvent",
        "y",
        "o0",
        "cardDataDetailEvent",
        "Lteam/opay/core/card/CardConfirmCloseEventData;",
        "z",
        "n0",
        "cardConfirmCloseEvent",
        "A",
        "getToken",
        "token",
        "B",
        "x0",
        "T1",
        "clickedFromUnBlocked",
        "",
        "C",
        "getWebUrl",
        "()Ljava/lang/Object;",
        "webUrl",
        "Lteam/opay/core/card/CardExpend;",
        "D",
        "getOnDetailExpend",
        "onDetailExpend",
        "E",
        "I0",
        "setPhyViewCardPinUrl",
        "phyViewCardPinUrl",
        "F",
        "T0",
        "setVirViewCardPinUrl",
        "virViewCardPinUrl",
        "G",
        "y0",
        "U1",
        "currentCardType",
        "Ldy1;",
        "H",
        "l0",
        "()Ldy1;",
        "cardApi",
        "I",
        "M0",
        "X1",
        "selectedCardDesignId",
        "J",
        "p0",
        "cardDialogEvent",
        "Lteam/opay/core/api/CardHoldingTransaction;",
        "K",
        "Lteam/opay/core/api/CardHoldingTransaction;",
        "O0",
        "()Lteam/opay/core/api/CardHoldingTransaction;",
        "Y1",
        "(Lteam/opay/core/api/CardHoldingTransaction;)V",
        "showHoldingTransactionDialog",
        "L",
        "V0",
        "withHoldingTransactionLabelResult",
        "Lteam/opay/core/api/CardDialogData;",
        "M",
        "K0",
        "queryHomePagePopUpListResult",
        "Lteam/opay/core/api/Country;",
        "()Lteam/opay/core/api/Country;",
        "country",
        "Lteam/opay/core/api/GraphQL$Currency;",
        "()Lteam/opay/core/api/GraphQL$Currency;",
        "currency",
        "Lteam/opay/core/api/GraphQL$User;",
        "()Lteam/opay/core/api/GraphQL$User;",
        "user",
        "N",
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
.field public static final N:Lteam/opay/core/card/CardViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final A:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public B:Z

.field public final C:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final D:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/core/card/CardExpend;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public E:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public F:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public G:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final H:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public I:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final J:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public K:Lteam/opay/core/api/CardHoldingTransaction;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final L:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final M:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lteam/opay/core/card/CardDataRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lteam/opay/core/api/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lteam/opay/pay/account/verify/VerifyRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Z

.field public final f:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/core/card/CardResultData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Triple<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public l:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public m:Lteam/opay/core/card/CardActiviteDialogData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public n:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public o:Lteam/opay/core/card/CardPageTipsData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final p:Lteam/opay/core/settings/NoClearStorage;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final q:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final r:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final s:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final t:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final u:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final v:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/core/card/RequestNowEventData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final w:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/core/card/RequestNowEventData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final x:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lteam/opay/core/card/CardDetailsData;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final y:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lteam/opay/core/card/CardDetailsData;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final z:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/core/card/CardConfirmCloseEventData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/core/card/CardViewModel$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/core/card/CardViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/core/card/CardViewModel;->N:Lteam/opay/core/card/CardViewModel$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lteam/opay/core/card/CardDataRepository;Lteam/opay/core/api/e;Lteam/opay/pay/account/verify/VerifyRepository;Landroid/app/Application;)V
    .locals 1
    .param p1    # Lteam/opay/core/card/CardDataRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/api/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/pay/account/verify/VerifyRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "dataRepository"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "sessionProvider"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "repository"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "app"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p4}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lteam/opay/core/card/CardViewModel;->b:Lteam/opay/core/card/CardDataRepository;

    .line 25
    .line 26
    iput-object p2, p0, Lteam/opay/core/card/CardViewModel;->c:Lteam/opay/core/api/e;

    .line 27
    .line 28
    iput-object p3, p0, Lteam/opay/core/card/CardViewModel;->d:Lteam/opay/pay/account/verify/VerifyRepository;

    .line 29
    .line 30
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lteam/opay/core/card/CardViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 36
    .line 37
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 38
    .line 39
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lteam/opay/core/card/CardViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 43
    .line 44
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 45
    .line 46
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lteam/opay/core/card/CardViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    .line 50
    .line 51
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 52
    .line 53
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Lteam/opay/core/card/CardViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    .line 57
    .line 58
    new-instance p1, Ld12;

    .line 59
    .line 60
    invoke-direct {p1}, Ld12;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iput-object p1, p0, Lteam/opay/core/card/CardViewModel;->j:Lid8;

    .line 68
    .line 69
    new-instance p1, Lteam/opay/core/settings/NoClearStorage;

    .line 70
    .line 71
    invoke-static {}, Ljmf;->i()Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object p3

    .line 75
    invoke-direct {p1, p3}, Lteam/opay/core/settings/NoClearStorage;-><init>(Landroid/content/Context;)V

    .line 76
    .line 77
    .line 78
    iput-object p1, p0, Lteam/opay/core/card/CardViewModel;->p:Lteam/opay/core/settings/NoClearStorage;

    .line 79
    .line 80
    new-instance p1, Le12;

    .line 81
    .line 82
    invoke-direct {p1}, Le12;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iput-object p1, p0, Lteam/opay/core/card/CardViewModel;->q:Lid8;

    .line 90
    .line 91
    new-instance p1, Lf12;

    .line 92
    .line 93
    invoke-direct {p1}, Lf12;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    iput-object p1, p0, Lteam/opay/core/card/CardViewModel;->r:Lid8;

    .line 101
    .line 102
    new-instance p1, Lg12;

    .line 103
    .line 104
    invoke-direct {p1}, Lg12;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    iput-object p1, p0, Lteam/opay/core/card/CardViewModel;->s:Lid8;

    .line 112
    .line 113
    new-instance p1, Lh12;

    .line 114
    .line 115
    invoke-direct {p1}, Lh12;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    iput-object p1, p0, Lteam/opay/core/card/CardViewModel;->t:Lid8;

    .line 123
    .line 124
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 125
    .line 126
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 127
    .line 128
    .line 129
    iput-object p1, p0, Lteam/opay/core/card/CardViewModel;->u:Landroidx/lifecycle/MutableLiveData;

    .line 130
    .line 131
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 132
    .line 133
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 134
    .line 135
    .line 136
    iput-object p1, p0, Lteam/opay/core/card/CardViewModel;->v:Landroidx/lifecycle/MutableLiveData;

    .line 137
    .line 138
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 139
    .line 140
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 141
    .line 142
    .line 143
    iput-object p1, p0, Lteam/opay/core/card/CardViewModel;->w:Landroidx/lifecycle/MutableLiveData;

    .line 144
    .line 145
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 146
    .line 147
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 148
    .line 149
    .line 150
    iput-object p1, p0, Lteam/opay/core/card/CardViewModel;->x:Landroidx/lifecycle/MutableLiveData;

    .line 151
    .line 152
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 153
    .line 154
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 155
    .line 156
    .line 157
    iput-object p1, p0, Lteam/opay/core/card/CardViewModel;->y:Landroidx/lifecycle/MutableLiveData;

    .line 158
    .line 159
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 160
    .line 161
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 162
    .line 163
    .line 164
    iput-object p1, p0, Lteam/opay/core/card/CardViewModel;->z:Landroidx/lifecycle/MutableLiveData;

    .line 165
    .line 166
    invoke-interface {p2}, Lteam/opay/core/api/e;->m()Lteam/opay/core/api/GraphQL$User;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    if-eqz p1, :cond_0

    .line 171
    .line 172
    invoke-virtual {p1}, Lteam/opay/core/api/GraphQL$User;->k()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    goto :goto_0

    .line 177
    :cond_0
    const/4 p1, 0x0

    .line 178
    :goto_0
    iput-object p1, p0, Lteam/opay/core/card/CardViewModel;->A:Ljava/lang/String;

    .line 179
    .line 180
    new-instance p1, Li12;

    .line 181
    .line 182
    invoke-direct {p1}, Li12;-><init>()V

    .line 183
    .line 184
    .line 185
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    iput-object p1, p0, Lteam/opay/core/card/CardViewModel;->C:Lid8;

    .line 190
    .line 191
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 192
    .line 193
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 194
    .line 195
    .line 196
    iput-object p1, p0, Lteam/opay/core/card/CardViewModel;->D:Landroidx/lifecycle/MutableLiveData;

    .line 197
    .line 198
    new-instance p1, Lj12;

    .line 199
    .line 200
    invoke-direct {p1, p4}, Lj12;-><init>(Landroid/app/Application;)V

    .line 201
    .line 202
    .line 203
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    iput-object p1, p0, Lteam/opay/core/card/CardViewModel;->H:Lid8;

    .line 208
    .line 209
    new-instance p1, Lk12;

    .line 210
    .line 211
    invoke-direct {p1}, Lk12;-><init>()V

    .line 212
    .line 213
    .line 214
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    iput-object p1, p0, Lteam/opay/core/card/CardViewModel;->J:Lid8;

    .line 219
    .line 220
    new-instance p1, Ln02;

    .line 221
    .line 222
    invoke-direct {p1}, Ln02;-><init>()V

    .line 223
    .line 224
    .line 225
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    iput-object p1, p0, Lteam/opay/core/card/CardViewModel;->L:Lid8;

    .line 230
    .line 231
    new-instance p1, Lo02;

    .line 232
    .line 233
    invoke-direct {p1}, Lo02;-><init>()V

    .line 234
    .line 235
    .line 236
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    iput-object p1, p0, Lteam/opay/core/card/CardViewModel;->M:Lid8;

    .line 241
    .line 242
    return-void
.end method

.method public static synthetic A(Lteam/opay/core/card/CardViewModel;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/core/card/CardViewModel;->s1(Lteam/opay/core/card/CardViewModel;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B(Lkotlin/jvm/functions/Function1;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/card/CardViewModel;->g0(Lkotlin/jvm/functions/Function1;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/core/card/CardViewModel;->h2()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic D(Lteam/opay/core/card/CardViewModel;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/core/card/CardViewModel;->u1(Lteam/opay/core/card/CardViewModel;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic E(Lteam/opay/core/card/CardViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/card/CardViewModel;->M1(Lteam/opay/core/card/CardViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final E1(Lteam/opay/core/card/CardViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v1, v0

    .line 10
    :goto_0
    if-nez v1, :cond_1

    .line 11
    .line 12
    const/4 v1, -0x1

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    sget-object v2, Lteam/opay/core/card/CardViewModel$a;->a:[I

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    aget v1, v2, v1

    .line 21
    .line 22
    :goto_1
    const/4 v2, 0x1

    .line 23
    if-eq v1, v2, :cond_5

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    if-eq v1, v2, :cond_4

    .line 27
    .line 28
    iget-object p0, p0, Lteam/opay/core/card/CardViewModel;->u:Landroidx/lifecycle/MutableLiveData;

    .line 29
    .line 30
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    sget-object p0, Lteam/opay/pay/android/ToastUtils;->b:Lteam/opay/pay/android/ToastUtils$Companion;

    .line 36
    .line 37
    invoke-virtual {p0}, Lteam/opay/pay/android/ToastUtils$Companion;->a()Lteam/opay/pay/android/ToastUtils;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    move-object p1, v0

    .line 49
    :goto_2
    if-nez p1, :cond_3

    .line 50
    .line 51
    const-string p1, ""

    .line 52
    .line 53
    :cond_3
    invoke-static {p0, p1, v0, v2, v0}, Lteam/opay/pay/android/ToastUtils;->h(Lteam/opay/pay/android/ToastUtils;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_4
    iget-object p0, p0, Lteam/opay/core/card/CardViewModel;->u:Landroidx/lifecycle/MutableLiveData;

    .line 58
    .line 59
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_5
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->u:Landroidx/lifecycle/MutableLiveData;

    .line 66
    .line 67
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->y:Landroidx/lifecycle/MutableLiveData;

    .line 73
    .line 74
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Lteam/opay/core/card/CardDataDetailRsp;

    .line 79
    .line 80
    const-string v1, "PHYSICAL"

    .line 81
    .line 82
    invoke-virtual {p0, p1, v1}, Lteam/opay/core/card/CardViewModel;->z0(Lteam/opay/core/card/CardDataDetailRsp;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {v0, p0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 90
    .line 91
    return-object p0
.end method

.method public static synthetic F(Lteam/opay/core/card/CardViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/card/CardViewModel;->X0(Lteam/opay/core/card/CardViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic G()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/core/card/CardViewModel;->c2()Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final G1(Lteam/opay/core/card/CardViewModel;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 7

    .line 1
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lteam/opay/core/card/CardViewModel$a;->a:[I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    aget v0, v1, v0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq v0, v1, :cond_3

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    if-eq v0, v1, :cond_2

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->u:Landroidx/lifecycle/MutableLiveData;

    .line 23
    .line 24
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lteam/opay/core/card/CardViewModel;->v:Landroidx/lifecycle/MutableLiveData;

    .line 30
    .line 31
    new-instance v0, Lteam/opay/core/card/RequestNowEventData;

    .line 32
    .line 33
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    if-nez p2, :cond_0

    .line 38
    .line 39
    const-string p2, ""

    .line 40
    .line 41
    :cond_0
    const/4 v1, 0x0

    .line 42
    invoke-direct {v0, v1, p1, p2}, Lteam/opay/core/card/RequestNowEventData;-><init>(Lteam/opay/core/card/PhysicalRequestNowData;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 50
    .line 51
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 52
    .line 53
    .line 54
    throw p0

    .line 55
    :cond_2
    iget-object p0, p0, Lteam/opay/core/card/CardViewModel;->u:Landroidx/lifecycle/MutableLiveData;

    .line 56
    .line 57
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->u:Landroidx/lifecycle/MutableLiveData;

    .line 64
    .line 65
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    iget-object p0, p0, Lteam/opay/core/card/CardViewModel;->v:Landroidx/lifecycle/MutableLiveData;

    .line 71
    .line 72
    new-instance v6, Lteam/opay/core/card/RequestNowEventData;

    .line 73
    .line 74
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    move-object v1, p2

    .line 79
    check-cast v1, Lteam/opay/core/card/PhysicalRequestNowData;

    .line 80
    .line 81
    const/4 v4, 0x4

    .line 82
    const/4 v5, 0x0

    .line 83
    const/4 v3, 0x0

    .line 84
    move-object v0, v6

    .line 85
    move-object v2, p1

    .line 86
    invoke-direct/range {v0 .. v5}, Lteam/opay/core/card/RequestNowEventData;-><init>(Lteam/opay/core/card/PhysicalRequestNowData;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v6}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 93
    .line 94
    return-object p0
.end method

.method public static synthetic H()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/core/card/CardViewModel;->f1()Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic I(Lteam/opay/core/card/CardViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/card/CardViewModel;->j0(Lteam/opay/core/card/CardViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic J()Lxe9;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/core/card/CardViewModel;->i2()Lxe9;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final J1(Lteam/opay/core/card/CardViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->f()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/core/card/CardViewModel;->K0()Lxe9;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-interface {p0, p1}, Lxe9;->a(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0
.end method

.method public static synthetic K(Lteam/opay/core/card/CardViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/card/CardViewModel;->J1(Lteam/opay/core/card/CardViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final K1()Lxe9;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x5

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    invoke-static {v2, v3, v0, v1, v0}, Laod;->b(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lxe9;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static synthetic L(Lteam/opay/core/card/CardViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/card/CardViewModel;->a0(Lteam/opay/core/card/CardViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic M(Lteam/opay/core/card/CardViewModel;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/core/card/CardViewModel;->G1(Lteam/opay/core/card/CardViewModel;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final M1(Lteam/opay/core/card/CardViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    iput-boolean v3, v0, Lteam/opay/core/card/CardViewModel;->B:Z

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v5, v4

    .line 17
    :goto_0
    const/4 v6, -0x1

    .line 18
    if-nez v5, :cond_1

    .line 19
    .line 20
    const/4 v5, -0x1

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    sget-object v7, Lteam/opay/core/card/CardViewModel$a;->a:[I

    .line 23
    .line 24
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    aget v5, v7, v5

    .line 29
    .line 30
    :goto_1
    const-string v7, ""

    .line 31
    .line 32
    if-eq v5, v2, :cond_8

    .line 33
    .line 34
    if-eq v5, v1, :cond_7

    .line 35
    .line 36
    iget-object v0, v0, Lteam/opay/core/card/CardViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    .line 37
    .line 38
    new-instance v1, Lkotlin/Triple;

    .line 39
    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->e()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    move-object v2, v4

    .line 52
    :goto_2
    if-eqz p1, :cond_3

    .line 53
    .line 54
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    goto :goto_3

    .line 59
    :cond_3
    move-object v3, v4

    .line 60
    :goto_3
    if-nez v3, :cond_4

    .line 61
    .line 62
    move-object v3, v7

    .line 63
    :cond_4
    if-eqz p1, :cond_5

    .line 64
    .line 65
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    :cond_5
    if-nez v4, :cond_6

    .line 70
    .line 71
    goto :goto_4

    .line 72
    :cond_6
    move-object v7, v4

    .line 73
    :goto_4
    invoke-direct {v1, v2, v3, v7}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    goto/16 :goto_10

    .line 80
    .line 81
    :cond_7
    iget-object v0, v0, Lteam/opay/core/card/CardViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    .line 82
    .line 83
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    goto/16 :goto_10

    .line 89
    .line 90
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    check-cast v5, Lteam/opay/core/card/CardDataDetail;

    .line 95
    .line 96
    if-eqz v5, :cond_9

    .line 97
    .line 98
    invoke-virtual {v5}, Lteam/opay/core/card/CardDataDetail;->a()Lteam/opay/core/card/PhysicalCardData;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    goto :goto_5

    .line 103
    :cond_9
    move-object v5, v4

    .line 104
    :goto_5
    if-eqz v5, :cond_1f

    .line 105
    .line 106
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    check-cast v5, Lteam/opay/core/card/CardDataDetail;

    .line 111
    .line 112
    invoke-virtual {v5}, Lteam/opay/core/card/CardDataDetail;->c()Lteam/opay/core/card/PhysicalCardData;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    if-eqz v5, :cond_1f

    .line 117
    .line 118
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    check-cast v5, Lteam/opay/core/card/CardDataDetail;

    .line 123
    .line 124
    invoke-virtual {v5}, Lteam/opay/core/card/CardDataDetail;->b()Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    if-nez v5, :cond_a

    .line 129
    .line 130
    goto/16 :goto_f

    .line 131
    .line 132
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    check-cast v5, Lteam/opay/core/card/CardDataDetail;

    .line 137
    .line 138
    invoke-virtual {v5}, Lteam/opay/core/card/CardDataDetail;->a()Lteam/opay/core/card/PhysicalCardData;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    invoke-virtual {v0, v5}, Lteam/opay/core/card/CardViewModel;->P1(Lteam/opay/core/card/PhysicalCardData;)Lteam/opay/core/card/CardPageData;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    check-cast v6, Lteam/opay/core/card/CardDataDetail;

    .line 151
    .line 152
    invoke-virtual {v6}, Lteam/opay/core/card/CardDataDetail;->c()Lteam/opay/core/card/PhysicalCardData;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    invoke-virtual {v0, v6}, Lteam/opay/core/card/CardViewModel;->Q1(Lteam/opay/core/card/PhysicalCardData;)Lteam/opay/core/card/CardPageData;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 161
    .line 162
    .line 163
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 164
    .line 165
    .line 166
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v8

    .line 170
    check-cast v8, Lteam/opay/core/card/CardDataDetail;

    .line 171
    .line 172
    invoke-virtual {v8}, Lteam/opay/core/card/CardDataDetail;->b()Ljava/lang/Integer;

    .line 173
    .line 174
    .line 175
    move-result-object v8

    .line 176
    if-nez v8, :cond_b

    .line 177
    .line 178
    goto :goto_6

    .line 179
    :cond_b
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 180
    .line 181
    .line 182
    move-result v8

    .line 183
    if-nez v8, :cond_c

    .line 184
    .line 185
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v8

    .line 189
    check-cast v8, Lteam/opay/core/card/CardDataDetail;

    .line 190
    .line 191
    invoke-virtual {v8}, Lteam/opay/core/card/CardDataDetail;->a()Lteam/opay/core/card/PhysicalCardData;

    .line 192
    .line 193
    .line 194
    move-result-object v8

    .line 195
    invoke-virtual {v8}, Lteam/opay/core/card/PhysicalCardData;->j()Lteam/opay/core/card/TabDto;

    .line 196
    .line 197
    .line 198
    move-result-object v8

    .line 199
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v9

    .line 203
    check-cast v9, Lteam/opay/core/card/CardDataDetail;

    .line 204
    .line 205
    invoke-virtual {v9}, Lteam/opay/core/card/CardDataDetail;->c()Lteam/opay/core/card/PhysicalCardData;

    .line 206
    .line 207
    .line 208
    move-result-object v9

    .line 209
    invoke-virtual {v9}, Lteam/opay/core/card/PhysicalCardData;->j()Lteam/opay/core/card/TabDto;

    .line 210
    .line 211
    .line 212
    move-result-object v9

    .line 213
    new-array v10, v1, [Lteam/opay/core/card/TabDto;

    .line 214
    .line 215
    aput-object v8, v10, v3

    .line 216
    .line 217
    aput-object v9, v10, v2

    .line 218
    .line 219
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->n([Ljava/lang/Object;)Ljava/util/List;

    .line 220
    .line 221
    .line 222
    move-result-object v8

    .line 223
    new-array v1, v1, [Lteam/opay/core/card/CardPageData;

    .line 224
    .line 225
    aput-object v5, v1, v3

    .line 226
    .line 227
    aput-object v6, v1, v2

    .line 228
    .line 229
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->n([Ljava/lang/Object;)Ljava/util/List;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    goto :goto_7

    .line 234
    :cond_c
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v8

    .line 238
    check-cast v8, Lteam/opay/core/card/CardDataDetail;

    .line 239
    .line 240
    invoke-virtual {v8}, Lteam/opay/core/card/CardDataDetail;->c()Lteam/opay/core/card/PhysicalCardData;

    .line 241
    .line 242
    .line 243
    move-result-object v8

    .line 244
    invoke-virtual {v8}, Lteam/opay/core/card/PhysicalCardData;->j()Lteam/opay/core/card/TabDto;

    .line 245
    .line 246
    .line 247
    move-result-object v8

    .line 248
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v9

    .line 252
    check-cast v9, Lteam/opay/core/card/CardDataDetail;

    .line 253
    .line 254
    invoke-virtual {v9}, Lteam/opay/core/card/CardDataDetail;->a()Lteam/opay/core/card/PhysicalCardData;

    .line 255
    .line 256
    .line 257
    move-result-object v9

    .line 258
    invoke-virtual {v9}, Lteam/opay/core/card/PhysicalCardData;->j()Lteam/opay/core/card/TabDto;

    .line 259
    .line 260
    .line 261
    move-result-object v9

    .line 262
    new-array v10, v1, [Lteam/opay/core/card/TabDto;

    .line 263
    .line 264
    aput-object v8, v10, v3

    .line 265
    .line 266
    aput-object v9, v10, v2

    .line 267
    .line 268
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->n([Ljava/lang/Object;)Ljava/util/List;

    .line 269
    .line 270
    .line 271
    move-result-object v8

    .line 272
    new-array v1, v1, [Lteam/opay/core/card/CardPageData;

    .line 273
    .line 274
    aput-object v6, v1, v3

    .line 275
    .line 276
    aput-object v5, v1, v2

    .line 277
    .line 278
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->n([Ljava/lang/Object;)Ljava/util/List;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    :goto_7
    invoke-virtual {v5}, Lteam/opay/core/card/CardPageData;->getDataList()Ljava/util/List;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    if-eqz v2, :cond_f

    .line 287
    .line 288
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 293
    .line 294
    .line 295
    move-result v3

    .line 296
    if-eqz v3, :cond_e

    .line 297
    .line 298
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    move-object v6, v3

    .line 303
    check-cast v6, Lteam/opay/core/card/MultiDataItemEntry;

    .line 304
    .line 305
    invoke-virtual {v6}, Lteam/opay/core/card/MultiDataItemEntry;->getType()I

    .line 306
    .line 307
    .line 308
    move-result v6

    .line 309
    const/16 v9, 0xc

    .line 310
    .line 311
    if-ne v6, v9, :cond_d

    .line 312
    .line 313
    goto :goto_8

    .line 314
    :cond_e
    move-object v3, v4

    .line 315
    :goto_8
    check-cast v3, Lteam/opay/core/card/MultiDataItemEntry;

    .line 316
    .line 317
    goto :goto_9

    .line 318
    :cond_f
    move-object v3, v4

    .line 319
    :goto_9
    const/16 v2, 0xa

    .line 320
    .line 321
    if-eqz v3, :cond_11

    .line 322
    .line 323
    :cond_10
    move-object v6, v4

    .line 324
    goto/16 :goto_c

    .line 325
    .line 326
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v3

    .line 330
    check-cast v3, Lteam/opay/core/card/CardDataDetail;

    .line 331
    .line 332
    invoke-virtual {v3}, Lteam/opay/core/card/CardDataDetail;->a()Lteam/opay/core/card/PhysicalCardData;

    .line 333
    .line 334
    .line 335
    move-result-object v3

    .line 336
    invoke-virtual {v3}, Lteam/opay/core/card/PhysicalCardData;->f()Ljava/util/List;

    .line 337
    .line 338
    .line 339
    move-result-object v3

    .line 340
    if-eqz v3, :cond_10

    .line 341
    .line 342
    new-instance v6, Ljava/util/ArrayList;

    .line 343
    .line 344
    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 345
    .line 346
    .line 347
    move-result v9

    .line 348
    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 349
    .line 350
    .line 351
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 352
    .line 353
    .line 354
    move-result-object v3

    .line 355
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 356
    .line 357
    .line 358
    move-result v9

    .line 359
    if-eqz v9, :cond_17

    .line 360
    .line 361
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v9

    .line 365
    check-cast v9, Lteam/opay/core/card/CardHomePageDtoListItem;

    .line 366
    .line 367
    new-instance v10, Lteam/opay/core/card/NewPhysicalCardData;

    .line 368
    .line 369
    invoke-virtual {v9}, Lteam/opay/core/card/CardHomePageDtoListItem;->f()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v11

    .line 373
    invoke-virtual {v9}, Lteam/opay/core/card/CardHomePageDtoListItem;->b()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v12

    .line 377
    if-nez v12, :cond_12

    .line 378
    .line 379
    move-object v12, v7

    .line 380
    :cond_12
    invoke-virtual {v9}, Lteam/opay/core/card/CardHomePageDtoListItem;->c()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v13

    .line 384
    if-nez v13, :cond_13

    .line 385
    .line 386
    move-object v13, v7

    .line 387
    :cond_13
    invoke-virtual {v0, v12, v13}, Lteam/opay/core/card/CardViewModel;->c1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v12

    .line 391
    if-nez v12, :cond_14

    .line 392
    .line 393
    invoke-virtual {v5}, Lteam/opay/core/card/CardPageData;->getStatus()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v12

    .line 397
    :cond_14
    move-object/from16 v19, v12

    .line 398
    .line 399
    invoke-virtual {v9}, Lteam/opay/core/card/CardHomePageDtoListItem;->k()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v21

    .line 403
    invoke-virtual {v9}, Lteam/opay/core/card/CardHomePageDtoListItem;->i()Ljava/util/ArrayList;

    .line 404
    .line 405
    .line 406
    move-result-object v12

    .line 407
    if-eqz v12, :cond_16

    .line 408
    .line 409
    invoke-virtual {v9}, Lteam/opay/core/card/CardHomePageDtoListItem;->g()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v13

    .line 413
    if-nez v13, :cond_15

    .line 414
    .line 415
    move-object v13, v7

    .line 416
    :cond_15
    const-string v14, "PHYSICAL"

    .line 417
    .line 418
    invoke-virtual {v0, v12, v14, v13}, Lteam/opay/core/card/CardViewModel;->Z0(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 419
    .line 420
    .line 421
    move-result-object v12

    .line 422
    move-object/from16 v20, v12

    .line 423
    .line 424
    goto :goto_b

    .line 425
    :cond_16
    move-object/from16 v20, v4

    .line 426
    .line 427
    :goto_b
    invoke-virtual {v9}, Lteam/opay/core/card/CardHomePageDtoListItem;->a()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v18

    .line 431
    invoke-virtual {v9}, Lteam/opay/core/card/CardHomePageDtoListItem;->d()Ljava/util/ArrayList;

    .line 432
    .line 433
    .line 434
    move-result-object v22

    .line 435
    invoke-virtual {v9}, Lteam/opay/core/card/CardHomePageDtoListItem;->g()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v15

    .line 439
    invoke-virtual {v9}, Lteam/opay/core/card/CardHomePageDtoListItem;->j()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v24

    .line 443
    invoke-virtual {v9}, Lteam/opay/core/card/CardHomePageDtoListItem;->e()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v17

    .line 447
    invoke-virtual {v9}, Lteam/opay/core/card/CardHomePageDtoListItem;->m()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v26

    .line 451
    invoke-virtual {v9}, Lteam/opay/core/card/CardHomePageDtoListItem;->n()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v27

    .line 455
    invoke-virtual {v9}, Lteam/opay/core/card/CardHomePageDtoListItem;->l()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v25

    .line 459
    invoke-virtual {v9}, Lteam/opay/core/card/CardHomePageDtoListItem;->h()Ljava/util/List;

    .line 460
    .line 461
    .line 462
    move-result-object v29

    .line 463
    new-instance v9, Lteam/opay/core/card/CardPageData;

    .line 464
    .line 465
    move-object v13, v9

    .line 466
    const/16 v30, 0x4201

    .line 467
    .line 468
    const/16 v31, 0x0

    .line 469
    .line 470
    const/4 v14, 0x0

    .line 471
    const-string v16, "PHYSICAL"

    .line 472
    .line 473
    const/16 v23, 0x0

    .line 474
    .line 475
    const/16 v28, 0x0

    .line 476
    .line 477
    invoke-direct/range {v13 .. v31}, Lteam/opay/core/card/CardPageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/card/HomePageFloatingWindowDto;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 478
    .line 479
    .line 480
    invoke-direct {v10, v11, v9}, Lteam/opay/core/card/NewPhysicalCardData;-><init>(Ljava/lang/String;Lteam/opay/core/card/CardPageData;)V

    .line 481
    .line 482
    .line 483
    invoke-interface {v6, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 484
    .line 485
    .line 486
    goto/16 :goto_a

    .line 487
    .line 488
    :cond_17
    :goto_c
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v3

    .line 492
    check-cast v3, Lteam/opay/core/card/CardDataDetail;

    .line 493
    .line 494
    invoke-virtual {v3}, Lteam/opay/core/card/CardDataDetail;->c()Lteam/opay/core/card/PhysicalCardData;

    .line 495
    .line 496
    .line 497
    move-result-object v3

    .line 498
    invoke-virtual {v3}, Lteam/opay/core/card/PhysicalCardData;->f()Ljava/util/List;

    .line 499
    .line 500
    .line 501
    move-result-object v3

    .line 502
    if-eqz v3, :cond_1e

    .line 503
    .line 504
    new-instance v9, Ljava/util/ArrayList;

    .line 505
    .line 506
    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 507
    .line 508
    .line 509
    move-result v2

    .line 510
    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 511
    .line 512
    .line 513
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 514
    .line 515
    .line 516
    move-result-object v2

    .line 517
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 518
    .line 519
    .line 520
    move-result v3

    .line 521
    if-eqz v3, :cond_1d

    .line 522
    .line 523
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    move-result-object v3

    .line 527
    check-cast v3, Lteam/opay/core/card/CardHomePageDtoListItem;

    .line 528
    .line 529
    new-instance v10, Lteam/opay/core/card/NewPhysicalCardData;

    .line 530
    .line 531
    invoke-virtual {v3}, Lteam/opay/core/card/CardHomePageDtoListItem;->f()Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v11

    .line 535
    invoke-virtual {v3}, Lteam/opay/core/card/CardHomePageDtoListItem;->b()Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v12

    .line 539
    if-nez v12, :cond_18

    .line 540
    .line 541
    move-object v12, v7

    .line 542
    :cond_18
    invoke-virtual {v3}, Lteam/opay/core/card/CardHomePageDtoListItem;->c()Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v13

    .line 546
    if-nez v13, :cond_19

    .line 547
    .line 548
    move-object v13, v7

    .line 549
    :cond_19
    invoke-virtual {v0, v12, v13}, Lteam/opay/core/card/CardViewModel;->c1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v12

    .line 553
    if-nez v12, :cond_1a

    .line 554
    .line 555
    invoke-virtual {v5}, Lteam/opay/core/card/CardPageData;->getStatus()Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v12

    .line 559
    :cond_1a
    move-object/from16 v19, v12

    .line 560
    .line 561
    invoke-virtual {v3}, Lteam/opay/core/card/CardHomePageDtoListItem;->k()Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v21

    .line 565
    invoke-virtual {v3}, Lteam/opay/core/card/CardHomePageDtoListItem;->i()Ljava/util/ArrayList;

    .line 566
    .line 567
    .line 568
    move-result-object v12

    .line 569
    if-eqz v12, :cond_1c

    .line 570
    .line 571
    invoke-virtual {v3}, Lteam/opay/core/card/CardHomePageDtoListItem;->g()Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v13

    .line 575
    if-nez v13, :cond_1b

    .line 576
    .line 577
    move-object v13, v7

    .line 578
    :cond_1b
    const-string v14, "VIRTUAL"

    .line 579
    .line 580
    invoke-virtual {v0, v12, v14, v13}, Lteam/opay/core/card/CardViewModel;->Z0(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 581
    .line 582
    .line 583
    move-result-object v12

    .line 584
    move-object/from16 v20, v12

    .line 585
    .line 586
    goto :goto_e

    .line 587
    :cond_1c
    move-object/from16 v20, v4

    .line 588
    .line 589
    :goto_e
    invoke-virtual {v3}, Lteam/opay/core/card/CardHomePageDtoListItem;->a()Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object v18

    .line 593
    invoke-virtual {v3}, Lteam/opay/core/card/CardHomePageDtoListItem;->d()Ljava/util/ArrayList;

    .line 594
    .line 595
    .line 596
    move-result-object v22

    .line 597
    invoke-virtual {v3}, Lteam/opay/core/card/CardHomePageDtoListItem;->g()Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    move-result-object v15

    .line 601
    invoke-virtual {v3}, Lteam/opay/core/card/CardHomePageDtoListItem;->j()Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v24

    .line 605
    invoke-virtual {v3}, Lteam/opay/core/card/CardHomePageDtoListItem;->e()Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object v17

    .line 609
    invoke-virtual {v3}, Lteam/opay/core/card/CardHomePageDtoListItem;->m()Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object v26

    .line 613
    invoke-virtual {v3}, Lteam/opay/core/card/CardHomePageDtoListItem;->n()Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v27

    .line 617
    invoke-virtual {v3}, Lteam/opay/core/card/CardHomePageDtoListItem;->l()Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v25

    .line 621
    new-instance v3, Lteam/opay/core/card/CardPageData;

    .line 622
    .line 623
    move-object v13, v3

    .line 624
    const v30, 0xc201

    .line 625
    .line 626
    .line 627
    const/16 v31, 0x0

    .line 628
    .line 629
    const/4 v14, 0x0

    .line 630
    const-string v16, "VIRTUAL"

    .line 631
    .line 632
    const/16 v23, 0x0

    .line 633
    .line 634
    const/16 v28, 0x0

    .line 635
    .line 636
    const/16 v29, 0x0

    .line 637
    .line 638
    invoke-direct/range {v13 .. v31}, Lteam/opay/core/card/CardPageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/card/HomePageFloatingWindowDto;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 639
    .line 640
    .line 641
    invoke-direct {v10, v11, v3}, Lteam/opay/core/card/NewPhysicalCardData;-><init>(Ljava/lang/String;Lteam/opay/core/card/CardPageData;)V

    .line 642
    .line 643
    .line 644
    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 645
    .line 646
    .line 647
    goto/16 :goto_d

    .line 648
    .line 649
    :cond_1d
    move-object v4, v9

    .line 650
    :cond_1e
    iget-object v2, v0, Lteam/opay/core/card/CardViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 651
    .line 652
    new-instance v3, Lteam/opay/core/card/CardResultData;

    .line 653
    .line 654
    invoke-direct {v3, v8, v1, v6, v4}, Lteam/opay/core/card/CardResultData;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 655
    .line 656
    .line 657
    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 658
    .line 659
    .line 660
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/card/CardViewModel;->L0()Landroidx/lifecycle/MutableLiveData;

    .line 661
    .line 662
    .line 663
    move-result-object v1

    .line 664
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->hasObservers()Z

    .line 665
    .line 666
    .line 667
    move-result v1

    .line 668
    if-eqz v1, :cond_20

    .line 669
    .line 670
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/card/CardViewModel;->L0()Landroidx/lifecycle/MutableLiveData;

    .line 671
    .line 672
    .line 673
    move-result-object v0

    .line 674
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 675
    .line 676
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 677
    .line 678
    .line 679
    goto :goto_10

    .line 680
    :cond_1f
    :goto_f
    iget-object v0, v0, Lteam/opay/core/card/CardViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    .line 681
    .line 682
    new-instance v1, Lkotlin/Triple;

    .line 683
    .line 684
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 685
    .line 686
    .line 687
    move-result-object v2

    .line 688
    sget v3, Lteam/opay/pay/R$string;->something_went_wrong_header:I

    .line 689
    .line 690
    invoke-static {v3}, Ljmf;->k(I)Ljava/lang/String;

    .line 691
    .line 692
    .line 693
    move-result-object v3

    .line 694
    const-string v4, "-1"

    .line 695
    .line 696
    invoke-direct {v1, v2, v4, v3}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 697
    .line 698
    .line 699
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 700
    .line 701
    .line 702
    :cond_20
    :goto_10
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 703
    .line 704
    return-object v0
.end method

.method public static synthetic N()Lxe9;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/core/card/CardViewModel;->K1()Lxe9;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic O(Lteam/opay/core/card/CardViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/card/CardViewModel;->E1(Lteam/opay/core/card/CardViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final O1()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static synthetic P()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/core/card/CardViewModel;->O1()Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic Q(Lteam/opay/core/card/CardViewModel;Lteam/opay/odialog/net/ADListResponse;)Lkotlin/Pair;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/core/card/CardViewModel;->h0(Lteam/opay/odialog/net/ADListResponse;)Lkotlin/Pair;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic R(Lteam/opay/core/card/CardViewModel;)Lxe9;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/card/CardViewModel;->k0()Lxe9;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic S(Lteam/opay/core/card/CardViewModel;)Lxe9;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/card/CardViewModel;->K0()Lxe9;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic T(Lteam/opay/core/card/CardViewModel;)Lxe9;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/card/CardViewModel;->V0()Lxe9;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic U(Lteam/opay/core/card/CardViewModel;Lteam/opay/core/api/CardHomePagePopUpDtoListItem;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/core/card/CardViewModel;->Z1(Lteam/opay/core/api/CardHomePagePopUpDtoListItem;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic V(Lteam/opay/core/card/CardViewModel;ILjava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/card/CardViewModel;->a2(ILjava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final W()Lxe9;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x5

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    invoke-static {v2, v3, v0, v1, v0}, Laod;->b(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lxe9;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static final X0(Lteam/opay/core/card/CardViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->f()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/core/card/CardViewModel;->V0()Lxe9;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-interface {p0, p1}, Lxe9;->a(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0
.end method

.method public static final Y(Landroid/app/Application;)Ldy1;
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 2
    .line 3
    const-class v1, Ldy1;

    .line 4
    .line 5
    invoke-virtual {v0, p0, v1}, Lteam/opay/core/api/GraphQL;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ldy1;

    .line 10
    .line 11
    return-object p0
.end method

.method public static final a0(Lteam/opay/core/card/CardViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 9

    .line 1
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lteam/opay/core/card/CardViewModel$a;->a:[I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    aget v0, v1, v0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eq v0, v1, :cond_4

    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    if-eq v0, v1, :cond_3

    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    if-ne v0, v1, :cond_2

    .line 22
    .line 23
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->u:Landroidx/lifecycle/MutableLiveData;

    .line 24
    .line 25
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lteam/opay/core/card/CardViewModel;->z:Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    new-instance v0, Lteam/opay/core/card/CardConfirmCloseEventData;

    .line 33
    .line 34
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-nez v1, :cond_0

    .line 39
    .line 40
    const-string v1, ""

    .line 41
    .line 42
    :cond_0
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    invoke-static {v3}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    :cond_1
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Ljava/lang/Boolean;

    .line 57
    .line 58
    invoke-direct {v0, v1, v2, p1}, Lteam/opay/core/card/CardConfirmCloseEventData;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 66
    .line 67
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 68
    .line 69
    .line 70
    throw p0

    .line 71
    :cond_3
    iget-object p0, p0, Lteam/opay/core/card/CardViewModel;->u:Landroidx/lifecycle/MutableLiveData;

    .line 72
    .line 73
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 74
    .line 75
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_4
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->u:Landroidx/lifecycle/MutableLiveData;

    .line 80
    .line 81
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    iget-object p0, p0, Lteam/opay/core/card/CardViewModel;->z:Landroidx/lifecycle/MutableLiveData;

    .line 87
    .line 88
    new-instance v0, Lteam/opay/core/card/CardConfirmCloseEventData;

    .line 89
    .line 90
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    if-eqz v1, :cond_5

    .line 95
    .line 96
    invoke-static {v1}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    :cond_5
    move-object v5, v2

    .line 101
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    move-object v6, p1

    .line 106
    check-cast v6, Ljava/lang/Boolean;

    .line 107
    .line 108
    const/4 v7, 0x1

    .line 109
    const/4 v8, 0x0

    .line 110
    const/4 v4, 0x0

    .line 111
    move-object v3, v0

    .line 112
    invoke-direct/range {v3 .. v8}, Lteam/opay/core/card/CardConfirmCloseEventData;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 119
    .line 120
    return-object p0
.end method

.method public static final b0()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final c0()Ljava/util/List;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final c2()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static synthetic e0(Lteam/opay/core/card/CardViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Landroidx/lifecycle/LiveData;
    .locals 6

    .line 1
    and-int/lit8 p6, p6, 0x10

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    const/4 p5, 0x1

    .line 6
    const/4 v5, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v5, p5

    .line 9
    :goto_0
    move-object v0, p0

    .line 10
    move-object v1, p1

    .line 11
    move-object v2, p2

    .line 12
    move-object v3, p3

    .line 13
    move-object v4, p4

    .line 14
    invoke-virtual/range {v0 .. v5}, Lteam/opay/core/card/CardViewModel;->d0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroidx/lifecycle/LiveData;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static synthetic e1(Lteam/opay/core/card/CardViewModel;Lteam/opay/core/card/CardFaceDto;ZLjava/lang/String;ILjava/lang/Object;)Lteam/opay/core/card/CardPageTipsData;
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/core/card/CardViewModel;->d1(Lteam/opay/core/card/CardFaceDto;ZLjava/lang/String;)Lteam/opay/core/card/CardPageTipsData;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final e2(Lteam/opay/core/card/CardViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v1, v0

    .line 10
    :goto_0
    if-nez v1, :cond_1

    .line 11
    .line 12
    const/4 v1, -0x1

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    sget-object v2, Lteam/opay/core/card/CardViewModel$a;->a:[I

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    aget v1, v2, v1

    .line 21
    .line 22
    :goto_1
    const/4 v2, 0x1

    .line 23
    if-eq v1, v2, :cond_5

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    if-eq v1, v2, :cond_4

    .line 27
    .line 28
    iget-object p0, p0, Lteam/opay/core/card/CardViewModel;->u:Landroidx/lifecycle/MutableLiveData;

    .line 29
    .line 30
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    sget-object p0, Lteam/opay/pay/android/ToastUtils;->b:Lteam/opay/pay/android/ToastUtils$Companion;

    .line 36
    .line 37
    invoke-virtual {p0}, Lteam/opay/pay/android/ToastUtils$Companion;->a()Lteam/opay/pay/android/ToastUtils;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    move-object p1, v0

    .line 49
    :goto_2
    if-nez p1, :cond_3

    .line 50
    .line 51
    const-string p1, ""

    .line 52
    .line 53
    :cond_3
    invoke-static {p0, p1, v0, v2, v0}, Lteam/opay/pay/android/ToastUtils;->h(Lteam/opay/pay/android/ToastUtils;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_4
    iget-object p0, p0, Lteam/opay/core/card/CardViewModel;->u:Landroidx/lifecycle/MutableLiveData;

    .line 58
    .line 59
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_5
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->u:Landroidx/lifecycle/MutableLiveData;

    .line 66
    .line 67
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->x:Landroidx/lifecycle/MutableLiveData;

    .line 73
    .line 74
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Lteam/opay/core/card/CardDataDetailRsp;

    .line 79
    .line 80
    const-string v1, "VIRTUAL"

    .line 81
    .line 82
    invoke-virtual {p0, p1, v1}, Lteam/opay/core/card/CardViewModel;->z0(Lteam/opay/core/card/CardDataDetailRsp;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {v0, p0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 90
    .line 91
    return-object p0
.end method

.method public static final f1()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final g0(Lkotlin/jvm/functions/Function1;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->i()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ne v1, v0, :cond_0

    .line 9
    .line 10
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 11
    .line 12
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    if-eqz p1, :cond_2

    .line 17
    .line 18
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->c()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-ne v1, v0, :cond_2

    .line 23
    .line 24
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 25
    .line 26
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    sget-object p0, Lteam/opay/pay/android/ToastUtils;->b:Lteam/opay/pay/android/ToastUtils$Companion;

    .line 30
    .line 31
    invoke-virtual {p0}, Lteam/opay/pay/android/ToastUtils$Companion;->a()Lteam/opay/pay/android/ToastUtils;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-nez p1, :cond_1

    .line 40
    .line 41
    const-string p1, ""

    .line 42
    .line 43
    :cond_1
    const/4 v0, 0x2

    .line 44
    const/4 v1, 0x0

    .line 45
    invoke-static {p0, p1, v1, v0, v1}, Lteam/opay/pay/android/ToastUtils;->h(Lteam/opay/pay/android/ToastUtils;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 49
    .line 50
    return-object p0
.end method

.method public static final g2(Lteam/opay/core/card/CardViewModel;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 7

    .line 1
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lteam/opay/core/card/CardViewModel$a;->a:[I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    aget v0, v1, v0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq v0, v1, :cond_3

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    if-eq v0, v1, :cond_2

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->u:Landroidx/lifecycle/MutableLiveData;

    .line 23
    .line 24
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lteam/opay/core/card/CardViewModel;->w:Landroidx/lifecycle/MutableLiveData;

    .line 30
    .line 31
    new-instance v0, Lteam/opay/core/card/RequestNowEventData;

    .line 32
    .line 33
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    if-nez p2, :cond_0

    .line 38
    .line 39
    const-string p2, ""

    .line 40
    .line 41
    :cond_0
    const/4 v1, 0x0

    .line 42
    invoke-direct {v0, v1, p1, p2}, Lteam/opay/core/card/RequestNowEventData;-><init>(Lteam/opay/core/card/PhysicalRequestNowData;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 50
    .line 51
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 52
    .line 53
    .line 54
    throw p0

    .line 55
    :cond_2
    iget-object p0, p0, Lteam/opay/core/card/CardViewModel;->u:Landroidx/lifecycle/MutableLiveData;

    .line 56
    .line 57
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->u:Landroidx/lifecycle/MutableLiveData;

    .line 64
    .line 65
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    iget-object p0, p0, Lteam/opay/core/card/CardViewModel;->w:Landroidx/lifecycle/MutableLiveData;

    .line 71
    .line 72
    new-instance v6, Lteam/opay/core/card/RequestNowEventData;

    .line 73
    .line 74
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    move-object v1, p2

    .line 79
    check-cast v1, Lteam/opay/core/card/PhysicalRequestNowData;

    .line 80
    .line 81
    const/4 v4, 0x4

    .line 82
    const/4 v5, 0x0

    .line 83
    const/4 v3, 0x0

    .line 84
    move-object v0, v6

    .line 85
    move-object v2, p1

    .line 86
    invoke-direct/range {v0 .. v5}, Lteam/opay/core/card/RequestNowEventData;-><init>(Lteam/opay/core/card/PhysicalRequestNowData;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v6}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 93
    .line 94
    return-object p0
.end method

.method public static final h1(Lteam/opay/core/card/CardViewModel;)Lkotlin/Unit;
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->p:Lteam/opay/core/settings/NoClearStorage;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lteam/opay/core/settings/NoClearStorage;->c1(I)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lteam/opay/core/card/CardViewModel;->p:Lteam/opay/core/settings/NoClearStorage;

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    invoke-virtual {p0, v0, v1}, Lteam/opay/core/settings/NoClearStorage;->d1(J)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0
.end method

.method public static final h2()Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "cardWeb"

    .line 8
    .line 9
    const-string v2, ""

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lteam/opay/pay/envconfigapi/ConfigStorage;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public static final i2()Lxe9;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x5

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    invoke-static {v2, v3, v0, v1, v0}, Laod;->b(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lxe9;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static final j0(Lteam/opay/core/card/CardViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v1, v0

    .line 10
    :goto_0
    sget-object v2, Lteam/opay/core/android/arch/Status;->LOADING:Lteam/opay/core/android/arch/Status;

    .line 11
    .line 12
    if-eq v1, v2, :cond_2

    .line 13
    .line 14
    invoke-virtual {p0}, Lteam/opay/core/card/CardViewModel;->k0()Lxe9;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    move-object v0, p1

    .line 25
    check-cast v0, Lteam/opay/odialog/net/ADListResponse;

    .line 26
    .line 27
    :cond_1
    invoke-interface {p0, v0}, Lxe9;->a(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 31
    .line 32
    return-object p0
.end method

.method public static final m1(Lteam/opay/core/card/CardViewModel;)Lkotlin/Unit;
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->p:Lteam/opay/core/settings/NoClearStorage;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lteam/opay/core/settings/NoClearStorage;->H1(I)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lteam/opay/core/card/CardViewModel;->p:Lteam/opay/core/settings/NoClearStorage;

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    invoke-virtual {p0, v0, v1}, Lteam/opay/core/settings/NoClearStorage;->I1(J)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0
.end method

.method public static synthetic r(Lteam/opay/core/card/CardViewModel;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/core/card/CardViewModel;->g2(Lteam/opay/core/card/CardViewModel;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic s(Lteam/opay/core/card/CardViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/card/CardViewModel;->e2(Lteam/opay/core/card/CardViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final s1(Lteam/opay/core/card/CardViewModel;)Lkotlin/Unit;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->p:Lteam/opay/core/settings/NoClearStorage;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-virtual {v0, v1, v2}, Lteam/opay/core/settings/NoClearStorage;->o1(J)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lteam/opay/core/card/CardViewModel;->p:Lteam/opay/core/settings/NoClearStorage;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, Lteam/opay/core/settings/NoClearStorage;->n1(I)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0
.end method

.method public static synthetic t()Lxe9;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/core/card/CardViewModel;->W()Lxe9;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic u(Lteam/opay/core/card/CardViewModel;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/core/card/CardViewModel;->h1(Lteam/opay/core/card/CardViewModel;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final u1(Lteam/opay/core/card/CardViewModel;)Lkotlin/Unit;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->p:Lteam/opay/core/settings/NoClearStorage;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-virtual {v0, v1, v2}, Lteam/opay/core/settings/NoClearStorage;->X1(J)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lteam/opay/core/card/CardViewModel;->p:Lteam/opay/core/settings/NoClearStorage;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, Lteam/opay/core/settings/NoClearStorage;->W1(I)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0
.end method

.method public static synthetic v(Lteam/opay/core/card/CardViewModel;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/core/card/CardViewModel;->m1(Lteam/opay/core/card/CardViewModel;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic w(Landroid/app/Application;)Ldy1;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/core/card/CardViewModel;->Y(Landroid/app/Application;)Ldy1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic x()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/core/card/CardViewModel;->b0()Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic y()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/core/card/CardViewModel;->c0()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic z(Lteam/opay/core/card/CardViewModel;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/core/card/CardViewModel;->z1(Lteam/opay/core/card/CardViewModel;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final z1(Lteam/opay/core/card/CardViewModel;)Lkotlin/Unit;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->p:Lteam/opay/core/settings/NoClearStorage;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-virtual {v0, v1, v2}, Lteam/opay/core/settings/NoClearStorage;->v2(J)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lteam/opay/core/card/CardViewModel;->p:Lteam/opay/core/settings/NoClearStorage;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, Lteam/opay/core/settings/NoClearStorage;->u2(I)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0
.end method


# virtual methods
.method public final A0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->u:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final A1(Lteam/opay/core/card/PhysicalCardData;)Lkotlin/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/card/PhysicalCardData;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lteam/opay/core/card/MultiDataItemEntry;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->h()Lteam/opay/core/card/PhysicalCardNativeNotApplied;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->getCardDesignList()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v1, v2

    .line 19
    :goto_0
    if-eqz v1, :cond_4

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_1
    new-instance v1, Lteam/opay/core/card/MultiDataItemEntry;

    .line 29
    .line 30
    new-instance v3, Lteam/opay/core/card/CardDesignActData;

    .line 31
    .line 32
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->h()Lteam/opay/core/card/PhysicalCardNativeNotApplied;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    if-eqz v4, :cond_2

    .line 37
    .line 38
    invoke-virtual {v4}, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->getCardDesignList()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move-object v4, v2

    .line 44
    :goto_1
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->h()Lteam/opay/core/card/PhysicalCardNativeNotApplied;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-eqz p1, :cond_3

    .line 49
    .line 50
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->getHomePageActivityAtmosphereDto()Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    move-object v2, p1

    .line 62
    check-cast v2, Lteam/opay/core/card/HomePageActivityAtmosphereDto;

    .line 63
    .line 64
    :cond_3
    invoke-direct {v3, v4, v2}, Lteam/opay/core/card/CardDesignActData;-><init>(Ljava/util/List;Lteam/opay/core/card/HomePageActivityAtmosphereDto;)V

    .line 65
    .line 66
    .line 67
    const/16 p1, 0xb

    .line 68
    .line 69
    invoke-direct {v1, p1, v3}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_4
    :goto_2
    new-instance v1, Lteam/opay/core/card/MultiDataItemEntry;

    .line 77
    .line 78
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->h()Lteam/opay/core/card/PhysicalCardNativeNotApplied;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    if-eqz v3, :cond_5

    .line 83
    .line 84
    invoke-virtual {v3}, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->getCardDesignUrl()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    :cond_5
    const/4 v3, 0x1

    .line 89
    invoke-direct {v1, v3, v2}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->e()Lteam/opay/core/card/CardFaceDto;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    if-eqz v5, :cond_6

    .line 100
    .line 101
    const/4 v8, 0x1

    .line 102
    const/4 v9, 0x0

    .line 103
    const/4 v6, 0x0

    .line 104
    const-string v7, "VIRTUAL"

    .line 105
    .line 106
    move-object v4, p0

    .line 107
    invoke-static/range {v4 .. v9}, Lteam/opay/core/card/CardViewModel;->e1(Lteam/opay/core/card/CardViewModel;Lteam/opay/core/card/CardFaceDto;ZLjava/lang/String;ILjava/lang/Object;)Lteam/opay/core/card/CardPageTipsData;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    if-eqz v1, :cond_6

    .line 112
    .line 113
    new-instance v2, Lteam/opay/core/card/MultiDataItemEntry;

    .line 114
    .line 115
    const/4 v3, 0x6

    .line 116
    invoke-direct {v2, v3, v1}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    :cond_6
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->h()Lteam/opay/core/card/PhysicalCardNativeNotApplied;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    if-eqz v1, :cond_7

    .line 127
    .line 128
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->getIntroduceList()Ljava/util/ArrayList;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    if-eqz v1, :cond_7

    .line 133
    .line 134
    invoke-virtual {p0, v1, p1}, Lteam/opay/core/card/CardViewModel;->a1(Ljava/util/List;Lteam/opay/core/card/PhysicalCardData;)Ljava/util/List;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    if-eqz p1, :cond_7

    .line 139
    .line 140
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 141
    .line 142
    .line 143
    :cond_7
    :goto_3
    const-string p1, "VIRTUAL_NOT_APPLIED"

    .line 144
    .line 145
    invoke-static {p1, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    return-object p1
.end method

.method public final B0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/core/card/CardViewModel;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public final B1(Lteam/opay/core/card/PhysicalCardData;)Lkotlin/Pair;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/card/PhysicalCardData;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lteam/opay/core/card/MultiDataItemEntry;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lteam/opay/core/card/MultiDataItemEntry;

    .line 7
    .line 8
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->a()Lteam/opay/core/card/PhysicalCardNativeActivated;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v2}, Lteam/opay/core/card/PhysicalCardNativeActivated;->getUnSafeTokenDto()Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {v2}, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->getCardFaceUrl()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v2, v3

    .line 27
    :goto_0
    const/4 v4, 0x1

    .line 28
    invoke-direct {v1, v4, v2}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    new-instance v1, Lteam/opay/core/card/MultiDataItemEntry;

    .line 35
    .line 36
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->e()Lteam/opay/core/card/CardFaceDto;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    if-eqz v5, :cond_1

    .line 41
    .line 42
    const/4 v8, 0x1

    .line 43
    const/4 v9, 0x0

    .line 44
    const/4 v6, 0x0

    .line 45
    const-string v7, "VIRTUAL"

    .line 46
    .line 47
    move-object/from16 v4, p0

    .line 48
    .line 49
    invoke-static/range {v4 .. v9}, Lteam/opay/core/card/CardViewModel;->e1(Lteam/opay/core/card/CardViewModel;Lteam/opay/core/card/CardFaceDto;ZLjava/lang/String;ILjava/lang/Object;)Lteam/opay/core/card/CardPageTipsData;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    if-nez v2, :cond_3

    .line 54
    .line 55
    :cond_1
    new-instance v2, Lteam/opay/core/card/CardPageTipsData;

    .line 56
    .line 57
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->a()Lteam/opay/core/card/PhysicalCardNativeActivated;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    if-eqz v4, :cond_2

    .line 62
    .line 63
    invoke-virtual {v4}, Lteam/opay/core/card/PhysicalCardNativeActivated;->getUnSafeTokenDto()Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    if-eqz v4, :cond_2

    .line 68
    .line 69
    invoke-virtual {v4}, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->getContext()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    move-object v5, v4

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    move-object v5, v3

    .line 76
    :goto_1
    const/16 v15, 0x3fe

    .line 77
    .line 78
    const/16 v16, 0x0

    .line 79
    .line 80
    const/4 v6, 0x0

    .line 81
    const/4 v7, 0x0

    .line 82
    const/4 v8, 0x0

    .line 83
    const/4 v9, 0x0

    .line 84
    const/4 v10, 0x0

    .line 85
    const/4 v11, 0x0

    .line 86
    const/4 v12, 0x0

    .line 87
    const/4 v13, 0x0

    .line 88
    const/4 v14, 0x0

    .line 89
    move-object v4, v2

    .line 90
    invoke-direct/range {v4 .. v16}, Lteam/opay/core/card/CardPageTipsData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 91
    .line 92
    .line 93
    :cond_3
    const/4 v4, 0x6

    .line 94
    invoke-direct {v1, v4, v2}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    new-instance v1, Lteam/opay/core/card/MultiDataItemEntry;

    .line 101
    .line 102
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->a()Lteam/opay/core/card/PhysicalCardNativeActivated;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    if-eqz v2, :cond_4

    .line 107
    .line 108
    invoke-virtual {v2}, Lteam/opay/core/card/PhysicalCardNativeActivated;->getUnSafeTokenDto()Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    if-eqz v2, :cond_4

    .line 113
    .line 114
    invoke-virtual {v2}, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->getAdDto()Ljava/util/ArrayList;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    :cond_4
    const/4 v2, 0x4

    .line 119
    invoke-direct {v1, v2, v3}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    const-string v1, "VIRTUAL_UN_SAFETOKEN"

    .line 126
    .line 127
    invoke-static {v1, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    return-object v0
.end method

.method public final C0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final C1(Lteam/opay/core/card/PhysicalCardData;)Lkotlin/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/card/PhysicalCardData;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lteam/opay/core/card/MultiDataItemEntry;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lteam/opay/core/card/MultiDataItemEntry;

    .line 7
    .line 8
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->l()Lteam/opay/core/card/PhysicalCardNativeVisitor;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v2}, Lteam/opay/core/card/PhysicalCardNativeVisitor;->getCardDesignUrl()Ljava/lang/String;

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
    invoke-direct {v1, v3, v2}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->e()Lteam/opay/core/card/CardFaceDto;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    if-eqz v5, :cond_1

    .line 32
    .line 33
    const/4 v8, 0x1

    .line 34
    const/4 v9, 0x0

    .line 35
    const/4 v6, 0x0

    .line 36
    const-string v7, "VIRTUAL"

    .line 37
    .line 38
    move-object v4, p0

    .line 39
    invoke-static/range {v4 .. v9}, Lteam/opay/core/card/CardViewModel;->e1(Lteam/opay/core/card/CardViewModel;Lteam/opay/core/card/CardFaceDto;ZLjava/lang/String;ILjava/lang/Object;)Lteam/opay/core/card/CardPageTipsData;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    new-instance v2, Lteam/opay/core/card/MultiDataItemEntry;

    .line 46
    .line 47
    const/4 v3, 0x6

    .line 48
    invoke-direct {v2, v3, v1}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    :cond_1
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->l()Lteam/opay/core/card/PhysicalCardNativeVisitor;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeVisitor;->getIntroduceList()Ljava/util/ArrayList;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    invoke-virtual {p0, v1, p1}, Lteam/opay/core/card/CardViewModel;->a1(Ljava/util/List;Lteam/opay/core/card/PhysicalCardData;)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 73
    .line 74
    .line 75
    :cond_2
    const-string p1, "VIRTUAL_VISITOR"

    .line 76
    .line 77
    invoke-static {p1, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    return-object p1
.end method

.method public final D0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->r:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    return-object v0
.end method

.method public final D1(Lag8;Lteam/opay/core/api/CardDetailReq;)V
    .locals 4
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/api/CardDetailReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "lifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "cardDetailReq"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->u:Landroidx/lifecycle/MutableLiveData;

    .line 12
    .line 13
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lteam/opay/core/android/arch/RequestBuilder;

    .line 19
    .line 20
    invoke-direct {v0}, Lteam/opay/core/android/arch/RequestBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p0}, Lteam/opay/core/android/arch/RequestBuilder;->v(Landroidx/lifecycle/AndroidViewModel;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget-object v1, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 28
    .line 29
    invoke-static {p0}, Lloa;->c(Landroidx/lifecycle/AndroidViewModel;)Lteam/opay/pay/android/OpayApplication;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const-class v3, Ldy1;

    .line 34
    .line 35
    invoke-virtual {v1, v2, v3}, Lteam/opay/core/api/GraphQL;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Ldy1;

    .line 40
    .line 41
    invoke-interface {v1, p2}, Ldy1;->i(Lteam/opay/core/api/CardDetailReq;)Lretrofit2/Call;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {v0, p2}, Lteam/opay/core/android/arch/RequestBuilder;->a(Lretrofit2/Call;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {p2}, Lteam/opay/core/android/arch/RequestBuilder;->b()Landroidx/lifecycle/LiveData;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    new-instance v0, Lx02;

    .line 54
    .line 55
    invoke-direct {v0, p0}, Lx02;-><init>(Lteam/opay/core/card/CardViewModel;)V

    .line 56
    .line 57
    .line 58
    invoke-static {p2, p1, v0}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final E0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Triple<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final F0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/core/card/CardResultData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final F1(Lag8;Lteam/opay/core/card/PhysicalRequestNowReq;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/card/PhysicalRequestNowReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "lifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "physicalRequestNowReq"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->u:Landroidx/lifecycle/MutableLiveData;

    .line 12
    .line 13
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->b:Lteam/opay/core/card/CardDataRepository;

    .line 19
    .line 20
    invoke-virtual {v0, p2}, Lteam/opay/core/card/CardDataRepository;->g(Lteam/opay/core/card/PhysicalRequestNowReq;)Landroidx/lifecycle/LiveData;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    new-instance v0, Lt02;

    .line 25
    .line 26
    invoke-direct {v0, p0, p3}, Lt02;-><init>(Lteam/opay/core/card/CardViewModel;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance p3, Lteam/opay/core/card/CardViewModel$b;

    .line 30
    .line 31
    invoke-direct {p3, v0}, Lteam/opay/core/card/CardViewModel$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, p1, p3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final G0()Lteam/opay/core/card/CardActiviteDialogData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->m:Lteam/opay/core/card/CardActiviteDialogData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final H0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final H1(Ljava/lang/String;Lag8;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "classify"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "lifecycleOwner"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->p:Lteam/opay/core/settings/NoClearStorage;

    .line 12
    .line 13
    invoke-virtual {v0}, Lteam/opay/core/settings/NoClearStorage;->B()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->p:Lteam/opay/core/settings/NoClearStorage;

    .line 21
    .line 22
    invoke-virtual {v0}, Lteam/opay/core/settings/NoClearStorage;->z()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0}, Lteam/opay/core/card/CardViewModel;->V0()Lxe9;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0, v1}, Lxe9;->a(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/card/CardViewModel;->W0(Ljava/lang/String;Lag8;)V

    .line 38
    .line 39
    .line 40
    :goto_1
    invoke-virtual {p0, p2}, Lteam/opay/core/card/CardViewModel;->i0(Lag8;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p2}, Lteam/opay/core/card/CardViewModel;->I1(Lag8;)V

    .line 44
    .line 45
    .line 46
    invoke-static {p0}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    new-instance v5, Lteam/opay/core/card/CardViewModel$queryDialogs$1;

    .line 51
    .line 52
    invoke-direct {v5, p0, p1, v1}, Lteam/opay/core/card/CardViewModel$queryDialogs$1;-><init>(Lteam/opay/core/card/CardViewModel;Ljava/lang/String;Ljr2;)V

    .line 53
    .line 54
    .line 55
    const/4 v6, 0x3

    .line 56
    const/4 v7, 0x0

    .line 57
    const/4 v3, 0x0

    .line 58
    const/4 v4, 0x0

    .line 59
    invoke-static/range {v2 .. v7}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final I0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->E:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final I1(Lag8;)V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/core/android/arch/RequestBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/core/android/arch/RequestBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lteam/opay/core/android/arch/RequestBuilder;->v(Landroidx/lifecycle/AndroidViewModel;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lteam/opay/core/card/CardViewModel;->l0()Ldy1;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Ldy1;->j()Lretrofit2/Call;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lteam/opay/core/android/arch/RequestBuilder;->a(Lretrofit2/Call;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lteam/opay/core/android/arch/RequestBuilder;->b()Landroidx/lifecycle/LiveData;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Lw02;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lw02;-><init>(Lteam/opay/core/card/CardViewModel;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0, p1, v1}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final J0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/core/card/RequestNowEventData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->v:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final K0()Lxe9;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lxe9<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/core/api/CardDialogData;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->M:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lxe9;

    .line 8
    .line 9
    return-object v0
.end method

.method public final L0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->j:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    return-object v0
.end method

.method public final L1(Landroidx/fragment/app/Fragment;)V
    .locals 2
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "lifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lteam/opay/core/card/CardViewModel;->n:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v0, p0, Lteam/opay/core/card/CardViewModel;->o:Lteam/opay/core/card/CardPageTipsData;

    .line 10
    .line 11
    iput-object v0, p0, Lteam/opay/core/card/CardViewModel;->m:Lteam/opay/core/card/CardActiviteDialogData;

    .line 12
    .line 13
    sget-object v0, Lql8;->a:Lql8;

    .line 14
    .line 15
    invoke-static {p0}, Lloa;->c(Landroidx/lifecycle/AndroidViewModel;)Lteam/opay/pay/android/OpayApplication;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lql8;->h(Landroid/content/Context;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Lteam/opay/core/card/CardViewModel;->l0()Ldy1;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Ldy1;->e()Lretrofit2/Call;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p0}, Lteam/opay/core/card/CardViewModel;->l0()Ldy1;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v0}, Ldy1;->c()Lretrofit2/Call;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :goto_0
    new-instance v1, Lteam/opay/core/android/arch/RequestBuilder;

    .line 43
    .line 44
    invoke-direct {v1}, Lteam/opay/core/android/arch/RequestBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p0}, Lteam/opay/core/android/arch/RequestBuilder;->v(Landroidx/lifecycle/AndroidViewModel;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1, v0}, Lteam/opay/core/android/arch/RequestBuilder;->a(Lretrofit2/Call;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-class v1, Lteam/opay/core/card/CardDataDetail;

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lteam/opay/core/android/arch/RequestBuilder;->c(Ljava/lang/Class;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lteam/opay/core/android/arch/RequestBuilder;->b()Landroidx/lifecycle/LiveData;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    new-instance v1, Lp02;

    .line 66
    .line 67
    invoke-direct {v1, p0}, Lp02;-><init>(Lteam/opay/core/card/CardViewModel;)V

    .line 68
    .line 69
    .line 70
    invoke-static {v0, p1, v1}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final M0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->I:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final N0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->s:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    return-object v0
.end method

.method public final N1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "key"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "value"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-lez v0, :cond_0

    .line 21
    .line 22
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-lez v0, :cond_0

    .line 27
    .line 28
    new-instance v0, Lkotlin/text/Regex;

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v2, "("

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v2, "=[^&]*)"

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p2, "="

    .line 64
    .line 65
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-virtual {v0, p1, p2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    :cond_0
    return-object p1
.end method

.method public final O0()Lteam/opay/core/api/CardHoldingTransaction;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->K:Lteam/opay/core/api/CardHoldingTransaction;

    .line 2
    .line 3
    return-object v0
.end method

.method public final P0(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, ""

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ljava/lang/String;

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v2, "_"

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const-string p2, "let(...)"

    .line 60
    .line 61
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-object p1
.end method

.method public final P1(Lteam/opay/core/card/PhysicalCardData;)Lteam/opay/core/card/CardPageData;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v15, Lteam/opay/core/card/CardPageData;

    .line 4
    .line 5
    move-object v1, v15

    .line 6
    const v18, 0xfffb

    .line 7
    .line 8
    .line 9
    const/16 v19, 0x0

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    const-string v4, "PHYSICAL"

    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v7, 0x0

    .line 18
    const/4 v8, 0x0

    .line 19
    const/4 v9, 0x0

    .line 20
    const/4 v10, 0x0

    .line 21
    const/4 v11, 0x0

    .line 22
    const/4 v12, 0x0

    .line 23
    const/4 v13, 0x0

    .line 24
    const/4 v14, 0x0

    .line 25
    const/16 v16, 0x0

    .line 26
    .line 27
    move-object/from16 v20, v15

    .line 28
    .line 29
    move-object/from16 v15, v16

    .line 30
    .line 31
    const/16 v17, 0x0

    .line 32
    .line 33
    invoke-direct/range {v1 .. v19}, Lteam/opay/core/card/CardPageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/card/HomePageFloatingWindowDto;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->i()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v2, "type"

    .line 41
    .line 42
    const-string v3, "PHYSICAL"

    .line 43
    .line 44
    invoke-virtual {v0, v1, v2, v3}, Lteam/opay/core/card/CardViewModel;->N1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    move-object/from16 v2, v20

    .line 49
    .line 50
    invoke-virtual {v2, v1}, Lteam/opay/core/card/CardPageData;->setQaUrl(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->g()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v2, v1}, Lteam/opay/core/card/CardPageData;->setCardType(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->d()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v2, v1}, Lteam/opay/core/card/CardPageData;->setCardClassify(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->d()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    iput-object v1, v0, Lteam/opay/core/card/CardViewModel;->k:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->b()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v2, v1}, Lteam/opay/core/card/CardPageData;->setApplyNo(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->c()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    const/4 v4, 0x0

    .line 85
    if-eqz v1, :cond_f

    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    sparse-switch v5, :sswitch_data_0

    .line 92
    .line 93
    .line 94
    goto/16 :goto_a

    .line 95
    .line 96
    :sswitch_0
    const-string v3, "VISITOR"

    .line 97
    .line 98
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-nez v1, :cond_0

    .line 103
    .line 104
    goto/16 :goto_a

    .line 105
    .line 106
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->l()Lteam/opay/core/card/PhysicalCardNativeVisitor;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    if-eqz v1, :cond_1

    .line 111
    .line 112
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeVisitor;->getProtocolUrl()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    goto :goto_0

    .line 117
    :cond_1
    move-object v1, v4

    .line 118
    :goto_0
    invoke-virtual {v2, v1}, Lteam/opay/core/card/CardPageData;->setProtocolUrl(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->l()Lteam/opay/core/card/PhysicalCardNativeVisitor;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    if-eqz v1, :cond_2

    .line 126
    .line 127
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeVisitor;->getButtonList()Ljava/util/ArrayList;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    goto :goto_1

    .line 132
    :cond_2
    move-object v1, v4

    .line 133
    :goto_1
    invoke-virtual {v2, v1}, Lteam/opay/core/card/CardPageData;->setButtonList(Ljava/util/ArrayList;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->l()Lteam/opay/core/card/PhysicalCardNativeVisitor;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    if-eqz v1, :cond_3

    .line 141
    .line 142
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeVisitor;->getPayModel()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    goto :goto_2

    .line 147
    :cond_3
    move-object v1, v4

    .line 148
    :goto_2
    invoke-virtual {v2, v1}, Lteam/opay/core/card/CardPageData;->setPayModel(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->l()Lteam/opay/core/card/PhysicalCardNativeVisitor;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    if-eqz v1, :cond_4

    .line 156
    .line 157
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeVisitor;->getHomePageFloatingWindowDto()Lteam/opay/core/card/HomePageFloatingWindowDto;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    goto :goto_3

    .line 162
    :cond_4
    move-object v1, v4

    .line 163
    :goto_3
    invoke-virtual {v2, v1}, Lteam/opay/core/card/CardPageData;->setHomePageFloatingWindowDto(Lteam/opay/core/card/HomePageFloatingWindowDto;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual/range {p0 .. p1}, Lteam/opay/core/card/CardViewModel;->w1(Lteam/opay/core/card/PhysicalCardData;)Lkotlin/Pair;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    goto/16 :goto_b

    .line 171
    .line 172
    :sswitch_1
    const-string v5, "NOT_APPLIED"

    .line 173
    .line 174
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-nez v1, :cond_5

    .line 179
    .line 180
    goto/16 :goto_a

    .line 181
    .line 182
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->h()Lteam/opay/core/card/PhysicalCardNativeNotApplied;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    if-eqz v1, :cond_6

    .line 187
    .line 188
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->getCardClassify()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    goto :goto_4

    .line 193
    :cond_6
    move-object v5, v4

    .line 194
    :goto_4
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    if-eqz v3, :cond_7

    .line 199
    .line 200
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->getNoApplyType()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    const-string v3, "NO_APPLY_ORDER"

    .line 205
    .line 206
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    if-eqz v1, :cond_7

    .line 211
    .line 212
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->h()Lteam/opay/core/card/PhysicalCardNativeNotApplied;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->getPhysicalNotAppliedDto()Lteam/opay/core/card/PhysicalCardNativeVisitor;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeVisitor;->getProtocolUrl()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-virtual {v2, v1}, Lteam/opay/core/card/CardPageData;->setProtocolUrl(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->h()Lteam/opay/core/card/PhysicalCardNativeNotApplied;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->getPhysicalNotAppliedDto()Lteam/opay/core/card/PhysicalCardNativeVisitor;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeVisitor;->getButtonList()Ljava/util/ArrayList;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    invoke-virtual {v2, v1}, Lteam/opay/core/card/CardPageData;->setButtonList(Ljava/util/ArrayList;)V

    .line 240
    .line 241
    .line 242
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->h()Lteam/opay/core/card/PhysicalCardNativeNotApplied;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    if-eqz v1, :cond_8

    .line 247
    .line 248
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->getHomePageFloatingWindowDto()Lteam/opay/core/card/HomePageFloatingWindowDto;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    goto :goto_5

    .line 253
    :cond_8
    move-object v1, v4

    .line 254
    :goto_5
    invoke-virtual {v2, v1}, Lteam/opay/core/card/CardPageData;->setHomePageFloatingWindowDto(Lteam/opay/core/card/HomePageFloatingWindowDto;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual/range {p0 .. p1}, Lteam/opay/core/card/CardViewModel;->p1(Lteam/opay/core/card/PhysicalCardData;)Lkotlin/Pair;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    goto :goto_b

    .line 262
    :sswitch_2
    const-string v3, "ACTIVATED"

    .line 263
    .line 264
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v1

    .line 268
    if-nez v1, :cond_9

    .line 269
    .line 270
    goto :goto_a

    .line 271
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->a()Lteam/opay/core/card/PhysicalCardNativeActivated;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    if-eqz v1, :cond_a

    .line 276
    .line 277
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeActivated;->getViewCardPinUrl()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    goto :goto_6

    .line 282
    :cond_a
    move-object v1, v4

    .line 283
    :goto_6
    iput-object v1, v0, Lteam/opay/core/card/CardViewModel;->E:Ljava/lang/String;

    .line 284
    .line 285
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->a()Lteam/opay/core/card/PhysicalCardNativeActivated;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    if-eqz v1, :cond_b

    .line 290
    .line 291
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeActivated;->getHomePageFloatingWindowDto()Lteam/opay/core/card/HomePageFloatingWindowDto;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    goto :goto_7

    .line 296
    :cond_b
    move-object v1, v4

    .line 297
    :goto_7
    invoke-virtual {v2, v1}, Lteam/opay/core/card/CardPageData;->setHomePageFloatingWindowDto(Lteam/opay/core/card/HomePageFloatingWindowDto;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->a()Lteam/opay/core/card/PhysicalCardNativeActivated;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    if-eqz v1, :cond_c

    .line 305
    .line 306
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeActivated;->getHomePageActivityAtmosphereDto()Ljava/util/List;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    goto :goto_8

    .line 311
    :cond_c
    move-object v1, v4

    .line 312
    :goto_8
    invoke-virtual {v2, v1}, Lteam/opay/core/card/CardPageData;->setHomePageActivityAtmosphereDto(Ljava/util/List;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual/range {p0 .. p1}, Lteam/opay/core/card/CardViewModel;->n1(Lteam/opay/core/card/PhysicalCardData;)Lkotlin/Pair;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    goto :goto_b

    .line 320
    :sswitch_3
    const-string v3, "UNACTIVATED"

    .line 321
    .line 322
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    move-result v1

    .line 326
    if-nez v1, :cond_d

    .line 327
    .line 328
    goto :goto_a

    .line 329
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->k()Lteam/opay/core/card/PhysicalCardNativeUnActivated;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    if-eqz v1, :cond_e

    .line 334
    .line 335
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeUnActivated;->getHomePageFloatingWindowDto()Lteam/opay/core/card/HomePageFloatingWindowDto;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    goto :goto_9

    .line 340
    :cond_e
    move-object v1, v4

    .line 341
    :goto_9
    invoke-virtual {v2, v1}, Lteam/opay/core/card/CardPageData;->setHomePageFloatingWindowDto(Lteam/opay/core/card/HomePageFloatingWindowDto;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual/range {p0 .. p1}, Lteam/opay/core/card/CardViewModel;->q1(Lteam/opay/core/card/PhysicalCardData;)Lkotlin/Pair;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    goto :goto_b

    .line 349
    :cond_f
    :goto_a
    move-object v1, v4

    .line 350
    :goto_b
    if-eqz v1, :cond_10

    .line 351
    .line 352
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v3

    .line 356
    check-cast v3, Ljava/lang/String;

    .line 357
    .line 358
    goto :goto_c

    .line 359
    :cond_10
    move-object v3, v4

    .line 360
    :goto_c
    invoke-virtual {v2, v3}, Lteam/opay/core/card/CardPageData;->setStatus(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    if-eqz v1, :cond_11

    .line 364
    .line 365
    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    move-object v4, v1

    .line 370
    check-cast v4, Ljava/util/List;

    .line 371
    .line 372
    :cond_11
    if-nez v4, :cond_12

    .line 373
    .line 374
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 375
    .line 376
    .line 377
    move-result-object v4

    .line 378
    :cond_12
    invoke-virtual {v2, v4}, Lteam/opay/core/card/CardPageData;->setDataList(Ljava/util/List;)V

    .line 379
    .line 380
    .line 381
    return-object v2

    .line 382
    nop

    .line 383
    :sswitch_data_0
    .sparse-switch
        -0x6f6954c8 -> :sswitch_3
        -0x4db9264f -> :sswitch_2
        -0x111fd12f -> :sswitch_1
        0x469dc04e -> :sswitch_0
    .end sparse-switch
.end method

.method public final Q0()Lteam/opay/core/settings/NoClearStorage;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->p:Lteam/opay/core/settings/NoClearStorage;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Q1(Lteam/opay/core/card/PhysicalCardData;)Lteam/opay/core/card/CardPageData;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v15, Lteam/opay/core/card/CardPageData;

    .line 4
    .line 5
    move-object v1, v15

    .line 6
    const v18, 0xfffb

    .line 7
    .line 8
    .line 9
    const/16 v19, 0x0

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    const-string v4, "VIRTUAL"

    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v7, 0x0

    .line 18
    const/4 v8, 0x0

    .line 19
    const/4 v9, 0x0

    .line 20
    const/4 v10, 0x0

    .line 21
    const/4 v11, 0x0

    .line 22
    const/4 v12, 0x0

    .line 23
    const/4 v13, 0x0

    .line 24
    const/4 v14, 0x0

    .line 25
    const/16 v16, 0x0

    .line 26
    .line 27
    move-object/from16 v20, v15

    .line 28
    .line 29
    move-object/from16 v15, v16

    .line 30
    .line 31
    const/16 v17, 0x0

    .line 32
    .line 33
    invoke-direct/range {v1 .. v19}, Lteam/opay/core/card/CardPageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/card/HomePageFloatingWindowDto;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->i()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v2, "type"

    .line 41
    .line 42
    const-string v3, "VIRTUAL"

    .line 43
    .line 44
    invoke-virtual {v0, v1, v2, v3}, Lteam/opay/core/card/CardViewModel;->N1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    move-object/from16 v2, v20

    .line 49
    .line 50
    invoke-virtual {v2, v1}, Lteam/opay/core/card/CardPageData;->setQaUrl(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->g()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v2, v1}, Lteam/opay/core/card/CardPageData;->setCardType(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->d()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v2, v1}, Lteam/opay/core/card/CardPageData;->setCardClassify(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->d()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    iput-object v1, v0, Lteam/opay/core/card/CardViewModel;->l:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->b()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v2, v1}, Lteam/opay/core/card/CardPageData;->setApplyNo(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->c()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    const/4 v3, 0x0

    .line 85
    if-eqz v1, :cond_f

    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    const v5, -0x4db9264f

    .line 92
    .line 93
    .line 94
    if-eq v4, v5, :cond_c

    .line 95
    .line 96
    const v5, -0x111fd12f

    .line 97
    .line 98
    .line 99
    if-eq v4, v5, :cond_6

    .line 100
    .line 101
    const v5, 0x469dc04e

    .line 102
    .line 103
    .line 104
    if-eq v4, v5, :cond_0

    .line 105
    .line 106
    goto/16 :goto_9

    .line 107
    .line 108
    :cond_0
    const-string v4, "VISITOR"

    .line 109
    .line 110
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-nez v1, :cond_1

    .line 115
    .line 116
    goto/16 :goto_9

    .line 117
    .line 118
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->l()Lteam/opay/core/card/PhysicalCardNativeVisitor;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    if-eqz v1, :cond_2

    .line 123
    .line 124
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeVisitor;->getProtocolUrl()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    goto :goto_0

    .line 129
    :cond_2
    move-object v1, v3

    .line 130
    :goto_0
    invoke-virtual {v2, v1}, Lteam/opay/core/card/CardPageData;->setProtocolUrl(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->l()Lteam/opay/core/card/PhysicalCardNativeVisitor;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    if-eqz v1, :cond_3

    .line 138
    .line 139
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeVisitor;->getButtonList()Ljava/util/ArrayList;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    goto :goto_1

    .line 144
    :cond_3
    move-object v1, v3

    .line 145
    :goto_1
    invoke-virtual {v2, v1}, Lteam/opay/core/card/CardPageData;->setButtonList(Ljava/util/ArrayList;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->l()Lteam/opay/core/card/PhysicalCardNativeVisitor;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    if-eqz v1, :cond_4

    .line 153
    .line 154
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeVisitor;->getPayModel()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    goto :goto_2

    .line 159
    :cond_4
    move-object v1, v3

    .line 160
    :goto_2
    invoke-virtual {v2, v1}, Lteam/opay/core/card/CardPageData;->setPayModel(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->l()Lteam/opay/core/card/PhysicalCardNativeVisitor;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    if-eqz v1, :cond_5

    .line 168
    .line 169
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeVisitor;->getHomePageFloatingWindowDto()Lteam/opay/core/card/HomePageFloatingWindowDto;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    goto :goto_3

    .line 174
    :cond_5
    move-object v1, v3

    .line 175
    :goto_3
    invoke-virtual {v2, v1}, Lteam/opay/core/card/CardPageData;->setHomePageFloatingWindowDto(Lteam/opay/core/card/HomePageFloatingWindowDto;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual/range {p0 .. p1}, Lteam/opay/core/card/CardViewModel;->C1(Lteam/opay/core/card/PhysicalCardData;)Lkotlin/Pair;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    goto/16 :goto_a

    .line 183
    .line 184
    :cond_6
    const-string v4, "NOT_APPLIED"

    .line 185
    .line 186
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    if-nez v1, :cond_7

    .line 191
    .line 192
    goto/16 :goto_9

    .line 193
    .line 194
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->h()Lteam/opay/core/card/PhysicalCardNativeNotApplied;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    if-eqz v1, :cond_8

    .line 199
    .line 200
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->getProtocolUrl()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    goto :goto_4

    .line 205
    :cond_8
    move-object v1, v3

    .line 206
    :goto_4
    invoke-virtual {v2, v1}, Lteam/opay/core/card/CardPageData;->setProtocolUrl(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->h()Lteam/opay/core/card/PhysicalCardNativeNotApplied;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    if-eqz v1, :cond_9

    .line 214
    .line 215
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->getButtonList()Ljava/util/ArrayList;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    goto :goto_5

    .line 220
    :cond_9
    move-object v1, v3

    .line 221
    :goto_5
    invoke-virtual {v2, v1}, Lteam/opay/core/card/CardPageData;->setButtonList(Ljava/util/ArrayList;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->h()Lteam/opay/core/card/PhysicalCardNativeNotApplied;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    if-eqz v1, :cond_a

    .line 229
    .line 230
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->getCampaign()Ljava/lang/Integer;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    goto :goto_6

    .line 235
    :cond_a
    move-object v1, v3

    .line 236
    :goto_6
    invoke-virtual {v2, v1}, Lteam/opay/core/card/CardPageData;->setCampaign(Ljava/lang/Integer;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->h()Lteam/opay/core/card/PhysicalCardNativeNotApplied;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    if-eqz v1, :cond_b

    .line 244
    .line 245
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->getHomePageFloatingWindowDto()Lteam/opay/core/card/HomePageFloatingWindowDto;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    goto :goto_7

    .line 250
    :cond_b
    move-object v1, v3

    .line 251
    :goto_7
    invoke-virtual {v2, v1}, Lteam/opay/core/card/CardPageData;->setHomePageFloatingWindowDto(Lteam/opay/core/card/HomePageFloatingWindowDto;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual/range {p0 .. p1}, Lteam/opay/core/card/CardViewModel;->A1(Lteam/opay/core/card/PhysicalCardData;)Lkotlin/Pair;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    goto :goto_a

    .line 259
    :cond_c
    const-string v4, "ACTIVATED"

    .line 260
    .line 261
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    if-nez v1, :cond_d

    .line 266
    .line 267
    goto :goto_9

    .line 268
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->a()Lteam/opay/core/card/PhysicalCardNativeActivated;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    if-eqz v1, :cond_e

    .line 273
    .line 274
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeActivated;->getHomePageFloatingWindowDto()Lteam/opay/core/card/HomePageFloatingWindowDto;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    goto :goto_8

    .line 279
    :cond_e
    move-object v1, v3

    .line 280
    :goto_8
    invoke-virtual {v2, v1}, Lteam/opay/core/card/CardPageData;->setHomePageFloatingWindowDto(Lteam/opay/core/card/HomePageFloatingWindowDto;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual/range {p0 .. p1}, Lteam/opay/core/card/CardViewModel;->x1(Lteam/opay/core/card/PhysicalCardData;)Lkotlin/Pair;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    goto :goto_a

    .line 288
    :cond_f
    :goto_9
    move-object v1, v3

    .line 289
    :goto_a
    if-eqz v1, :cond_10

    .line 290
    .line 291
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v4

    .line 295
    check-cast v4, Ljava/lang/String;

    .line 296
    .line 297
    goto :goto_b

    .line 298
    :cond_10
    move-object v4, v3

    .line 299
    :goto_b
    invoke-virtual {v2, v4}, Lteam/opay/core/card/CardPageData;->setStatus(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    if-eqz v1, :cond_11

    .line 303
    .line 304
    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    move-object v3, v1

    .line 309
    check-cast v3, Ljava/util/List;

    .line 310
    .line 311
    :cond_11
    if-nez v3, :cond_12

    .line 312
    .line 313
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 314
    .line 315
    .line 316
    move-result-object v3

    .line 317
    :cond_12
    invoke-virtual {v2, v3}, Lteam/opay/core/card/CardPageData;->setDataList(Ljava/util/List;)V

    .line 318
    .line 319
    .line 320
    return-object v2
.end method

.method public final R0(Lteam/opay/core/card/PhysicalCardData;Lteam/opay/core/card/CardPageTipsData;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/card/PhysicalCardData;",
            "Lteam/opay/core/card/CardPageTipsData;",
            ")",
            "Ljava/util/List<",
            "Lteam/opay/core/card/MultiDataItemEntry;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lteam/opay/core/card/MultiDataItemEntry;

    .line 7
    .line 8
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->k()Lteam/opay/core/card/PhysicalCardNativeUnActivated;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v2}, Lteam/opay/core/card/PhysicalCardNativeUnActivated;->getUnInDto()Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {v2}, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->getCardFaceUrl()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v2, 0x0

    .line 26
    :goto_0
    const/4 v3, 0x1

    .line 27
    invoke-direct {v1, v3, v2}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    new-instance v1, Lteam/opay/core/card/MultiDataItemEntry;

    .line 34
    .line 35
    const/4 v2, 0x6

    .line 36
    invoke-direct {v1, v2, p2}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->k()Lteam/opay/core/card/PhysicalCardNativeUnActivated;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    if-eqz p2, :cond_2

    .line 47
    .line 48
    invoke-virtual {p2}, Lteam/opay/core/card/PhysicalCardNativeUnActivated;->getUnInDto()Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    if-eqz p2, :cond_2

    .line 53
    .line 54
    invoke-virtual {p2}, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->getButtonList()Ljava/util/ArrayList;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    if-eqz p2, :cond_2

    .line 59
    .line 60
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->g()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->d()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const/4 v2, 0x3

    .line 69
    invoke-virtual {p0, p2, v2, v1, p1}, Lteam/opay/core/card/CardViewModel;->Y0(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-eqz p1, :cond_2

    .line 74
    .line 75
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 76
    .line 77
    .line 78
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    invoke-virtual {p0, p1}, Lteam/opay/core/card/CardViewModel;->X(I)Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    if-nez p1, :cond_1

    .line 87
    .line 88
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 93
    .line 94
    .line 95
    :cond_2
    return-object v0
.end method

.method public final R1(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/core/card/CardViewModel;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final S0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final S1(Lteam/opay/core/card/CardPageTipsData;)V
    .locals 0
    .param p1    # Lteam/opay/core/card/CardPageTipsData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/core/card/CardViewModel;->o:Lteam/opay/core/card/CardPageTipsData;

    .line 2
    .line 3
    return-void
.end method

.method public final T0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->F:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final T1(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/core/card/CardViewModel;->B:Z

    .line 2
    .line 3
    return-void
.end method

.method public final U0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/core/card/RequestNowEventData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->w:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final U1(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/core/card/CardViewModel;->G:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final V0()Lxe9;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lxe9<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/core/api/CardHoldingTransaction;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->L:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lxe9;

    .line 8
    .line 9
    return-object v0
.end method

.method public final V1(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/core/card/CardViewModel;->e:Z

    .line 2
    .line 3
    return-void
.end method

.method public final W0(Ljava/lang/String;Lag8;)V
    .locals 3

    .line 1
    new-instance v0, Lteam/opay/core/android/arch/RequestBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/core/android/arch/RequestBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lteam/opay/core/android/arch/RequestBuilder;->v(Landroidx/lifecycle/AndroidViewModel;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lteam/opay/core/card/CardViewModel;->l0()Ldy1;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Lteam/opay/core/api/CardClassify;

    .line 15
    .line 16
    invoke-direct {v2, p1}, Lteam/opay/core/api/CardClassify;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v1, v2}, Ldy1;->g(Lteam/opay/core/api/CardClassify;)Lretrofit2/Call;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v0, p1}, Lteam/opay/core/android/arch/RequestBuilder;->a(Lretrofit2/Call;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lteam/opay/core/android/arch/RequestBuilder;->b()Landroidx/lifecycle/LiveData;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    new-instance v0, Lc12;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lc12;-><init>(Lteam/opay/core/card/CardViewModel;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1, p2, v0}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final W1(Lteam/opay/core/card/CardActiviteDialogData;)V
    .locals 0
    .param p1    # Lteam/opay/core/card/CardActiviteDialogData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/core/card/CardViewModel;->m:Lteam/opay/core/card/CardActiviteDialogData;

    .line 2
    .line 3
    return-void
.end method

.method public final X(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lteam/opay/core/card/MultiDataItemEntry;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    rem-int/2addr p1, v0

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    rsub-int/lit8 p1, p1, 0x3

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    :goto_0
    if-ge v3, p1, :cond_1

    .line 16
    .line 17
    new-instance v4, Lteam/opay/core/card/MultiDataItemEntry;

    .line 18
    .line 19
    invoke-direct {v4, v0, v1}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    add-int/lit8 v3, v3, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return-object v2
.end method

.method public final X1(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/core/card/CardViewModel;->I:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final Y0(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/core/card/ButtonDto;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lteam/opay/core/card/MultiDataItemEntry;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lteam/opay/core/card/ButtonDto;

    .line 29
    .line 30
    new-instance v3, Lteam/opay/core/card/MultiDataItemEntry;

    .line 31
    .line 32
    invoke-virtual {v2}, Lteam/opay/core/card/ButtonDto;->getIconUrl()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    invoke-virtual {v2}, Lteam/opay/core/card/ButtonDto;->getContext()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    invoke-virtual {v2}, Lteam/opay/core/card/ButtonDto;->getShortContext()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    invoke-virtual {v2}, Lteam/opay/core/card/ButtonDto;->getJumpUrl()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v12

    .line 48
    invoke-virtual {v2}, Lteam/opay/core/card/ButtonDto;->getRightIconUrl()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v13

    .line 52
    invoke-virtual {v2}, Lteam/opay/core/card/ButtonDto;->getButtonId()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v14

    .line 56
    invoke-virtual {v2}, Lteam/opay/core/card/ButtonDto;->getButtonId()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    if-nez v4, :cond_0

    .line 61
    .line 62
    const-string v4, ""

    .line 63
    .line 64
    :cond_0
    invoke-virtual {v2}, Lteam/opay/core/card/ButtonDto;->getSpecialIdList()Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    if-nez v6, :cond_1

    .line 69
    .line 70
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    :cond_1
    move-object/from16 v15, p0

    .line 75
    .line 76
    invoke-virtual {v15, v4, v6}, Lteam/opay/core/card/CardViewModel;->P0(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v16

    .line 80
    invoke-virtual {v2}, Lteam/opay/core/card/ButtonDto;->getThirdIconUrl()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v10

    .line 84
    invoke-virtual {v2}, Lteam/opay/core/card/ButtonDto;->getSecondContext()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v11

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    move-object/from16 v9, p3

    .line 94
    .line 95
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v4, "_"

    .line 99
    .line 100
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    move-object/from16 v6, p4

    .line 104
    .line 105
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    new-instance v4, Lteam/opay/core/card/BottomListData;

    .line 113
    .line 114
    const/16 v17, 0x12

    .line 115
    .line 116
    const/16 v18, 0x0

    .line 117
    .line 118
    const/16 v19, 0x0

    .line 119
    .line 120
    const/16 v20, 0x0

    .line 121
    .line 122
    move-object/from16 p1, v4

    .line 123
    .line 124
    move-object/from16 v6, v19

    .line 125
    .line 126
    move-object/from16 v9, v20

    .line 127
    .line 128
    move-object/from16 v15, v16

    .line 129
    .line 130
    move-object/from16 v16, v2

    .line 131
    .line 132
    invoke-direct/range {v4 .. v18}, Lteam/opay/core/card/BottomListData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 133
    .line 134
    .line 135
    move/from16 v2, p2

    .line 136
    .line 137
    invoke-direct {v3, v2, v4}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_2
    return-object v0
.end method

.method public final Y1(Lteam/opay/core/api/CardHoldingTransaction;)V
    .locals 0
    .param p1    # Lteam/opay/core/api/CardHoldingTransaction;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/core/card/CardViewModel;->K:Lteam/opay/core/api/CardHoldingTransaction;

    .line 2
    .line 3
    return-void
.end method

.method public final Z(Lag8;)V
    .locals 3
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "lifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->u:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->b:Lteam/opay/core/card/CardDataRepository;

    .line 14
    .line 15
    invoke-virtual {v0}, Lteam/opay/core/card/CardDataRepository;->f()Landroidx/lifecycle/LiveData;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lq02;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lq02;-><init>(Lteam/opay/core/card/CardViewModel;)V

    .line 22
    .line 23
    .line 24
    new-instance v2, Lteam/opay/core/card/CardViewModel$b;

    .line 25
    .line 26
    invoke-direct {v2, v1}, Lteam/opay/core/card/CardViewModel$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final Z0(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/core/card/IntroduceContextDto;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lteam/opay/core/card/MultiDataItemEntry;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lteam/opay/core/card/IntroduceContextDto;

    .line 29
    .line 30
    new-instance v3, Lteam/opay/core/card/MultiDataItemEntry;

    .line 31
    .line 32
    new-instance v15, Lteam/opay/core/card/BottomListData;

    .line 33
    .line 34
    invoke-virtual {v2}, Lteam/opay/core/card/IntroduceContextDto;->getIconUrl()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-virtual {v2}, Lteam/opay/core/card/IntroduceContextDto;->getTitle()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    invoke-virtual {v2}, Lteam/opay/core/card/IntroduceContextDto;->getContext()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    invoke-virtual {v2}, Lteam/opay/core/card/IntroduceContextDto;->getSecondIconUrl()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v9

    .line 50
    invoke-virtual {v2}, Lteam/opay/core/card/IntroduceContextDto;->getThirdIconUrl()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v10

    .line 54
    invoke-virtual {v2}, Lteam/opay/core/card/IntroduceContextDto;->getSecondContext()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v11

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    move-object/from16 v14, p2

    .line 64
    .line 65
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v4, "_"

    .line 69
    .line 70
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    move-object/from16 v13, p3

    .line 74
    .line 75
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v16

    .line 82
    const/16 v17, 0x788

    .line 83
    .line 84
    const/16 v18, 0x0

    .line 85
    .line 86
    const/4 v8, 0x0

    .line 87
    const/4 v12, 0x0

    .line 88
    const/4 v2, 0x0

    .line 89
    const/16 v19, 0x0

    .line 90
    .line 91
    const/16 v20, 0x0

    .line 92
    .line 93
    move-object v4, v15

    .line 94
    move-object v13, v2

    .line 95
    move-object/from16 v14, v19

    .line 96
    .line 97
    move-object v2, v15

    .line 98
    move-object/from16 v15, v20

    .line 99
    .line 100
    invoke-direct/range {v4 .. v18}, Lteam/opay/core/card/BottomListData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 101
    .line 102
    .line 103
    const/4 v4, 0x2

    .line 104
    invoke-direct {v3, v4, v2}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_0
    return-object v0
.end method

.method public final Z1(Lteam/opay/core/api/CardHomePagePopUpDtoListItem;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/CardHomePagePopUpDtoListItem;->g()Lteam/opay/core/api/CardDataDialogShowRate;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_a

    .line 9
    .line 10
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/CardHomePagePopUpDtoListItem;->g()Lteam/opay/core/api/CardDataDialogShowRate;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1}, Lteam/opay/core/api/CardDataDialogShowRate;->b()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v1, v3

    .line 23
    :goto_0
    if-eqz v1, :cond_a

    .line 24
    .line 25
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/CardHomePagePopUpDtoListItem;->g()Lteam/opay/core/api/CardDataDialogShowRate;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v1}, Lteam/opay/core/api/CardDataDialogShowRate;->a()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move-object v1, v3

    .line 37
    :goto_1
    if-nez v1, :cond_2

    .line 38
    .line 39
    goto/16 :goto_3

    .line 40
    .line 41
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v4

    .line 45
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/CardHomePagePopUpDtoListItem;->d()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-nez v1, :cond_3

    .line 50
    .line 51
    const-string v1, ""

    .line 52
    .line 53
    :cond_3
    iget-object v6, v0, Lteam/opay/core/card/CardViewModel;->p:Lteam/opay/core/settings/NoClearStorage;

    .line 54
    .line 55
    invoke-virtual {v6, v1}, Lteam/opay/core/settings/NoClearStorage;->F(Ljava/lang/String;)J

    .line 56
    .line 57
    .line 58
    move-result-wide v6

    .line 59
    iget-object v8, v0, Lteam/opay/core/card/CardViewModel;->p:Lteam/opay/core/settings/NoClearStorage;

    .line 60
    .line 61
    invoke-virtual {v8, v1}, Lteam/opay/core/settings/NoClearStorage;->G(Ljava/lang/String;)J

    .line 62
    .line 63
    .line 64
    move-result-wide v8

    .line 65
    iget-object v10, v0, Lteam/opay/core/card/CardViewModel;->p:Lteam/opay/core/settings/NoClearStorage;

    .line 66
    .line 67
    invoke-virtual {v10, v1}, Lteam/opay/core/settings/NoClearStorage;->D(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v10

    .line 71
    iget-object v11, v0, Lteam/opay/core/card/CardViewModel;->p:Lteam/opay/core/settings/NoClearStorage;

    .line 72
    .line 73
    invoke-virtual {v11, v1}, Lteam/opay/core/settings/NoClearStorage;->E(Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result v11

    .line 77
    sub-long v6, v4, v6

    .line 78
    .line 79
    const v12, 0x240c8400

    .line 80
    .line 81
    .line 82
    int-to-long v12, v12

    .line 83
    const/4 v14, 0x0

    .line 84
    cmp-long v15, v6, v12

    .line 85
    .line 86
    if-lez v15, :cond_4

    .line 87
    .line 88
    iget-object v3, v0, Lteam/opay/core/card/CardViewModel;->p:Lteam/opay/core/settings/NoClearStorage;

    .line 89
    .line 90
    invoke-virtual {v3, v1, v4, v5}, Lteam/opay/core/settings/NoClearStorage;->k1(Ljava/lang/String;J)V

    .line 91
    .line 92
    .line 93
    iget-object v3, v0, Lteam/opay/core/card/CardViewModel;->p:Lteam/opay/core/settings/NoClearStorage;

    .line 94
    .line 95
    invoke-virtual {v3, v1, v4, v5}, Lteam/opay/core/settings/NoClearStorage;->l1(Ljava/lang/String;J)V

    .line 96
    .line 97
    .line 98
    iget-object v3, v0, Lteam/opay/core/card/CardViewModel;->p:Lteam/opay/core/settings/NoClearStorage;

    .line 99
    .line 100
    invoke-virtual {v3, v1, v14}, Lteam/opay/core/settings/NoClearStorage;->i1(Ljava/lang/String;I)V

    .line 101
    .line 102
    .line 103
    iget-object v3, v0, Lteam/opay/core/card/CardViewModel;->p:Lteam/opay/core/settings/NoClearStorage;

    .line 104
    .line 105
    invoke-virtual {v3, v1, v14}, Lteam/opay/core/settings/NoClearStorage;->j1(Ljava/lang/String;I)V

    .line 106
    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/CardHomePagePopUpDtoListItem;->g()Lteam/opay/core/api/CardDataDialogShowRate;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    if-eqz v6, :cond_5

    .line 114
    .line 115
    invoke-virtual {v6}, Lteam/opay/core/api/CardDataDialogShowRate;->b()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    :cond_5
    invoke-static {v3}, Lh6e;->j(Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    if-lt v10, v3, :cond_7

    .line 124
    .line 125
    :cond_6
    const/4 v2, 0x0

    .line 126
    goto :goto_3

    .line 127
    :cond_7
    sub-long v6, v4, v8

    .line 128
    .line 129
    const v3, 0x5265c00

    .line 130
    .line 131
    .line 132
    int-to-long v8, v3

    .line 133
    cmp-long v3, v6, v8

    .line 134
    .line 135
    if-lez v3, :cond_8

    .line 136
    .line 137
    iget-object v3, v0, Lteam/opay/core/card/CardViewModel;->p:Lteam/opay/core/settings/NoClearStorage;

    .line 138
    .line 139
    invoke-virtual {v3, v1, v4, v5}, Lteam/opay/core/settings/NoClearStorage;->l1(Ljava/lang/String;J)V

    .line 140
    .line 141
    .line 142
    iget-object v3, v0, Lteam/opay/core/card/CardViewModel;->p:Lteam/opay/core/settings/NoClearStorage;

    .line 143
    .line 144
    invoke-virtual {v3, v1, v14}, Lteam/opay/core/settings/NoClearStorage;->j1(Ljava/lang/String;I)V

    .line 145
    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/CardHomePagePopUpDtoListItem;->g()Lteam/opay/core/api/CardDataDialogShowRate;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    if-eqz v1, :cond_9

    .line 153
    .line 154
    invoke-virtual {v1}, Lteam/opay/core/api/CardDataDialogShowRate;->a()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    if-eqz v1, :cond_9

    .line 159
    .line 160
    invoke-static {v1}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    if-eqz v1, :cond_9

    .line 165
    .line 166
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    goto :goto_2

    .line 171
    :cond_9
    const/4 v1, 0x0

    .line 172
    :goto_2
    if-ge v11, v1, :cond_6

    .line 173
    .line 174
    :cond_a
    :goto_3
    return v2
.end method

.method public final a1(Ljava/util/List;Lteam/opay/core/card/PhysicalCardData;)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/core/card/IntroduceContextDto;",
            ">;",
            "Lteam/opay/core/card/PhysicalCardData;",
            ")",
            "Ljava/util/List<",
            "Lteam/opay/core/card/MultiDataItemEntry;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lteam/opay/core/card/IntroduceContextDto;

    .line 29
    .line 30
    new-instance v3, Lteam/opay/core/card/MultiDataItemEntry;

    .line 31
    .line 32
    new-instance v15, Lteam/opay/core/card/BottomListData;

    .line 33
    .line 34
    invoke-virtual {v2}, Lteam/opay/core/card/IntroduceContextDto;->getIconUrl()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-virtual {v2}, Lteam/opay/core/card/IntroduceContextDto;->getTitle()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    invoke-virtual {v2}, Lteam/opay/core/card/IntroduceContextDto;->getContext()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    invoke-virtual {v2}, Lteam/opay/core/card/IntroduceContextDto;->getSecondIconUrl()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v9

    .line 50
    invoke-virtual {v2}, Lteam/opay/core/card/IntroduceContextDto;->getThirdIconUrl()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v10

    .line 54
    invoke-virtual {v2}, Lteam/opay/core/card/IntroduceContextDto;->getSecondContext()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v11

    .line 58
    invoke-virtual/range {p2 .. p2}, Lteam/opay/core/card/PhysicalCardData;->g()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual/range {p2 .. p2}, Lteam/opay/core/card/PhysicalCardData;->d()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    new-instance v8, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v2, "_"

    .line 75
    .line 76
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v16

    .line 86
    const/16 v17, 0x788

    .line 87
    .line 88
    const/16 v18, 0x0

    .line 89
    .line 90
    const/4 v8, 0x0

    .line 91
    const/4 v12, 0x0

    .line 92
    const/4 v13, 0x0

    .line 93
    const/4 v14, 0x0

    .line 94
    const/4 v2, 0x0

    .line 95
    move-object v4, v15

    .line 96
    move-object/from16 v19, v15

    .line 97
    .line 98
    move-object v15, v2

    .line 99
    invoke-direct/range {v4 .. v18}, Lteam/opay/core/card/BottomListData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 100
    .line 101
    .line 102
    const/4 v2, 0x2

    .line 103
    move-object/from16 v4, v19

    .line 104
    .line 105
    invoke-direct {v3, v2, v4}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_0
    return-object v0
.end method

.method public final a2(ILjava/lang/String;)Z
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-string v2, "SUCCESS"

    .line 6
    .line 7
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x0

    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    iget-object v3, p0, Lteam/opay/core/card/CardViewModel;->p:Lteam/opay/core/settings/NoClearStorage;

    .line 15
    .line 16
    invoke-virtual {v3}, Lteam/opay/core/settings/NoClearStorage;->B()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    return v4

    .line 23
    :cond_0
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-nez v3, :cond_1

    .line 28
    .line 29
    iget-object v3, p0, Lteam/opay/core/card/CardViewModel;->p:Lteam/opay/core/settings/NoClearStorage;

    .line 30
    .line 31
    invoke-virtual {v3}, Lteam/opay/core/settings/NoClearStorage;->z()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    return v4

    .line 38
    :cond_1
    const v3, 0x5265c00

    .line 39
    .line 40
    .line 41
    mul-int p1, p1, v3

    .line 42
    .line 43
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-eqz p2, :cond_2

    .line 48
    .line 49
    iget-object p2, p0, Lteam/opay/core/card/CardViewModel;->p:Lteam/opay/core/settings/NoClearStorage;

    .line 50
    .line 51
    invoke-virtual {p2}, Lteam/opay/core/settings/NoClearStorage;->C()J

    .line 52
    .line 53
    .line 54
    move-result-wide v2

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    iget-object p2, p0, Lteam/opay/core/card/CardViewModel;->p:Lteam/opay/core/settings/NoClearStorage;

    .line 57
    .line 58
    invoke-virtual {p2}, Lteam/opay/core/settings/NoClearStorage;->A()J

    .line 59
    .line 60
    .line 61
    move-result-wide v2

    .line 62
    :goto_0
    sub-long/2addr v0, v2

    .line 63
    int-to-long p1, p1

    .line 64
    cmp-long v2, v0, p1

    .line 65
    .line 66
    if-lez v2, :cond_3

    .line 67
    .line 68
    const/4 v4, 0x1

    .line 69
    :cond_3
    return v4
.end method

.method public final b1(Lteam/opay/core/card/CardNotAppliedContentDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/card/CardNotAppliedContentDto;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lteam/opay/core/card/MultiDataItemEntry;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lteam/opay/core/card/CardNotAppliedContentDto;->g()Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x4

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v1, Lteam/opay/core/card/MultiDataItemEntry;

    .line 21
    .line 22
    invoke-virtual {p1}, Lteam/opay/core/card/CardNotAppliedContentDto;->g()Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-direct {v1, v2, v3}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    new-instance v1, Lteam/opay/core/card/PhyNotApplyContentItemData;

    .line 33
    .line 34
    invoke-virtual {p1}, Lteam/opay/core/card/CardNotAppliedContentDto;->d()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-virtual {p1}, Lteam/opay/core/card/CardNotAppliedContentDto;->c()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    invoke-virtual {p1}, Lteam/opay/core/card/CardNotAppliedContentDto;->f()Lteam/opay/core/card/ButtonDto;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    invoke-virtual {p1}, Lteam/opay/core/card/CardNotAppliedContentDto;->e()Lteam/opay/core/card/ButtonDto;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    move-object v4, v1

    .line 51
    move-object v9, p2

    .line 52
    invoke-direct/range {v4 .. v9}, Lteam/opay/core/card/PhyNotApplyContentItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/card/ButtonDto;Lteam/opay/core/card/ButtonDto;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance p2, Lteam/opay/core/card/MultiDataItemEntry;

    .line 56
    .line 57
    const/16 v3, 0xc

    .line 58
    .line 59
    invoke-direct {p2, v3, v1}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Lteam/opay/core/card/CardNotAppliedContentDto;->b()Ljava/util/ArrayList;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    if-eqz p2, :cond_3

    .line 70
    .line 71
    const/4 v1, 0x3

    .line 72
    invoke-virtual {p0, p2, v1, p3, p4}, Lteam/opay/core/card/CardViewModel;->Y0(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    if-eqz p2, :cond_3

    .line 77
    .line 78
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 79
    .line 80
    .line 81
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    invoke-virtual {p0, p2}, Lteam/opay/core/card/CardViewModel;->X(I)Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    if-nez p2, :cond_2

    .line 90
    .line 91
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    :cond_2
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 96
    .line 97
    .line 98
    :cond_3
    invoke-virtual {p1}, Lteam/opay/core/card/CardNotAppliedContentDto;->a()Ljava/util/ArrayList;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    if-eqz p2, :cond_5

    .line 103
    .line 104
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    if-eqz p2, :cond_4

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_4
    new-instance p2, Lteam/opay/core/card/MultiDataItemEntry;

    .line 112
    .line 113
    invoke-virtual {p1}, Lteam/opay/core/card/CardNotAppliedContentDto;->a()Ljava/util/ArrayList;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-direct {p2, v2, p1}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    :cond_5
    :goto_1
    return-object v0
.end method

.method public final b2(Lteam/opay/core/card/CardPopupFrequency;IJLkotlin/jvm/functions/Function0;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/card/CardPopupFrequency;",
            "IJ",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lteam/opay/core/card/CardPopupFrequency;->getCount()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-static {v1}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :goto_0
    if-gtz v1, :cond_1

    .line 23
    .line 24
    return v0

    .line 25
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    sub-long/2addr v2, p3

    .line 30
    const p3, 0x5265c00

    .line 31
    .line 32
    .line 33
    int-to-long p3, p3

    .line 34
    div-long/2addr v2, p3

    .line 35
    long-to-int p3, v2

    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    invoke-virtual {p1}, Lteam/opay/core/card/CardPopupFrequency;->getDay()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    invoke-static {p1}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    const/4 p1, 0x0

    .line 56
    :goto_1
    const/4 p4, 0x1

    .line 57
    if-gt p3, p1, :cond_4

    .line 58
    .line 59
    if-ge p2, v1, :cond_3

    .line 60
    .line 61
    const/4 v0, 0x1

    .line 62
    :cond_3
    return v0

    .line 63
    :cond_4
    invoke-interface {p5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    return p4
.end method

.method public final c1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ACTIVATED"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const-string p1, "EXPIRED_NO_APPLY"

    .line 11
    .line 12
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    move-object v0, p1

    .line 19
    :cond_0
    return-object v0
.end method

.method public final d0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroidx/lifecycle/LiveData;
    .locals 14
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "cardClass"

    .line 2
    .line 3
    move-object v3, p1

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "securityId"

    .line 8
    .line 9
    move-object/from16 v4, p2

    .line 10
    .line 11
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "valChainId"

    .line 15
    .line 16
    move-object/from16 v5, p3

    .line 17
    .line 18
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "refreshToken"

    .line 22
    .line 23
    move-object/from16 v6, p4

    .line 24
    .line 25
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Lteam/opay/core/android/arch/RequestBuilder;

    .line 29
    .line 30
    invoke-direct {v0}, Lteam/opay/core/android/arch/RequestBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    move-object v11, p0

    .line 34
    invoke-virtual {v0, p0}, Lteam/opay/core/android/arch/RequestBuilder;->v(Landroidx/lifecycle/AndroidViewModel;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p0}, Lteam/opay/core/card/CardViewModel;->l0()Ldy1;

    .line 39
    .line 40
    .line 41
    move-result-object v12

    .line 42
    new-instance v13, Lteam/opay/core/api/CardLimitFlagReq;

    .line 43
    .line 44
    const/16 v9, 0x60

    .line 45
    .line 46
    const/4 v10, 0x0

    .line 47
    const/4 v7, 0x0

    .line 48
    const/4 v8, 0x0

    .line 49
    move-object v1, v13

    .line 50
    move/from16 v2, p5

    .line 51
    .line 52
    invoke-direct/range {v1 .. v10}, Lteam/opay/core/api/CardLimitFlagReq;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v12, v13}, Ldy1;->a(Lteam/opay/core/api/CardLimitFlagReq;)Lretrofit2/Call;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Lteam/opay/core/android/arch/RequestBuilder;->a(Lretrofit2/Call;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lteam/opay/core/android/arch/RequestBuilder;->b()Landroidx/lifecycle/LiveData;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    return-object v0
.end method

.method public final d1(Lteam/opay/core/card/CardFaceDto;ZLjava/lang/String;)Lteam/opay/core/card/CardPageTipsData;
    .locals 12

    .line 1
    new-instance v11, Lteam/opay/core/card/CardPageTipsData;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/card/CardViewModel;->u0(Lteam/opay/core/card/CardFaceDto;Z)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lteam/opay/core/card/CardFaceDto;->d()Lteam/opay/core/card/ButtonDto;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p2}, Lteam/opay/core/card/ButtonDto;->getContext()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    move-object v2, p2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v2, v0

    .line 21
    :goto_0
    invoke-virtual {p1}, Lteam/opay/core/card/CardFaceDto;->d()Lteam/opay/core/card/ButtonDto;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    if-eqz p2, :cond_1

    .line 26
    .line 27
    invoke-virtual {p2}, Lteam/opay/core/card/ButtonDto;->getJumpUrl()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    move-object v3, p2

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move-object v3, v0

    .line 34
    :goto_1
    invoke-virtual {p1}, Lteam/opay/core/card/CardFaceDto;->e()Lteam/opay/core/card/ButtonDto;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    if-eqz p2, :cond_2

    .line 39
    .line 40
    invoke-virtual {p2}, Lteam/opay/core/card/ButtonDto;->getContext()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    move-object v4, p2

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    move-object v4, v0

    .line 47
    :goto_2
    invoke-virtual {p1}, Lteam/opay/core/card/CardFaceDto;->f()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-virtual {p1}, Lteam/opay/core/card/CardFaceDto;->e()Lteam/opay/core/card/ButtonDto;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    if-eqz p2, :cond_3

    .line 56
    .line 57
    invoke-virtual {p2}, Lteam/opay/core/card/ButtonDto;->getJumpUrl()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    move-object v6, p2

    .line 62
    goto :goto_3

    .line 63
    :cond_3
    move-object v6, v0

    .line 64
    :goto_3
    invoke-virtual {p1}, Lteam/opay/core/card/CardFaceDto;->d()Lteam/opay/core/card/ButtonDto;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    if-eqz p2, :cond_4

    .line 69
    .line 70
    invoke-virtual {p2}, Lteam/opay/core/card/ButtonDto;->getButtonStyle()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    goto :goto_4

    .line 75
    :cond_4
    move-object p2, v0

    .line 76
    :goto_4
    const-string v7, "1"

    .line 77
    .line 78
    invoke-static {p2, v7}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    invoke-virtual {p1}, Lteam/opay/core/card/CardFaceDto;->e()Lteam/opay/core/card/ButtonDto;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    if-eqz v8, :cond_5

    .line 87
    .line 88
    invoke-virtual {v8}, Lteam/opay/core/card/ButtonDto;->getButtonStyle()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    :cond_5
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    invoke-virtual {p1}, Lteam/opay/core/card/CardFaceDto;->a()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v9

    .line 100
    move-object v0, v11

    .line 101
    move v7, p2

    .line 102
    move-object v10, p3

    .line 103
    invoke-direct/range {v0 .. v10}, Lteam/opay/core/card/CardPageTipsData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    return-object v11
.end method

.method public final d2(Lag8;Lteam/opay/core/api/CardDetailReq;)V
    .locals 4
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/api/CardDetailReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "lifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "req"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->u:Landroidx/lifecycle/MutableLiveData;

    .line 12
    .line 13
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lteam/opay/core/android/arch/RequestBuilder;

    .line 19
    .line 20
    invoke-direct {v0}, Lteam/opay/core/android/arch/RequestBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p0}, Lteam/opay/core/android/arch/RequestBuilder;->v(Landroidx/lifecycle/AndroidViewModel;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget-object v1, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 28
    .line 29
    invoke-static {p0}, Lloa;->c(Landroidx/lifecycle/AndroidViewModel;)Lteam/opay/pay/android/OpayApplication;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const-class v3, Ldy1;

    .line 34
    .line 35
    invoke-virtual {v1, v2, v3}, Lteam/opay/core/api/GraphQL;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Ldy1;

    .line 40
    .line 41
    invoke-interface {v1, p2}, Ldy1;->k(Lteam/opay/core/api/CardDetailReq;)Lretrofit2/Call;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {v0, p2}, Lteam/opay/core/android/arch/RequestBuilder;->a(Lretrofit2/Call;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {p2}, Lteam/opay/core/android/arch/RequestBuilder;->b()Landroidx/lifecycle/LiveData;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    new-instance v0, Lm02;

    .line 54
    .line 55
    invoke-direct {v0, p0}, Lm02;-><init>(Lteam/opay/core/card/CardViewModel;)V

    .line 56
    .line 57
    .line 58
    invoke-static {p2, p1, v0}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final f0(Ljava/lang/String;Lag8;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lag8;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "applyNo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "lifecycleOwner"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "callback"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lteam/opay/core/android/arch/RequestBuilder;

    .line 17
    .line 18
    invoke-direct {v0}, Lteam/opay/core/android/arch/RequestBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0}, Lteam/opay/core/android/arch/RequestBuilder;->v(Landroidx/lifecycle/AndroidViewModel;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0}, Lteam/opay/core/card/CardViewModel;->l0()Ldy1;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    new-instance v2, Lteam/opay/core/api/CardCloseApplyReq;

    .line 30
    .line 31
    invoke-direct {v2, p1}, Lteam/opay/core/api/CardCloseApplyReq;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v1, v2}, Ldy1;->f(Lteam/opay/core/api/CardCloseApplyReq;)Lretrofit2/Call;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v0, p1}, Lteam/opay/core/android/arch/RequestBuilder;->a(Lretrofit2/Call;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lteam/opay/core/android/arch/RequestBuilder;->b()Landroidx/lifecycle/LiveData;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    new-instance v0, Lr02;

    .line 47
    .line 48
    invoke-direct {v0, p3}, Lr02;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 49
    .line 50
    .line 51
    invoke-static {p1, p2, v0}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final f2(Lag8;Lteam/opay/core/card/VirtualRequestNowReq;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/card/VirtualRequestNowReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "lifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "virtualRequestNowReq"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->u:Landroidx/lifecycle/MutableLiveData;

    .line 12
    .line 13
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->b:Lteam/opay/core/card/CardDataRepository;

    .line 19
    .line 20
    invoke-virtual {v0, p2}, Lteam/opay/core/card/CardDataRepository;->h(Lteam/opay/core/card/VirtualRequestNowReq;)Landroidx/lifecycle/LiveData;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    new-instance v0, Lu02;

    .line 25
    .line 26
    invoke-direct {v0, p0, p3}, Lu02;-><init>(Lteam/opay/core/card/CardViewModel;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance p3, Lteam/opay/core/card/CardViewModel$b;

    .line 30
    .line 31
    invoke-direct {p3, v0}, Lteam/opay/core/card/CardViewModel$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, p1, p3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final g1(Lteam/opay/core/card/PhysicalCardData;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/card/PhysicalCardData;",
            ")",
            "Ljava/util/List<",
            "Lteam/opay/core/card/MultiDataItemEntry;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lteam/opay/core/card/MultiDataItemEntry;

    .line 7
    .line 8
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->a()Lteam/opay/core/card/PhysicalCardNativeActivated;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v2}, Lteam/opay/core/card/PhysicalCardNativeActivated;->getCardDesignUrl()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v2, v3

    .line 21
    :goto_0
    const/4 v4, 0x1

    .line 22
    invoke-direct {v1, v4, v2}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->a()Lteam/opay/core/card/PhysicalCardNativeActivated;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const/4 v2, 0x0

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeActivated;->getBlocked()Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_2

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    :goto_1
    const/4 v4, 0x0

    .line 50
    :goto_2
    const-string v1, "PHYSICAL"

    .line 51
    .line 52
    if-eqz v4, :cond_6

    .line 53
    .line 54
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->e()Lteam/opay/core/card/CardFaceDto;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    invoke-virtual {v2}, Lteam/opay/core/card/CardFaceDto;->e()Lteam/opay/core/card/ButtonDto;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    goto :goto_3

    .line 65
    :cond_3
    move-object v2, v3

    .line 66
    :goto_3
    if-nez v2, :cond_4

    .line 67
    .line 68
    const/16 v2, 0x9

    .line 69
    .line 70
    goto :goto_4

    .line 71
    :cond_4
    const/16 v2, 0x5b

    .line 72
    .line 73
    :goto_4
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->a()Lteam/opay/core/card/PhysicalCardNativeActivated;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    if-eqz v5, :cond_5

    .line 78
    .line 79
    invoke-virtual {v5}, Lteam/opay/core/card/PhysicalCardNativeActivated;->getBlockedPopupFrequency()Lteam/opay/core/card/CardPopupFrequency;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    move-object v7, v5

    .line 84
    goto :goto_5

    .line 85
    :cond_5
    move-object v7, v3

    .line 86
    :goto_5
    iget-object v5, p0, Lteam/opay/core/card/CardViewModel;->p:Lteam/opay/core/settings/NoClearStorage;

    .line 87
    .line 88
    invoke-virtual {v5}, Lteam/opay/core/settings/NoClearStorage;->x()I

    .line 89
    .line 90
    .line 91
    move-result v8

    .line 92
    iget-object v5, p0, Lteam/opay/core/card/CardViewModel;->p:Lteam/opay/core/settings/NoClearStorage;

    .line 93
    .line 94
    invoke-virtual {v5}, Lteam/opay/core/settings/NoClearStorage;->y()J

    .line 95
    .line 96
    .line 97
    move-result-wide v9

    .line 98
    new-instance v11, Ls02;

    .line 99
    .line 100
    invoke-direct {v11, p0}, Ls02;-><init>(Lteam/opay/core/card/CardViewModel;)V

    .line 101
    .line 102
    .line 103
    move-object v6, p0

    .line 104
    invoke-virtual/range {v6 .. v11}, Lteam/opay/core/card/CardViewModel;->b2(Lteam/opay/core/card/CardPopupFrequency;IJLkotlin/jvm/functions/Function0;)Z

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    if-eqz v5, :cond_7

    .line 109
    .line 110
    iput-object v1, p0, Lteam/opay/core/card/CardViewModel;->n:Ljava/lang/String;

    .line 111
    .line 112
    goto :goto_6

    .line 113
    :cond_6
    const/4 v2, 0x6

    .line 114
    :cond_7
    :goto_6
    new-instance v5, Lteam/opay/core/card/MultiDataItemEntry;

    .line 115
    .line 116
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->e()Lteam/opay/core/card/CardFaceDto;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    if-eqz v6, :cond_8

    .line 121
    .line 122
    invoke-virtual {p0, v6, v4, v1}, Lteam/opay/core/card/CardViewModel;->d1(Lteam/opay/core/card/CardFaceDto;ZLjava/lang/String;)Lteam/opay/core/card/CardPageTipsData;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    :cond_8
    invoke-direct {v5, v2, v3}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->a()Lteam/opay/core/card/PhysicalCardNativeActivated;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    if-eqz v1, :cond_9

    .line 137
    .line 138
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeActivated;->getAdBanner2Dto()Ljava/util/ArrayList;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    if-eqz v1, :cond_9

    .line 143
    .line 144
    new-instance v2, Lteam/opay/core/card/MultiDataItemEntry;

    .line 145
    .line 146
    const/16 v3, 0x29

    .line 147
    .line 148
    invoke-direct {v2, v3, v1}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    :cond_9
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->a()Lteam/opay/core/card/PhysicalCardNativeActivated;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    if-eqz v1, :cond_b

    .line 159
    .line 160
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeActivated;->getButtonList()Ljava/util/ArrayList;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    if-eqz v1, :cond_b

    .line 165
    .line 166
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->g()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->d()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    const/4 v4, 0x3

    .line 175
    invoke-virtual {p0, v1, v4, v2, v3}, Lteam/opay/core/card/CardViewModel;->Y0(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    if-eqz v1, :cond_b

    .line 180
    .line 181
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 182
    .line 183
    .line 184
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    invoke-virtual {p0, v1}, Lteam/opay/core/card/CardViewModel;->X(I)Ljava/util/List;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    if-nez v1, :cond_a

    .line 193
    .line 194
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    :cond_a
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 199
    .line 200
    .line 201
    :cond_b
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->a()Lteam/opay/core/card/PhysicalCardNativeActivated;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    if-eqz p1, :cond_c

    .line 206
    .line 207
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardNativeActivated;->getAdDto()Ljava/util/ArrayList;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    if-eqz p1, :cond_c

    .line 212
    .line 213
    new-instance v1, Lteam/opay/core/card/MultiDataItemEntry;

    .line 214
    .line 215
    const/4 v2, 0x4

    .line 216
    invoke-direct {v1, v2, p1}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    :cond_c
    return-object v0
.end method

.method public final h0(Lteam/opay/odialog/net/ADListResponse;)Lkotlin/Pair;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/odialog/net/ADListResponse;",
            ")",
            "Lkotlin/Pair<",
            "Lteam/opay/core/api/CardHomePagePopUpDtoListItem;",
            "Lteam/opay/core/api/CardHomePagePopUpDtoListItem;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lteam/opay/core/card/CardViewModel;->G:Ljava/lang/String;

    .line 4
    .line 5
    const-string v2, "PHYSICAL"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const-string v1, "Physical_card_homepage_popwindow"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v1, "Virtual_card_homepage_popwindow"

    .line 17
    .line 18
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lteam/opay/odialog/net/ADListResponse;->getAds()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const/4 v4, 0x0

    .line 23
    if-eqz v3, :cond_4

    .line 24
    .line 25
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    move-object v5, v4

    .line 30
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    if-eqz v6, :cond_5

    .line 35
    .line 36
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    check-cast v6, Lteam/opay/odialog/net/ADListItem;

    .line 41
    .line 42
    invoke-virtual {v6}, Lteam/opay/odialog/net/ADListItem;->component1()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    invoke-virtual {v6}, Lteam/opay/odialog/net/ADListItem;->component2()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    if-eqz v6, :cond_1

    .line 51
    .line 52
    const/4 v8, 0x0

    .line 53
    invoke-static {v6, v8}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    move-object/from16 v16, v6

    .line 58
    .line 59
    check-cast v16, Lteam/opay/odialog/net/AdDataItem;

    .line 60
    .line 61
    if-eqz v16, :cond_1

    .line 62
    .line 63
    new-instance v6, Lteam/opay/core/api/CardHomePagePopUpDtoListItem;

    .line 64
    .line 65
    const/16 v18, 0x100

    .line 66
    .line 67
    const/16 v19, 0x0

    .line 68
    .line 69
    const/4 v9, 0x0

    .line 70
    const/4 v10, 0x0

    .line 71
    const/4 v11, 0x0

    .line 72
    const-string v12, "card_home_pop_up_type"

    .line 73
    .line 74
    const/4 v13, 0x0

    .line 75
    const/4 v14, 0x0

    .line 76
    const/4 v15, 0x0

    .line 77
    const/16 v17, 0x0

    .line 78
    .line 79
    move-object v8, v6

    .line 80
    invoke-direct/range {v8 .. v19}, Lteam/opay/core/api/CardHomePagePopUpDtoListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/CardDataDialogShowRate;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lteam/opay/odialog/net/AdDataItem;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 81
    .line 82
    .line 83
    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    if-eqz v7, :cond_2

    .line 88
    .line 89
    iget-object v4, v0, Lteam/opay/core/card/CardViewModel;->G:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v6, v4}, Lteam/opay/core/api/CardHomePagePopUpDtoListItem;->j(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    move-object v4, v6

    .line 95
    goto :goto_1

    .line 96
    :cond_2
    iget-object v5, v0, Lteam/opay/core/card/CardViewModel;->G:Ljava/lang/String;

    .line 97
    .line 98
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    if-eqz v5, :cond_3

    .line 103
    .line 104
    const-string v5, "VIRTUAL"

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_3
    move-object v5, v2

    .line 108
    :goto_2
    invoke-virtual {v6, v5}, Lteam/opay/core/api/CardHomePagePopUpDtoListItem;->j(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    move-object v5, v6

    .line 112
    goto :goto_1

    .line 113
    :cond_4
    move-object v5, v4

    .line 114
    :cond_5
    invoke-static {v4, v5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    return-object v1
.end method

.method public final i0(Lag8;)V
    .locals 6
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "lifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 7
    .line 8
    invoke-static {p0}, Lloa;->c(Landroidx/lifecycle/AndroidViewModel;)Lteam/opay/pay/android/OpayApplication;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-class v2, Lfv;

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lteam/opay/core/api/GraphQL;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lfv;

    .line 19
    .line 20
    new-instance v1, Lteam/opay/pay/api/AllAnnouncementReq;

    .line 21
    .line 22
    new-instance v2, Lteam/opay/pay/api/AnnouncementReq;

    .line 23
    .line 24
    const-string v3, "Virtual_card_homepage_popwindow"

    .line 25
    .line 26
    invoke-direct {v2, v3}, Lteam/opay/pay/api/AnnouncementReq;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance v3, Lteam/opay/pay/api/AnnouncementReq;

    .line 30
    .line 31
    const-string v4, "Physical_card_homepage_popwindow"

    .line 32
    .line 33
    invoke-direct {v3, v4}, Lteam/opay/pay/api/AnnouncementReq;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 v4, 0x2

    .line 37
    new-array v4, v4, [Lteam/opay/pay/api/AnnouncementReq;

    .line 38
    .line 39
    const/4 v5, 0x0

    .line 40
    aput-object v2, v4, v5

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    aput-object v3, v4, v2

    .line 44
    .line 45
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->n([Ljava/lang/Object;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-direct {v1, v2}, Lteam/opay/pay/api/AllAnnouncementReq;-><init>(Ljava/util/List;)V

    .line 50
    .line 51
    .line 52
    invoke-interface {v0, v1}, Lfv;->H1(Lteam/opay/pay/api/AllAnnouncementReq;)Lretrofit2/Call;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v1, "200"

    .line 57
    .line 58
    invoke-static {v0, p0, v1}, Lkpc;->d(Lretrofit2/Call;Landroidx/lifecycle/AndroidViewModel;Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    new-instance v1, Lb12;

    .line 63
    .line 64
    invoke-direct {v1, p0}, Lb12;-><init>(Lteam/opay/core/card/CardViewModel;)V

    .line 65
    .line 66
    .line 67
    invoke-static {v0, p1, v1}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final i1(Lteam/opay/core/card/PhysicalCardData;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/card/PhysicalCardData;",
            ")",
            "Ljava/util/ArrayList<",
            "Lteam/opay/core/card/MultiDataItemEntry;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->h()Lteam/opay/core/card/PhysicalCardNativeNotApplied;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->getPhysicalApplyingDto()Lteam/opay/core/card/CardNotAppliedContentDto;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v1, v2

    .line 19
    :goto_0
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->h()Lteam/opay/core/card/PhysicalCardNativeNotApplied;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->getNoApplyType()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v3, "APPLY_NO_SUCCESS"

    .line 30
    .line 31
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->h()Lteam/opay/core/card/PhysicalCardNativeNotApplied;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->getPhysicalApplyingDto()Lteam/opay/core/card/CardNotAppliedContentDto;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->g()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->d()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p0, v1, v3, v2, p1}, Lteam/opay/core/card/CardViewModel;->b1(Lteam/opay/core/card/CardNotAppliedContentDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    new-instance v1, Lteam/opay/core/card/MultiDataItemEntry;

    .line 62
    .line 63
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->h()Lteam/opay/core/card/PhysicalCardNativeNotApplied;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    if-eqz v3, :cond_2

    .line 68
    .line 69
    invoke-virtual {v3}, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->getPhysicalNotAppliedDto()Lteam/opay/core/card/PhysicalCardNativeVisitor;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    if-eqz v3, :cond_2

    .line 74
    .line 75
    invoke-virtual {v3}, Lteam/opay/core/card/PhysicalCardNativeVisitor;->getCardDesignUrl()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    :cond_2
    const/4 v3, 0x1

    .line 80
    invoke-direct {v1, v3, v2}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->h()Lteam/opay/core/card/PhysicalCardNativeNotApplied;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    if-eqz v1, :cond_3

    .line 91
    .line 92
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->getPhysicalNotAppliedDto()Lteam/opay/core/card/PhysicalCardNativeVisitor;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    if-eqz v1, :cond_3

    .line 97
    .line 98
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeVisitor;->getIntroduceList()Ljava/util/ArrayList;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    if-eqz v1, :cond_3

    .line 103
    .line 104
    invoke-virtual {p0, v1, p1}, Lteam/opay/core/card/CardViewModel;->a1(Ljava/util/List;Lteam/opay/core/card/PhysicalCardData;)Ljava/util/List;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    if-eqz p1, :cond_3

    .line 109
    .line 110
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 111
    .line 112
    .line 113
    :cond_3
    :goto_1
    return-object v0
.end method

.method public final j1(Lteam/opay/core/card/PhysicalCardData;)Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/card/PhysicalCardData;",
            ")",
            "Ljava/util/List<",
            "Lteam/opay/core/card/MultiDataItemEntry;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    new-instance v7, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lteam/opay/core/card/MultiDataItemEntry;

    .line 9
    .line 10
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->k()Lteam/opay/core/card/PhysicalCardNativeUnActivated;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v8, 0x0

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeUnActivated;->getInWaitDto()Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->getCardFaceUrl()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-object v1, v8

    .line 29
    :goto_0
    const/4 v2, 0x1

    .line 30
    invoke-direct {v0, v2, v1}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    new-instance v9, Lteam/opay/core/card/MultiDataItemEntry;

    .line 37
    .line 38
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->e()Lteam/opay/core/card/CardFaceDto;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    const/4 v4, 0x1

    .line 45
    const/4 v5, 0x0

    .line 46
    const/4 v2, 0x0

    .line 47
    const-string v3, "PHYSICAL"

    .line 48
    .line 49
    move-object/from16 v0, p0

    .line 50
    .line 51
    invoke-static/range {v0 .. v5}, Lteam/opay/core/card/CardViewModel;->e1(Lteam/opay/core/card/CardViewModel;Lteam/opay/core/card/CardFaceDto;ZLjava/lang/String;ILjava/lang/Object;)Lteam/opay/core/card/CardPageTipsData;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-nez v0, :cond_4

    .line 56
    .line 57
    :cond_1
    new-instance v0, Lteam/opay/core/card/CardPageTipsData;

    .line 58
    .line 59
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->k()Lteam/opay/core/card/PhysicalCardNativeUnActivated;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeUnActivated;->getInWaitDto()Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->getActivateContext()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    move-object v11, v1

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    move-object v11, v8

    .line 78
    :goto_1
    sget v1, Lteam/opay/pay/R$string;->osdk_activate_card:I

    .line 79
    .line 80
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v12

    .line 84
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->k()Lteam/opay/core/card/PhysicalCardNativeUnActivated;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    if-eqz v1, :cond_3

    .line 89
    .line 90
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeUnActivated;->getInWaitDto()Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    if-eqz v1, :cond_3

    .line 95
    .line 96
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->getActivateUrl()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    :cond_3
    move-object v13, v8

    .line 101
    const/16 v21, 0x3f8

    .line 102
    .line 103
    const/16 v22, 0x0

    .line 104
    .line 105
    const/4 v14, 0x0

    .line 106
    const/4 v15, 0x0

    .line 107
    const/16 v16, 0x0

    .line 108
    .line 109
    const/16 v17, 0x0

    .line 110
    .line 111
    const/16 v18, 0x0

    .line 112
    .line 113
    const/16 v19, 0x0

    .line 114
    .line 115
    const/16 v20, 0x0

    .line 116
    .line 117
    move-object v10, v0

    .line 118
    invoke-direct/range {v10 .. v22}, Lteam/opay/core/card/CardPageTipsData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 119
    .line 120
    .line 121
    :cond_4
    const/4 v1, 0x6

    .line 122
    invoke-direct {v9, v1, v0}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->k()Lteam/opay/core/card/PhysicalCardNativeUnActivated;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    if-eqz v0, :cond_6

    .line 133
    .line 134
    invoke-virtual {v0}, Lteam/opay/core/card/PhysicalCardNativeUnActivated;->getInWaitDto()Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    if-eqz v0, :cond_6

    .line 139
    .line 140
    invoke-virtual {v0}, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->getButtonList()Ljava/util/ArrayList;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    if-eqz v0, :cond_6

    .line 145
    .line 146
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->g()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->d()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    const/4 v3, 0x3

    .line 155
    invoke-virtual {v6, v0, v3, v1, v2}, Lteam/opay/core/card/CardViewModel;->Y0(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    if-eqz v0, :cond_6

    .line 160
    .line 161
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 162
    .line 163
    .line 164
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    invoke-virtual {v6, v0}, Lteam/opay/core/card/CardViewModel;->X(I)Ljava/util/List;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    if-nez v0, :cond_5

    .line 173
    .line 174
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    :cond_5
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 179
    .line 180
    .line 181
    :cond_6
    return-object v7
.end method

.method public final k0()Lxe9;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lxe9<",
            "Lteam/opay/odialog/net/ADListResponse;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->t:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lxe9;

    .line 8
    .line 9
    return-object v0
.end method

.method public final k1(Lteam/opay/core/card/PhysicalCardData;)Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/card/PhysicalCardData;",
            ")",
            "Ljava/util/ArrayList<",
            "Lteam/opay/core/card/MultiDataItemEntry;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lteam/opay/core/card/MultiDataItemEntry;

    .line 7
    .line 8
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->h()Lteam/opay/core/card/PhysicalCardNativeNotApplied;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v2}, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->getInstantUnFinishDto()Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {v2}, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->getCardFaceUrl()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v2, v3

    .line 27
    :goto_0
    const/4 v4, 0x1

    .line 28
    invoke-direct {v1, v4, v2}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    new-instance v1, Lteam/opay/core/card/MultiDataItemEntry;

    .line 35
    .line 36
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->e()Lteam/opay/core/card/CardFaceDto;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    if-eqz v5, :cond_1

    .line 41
    .line 42
    const/4 v8, 0x1

    .line 43
    const/4 v9, 0x0

    .line 44
    const/4 v6, 0x0

    .line 45
    const-string v7, "PHYSICAL"

    .line 46
    .line 47
    move-object/from16 v4, p0

    .line 48
    .line 49
    invoke-static/range {v4 .. v9}, Lteam/opay/core/card/CardViewModel;->e1(Lteam/opay/core/card/CardViewModel;Lteam/opay/core/card/CardFaceDto;ZLjava/lang/String;ILjava/lang/Object;)Lteam/opay/core/card/CardPageTipsData;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    if-nez v2, :cond_3

    .line 54
    .line 55
    :cond_1
    new-instance v2, Lteam/opay/core/card/CardPageTipsData;

    .line 56
    .line 57
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->h()Lteam/opay/core/card/PhysicalCardNativeNotApplied;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    if-eqz v4, :cond_2

    .line 62
    .line 63
    invoke-virtual {v4}, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->getInstantUnFinishDto()Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    if-eqz v4, :cond_2

    .line 68
    .line 69
    invoke-virtual {v4}, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->getContext()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    :cond_2
    move-object v5, v3

    .line 74
    sget v3, Lteam/opay/pay/R$string;->osdk_cancel_right:I

    .line 75
    .line 76
    invoke-static {v3}, Ljmf;->k(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    const/16 v15, 0x3f8

    .line 81
    .line 82
    const/16 v16, 0x0

    .line 83
    .line 84
    const-string v7, "show_card_cancel_apply_dialog"

    .line 85
    .line 86
    const/4 v8, 0x0

    .line 87
    const/4 v9, 0x0

    .line 88
    const/4 v10, 0x0

    .line 89
    const/4 v11, 0x0

    .line 90
    const/4 v12, 0x0

    .line 91
    const/4 v13, 0x0

    .line 92
    const/4 v14, 0x0

    .line 93
    move-object v4, v2

    .line 94
    invoke-direct/range {v4 .. v16}, Lteam/opay/core/card/CardPageTipsData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 95
    .line 96
    .line 97
    :cond_3
    const/4 v3, 0x5

    .line 98
    invoke-direct {v1, v3, v2}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    return-object v0
.end method

.method public final l0()Ldy1;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->H:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ldy1;

    .line 8
    .line 9
    return-object v0
.end method

.method public final l1(Lteam/opay/core/card/PhysicalCardData;)Lkotlin/Pair;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/card/PhysicalCardData;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lteam/opay/core/card/MultiDataItemEntry;",
            ">;>;"
        }
    .end annotation

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    new-instance v7, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->k()Lteam/opay/core/card/PhysicalCardNativeUnActivated;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v8, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lteam/opay/core/card/PhysicalCardNativeUnActivated;->getInstantDto()Lteam/opay/core/card/PhysicalCardNativeUnActivatedInstantDto;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Lteam/opay/core/card/PhysicalCardNativeUnActivatedInstantDto;->getFinishDto()Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    move-object v9, v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object v9, v8

    .line 28
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->k()Lteam/opay/core/card/PhysicalCardNativeUnActivated;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0}, Lteam/opay/core/card/PhysicalCardNativeUnActivated;->getInstantDto()Lteam/opay/core/card/PhysicalCardNativeUnActivatedInstantDto;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0}, Lteam/opay/core/card/PhysicalCardNativeUnActivatedInstantDto;->getPhysicalInstantDto()Lteam/opay/core/card/CardNotAppliedContentDto;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    move-object v0, v8

    .line 46
    :goto_1
    const/4 v10, 0x1

    .line 47
    if-nez v0, :cond_8

    .line 48
    .line 49
    new-instance v0, Lteam/opay/core/card/MultiDataItemEntry;

    .line 50
    .line 51
    if-eqz v9, :cond_2

    .line 52
    .line 53
    invoke-virtual {v9}, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->getCardFaceUrl()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    move-object v1, v8

    .line 59
    :goto_2
    invoke-direct {v0, v10, v1}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    new-instance v11, Lteam/opay/core/card/MultiDataItemEntry;

    .line 66
    .line 67
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->e()Lteam/opay/core/card/CardFaceDto;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    if-eqz v1, :cond_3

    .line 72
    .line 73
    const/4 v4, 0x1

    .line 74
    const/4 v5, 0x0

    .line 75
    const/4 v2, 0x0

    .line 76
    const-string v3, "PHYSICAL"

    .line 77
    .line 78
    move-object/from16 v0, p0

    .line 79
    .line 80
    invoke-static/range {v0 .. v5}, Lteam/opay/core/card/CardViewModel;->e1(Lteam/opay/core/card/CardViewModel;Lteam/opay/core/card/CardFaceDto;ZLjava/lang/String;ILjava/lang/Object;)Lteam/opay/core/card/CardPageTipsData;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    if-nez v0, :cond_6

    .line 85
    .line 86
    :cond_3
    new-instance v0, Lteam/opay/core/card/CardPageTipsData;

    .line 87
    .line 88
    if-eqz v9, :cond_4

    .line 89
    .line 90
    invoke-virtual {v9}, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->getContext()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    move-object v13, v1

    .line 95
    goto :goto_3

    .line 96
    :cond_4
    move-object v13, v8

    .line 97
    :goto_3
    sget v1, Lteam/opay/pay/R$string;->osdk_activate_card:I

    .line 98
    .line 99
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v14

    .line 103
    if-eqz v9, :cond_5

    .line 104
    .line 105
    invoke-virtual {v9}, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->getActivateCardUrl()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    move-object v15, v1

    .line 110
    goto :goto_4

    .line 111
    :cond_5
    move-object v15, v8

    .line 112
    :goto_4
    const/16 v23, 0x3f8

    .line 113
    .line 114
    const/16 v24, 0x0

    .line 115
    .line 116
    const/16 v16, 0x0

    .line 117
    .line 118
    const/16 v17, 0x0

    .line 119
    .line 120
    const/16 v18, 0x0

    .line 121
    .line 122
    const/16 v19, 0x0

    .line 123
    .line 124
    const/16 v20, 0x0

    .line 125
    .line 126
    const/16 v21, 0x0

    .line 127
    .line 128
    const/16 v22, 0x0

    .line 129
    .line 130
    move-object v12, v0

    .line 131
    invoke-direct/range {v12 .. v24}, Lteam/opay/core/card/CardPageTipsData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 132
    .line 133
    .line 134
    :cond_6
    const/4 v1, 0x6

    .line 135
    invoke-direct {v11, v1, v0}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->k()Lteam/opay/core/card/PhysicalCardNativeUnActivated;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    if-eqz v0, :cond_9

    .line 146
    .line 147
    invoke-virtual {v0}, Lteam/opay/core/card/PhysicalCardNativeUnActivated;->getInstantDto()Lteam/opay/core/card/PhysicalCardNativeUnActivatedInstantDto;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    if-eqz v0, :cond_9

    .line 152
    .line 153
    invoke-virtual {v0}, Lteam/opay/core/card/PhysicalCardNativeUnActivatedInstantDto;->getFinishDto()Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    if-eqz v0, :cond_9

    .line 158
    .line 159
    invoke-virtual {v0}, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->getButtonList()Ljava/util/ArrayList;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    if-eqz v0, :cond_9

    .line 164
    .line 165
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->g()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->d()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    const/4 v3, 0x3

    .line 174
    invoke-virtual {v6, v0, v3, v1, v2}, Lteam/opay/core/card/CardViewModel;->Y0(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    if-eqz v0, :cond_9

    .line 179
    .line 180
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 181
    .line 182
    .line 183
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    invoke-virtual {v6, v0}, Lteam/opay/core/card/CardViewModel;->X(I)Ljava/util/List;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    if-nez v0, :cond_7

    .line 192
    .line 193
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    :cond_7
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 198
    .line 199
    .line 200
    goto :goto_5

    .line 201
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->k()Lteam/opay/core/card/PhysicalCardNativeUnActivated;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {v0}, Lteam/opay/core/card/PhysicalCardNativeUnActivated;->getInstantDto()Lteam/opay/core/card/PhysicalCardNativeUnActivatedInstantDto;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-virtual {v0}, Lteam/opay/core/card/PhysicalCardNativeUnActivatedInstantDto;->getPhysicalInstantDto()Lteam/opay/core/card/CardNotAppliedContentDto;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->g()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->d()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    const-string v3, "CARD_UN_ACTIVATE_IN_WAIT"

    .line 222
    .line 223
    invoke-virtual {v6, v0, v3, v1, v2}, Lteam/opay/core/card/CardViewModel;->b1(Lteam/opay/core/card/CardNotAppliedContentDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 228
    .line 229
    .line 230
    :cond_9
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->k()Lteam/opay/core/card/PhysicalCardNativeUnActivated;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    if-eqz v0, :cond_a

    .line 235
    .line 236
    invoke-virtual {v0}, Lteam/opay/core/card/PhysicalCardNativeUnActivated;->getInstantDto()Lteam/opay/core/card/PhysicalCardNativeUnActivatedInstantDto;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    if-eqz v0, :cond_a

    .line 241
    .line 242
    invoke-virtual {v0}, Lteam/opay/core/card/PhysicalCardNativeUnActivatedInstantDto;->getUnActivatedInstantPopupFrequency()Lteam/opay/core/card/CardPopupFrequency;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    move-object v1, v0

    .line 247
    goto :goto_6

    .line 248
    :cond_a
    move-object v1, v8

    .line 249
    :goto_6
    iget-object v0, v6, Lteam/opay/core/card/CardViewModel;->p:Lteam/opay/core/settings/NoClearStorage;

    .line 250
    .line 251
    invoke-virtual {v0}, Lteam/opay/core/settings/NoClearStorage;->b0()I

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    iget-object v0, v6, Lteam/opay/core/card/CardViewModel;->p:Lteam/opay/core/settings/NoClearStorage;

    .line 256
    .line 257
    invoke-virtual {v0}, Lteam/opay/core/settings/NoClearStorage;->c0()J

    .line 258
    .line 259
    .line 260
    move-result-wide v3

    .line 261
    new-instance v5, Lz02;

    .line 262
    .line 263
    invoke-direct {v5, v6}, Lz02;-><init>(Lteam/opay/core/card/CardViewModel;)V

    .line 264
    .line 265
    .line 266
    move-object/from16 v0, p0

    .line 267
    .line 268
    invoke-virtual/range {v0 .. v5}, Lteam/opay/core/card/CardViewModel;->b2(Lteam/opay/core/card/CardPopupFrequency;IJLkotlin/jvm/functions/Function0;)Z

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    if-eqz v0, :cond_d

    .line 273
    .line 274
    new-instance v0, Lteam/opay/core/card/CardActiviteDialogData;

    .line 275
    .line 276
    if-eqz v9, :cond_b

    .line 277
    .line 278
    invoke-virtual {v9}, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->getContext()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    goto :goto_7

    .line 283
    :cond_b
    move-object v1, v8

    .line 284
    :goto_7
    if-eqz v9, :cond_c

    .line 285
    .line 286
    invoke-virtual {v9}, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->getActivateCardUrl()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v8

    .line 290
    :cond_c
    invoke-direct {v0, v1, v8, v10}, Lteam/opay/core/card/CardActiviteDialogData;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 291
    .line 292
    .line 293
    iput-object v0, v6, Lteam/opay/core/card/CardViewModel;->m:Lteam/opay/core/card/CardActiviteDialogData;

    .line 294
    .line 295
    :cond_d
    new-instance v0, Lkotlin/Pair;

    .line 296
    .line 297
    const-string v1, "PHYSICAL_INSTANT_WAIT_ACTIVATED"

    .line 298
    .line 299
    invoke-direct {v0, v1, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    return-object v0
.end method

.method public m()Lteam/opay/core/api/GraphQL$User;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->c:Lteam/opay/core/api/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lteam/opay/core/api/e;->m()Lteam/opay/core/api/GraphQL$User;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final m0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final n0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/core/card/CardConfirmCloseEventData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->z:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final n1(Lteam/opay/core/card/PhysicalCardData;)Lkotlin/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/card/PhysicalCardData;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lteam/opay/core/card/MultiDataItemEntry;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->a()Lteam/opay/core/card/PhysicalCardNativeActivated;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeActivated;->getActivatedType()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v1, v2

    .line 19
    :goto_0
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->e()Lteam/opay/core/card/CardFaceDto;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    invoke-virtual {v3}, Lteam/opay/core/card/CardFaceDto;->g()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move-object v3, v2

    .line 31
    :goto_1
    if-eqz v3, :cond_3

    .line 32
    .line 33
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->e()Lteam/opay/core/card/CardFaceDto;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    invoke-virtual {v3}, Lteam/opay/core/card/CardFaceDto;->d()Lteam/opay/core/card/ButtonDto;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    move-object v3, v2

    .line 45
    :goto_2
    if-eqz v3, :cond_3

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Lteam/opay/core/card/CardViewModel;->g1(Lteam/opay/core/card/PhysicalCardData;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_3
    const-string v3, "NO_EXPIRE_NO_APPLY"

    .line 56
    .line 57
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_4

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Lteam/opay/core/card/CardViewModel;->s0(Lteam/opay/core/card/PhysicalCardData;)Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 68
    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_4
    const-string v3, "NO_EXPIRE_APPLY_PHYSICAL"

    .line 72
    .line 73
    const-string v4, "NO_EXPIRE_APPLY_INSTANT"

    .line 74
    .line 75
    filled-new-array {v3, v4}, [Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->n([Ljava/lang/Object;)Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-static {v3, v1}, Lkotlin/collections/CollectionsKt;->X(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eqz v3, :cond_5

    .line 88
    .line 89
    invoke-virtual {p0, p1}, Lteam/opay/core/card/CardViewModel;->r0(Lteam/opay/core/card/PhysicalCardData;)Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 94
    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_5
    const-string v3, "FIRST_TRANS"

    .line 98
    .line 99
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_6

    .line 104
    .line 105
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->a()Lteam/opay/core/card/PhysicalCardNativeActivated;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeActivated;->getPhysicalFirstTransDto()Lteam/opay/core/card/CardNotAppliedContentDto;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    if-eqz v1, :cond_7

    .line 114
    .line 115
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->g()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->d()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    const-string v4, "CARD_NO_TRANSACT"

    .line 124
    .line 125
    invoke-virtual {p0, v1, v4, v3, p1}, Lteam/opay/core/card/CardViewModel;->b1(Lteam/opay/core/card/CardNotAppliedContentDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    if-eqz p1, :cond_7

    .line 130
    .line 131
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 132
    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_6
    invoke-virtual {p0, p1}, Lteam/opay/core/card/CardViewModel;->o1(Lteam/opay/core/card/PhysicalCardData;)Ljava/util/List;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 140
    .line 141
    .line 142
    :cond_7
    :goto_3
    new-instance p1, Lteam/opay/core/card/MultiDataItemEntry;

    .line 143
    .line 144
    const/16 v1, 0xa

    .line 145
    .line 146
    invoke-direct {p1, v1, v2}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    const-string p1, "PHYSICAL_ACTIVATED"

    .line 153
    .line 154
    invoke-static {p1, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    return-object p1
.end method

.method public o()Lteam/opay/core/api/Country;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->c:Lteam/opay/core/api/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lteam/opay/core/api/e;->o()Lteam/opay/core/api/Country;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final o0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lteam/opay/core/card/CardDetailsData;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->y:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final o1(Lteam/opay/core/card/PhysicalCardData;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/card/PhysicalCardData;",
            ")",
            "Ljava/util/List<",
            "Lteam/opay/core/card/MultiDataItemEntry;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lteam/opay/core/card/MultiDataItemEntry;

    .line 7
    .line 8
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->a()Lteam/opay/core/card/PhysicalCardNativeActivated;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v2}, Lteam/opay/core/card/PhysicalCardNativeActivated;->getCardDesignUrl()Ljava/lang/String;

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
    invoke-direct {v1, v3, v2}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    new-instance v1, Lteam/opay/core/card/MultiDataItemEntry;

    .line 28
    .line 29
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->a()Lteam/opay/core/card/PhysicalCardNativeActivated;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {p0, v2}, Lteam/opay/core/card/CardViewModel;->t0(Lteam/opay/core/card/PhysicalCardNativeActivated;)Lteam/opay/core/card/CardNumberItemData;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const/16 v3, 0x8

    .line 38
    .line 39
    invoke-direct {v1, v3, v2}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->a()Lteam/opay/core/card/PhysicalCardNativeActivated;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeActivated;->getAdBanner2Dto()Ljava/util/ArrayList;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    new-instance v2, Lteam/opay/core/card/MultiDataItemEntry;

    .line 58
    .line 59
    const/16 v3, 0x29

    .line 60
    .line 61
    invoke-direct {v2, v3, v1}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    :cond_1
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->a()Lteam/opay/core/card/PhysicalCardNativeActivated;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    if-eqz v1, :cond_3

    .line 72
    .line 73
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeActivated;->getButtonList()Ljava/util/ArrayList;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    if-eqz v1, :cond_3

    .line 78
    .line 79
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->g()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->d()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    const/4 v4, 0x3

    .line 88
    invoke-virtual {p0, v1, v4, v2, v3}, Lteam/opay/core/card/CardViewModel;->Y0(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    if-eqz v1, :cond_3

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 95
    .line 96
    .line 97
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    invoke-virtual {p0, v1}, Lteam/opay/core/card/CardViewModel;->X(I)Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    if-nez v1, :cond_2

    .line 106
    .line 107
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 112
    .line 113
    .line 114
    :cond_3
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->a()Lteam/opay/core/card/PhysicalCardNativeActivated;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    if-eqz p1, :cond_4

    .line 119
    .line 120
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardNativeActivated;->getAdDto()Ljava/util/ArrayList;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    if-eqz p1, :cond_4

    .line 125
    .line 126
    new-instance v1, Lteam/opay/core/card/MultiDataItemEntry;

    .line 127
    .line 128
    const/4 v2, 0x4

    .line 129
    invoke-direct {v1, v2, p1}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    :cond_4
    return-object v0
.end method

.method public p()Lteam/opay/core/api/GraphQL$Currency;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->c:Lteam/opay/core/api/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lteam/opay/core/api/e;->p()Lteam/opay/core/api/GraphQL$Currency;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final p0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Pair<",
            "Ljava/util/List<",
            "Lteam/opay/core/api/CardHomePagePopUpDtoListItem;",
            ">;",
            "Ljava/util/List<",
            "Lteam/opay/core/api/CardHomePagePopUpDtoListItem;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->J:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    return-object v0
.end method

.method public final p1(Lteam/opay/core/card/PhysicalCardData;)Lkotlin/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/card/PhysicalCardData;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lteam/opay/core/card/MultiDataItemEntry;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->h()Lteam/opay/core/card/PhysicalCardNativeNotApplied;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->getCardClassify()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    :goto_0
    const-string v2, "PHYSICAL"

    .line 18
    .line 19
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lteam/opay/core/card/CardViewModel;->i1(Lteam/opay/core/card/PhysicalCardData;)Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string p1, "PHYSICAL_NOT_APPLIED"

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const-string v2, "INSTANT"

    .line 33
    .line 34
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lteam/opay/core/card/CardViewModel;->k1(Lteam/opay/core/card/PhysicalCardData;)Ljava/util/ArrayList;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string p1, "INSTANT_NOT_APPLIED"

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    const-string p1, ""

    .line 48
    .line 49
    :goto_1
    new-instance v1, Lkotlin/Pair;

    .line 50
    .line 51
    invoke-direct {v1, p1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    return-object v1
.end method

.method public final q0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/core/card/CardPageData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->q:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    return-object v0
.end method

.method public final q1(Lteam/opay/core/card/PhysicalCardData;)Lkotlin/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/card/PhysicalCardData;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lteam/opay/core/card/MultiDataItemEntry;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->k()Lteam/opay/core/card/PhysicalCardNativeUnActivated;

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
    invoke-virtual {v0}, Lteam/opay/core/card/PhysicalCardNativeUnActivated;->getUnActivatedType()Ljava/lang/String;

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
    if-eqz v0, :cond_5

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    sparse-switch v2, :sswitch_data_0

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :sswitch_0
    const-string v2, "INSTANT_WAIT_ACTIVATED"

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-virtual {p0, p1}, Lteam/opay/core/card/CardViewModel;->l1(Lteam/opay/core/card/PhysicalCardData;)Lkotlin/Pair;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    goto :goto_1

    .line 38
    :sswitch_1
    const-string v2, "UN_IN"

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    invoke-virtual {p0, p1}, Lteam/opay/core/card/CardViewModel;->r1(Lteam/opay/core/card/PhysicalCardData;)Lkotlin/Pair;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    goto :goto_1

    .line 52
    :sswitch_2
    const-string v2, "WAIT_ACTIVATED"

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_3

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    invoke-virtual {p0, p1}, Lteam/opay/core/card/CardViewModel;->t1(Lteam/opay/core/card/PhysicalCardData;)Lkotlin/Pair;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    goto :goto_1

    .line 66
    :sswitch_3
    const-string v2, "PICK_WAIT_ACTIVATED"

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_4

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_4
    invoke-virtual {p0, p1}, Lteam/opay/core/card/CardViewModel;->v1(Lteam/opay/core/card/PhysicalCardData;)Lkotlin/Pair;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    :cond_5
    :goto_1
    return-object v1

    .line 80
    nop

    .line 81
    :sswitch_data_0
    .sparse-switch
        -0x6aaba0bb -> :sswitch_3
        -0x48213099 -> :sswitch_2
        0x4d2b08b -> :sswitch_1
        0x5911b1a5 -> :sswitch_0
    .end sparse-switch
.end method

.method public final r0(Lteam/opay/core/card/PhysicalCardData;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/card/PhysicalCardData;",
            ")",
            "Ljava/util/List<",
            "Lteam/opay/core/card/MultiDataItemEntry;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->a()Lteam/opay/core/card/PhysicalCardNativeActivated;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1

    .line 17
    :cond_0
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeActivated;->getTopAdDto()Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const/4 v3, 0x4

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    new-instance v4, Lteam/opay/core/card/MultiDataItemEntry;

    .line 25
    .line 26
    invoke-direct {v4, v3, v2}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    :cond_1
    new-instance v2, Lteam/opay/core/card/MultiDataItemEntry;

    .line 33
    .line 34
    const/4 v4, 0x1

    .line 35
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeActivated;->getCardDesignUrl()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-direct {v2, v4, v5}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    new-instance v2, Lteam/opay/core/card/MultiDataItemEntry;

    .line 46
    .line 47
    const/16 v4, 0x8

    .line 48
    .line 49
    invoke-virtual {p0, v1}, Lteam/opay/core/card/CardViewModel;->t0(Lteam/opay/core/card/PhysicalCardNativeActivated;)Lteam/opay/core/card/CardNumberItemData;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-direct {v2, v4, v5}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeActivated;->getMidButton()Lteam/opay/core/card/ButtonDto;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    if-eqz v2, :cond_2

    .line 64
    .line 65
    new-instance v2, Lteam/opay/core/card/MultiDataItemEntry;

    .line 66
    .line 67
    const/16 v4, 0xd

    .line 68
    .line 69
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeActivated;->getMidButton()Lteam/opay/core/card/ButtonDto;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-direct {v2, v4, v5}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    :cond_2
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeActivated;->getAdBanner2Dto()Ljava/util/ArrayList;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    if-eqz v2, :cond_3

    .line 84
    .line 85
    new-instance v4, Lteam/opay/core/card/MultiDataItemEntry;

    .line 86
    .line 87
    const/16 v5, 0x29

    .line 88
    .line 89
    invoke-direct {v4, v5, v2}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    :cond_3
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeActivated;->getButtonList()Ljava/util/ArrayList;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    if-eqz v2, :cond_5

    .line 100
    .line 101
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->g()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->d()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    const/4 v5, 0x3

    .line 110
    invoke-virtual {p0, v2, v5, v4, p1}, Lteam/opay/core/card/CardViewModel;->Y0(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    if-eqz p1, :cond_5

    .line 115
    .line 116
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 117
    .line 118
    .line 119
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    invoke-virtual {p0, p1}, Lteam/opay/core/card/CardViewModel;->X(I)Ljava/util/List;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    if-nez p1, :cond_4

    .line 128
    .line 129
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    :cond_4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 134
    .line 135
    .line 136
    :cond_5
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeActivated;->getAdDto()Ljava/util/ArrayList;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    if-eqz p1, :cond_6

    .line 141
    .line 142
    new-instance v1, Lteam/opay/core/card/MultiDataItemEntry;

    .line 143
    .line 144
    invoke-direct {v1, v3, p1}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    :cond_6
    return-object v0
.end method

.method public final r1(Lteam/opay/core/card/PhysicalCardData;)Lkotlin/Pair;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/card/PhysicalCardData;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lteam/opay/core/card/MultiDataItemEntry;",
            ">;>;"
        }
    .end annotation

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    new-instance v7, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->e()Lteam/opay/core/card/CardFaceDto;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v8, 0x0

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v2, 0x0

    .line 18
    const-string v3, "PHYSICAL"

    .line 19
    .line 20
    move-object/from16 v0, p0

    .line 21
    .line 22
    invoke-static/range {v0 .. v5}, Lteam/opay/core/card/CardViewModel;->e1(Lteam/opay/core/card/CardViewModel;Lteam/opay/core/card/CardFaceDto;ZLjava/lang/String;ILjava/lang/Object;)Lteam/opay/core/card/CardPageTipsData;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object v9, v0

    .line 30
    goto :goto_3

    .line 31
    :cond_1
    :goto_0
    new-instance v0, Lteam/opay/core/card/CardPageTipsData;

    .line 32
    .line 33
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->k()Lteam/opay/core/card/PhysicalCardNativeUnActivated;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeUnActivated;->getUnInDto()Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->getContext()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    move-object v10, v1

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    move-object v10, v8

    .line 52
    :goto_1
    sget v1, Lteam/opay/pay/R$string;->osdk_view_details_right:I

    .line 53
    .line 54
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v11

    .line 58
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->k()Lteam/opay/core/card/PhysicalCardNativeUnActivated;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    if-eqz v1, :cond_3

    .line 63
    .line 64
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeUnActivated;->getUnInDto()Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    if-eqz v1, :cond_3

    .line 69
    .line 70
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->getViewDetailUrl()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    move-object v12, v1

    .line 75
    goto :goto_2

    .line 76
    :cond_3
    move-object v12, v8

    .line 77
    :goto_2
    const/16 v20, 0x3f8

    .line 78
    .line 79
    const/16 v21, 0x0

    .line 80
    .line 81
    const/4 v13, 0x0

    .line 82
    const/4 v14, 0x0

    .line 83
    const/4 v15, 0x0

    .line 84
    const/16 v16, 0x0

    .line 85
    .line 86
    const/16 v17, 0x0

    .line 87
    .line 88
    const/16 v18, 0x0

    .line 89
    .line 90
    const/16 v19, 0x0

    .line 91
    .line 92
    move-object v9, v0

    .line 93
    invoke-direct/range {v9 .. v21}, Lteam/opay/core/card/CardPageTipsData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 94
    .line 95
    .line 96
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->k()Lteam/opay/core/card/PhysicalCardNativeUnActivated;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    if-eqz v0, :cond_4

    .line 101
    .line 102
    invoke-virtual {v0}, Lteam/opay/core/card/PhysicalCardNativeUnActivated;->getUnInDto()Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    if-eqz v0, :cond_4

    .line 107
    .line 108
    invoke-virtual {v0}, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->getPhysicalUnInDto()Lteam/opay/core/card/CardNotAppliedContentDto;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    goto :goto_4

    .line 113
    :cond_4
    move-object v0, v8

    .line 114
    :goto_4
    if-nez v0, :cond_5

    .line 115
    .line 116
    move-object/from16 v0, p1

    .line 117
    .line 118
    invoke-virtual {v6, v0, v9}, Lteam/opay/core/card/CardViewModel;->R0(Lteam/opay/core/card/PhysicalCardData;Lteam/opay/core/card/CardPageTipsData;)Ljava/util/List;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 123
    .line 124
    .line 125
    goto :goto_5

    .line 126
    :cond_5
    move-object/from16 v0, p1

    .line 127
    .line 128
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->k()Lteam/opay/core/card/PhysicalCardNativeUnActivated;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeUnActivated;->getUnInDto()Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->getPhysicalUnInDto()Lteam/opay/core/card/CardNotAppliedContentDto;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->g()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->d()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    const-string v4, "CARD_UN_ACTIVATE_IN_WAIT"

    .line 149
    .line 150
    invoke-virtual {v6, v1, v4, v2, v3}, Lteam/opay/core/card/CardViewModel;->b1(Lteam/opay/core/card/CardNotAppliedContentDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 155
    .line 156
    .line 157
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/card/PhysicalCardData;->k()Lteam/opay/core/card/PhysicalCardNativeUnActivated;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    if-eqz v0, :cond_6

    .line 162
    .line 163
    invoke-virtual {v0}, Lteam/opay/core/card/PhysicalCardNativeUnActivated;->getUnInDto()Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    if-eqz v0, :cond_6

    .line 168
    .line 169
    invoke-virtual {v0}, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->getUnInPopupFrequency()Lteam/opay/core/card/CardPopupFrequency;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    move-object v1, v0

    .line 174
    goto :goto_6

    .line 175
    :cond_6
    move-object v1, v8

    .line 176
    :goto_6
    iget-object v0, v6, Lteam/opay/core/card/CardViewModel;->p:Lteam/opay/core/settings/NoClearStorage;

    .line 177
    .line 178
    invoke-virtual {v0}, Lteam/opay/core/settings/NoClearStorage;->I()I

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    iget-object v0, v6, Lteam/opay/core/card/CardViewModel;->p:Lteam/opay/core/settings/NoClearStorage;

    .line 183
    .line 184
    invoke-virtual {v0}, Lteam/opay/core/settings/NoClearStorage;->J()J

    .line 185
    .line 186
    .line 187
    move-result-wide v3

    .line 188
    new-instance v5, La12;

    .line 189
    .line 190
    invoke-direct {v5, v6}, La12;-><init>(Lteam/opay/core/card/CardViewModel;)V

    .line 191
    .line 192
    .line 193
    move-object/from16 v0, p0

    .line 194
    .line 195
    invoke-virtual/range {v0 .. v5}, Lteam/opay/core/card/CardViewModel;->b2(Lteam/opay/core/card/CardPopupFrequency;IJLkotlin/jvm/functions/Function0;)Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    if-eqz v0, :cond_7

    .line 200
    .line 201
    iput-object v9, v6, Lteam/opay/core/card/CardViewModel;->o:Lteam/opay/core/card/CardPageTipsData;

    .line 202
    .line 203
    :cond_7
    new-instance v0, Lkotlin/Pair;

    .line 204
    .line 205
    const-string v1, "PHYSICAL_UN_IN"

    .line 206
    .line 207
    invoke-direct {v0, v1, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    return-object v0
.end method

.method public final s0(Lteam/opay/core/card/PhysicalCardData;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/card/PhysicalCardData;",
            ")",
            "Ljava/util/List<",
            "Lteam/opay/core/card/MultiDataItemEntry;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->a()Lteam/opay/core/card/PhysicalCardNativeActivated;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x4

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeActivated;->getTopAdDto()Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    new-instance v4, Lteam/opay/core/card/MultiDataItemEntry;

    .line 20
    .line 21
    invoke-direct {v4, v2, v3}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    const/4 v3, 0x0

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeActivated;->getMidButton()Lteam/opay/core/card/ButtonDto;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move-object v4, v3

    .line 36
    :goto_0
    if-nez v4, :cond_3

    .line 37
    .line 38
    new-instance v4, Lteam/opay/core/card/MultiDataItemEntry;

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeActivated;->getCardDesignUrl()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    :cond_2
    const/4 v5, 0x1

    .line 47
    invoke-direct {v4, v5, v3}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    new-instance v3, Lteam/opay/core/card/MultiDataItemEntry;

    .line 54
    .line 55
    const/16 v4, 0x8

    .line 56
    .line 57
    invoke-virtual {p0, v1}, Lteam/opay/core/card/CardViewModel;->t0(Lteam/opay/core/card/PhysicalCardNativeActivated;)Lteam/opay/core/card/CardNumberItemData;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-direct {v3, v4, v5}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    new-instance v3, Lteam/opay/core/card/PhyNotApplyContentItemData;

    .line 69
    .line 70
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeActivated;->getCardExpiredContext()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeActivated;->getCardDesignUrl()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeActivated;->getMidButton()Lteam/opay/core/card/ButtonDto;

    .line 79
    .line 80
    .line 81
    move-result-object v9

    .line 82
    const/4 v10, 0x0

    .line 83
    const-string v11, "CARD_EXPIRED_IN_15_DAYS"

    .line 84
    .line 85
    move-object v6, v3

    .line 86
    invoke-direct/range {v6 .. v11}, Lteam/opay/core/card/PhyNotApplyContentItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/card/ButtonDto;Lteam/opay/core/card/ButtonDto;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    new-instance v4, Lteam/opay/core/card/MultiDataItemEntry;

    .line 90
    .line 91
    const/16 v5, 0xc

    .line 92
    .line 93
    invoke-direct {v4, v5, v3}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    :goto_1
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->a()Lteam/opay/core/card/PhysicalCardNativeActivated;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    if-eqz v3, :cond_4

    .line 104
    .line 105
    invoke-virtual {v3}, Lteam/opay/core/card/PhysicalCardNativeActivated;->getAdBanner2Dto()Ljava/util/ArrayList;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    if-eqz v3, :cond_4

    .line 110
    .line 111
    new-instance v4, Lteam/opay/core/card/MultiDataItemEntry;

    .line 112
    .line 113
    const/16 v5, 0x29

    .line 114
    .line 115
    invoke-direct {v4, v5, v3}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    :cond_4
    if-eqz v1, :cond_6

    .line 122
    .line 123
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeActivated;->getButtonList()Ljava/util/ArrayList;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    if-eqz v3, :cond_6

    .line 128
    .line 129
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->g()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->d()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    const/4 v5, 0x3

    .line 138
    invoke-virtual {p0, v3, v5, v4, p1}, Lteam/opay/core/card/CardViewModel;->Y0(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    if-eqz p1, :cond_6

    .line 143
    .line 144
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 145
    .line 146
    .line 147
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    invoke-virtual {p0, p1}, Lteam/opay/core/card/CardViewModel;->X(I)Ljava/util/List;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    if-nez p1, :cond_5

    .line 156
    .line 157
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    :cond_5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 162
    .line 163
    .line 164
    :cond_6
    if-eqz v1, :cond_7

    .line 165
    .line 166
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeActivated;->getAdDto()Ljava/util/ArrayList;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    if-eqz p1, :cond_7

    .line 171
    .line 172
    new-instance v1, Lteam/opay/core/card/MultiDataItemEntry;

    .line 173
    .line 174
    invoke-direct {v1, v2, p1}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    :cond_7
    return-object v0
.end method

.method public final t0(Lteam/opay/core/card/PhysicalCardNativeActivated;)Lteam/opay/core/card/CardNumberItemData;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardNativeActivated;->getPrefix6CardNo()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v1, v0

    .line 10
    :goto_0
    const-string v2, "*********"

    .line 11
    .line 12
    if-eqz v1, :cond_7

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const v4, 0x5bb0d185

    .line 19
    .line 20
    .line 21
    const-string v5, "******"

    .line 22
    .line 23
    if-eq v3, v4, :cond_5

    .line 24
    .line 25
    const v4, 0x5d2e8b58

    .line 26
    .line 27
    .line 28
    if-eq v3, v4, :cond_3

    .line 29
    .line 30
    const v4, 0x5d2f1a97

    .line 31
    .line 32
    .line 33
    if-eq v3, v4, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const-string v3, "507872"

    .line 37
    .line 38
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardNativeActivated;->getPrefix6CardNo()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardNativeActivated;->getLast4CardNo()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    goto/16 :goto_4

    .line 72
    .line 73
    :cond_3
    const-string v3, "506124"

    .line 74
    .line 75
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-nez v1, :cond_4

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_4
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardNativeActivated;->getPrefix6CardNo()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardNativeActivated;->getLast4CardNo()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    goto :goto_4

    .line 109
    :cond_5
    const-string v3, "443910"

    .line 110
    .line 111
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-nez v1, :cond_6

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_6
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardNativeActivated;->getPrefix6CardNo()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardNativeActivated;->getLast4CardNo()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    goto :goto_4

    .line 145
    :cond_7
    :goto_1
    if-eqz p1, :cond_8

    .line 146
    .line 147
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardNativeActivated;->getPrefix6CardNo()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    goto :goto_2

    .line 152
    :cond_8
    move-object v1, v0

    .line 153
    :goto_2
    if-eqz p1, :cond_9

    .line 154
    .line 155
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardNativeActivated;->getLast4CardNo()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    goto :goto_3

    .line 160
    :cond_9
    move-object v3, v0

    .line 161
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    :goto_4
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 180
    .line 181
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 182
    .line 183
    .line 184
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 185
    .line 186
    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 187
    .line 188
    .line 189
    if-eqz p1, :cond_12

    .line 190
    .line 191
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardNativeActivated;->getHomePageActivityAtmosphereDto()Ljava/util/List;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    if-eqz p1, :cond_12

    .line 196
    .line 197
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    :cond_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 202
    .line 203
    .line 204
    move-result v4

    .line 205
    const-string v5, "1"

    .line 206
    .line 207
    if-eqz v4, :cond_b

    .line 208
    .line 209
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    move-object v6, v4

    .line 214
    check-cast v6, Lteam/opay/core/card/HomePageActivityAtmosphereDto;

    .line 215
    .line 216
    invoke-virtual {v6}, Lteam/opay/core/card/HomePageActivityAtmosphereDto;->getActivityId()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v6

    .line 220
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v6

    .line 224
    if-eqz v6, :cond_a

    .line 225
    .line 226
    goto :goto_5

    .line 227
    :cond_b
    move-object v4, v0

    .line 228
    :goto_5
    check-cast v4, Lteam/opay/core/card/HomePageActivityAtmosphereDto;

    .line 229
    .line 230
    if-eqz v4, :cond_12

    .line 231
    .line 232
    invoke-virtual {v4}, Lteam/opay/core/card/HomePageActivityAtmosphereDto;->getActivityAtmosphere()Ljava/util/List;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    if-eqz p1, :cond_e

    .line 237
    .line 238
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    :cond_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 243
    .line 244
    .line 245
    move-result v6

    .line 246
    if-eqz v6, :cond_d

    .line 247
    .line 248
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v6

    .line 252
    move-object v7, v6

    .line 253
    check-cast v7, Lteam/opay/core/card/ActivityAtmosphere;

    .line 254
    .line 255
    invoke-virtual {v7}, Lteam/opay/core/card/ActivityAtmosphere;->getLocation()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v7

    .line 259
    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v7

    .line 263
    if-eqz v7, :cond_c

    .line 264
    .line 265
    goto :goto_6

    .line 266
    :cond_d
    move-object v6, v0

    .line 267
    :goto_6
    check-cast v6, Lteam/opay/core/card/ActivityAtmosphere;

    .line 268
    .line 269
    if-eqz v6, :cond_e

    .line 270
    .line 271
    invoke-virtual {v6}, Lteam/opay/core/card/ActivityAtmosphere;->getImageUrl()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    goto :goto_7

    .line 276
    :cond_e
    move-object p1, v0

    .line 277
    :goto_7
    iput-object p1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 278
    .line 279
    invoke-virtual {v4}, Lteam/opay/core/card/HomePageActivityAtmosphereDto;->getActivityAtmosphere()Ljava/util/List;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    if-eqz p1, :cond_11

    .line 284
    .line 285
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    :cond_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 290
    .line 291
    .line 292
    move-result v4

    .line 293
    if-eqz v4, :cond_10

    .line 294
    .line 295
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v4

    .line 299
    move-object v5, v4

    .line 300
    check-cast v5, Lteam/opay/core/card/ActivityAtmosphere;

    .line 301
    .line 302
    invoke-virtual {v5}, Lteam/opay/core/card/ActivityAtmosphere;->getLocation()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v5

    .line 306
    const-string v6, "2"

    .line 307
    .line 308
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    move-result v5

    .line 312
    if-eqz v5, :cond_f

    .line 313
    .line 314
    goto :goto_8

    .line 315
    :cond_10
    move-object v4, v0

    .line 316
    :goto_8
    check-cast v4, Lteam/opay/core/card/ActivityAtmosphere;

    .line 317
    .line 318
    if-eqz v4, :cond_11

    .line 319
    .line 320
    invoke-virtual {v4}, Lteam/opay/core/card/ActivityAtmosphere;->getImageUrl()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    :cond_11
    iput-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 325
    .line 326
    :cond_12
    new-instance p1, Lteam/opay/core/card/CardNumberItemData;

    .line 327
    .line 328
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 329
    .line 330
    check-cast v0, Ljava/lang/String;

    .line 331
    .line 332
    iget-object v2, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 333
    .line 334
    check-cast v2, Ljava/lang/String;

    .line 335
    .line 336
    invoke-direct {p1, v1, v0, v2}, Lteam/opay/core/card/CardNumberItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    return-object p1
.end method

.method public final t1(Lteam/opay/core/card/PhysicalCardData;)Lkotlin/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/card/PhysicalCardData;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lteam/opay/core/card/MultiDataItemEntry;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->k()Lteam/opay/core/card/PhysicalCardNativeUnActivated;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeUnActivated;->getInWaitDto()Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->getPhysicalInWaitDto()Lteam/opay/core/card/CardNotAppliedContentDto;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object v1, v2

    .line 25
    :goto_0
    if-nez v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lteam/opay/core/card/CardViewModel;->j1(Lteam/opay/core/card/PhysicalCardData;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->k()Lteam/opay/core/card/PhysicalCardNativeUnActivated;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeUnActivated;->getInWaitDto()Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->getPhysicalInWaitDto()Lteam/opay/core/card/CardNotAppliedContentDto;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->g()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->d()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    const-string v5, "CARD_UN_ACTIVATE_IN_WAIT"

    .line 56
    .line 57
    invoke-virtual {p0, v1, v5, v3, v4}, Lteam/opay/core/card/CardViewModel;->b1(Lteam/opay/core/card/CardNotAppliedContentDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 62
    .line 63
    .line 64
    :goto_1
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->k()Lteam/opay/core/card/PhysicalCardNativeUnActivated;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    if-eqz v1, :cond_2

    .line 69
    .line 70
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeUnActivated;->getInWaitDto()Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    if-eqz v1, :cond_2

    .line 75
    .line 76
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->getInWaitPopupFrequency()Lteam/opay/core/card/CardPopupFrequency;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    move-object v4, v1

    .line 81
    goto :goto_2

    .line 82
    :cond_2
    move-object v4, v2

    .line 83
    :goto_2
    iget-object v1, p0, Lteam/opay/core/card/CardViewModel;->p:Lteam/opay/core/settings/NoClearStorage;

    .line 84
    .line 85
    invoke-virtual {v1}, Lteam/opay/core/settings/NoClearStorage;->n0()I

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    iget-object v1, p0, Lteam/opay/core/card/CardViewModel;->p:Lteam/opay/core/settings/NoClearStorage;

    .line 90
    .line 91
    invoke-virtual {v1}, Lteam/opay/core/settings/NoClearStorage;->o0()J

    .line 92
    .line 93
    .line 94
    move-result-wide v6

    .line 95
    new-instance v8, Lv02;

    .line 96
    .line 97
    invoke-direct {v8, p0}, Lv02;-><init>(Lteam/opay/core/card/CardViewModel;)V

    .line 98
    .line 99
    .line 100
    move-object v3, p0

    .line 101
    invoke-virtual/range {v3 .. v8}, Lteam/opay/core/card/CardViewModel;->b2(Lteam/opay/core/card/CardPopupFrequency;IJLkotlin/jvm/functions/Function0;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_5

    .line 106
    .line 107
    new-instance v1, Lteam/opay/core/card/CardActiviteDialogData;

    .line 108
    .line 109
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->k()Lteam/opay/core/card/PhysicalCardNativeUnActivated;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    if-eqz v3, :cond_3

    .line 114
    .line 115
    invoke-virtual {v3}, Lteam/opay/core/card/PhysicalCardNativeUnActivated;->getInWaitDto()Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    if-eqz v3, :cond_3

    .line 120
    .line 121
    invoke-virtual {v3}, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->getActivateContext()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    goto :goto_3

    .line 126
    :cond_3
    move-object v3, v2

    .line 127
    :goto_3
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->k()Lteam/opay/core/card/PhysicalCardNativeUnActivated;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    if-eqz p1, :cond_4

    .line 132
    .line 133
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardNativeUnActivated;->getInWaitDto()Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    if-eqz p1, :cond_4

    .line 138
    .line 139
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->getActivateUrl()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    :cond_4
    const/4 p1, 0x0

    .line 144
    invoke-direct {v1, v3, v2, p1}, Lteam/opay/core/card/CardActiviteDialogData;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 145
    .line 146
    .line 147
    iput-object v1, p0, Lteam/opay/core/card/CardViewModel;->m:Lteam/opay/core/card/CardActiviteDialogData;

    .line 148
    .line 149
    :cond_5
    new-instance p1, Lkotlin/Pair;

    .line 150
    .line 151
    const-string v1, "PHYSICAL_WAIT_ACTIVATED"

    .line 152
    .line 153
    invoke-direct {p1, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    return-object p1
.end method

.method public final u0(Lteam/opay/core/card/CardFaceDto;Z)Ljava/lang/String;
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/core/card/CardFaceDto;->g()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Lteam/opay/core/card/CardFaceDto;->e()Lteam/opay/core/card/ButtonDto;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Lteam/opay/core/card/CardFaceDto;->c()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p1}, Lteam/opay/core/card/CardFaceDto;->b()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :goto_0
    return-object p1
.end method

.method public final v0()Lteam/opay/core/card/CardPageTipsData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->o:Lteam/opay/core/card/CardPageTipsData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final v1(Lteam/opay/core/card/PhysicalCardData;)Lkotlin/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/card/PhysicalCardData;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lteam/opay/core/card/MultiDataItemEntry;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lteam/opay/core/card/MultiDataItemEntry;

    .line 7
    .line 8
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->k()Lteam/opay/core/card/PhysicalCardNativeUnActivated;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v2}, Lteam/opay/core/card/PhysicalCardNativeUnActivated;->getInWaitPickDto()Lteam/opay/core/card/PhysicalCardNativeUnActivatedInWaitPickDto;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {v2}, Lteam/opay/core/card/PhysicalCardNativeUnActivatedInWaitPickDto;->getCardFaceUrl()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v2, v3

    .line 27
    :goto_0
    const/4 v4, 0x1

    .line 28
    invoke-direct {v1, v4, v2}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    new-instance v1, Lteam/opay/core/card/MultiDataItemEntry;

    .line 35
    .line 36
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->k()Lteam/opay/core/card/PhysicalCardNativeUnActivated;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    invoke-virtual {v2}, Lteam/opay/core/card/PhysicalCardNativeUnActivated;->getInWaitPickDto()Lteam/opay/core/card/PhysicalCardNativeUnActivatedInWaitPickDto;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    move-object v2, v3

    .line 48
    :goto_1
    const/4 v4, 0x7

    .line 49
    invoke-direct {v1, v4, v2}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->k()Lteam/opay/core/card/PhysicalCardNativeUnActivated;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeUnActivated;->getInWaitPickDto()Lteam/opay/core/card/PhysicalCardNativeUnActivatedInWaitPickDto;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    if-eqz v1, :cond_3

    .line 66
    .line 67
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeUnActivatedInWaitPickDto;->getButtonList()Ljava/util/ArrayList;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    if-eqz v1, :cond_3

    .line 72
    .line 73
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->g()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->d()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    const/4 v4, 0x3

    .line 82
    invoke-virtual {p0, v1, v4, v2, p1}, Lteam/opay/core/card/CardViewModel;->Y0(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    if-eqz p1, :cond_3

    .line 87
    .line 88
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 89
    .line 90
    .line 91
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    invoke-virtual {p0, p1}, Lteam/opay/core/card/CardViewModel;->X(I)Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    if-nez p1, :cond_2

    .line 100
    .line 101
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 106
    .line 107
    .line 108
    :cond_3
    new-instance p1, Lteam/opay/core/card/MultiDataItemEntry;

    .line 109
    .line 110
    const/16 v1, 0xa

    .line 111
    .line 112
    invoke-direct {p1, v1, v3}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    new-instance p1, Lkotlin/Pair;

    .line 119
    .line 120
    const-string v1, "PHYSICAL_PICK_WAIT_ACTIVATED"

    .line 121
    .line 122
    invoke-direct {p1, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    return-object p1
.end method

.method public final w0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lteam/opay/core/card/CardDetailsData;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->x:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final w1(Lteam/opay/core/card/PhysicalCardData;)Lkotlin/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/card/PhysicalCardData;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lteam/opay/core/card/MultiDataItemEntry;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lteam/opay/core/card/MultiDataItemEntry;

    .line 7
    .line 8
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->l()Lteam/opay/core/card/PhysicalCardNativeVisitor;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v2}, Lteam/opay/core/card/PhysicalCardNativeVisitor;->getCardDesignUrl()Ljava/lang/String;

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
    invoke-direct {v1, v3, v2}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->l()Lteam/opay/core/card/PhysicalCardNativeVisitor;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-virtual {v1}, Lteam/opay/core/card/PhysicalCardNativeVisitor;->getIntroduceList()Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0, v1, p1}, Lteam/opay/core/card/CardViewModel;->a1(Ljava/util/List;Lteam/opay/core/card/PhysicalCardData;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 46
    .line 47
    .line 48
    :cond_1
    new-instance p1, Lkotlin/Pair;

    .line 49
    .line 50
    const-string v1, "PHYSICAL_VISITOR"

    .line 51
    .line 52
    invoke-direct {p1, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    return-object p1
.end method

.method public final x0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/core/card/CardViewModel;->B:Z

    .line 2
    .line 3
    return v0
.end method

.method public final x1(Lteam/opay/core/card/PhysicalCardData;)Lkotlin/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/card/PhysicalCardData;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lteam/opay/core/card/MultiDataItemEntry;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->a()Lteam/opay/core/card/PhysicalCardNativeActivated;

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
    invoke-virtual {v0}, Lteam/opay/core/card/PhysicalCardNativeActivated;->getType()Ljava/lang/String;

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
    const-string v2, "UN_SAFETOKEN"

    .line 15
    .line 16
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lteam/opay/core/card/CardViewModel;->B1(Lteam/opay/core/card/PhysicalCardData;)Lkotlin/Pair;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const-string v2, "NORMAL"

    .line 28
    .line 29
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->a()Lteam/opay/core/card/PhysicalCardNativeActivated;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lteam/opay/core/card/PhysicalCardNativeActivated;->getNormalDto()Lteam/opay/core/card/PhysicalCardNativeActivated;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lteam/opay/core/card/PhysicalCardNativeActivated;->getViewCardPinUrl()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lteam/opay/core/card/CardViewModel;->F:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Lteam/opay/core/card/CardViewModel;->y1(Lteam/opay/core/card/PhysicalCardData;)Lkotlin/Pair;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    :cond_2
    :goto_1
    return-object v1
.end method

.method public final y0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel;->G:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final y1(Lteam/opay/core/card/PhysicalCardData;)Lkotlin/Pair;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/card/PhysicalCardData;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lteam/opay/core/card/MultiDataItemEntry;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->a()Lteam/opay/core/card/PhysicalCardNativeActivated;

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
    invoke-virtual {v0}, Lteam/opay/core/card/PhysicalCardNativeActivated;->getNormalDto()Lteam/opay/core/card/PhysicalCardNativeActivated;

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
    new-instance v2, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v3, Lteam/opay/core/card/MultiDataItemEntry;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Lteam/opay/core/card/PhysicalCardNativeActivated;->getCardDesignUrl()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move-object v4, v1

    .line 29
    :goto_1
    const/4 v5, 0x0

    .line 30
    invoke-direct {v3, v5, v4}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->e()Lteam/opay/core/card/CardFaceDto;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    invoke-virtual {v3}, Lteam/opay/core/card/CardFaceDto;->g()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    goto :goto_2

    .line 47
    :cond_2
    move-object v3, v1

    .line 48
    :goto_2
    if-eqz v3, :cond_c

    .line 49
    .line 50
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->e()Lteam/opay/core/card/CardFaceDto;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    if-eqz v3, :cond_3

    .line 55
    .line 56
    invoke-virtual {v3}, Lteam/opay/core/card/CardFaceDto;->d()Lteam/opay/core/card/ButtonDto;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    goto :goto_3

    .line 61
    :cond_3
    move-object v3, v1

    .line 62
    :goto_3
    if-eqz v3, :cond_c

    .line 63
    .line 64
    if-eqz v0, :cond_5

    .line 65
    .line 66
    invoke-virtual {v0}, Lteam/opay/core/card/PhysicalCardNativeActivated;->getBlocked()Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    if-nez v3, :cond_4

    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-nez v3, :cond_5

    .line 78
    .line 79
    const/4 v5, 0x1

    .line 80
    :cond_5
    :goto_4
    const-string v3, "VIRTUAL"

    .line 81
    .line 82
    if-eqz v5, :cond_9

    .line 83
    .line 84
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->e()Lteam/opay/core/card/CardFaceDto;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    if-eqz v4, :cond_6

    .line 89
    .line 90
    invoke-virtual {v4}, Lteam/opay/core/card/CardFaceDto;->e()Lteam/opay/core/card/ButtonDto;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    goto :goto_5

    .line 95
    :cond_6
    move-object v4, v1

    .line 96
    :goto_5
    if-nez v4, :cond_7

    .line 97
    .line 98
    const/16 v4, 0x9

    .line 99
    .line 100
    goto :goto_6

    .line 101
    :cond_7
    const/16 v4, 0x5b

    .line 102
    .line 103
    :goto_6
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->a()Lteam/opay/core/card/PhysicalCardNativeActivated;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    if-eqz v6, :cond_8

    .line 108
    .line 109
    invoke-virtual {v6}, Lteam/opay/core/card/PhysicalCardNativeActivated;->getNormalDto()Lteam/opay/core/card/PhysicalCardNativeActivated;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    if-eqz v6, :cond_8

    .line 114
    .line 115
    invoke-virtual {v6}, Lteam/opay/core/card/PhysicalCardNativeActivated;->getBlockedPopupFrequency()Lteam/opay/core/card/CardPopupFrequency;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    move-object v8, v6

    .line 120
    goto :goto_7

    .line 121
    :cond_8
    move-object v8, v1

    .line 122
    :goto_7
    iget-object v6, p0, Lteam/opay/core/card/CardViewModel;->p:Lteam/opay/core/settings/NoClearStorage;

    .line 123
    .line 124
    invoke-virtual {v6}, Lteam/opay/core/settings/NoClearStorage;->M0()I

    .line 125
    .line 126
    .line 127
    move-result v9

    .line 128
    iget-object v6, p0, Lteam/opay/core/card/CardViewModel;->p:Lteam/opay/core/settings/NoClearStorage;

    .line 129
    .line 130
    invoke-virtual {v6}, Lteam/opay/core/settings/NoClearStorage;->N0()J

    .line 131
    .line 132
    .line 133
    move-result-wide v10

    .line 134
    new-instance v12, Ly02;

    .line 135
    .line 136
    invoke-direct {v12, p0}, Ly02;-><init>(Lteam/opay/core/card/CardViewModel;)V

    .line 137
    .line 138
    .line 139
    move-object v7, p0

    .line 140
    invoke-virtual/range {v7 .. v12}, Lteam/opay/core/card/CardViewModel;->b2(Lteam/opay/core/card/CardPopupFrequency;IJLkotlin/jvm/functions/Function0;)Z

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    if-eqz v6, :cond_a

    .line 145
    .line 146
    iput-object v3, p0, Lteam/opay/core/card/CardViewModel;->n:Ljava/lang/String;

    .line 147
    .line 148
    goto :goto_8

    .line 149
    :cond_9
    const/4 v4, 0x6

    .line 150
    :cond_a
    :goto_8
    new-instance v6, Lteam/opay/core/card/MultiDataItemEntry;

    .line 151
    .line 152
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->e()Lteam/opay/core/card/CardFaceDto;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    if-eqz v7, :cond_b

    .line 157
    .line 158
    invoke-virtual {p0, v7, v5, v3}, Lteam/opay/core/card/CardViewModel;->d1(Lteam/opay/core/card/CardFaceDto;ZLjava/lang/String;)Lteam/opay/core/card/CardPageTipsData;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    goto :goto_9

    .line 163
    :cond_b
    move-object v3, v1

    .line 164
    :goto_9
    invoke-direct {v6, v4, v3}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    goto :goto_a

    .line 171
    :cond_c
    new-instance v3, Lteam/opay/core/card/MultiDataItemEntry;

    .line 172
    .line 173
    const/16 v4, 0x8

    .line 174
    .line 175
    invoke-virtual {p0, v0}, Lteam/opay/core/card/CardViewModel;->t0(Lteam/opay/core/card/PhysicalCardNativeActivated;)Lteam/opay/core/card/CardNumberItemData;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    invoke-direct {v3, v4, v5}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    :goto_a
    if-eqz v0, :cond_d

    .line 186
    .line 187
    invoke-virtual {v0}, Lteam/opay/core/card/PhysicalCardNativeActivated;->getAdBanner2Dto()Ljava/util/ArrayList;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    if-eqz v3, :cond_d

    .line 192
    .line 193
    new-instance v4, Lteam/opay/core/card/MultiDataItemEntry;

    .line 194
    .line 195
    const/16 v5, 0x29

    .line 196
    .line 197
    invoke-direct {v4, v5, v3}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    :cond_d
    if-eqz v0, :cond_f

    .line 204
    .line 205
    invoke-virtual {v0}, Lteam/opay/core/card/PhysicalCardNativeActivated;->getButtonList()Ljava/util/ArrayList;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    if-eqz v3, :cond_f

    .line 210
    .line 211
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->g()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    invoke-virtual {p1}, Lteam/opay/core/card/PhysicalCardData;->d()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    const/4 v5, 0x3

    .line 220
    invoke-virtual {p0, v3, v5, v4, p1}, Lteam/opay/core/card/CardViewModel;->Y0(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    if-eqz p1, :cond_f

    .line 225
    .line 226
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 227
    .line 228
    .line 229
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 230
    .line 231
    .line 232
    move-result p1

    .line 233
    invoke-virtual {p0, p1}, Lteam/opay/core/card/CardViewModel;->X(I)Ljava/util/List;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    if-nez p1, :cond_e

    .line 238
    .line 239
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    :cond_e
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 244
    .line 245
    .line 246
    :cond_f
    if-eqz v0, :cond_10

    .line 247
    .line 248
    invoke-virtual {v0}, Lteam/opay/core/card/PhysicalCardNativeActivated;->getAdDto()Ljava/util/ArrayList;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    if-eqz p1, :cond_10

    .line 253
    .line 254
    new-instance v0, Lteam/opay/core/card/MultiDataItemEntry;

    .line 255
    .line 256
    const/4 v3, 0x4

    .line 257
    invoke-direct {v0, v3, p1}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    :cond_10
    new-instance p1, Lteam/opay/core/card/MultiDataItemEntry;

    .line 264
    .line 265
    const/16 v0, 0xa

    .line 266
    .line 267
    invoke-direct {p1, v0, v1}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    const-string p1, "VIRTUAL_NORMAL"

    .line 274
    .line 275
    invoke-static {p1, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    return-object p1
.end method

.method public final z0(Lteam/opay/core/card/CardDataDetailRsp;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/card/CardDataDetailRsp;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lteam/opay/core/card/CardDetailsData;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lteam/opay/core/card/CardDetailsData;

    .line 7
    .line 8
    sget v2, Lteam/opay/pay/R$string;->card_number:I

    .line 9
    .line 10
    invoke-static {v2}, Ljmf;->k(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Lteam/opay/core/card/CardDataDetailRsp;->b()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v4, v3

    .line 23
    :goto_0
    const-string v5, ""

    .line 24
    .line 25
    if-nez v4, :cond_1

    .line 26
    .line 27
    move-object v4, v5

    .line 28
    :cond_1
    sget v6, Lteam/opay/pay/R$string;->osdk_copy:I

    .line 29
    .line 30
    invoke-static {v6}, Ljmf;->k(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 35
    .line 36
    invoke-direct {v1, v2, v4, v7, v8}, Lteam/opay/core/card/CardDetailsData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    new-instance v1, Lteam/opay/core/card/CardDetailsData;

    .line 43
    .line 44
    sget v2, Lteam/opay/pay/R$string;->osdk_account_number_dot:I

    .line 45
    .line 46
    invoke-static {v2}, Ljmf;->k(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    invoke-virtual {p1}, Lteam/opay/core/card/CardDataDetailRsp;->a()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    move-object v4, v3

    .line 58
    :goto_1
    if-nez v4, :cond_3

    .line 59
    .line 60
    move-object v4, v5

    .line 61
    :cond_3
    invoke-static {v4}, Loj2;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-static {v6}, Ljmf;->k(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    invoke-direct {v1, v2, v4, v6, v8}, Lteam/opay/core/card/CardDetailsData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    new-instance v1, Lteam/opay/core/card/CardDetailsData;

    .line 76
    .line 77
    sget v2, Lteam/opay/pay/R$string;->osdk_card_pin_title:I

    .line 78
    .line 79
    invoke-static {v2}, Ljmf;->k(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    sget v4, Lteam/opay/pay/R$string;->omain_amount_place_holder:I

    .line 84
    .line 85
    invoke-static {v4}, Ljmf;->k(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    sget v6, Lteam/opay/pay/R$string;->osdk_view:I

    .line 90
    .line 91
    invoke-static {v6}, Ljmf;->k(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 96
    .line 97
    invoke-direct {v1, v2, v4, v6, v7}, Lteam/opay/core/card/CardDetailsData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    const-string v1, "PHYSICAL"

    .line 104
    .line 105
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    if-eqz p2, :cond_6

    .line 110
    .line 111
    sget-object p2, Lteam/opay/core/card/CardUtil;->a:Lteam/opay/core/card/CardUtil$Companion;

    .line 112
    .line 113
    if-eqz p1, :cond_4

    .line 114
    .line 115
    invoke-virtual {p1}, Lteam/opay/core/card/CardDataDetailRsp;->d()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    if-nez v1, :cond_5

    .line 120
    .line 121
    :cond_4
    move-object v1, v5

    .line 122
    :cond_5
    invoke-virtual {p2, v1}, Lteam/opay/core/card/CardUtil$Companion;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    goto :goto_4

    .line 127
    :cond_6
    const-string p2, "substring(...)"

    .line 128
    .line 129
    const/4 v1, 0x2

    .line 130
    if-eqz p1, :cond_7

    .line 131
    .line 132
    invoke-virtual {p1}, Lteam/opay/core/card/CardDataDetailRsp;->d()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    if-eqz v2, :cond_7

    .line 137
    .line 138
    const/4 v4, 0x4

    .line 139
    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_7
    move-object v2, v3

    .line 148
    :goto_2
    if-eqz p1, :cond_8

    .line 149
    .line 150
    invoke-virtual {p1}, Lteam/opay/core/card/CardDataDetailRsp;->d()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    if-eqz v4, :cond_8

    .line 155
    .line 156
    const/4 v6, 0x0

    .line 157
    invoke-virtual {v4, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_8
    move-object v1, v3

    .line 166
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    const-string v2, "/"

    .line 175
    .line 176
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    :goto_4
    new-instance v1, Lteam/opay/core/card/CardDetailsData;

    .line 187
    .line 188
    sget v2, Lteam/opay/pay/R$string;->osdk_expiry_date:I

    .line 189
    .line 190
    invoke-static {v2}, Ljmf;->k(I)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    invoke-direct {v1, v2, p2, v3, v7}, Lteam/opay/core/card/CardDetailsData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    if-eqz p1, :cond_9

    .line 201
    .line 202
    invoke-virtual {p1}, Lteam/opay/core/card/CardDataDetailRsp;->c()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p2

    .line 206
    goto :goto_5

    .line 207
    :cond_9
    move-object p2, v3

    .line 208
    :goto_5
    if-eqz p2, :cond_d

    .line 209
    .line 210
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 211
    .line 212
    .line 213
    move-result p2

    .line 214
    if-nez p2, :cond_a

    .line 215
    .line 216
    goto :goto_8

    .line 217
    :cond_a
    new-instance p2, Lteam/opay/core/card/CardDetailsData;

    .line 218
    .line 219
    sget v1, Lteam/opay/pay/R$string;->card_cvv_title:I

    .line 220
    .line 221
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    if-eqz p1, :cond_b

    .line 226
    .line 227
    invoke-virtual {p1}, Lteam/opay/core/card/CardDataDetailRsp;->c()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    goto :goto_6

    .line 232
    :cond_b
    move-object p1, v3

    .line 233
    :goto_6
    if-nez p1, :cond_c

    .line 234
    .line 235
    goto :goto_7

    .line 236
    :cond_c
    move-object v5, p1

    .line 237
    :goto_7
    invoke-direct {p2, v1, v5, v3, v7}, Lteam/opay/core/card/CardDetailsData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    :cond_d
    :goto_8
    return-object v0
.end method
