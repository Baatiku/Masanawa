.class public final Lteam/opay/pay/cashier/PaySheetViewModel;
.super Lteam/opay/core/api/BaseAndroidViewModel;
.source "PaySheetViewModel.kt"

# interfaces
.implements Lteam/opay/core/api/e;
.implements Laj0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/cashier/PaySheetViewModel$Companion;,
        Lteam/opay/pay/cashier/PaySheetViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00e4\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \u00fe\u00012\u00020\u00012\u00020\u00022\u00020\u0003:\u0002\u00ff\u0001B1\u0008\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0019\u0010\u0013\u001a\u00020\u000e2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001d\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0017\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ!\u0010\u001f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001e0\u001d0\u001c2\u0006\u0010\u001b\u001a\u00020\u0017\u00a2\u0006\u0004\u0008\u001f\u0010 JM\u0010\'\u001a.\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0017\u0012\u0006\u0012\u0004\u0018\u00010%0$0#j\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0017\u0012\u0006\u0012\u0004\u0018\u00010%0$`&2\u0008\u0010!\u001a\u0004\u0018\u00010\u00172\u0008\u0010\"\u001a\u0004\u0018\u00010\u0017\u00a2\u0006\u0004\u0008\'\u0010(J\u0015\u0010+\u001a\u00020\u000e2\u0006\u0010*\u001a\u00020)\u00a2\u0006\u0004\u0008+\u0010,J\r\u0010-\u001a\u00020\u000e\u00a2\u0006\u0004\u0008-\u0010\u0010J!\u00100\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020/0\u001d0\u001c2\u0006\u0010*\u001a\u00020.\u00a2\u0006\u0004\u00080\u00101J!\u00104\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002030\u001d0\u001c2\u0006\u00102\u001a\u00020\u0017\u00a2\u0006\u0004\u00084\u0010 J-\u00108\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002070\u001d0\u001c2\u0012\u00106\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020%05\u00a2\u0006\u0004\u00088\u00109J\r\u0010:\u001a\u00020\u000e\u00a2\u0006\u0004\u0008:\u0010\u0010J\u0015\u0010=\u001a\u00020\u000e2\u0006\u0010<\u001a\u00020;\u00a2\u0006\u0004\u0008=\u0010>J\r\u0010?\u001a\u00020\u0017\u00a2\u0006\u0004\u0008?\u0010@J\r\u0010A\u001a\u00020\u000e\u00a2\u0006\u0004\u0008A\u0010\u0010J\u000f\u0010B\u001a\u0004\u0018\u00010\u0017\u00a2\u0006\u0004\u0008B\u0010@J \u0010F\u001a\u00020\u000e2\u0006\u0010C\u001a\u00020\u00152\u0006\u0010E\u001a\u00020DH\u0086@\u00a2\u0006\u0004\u0008F\u0010GJ;\u0010N\u001a\u00020\u000e2\u0006\u0010H\u001a\u00020\u00172\u0006\u0010J\u001a\u00020I2\u0006\u0010K\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u00152\u000c\u0010M\u001a\u0008\u0012\u0004\u0012\u00020\u000e0L\u00a2\u0006\u0004\u0008N\u0010OR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008P\u0010QR\u0017\u0010\u0006\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008R\u0010S\u001a\u0004\u0008T\u0010UR\u0014\u0010\u0008\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008V\u0010WR\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008X\u0010YR(\u0010a\u001a\u0008\u0012\u0004\u0012\u00020D0Z8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008[\u0010\\\u001a\u0004\u0008]\u0010^\"\u0004\u0008_\u0010`R(\u0010f\u001a\u0008\u0012\u0004\u0012\u00020b0Z8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008c\u0010\\\u001a\u0004\u0008d\u0010^\"\u0004\u0008e\u0010`R\u0017\u0010l\u001a\u00020g8\u0006\u00a2\u0006\u000c\n\u0004\u0008h\u0010i\u001a\u0004\u0008j\u0010kR\u001b\u0010r\u001a\u00020m8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008n\u0010o\u001a\u0004\u0008p\u0010qR*\u0010y\u001a\u00020)2\u0006\u0010s\u001a\u00020)8\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008t\u0010u\u001a\u0004\u0008v\u0010w\"\u0004\u0008x\u0010,R&\u0010\u0081\u0001\u001a\u0004\u0018\u00010z8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0013\n\u0004\u0008{\u0010|\u001a\u0004\u0008}\u0010~\"\u0005\u0008\u007f\u0010\u0080\u0001R*\u0010\u0089\u0001\u001a\u00030\u0082\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0083\u0001\u0010\u0084\u0001\u001a\u0006\u0008\u0085\u0001\u0010\u0086\u0001\"\u0006\u0008\u0087\u0001\u0010\u0088\u0001R,\u0010\u0091\u0001\u001a\u0005\u0018\u00010\u008a\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u008b\u0001\u0010\u008c\u0001\u001a\u0006\u0008\u008d\u0001\u0010\u008e\u0001\"\u0006\u0008\u008f\u0001\u0010\u0090\u0001R*\u0010\u0099\u0001\u001a\u00030\u0092\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0093\u0001\u0010\u0094\u0001\u001a\u0006\u0008\u0095\u0001\u0010\u0096\u0001\"\u0006\u0008\u0097\u0001\u0010\u0098\u0001R,\u0010\u00a1\u0001\u001a\u0005\u0018\u00010\u009a\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u009b\u0001\u0010\u009c\u0001\u001a\u0006\u0008\u009d\u0001\u0010\u009e\u0001\"\u0006\u0008\u009f\u0001\u0010\u00a0\u0001R*\u0010\u00a9\u0001\u001a\u00030\u00a2\u00018\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00a3\u0001\u0010\u00a4\u0001\u001a\u0006\u0008\u00a5\u0001\u0010\u00a6\u0001\"\u0006\u0008\u00a7\u0001\u0010\u00a8\u0001R*\u0010\u00b1\u0001\u001a\u00030\u00aa\u00018\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00ab\u0001\u0010\u00ac\u0001\u001a\u0006\u0008\u00ad\u0001\u0010\u00ae\u0001\"\u0006\u0008\u00af\u0001\u0010\u00b0\u0001R-\u0010\u00b6\u0001\u001a\t\u0012\u0005\u0012\u00030\u00b2\u00010Z8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0015\n\u0005\u0008\u00b3\u0001\u0010\\\u001a\u0005\u0008\u00b4\u0001\u0010^\"\u0005\u0008\u00b5\u0001\u0010`R-\u0010\u00ba\u0001\u001a\t\u0012\u0005\u0012\u00030\u00b2\u00010Z8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0015\n\u0005\u0008\u00b7\u0001\u0010\\\u001a\u0005\u0008\u00b8\u0001\u0010^\"\u0005\u0008\u00b9\u0001\u0010`R\u0018\u0010\u00be\u0001\u001a\u00030\u00bb\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00bc\u0001\u0010\u00bd\u0001R0\u0010\u00c4\u0001\u001a\u00020\u00172\u0006\u0010s\u001a\u00020\u00178\u0006@FX\u0086\u000e\u00a2\u0006\u0017\n\u0006\u0008\u00bf\u0001\u0010\u00c0\u0001\u001a\u0005\u0008\u00c1\u0001\u0010@\"\u0006\u0008\u00c2\u0001\u0010\u00c3\u0001R0\u0010\u00c8\u0001\u001a\u00020\u00172\u0006\u0010s\u001a\u00020\u00178\u0006@FX\u0086\u000e\u00a2\u0006\u0017\n\u0006\u0008\u00c5\u0001\u0010\u00c0\u0001\u001a\u0005\u0008\u00c6\u0001\u0010@\"\u0006\u0008\u00c7\u0001\u0010\u00c3\u0001R$\u0010\u00cf\u0001\u001a\n\u0012\u0005\u0012\u00030\u00ca\u00010\u00c9\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u00cb\u0001\u0010\u00cc\u0001\u001a\u0006\u0008\u00cd\u0001\u0010\u00ce\u0001R*\u0010\u00d7\u0001\u001a\u00030\u00d0\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00d1\u0001\u0010\u00d2\u0001\u001a\u0006\u0008\u00d3\u0001\u0010\u00d4\u0001\"\u0006\u0008\u00d5\u0001\u0010\u00d6\u0001R,\u0010\u00db\u0001\u001a\u0008\u0012\u0004\u0012\u00020D0Z8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u00d8\u0001\u0010\\\u001a\u0005\u0008\u00d9\u0001\u0010^\"\u0005\u0008\u00da\u0001\u0010`R \u0010\u00e0\u0001\u001a\u00030\u00dc\u00018FX\u0086\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u00dd\u0001\u0010o\u001a\u0006\u0008\u00de\u0001\u0010\u00df\u0001R\u0018\u0010\u00e2\u0001\u001a\u00020D8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00e1\u0001\u0010+R*\u0010\u00ea\u0001\u001a\u00030\u00e3\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00e4\u0001\u0010\u00e5\u0001\u001a\u0006\u0008\u00e6\u0001\u0010\u00e7\u0001\"\u0006\u0008\u00e8\u0001\u0010\u00e9\u0001R#\u0010\u00ee\u0001\u001a\u000b\u0012\u0007\u0012\u0005\u0018\u00010\u00eb\u00010Z8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u00ec\u0001\u0010\\\u001a\u0005\u0008\u00ed\u0001\u0010^R!\u0010\u00f2\u0001\u001a\t\u0012\u0005\u0012\u00030\u00ef\u00010Z8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u00f0\u0001\u0010\\\u001a\u0005\u0008\u00f1\u0001\u0010^R\u0018\u0010\u00f4\u0001\u001a\u0004\u0018\u00010\u00178@X\u0080\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00f3\u0001\u0010@R\u0018\u0010\u00f7\u0001\u001a\u00030\u00f5\u00018\u0016X\u0096\u0005\u00a2\u0006\u0008\u001a\u0006\u0008\u0083\u0001\u0010\u00f6\u0001R\u0018\u0010\u00fa\u0001\u001a\u00030\u00f8\u00018\u0016X\u0096\u0005\u00a2\u0006\u0008\u001a\u0006\u0008\u008b\u0001\u0010\u00f9\u0001R\u0019\u0010\u00fd\u0001\u001a\u0005\u0018\u00010\u00fb\u00018\u0016X\u0096\u0005\u00a2\u0006\u0007\u001a\u0005\u0008t\u0010\u00fc\u0001\u00a8\u0006\u0080\u0002"
    }
    d2 = {
        "Lteam/opay/pay/cashier/PaySheetViewModel;",
        "Lteam/opay/core/api/BaseAndroidViewModel;",
        "Lteam/opay/core/api/e;",
        "Laj0;",
        "Landroid/app/Application;",
        "app",
        "sessionProvider",
        "Lteam/opay/pay/home/security/SecretSecurityRepository;",
        "secretSecurityRepository",
        "Lteam/opay/pay/cashier/CashierRepository;",
        "cashier",
        "bankInfoProvider",
        "<init>",
        "(Landroid/app/Application;Lteam/opay/core/api/e;Lteam/opay/pay/home/security/SecretSecurityRepository;Lteam/opay/pay/cashier/CashierRepository;Laj0;)V",
        "",
        "T",
        "()V",
        "Lteam/opay/odialog/net/ADListResponse;",
        "ad",
        "b1",
        "(Lteam/opay/odialog/net/ADListResponse;)V",
        "Lag8;",
        "lifecycleOwner",
        "",
        "key",
        "M0",
        "(Lag8;Ljava/lang/String;)V",
        "cardId",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/Resource;",
        "Lteam/opay/pay/api/CardStateResponse;",
        "Q0",
        "(Ljava/lang/String;)Landroidx/lifecycle/LiveData;",
        "code",
        "msg",
        "Ljava/util/ArrayList;",
        "Lkotlin/Pair;",
        "",
        "Lkotlin/collections/ArrayList;",
        "U",
        "(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;",
        "Lteam/opay/pay/cashier/OrderInput;",
        "request",
        "Z",
        "(Lteam/opay/pay/cashier/OrderInput;)V",
        "p0",
        "Lteam/opay/pay/cashier/result/OrderStatusRequest;",
        "Lteam/opay/pay/cashier/result/PaymentResponse;",
        "H0",
        "(Lteam/opay/pay/cashier/result/OrderStatusRequest;)Landroidx/lifecycle/LiveData;",
        "orderId",
        "Lteam/opay/pay/cashier/result/Order3DSResponse;",
        "b0",
        "",
        "params",
        "Lteam/opay/pay/home/security/ValidatePaymentPinResponse;",
        "e1",
        "(Ljava/util/Map;)Landroidx/lifecycle/LiveData;",
        "V",
        "Landroid/app/Activity;",
        "activity",
        "Y",
        "(Landroid/app/Activity;)V",
        "e0",
        "()Ljava/lang/String;",
        "c0",
        "k0",
        "owner",
        "",
        "needLoad",
        "z0",
        "(Lag8;ZLjr2;)Ljava/lang/Object;",
        "id",
        "",
        "operateType",
        "sceneType",
        "Lkotlin/Function0;",
        "callback",
        "R0",
        "(Ljava/lang/String;ILjava/lang/String;Lag8;Lkotlin/jvm/functions/Function0;)V",
        "e",
        "Landroid/app/Application;",
        "f",
        "Lteam/opay/core/api/e;",
        "G0",
        "()Lteam/opay/core/api/e;",
        "g",
        "Lteam/opay/pay/home/security/SecretSecurityRepository;",
        "h",
        "Lteam/opay/pay/cashier/CashierRepository;",
        "Landroidx/lifecycle/MutableLiveData;",
        "i",
        "Landroidx/lifecycle/MutableLiveData;",
        "F0",
        "()Landroidx/lifecycle/MutableLiveData;",
        "setRequestProcess",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "requestProcess",
        "Lteam/opay/pay/cashier/PaymentResult;",
        "j",
        "D0",
        "setPaymentResult",
        "paymentResult",
        "Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;",
        "k",
        "Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;",
        "g0",
        "()Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;",
        "confirmPayReq",
        "Lgv;",
        "l",
        "Lid8;",
        "f0",
        "()Lgv;",
        "cashierApi",
        "values",
        "m",
        "Lteam/opay/pay/cashier/OrderInput;",
        "m0",
        "()Lteam/opay/pay/cashier/OrderInput;",
        "X0",
        "orderInput",
        "Lteam/opay/pay/cashier/result/OutPaySchemeInfo;",
        "n",
        "Lteam/opay/pay/cashier/result/OutPaySchemeInfo;",
        "y0",
        "()Lteam/opay/pay/cashier/result/OutPaySchemeInfo;",
        "Y0",
        "(Lteam/opay/pay/cashier/result/OutPaySchemeInfo;)V",
        "outPayInfo",
        "Lteam/opay/pay/cashier/CashDeskInput;",
        "o",
        "Lteam/opay/pay/cashier/CashDeskInput;",
        "j0",
        "()Lteam/opay/pay/cashier/CashDeskInput;",
        "V0",
        "(Lteam/opay/pay/cashier/CashDeskInput;)V",
        "input",
        "Lteam/opay/pay/cashier/OrderInfo;",
        "p",
        "Lteam/opay/pay/cashier/OrderInfo;",
        "l0",
        "()Lteam/opay/pay/cashier/OrderInfo;",
        "W0",
        "(Lteam/opay/pay/cashier/OrderInfo;)V",
        "orderInfo",
        "Lteam/opay/pay/cashier/PayStatus;",
        "q",
        "Lteam/opay/pay/cashier/PayStatus;",
        "C0",
        "()Lteam/opay/pay/cashier/PayStatus;",
        "Z0",
        "(Lteam/opay/pay/cashier/PayStatus;)V",
        "payStatus",
        "Lteam/opay/pay/cashier/OrderResponse;",
        "r",
        "Lteam/opay/pay/cashier/OrderResponse;",
        "o0",
        "()Lteam/opay/pay/cashier/OrderResponse;",
        "setOrderResponse",
        "(Lteam/opay/pay/cashier/OrderResponse;)V",
        "orderResponse",
        "Lteam/opay/pay/cashier/FailedInfo;",
        "s",
        "Lteam/opay/pay/cashier/FailedInfo;",
        "i0",
        "()Lteam/opay/pay/cashier/FailedInfo;",
        "U0",
        "(Lteam/opay/pay/cashier/FailedInfo;)V",
        "failedInfo",
        "Lteam/opay/pay/cashier/SuccessInfo;",
        "t",
        "Lteam/opay/pay/cashier/SuccessInfo;",
        "J0",
        "()Lteam/opay/pay/cashier/SuccessInfo;",
        "d1",
        "(Lteam/opay/pay/cashier/SuccessInfo;)V",
        "successInfo",
        "Lteam/opay/pay/cashier/OrderResult;",
        "u",
        "u0",
        "setOrderStatus$sdk_release",
        "orderStatus",
        "v",
        "L0",
        "setWsStatus$sdk_release",
        "wsStatus",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "w",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "fetching",
        "x",
        "Ljava/lang/String;",
        "h0",
        "T0",
        "(Ljava/lang/String;)V",
        "deskVersion",
        "y",
        "E0",
        "a1",
        "preOrderNo",
        "Lteam/opay/pay/websocket/IWsMessageDelegate;",
        "Lteam/opay/pay/cashier/OrderChannelData;",
        "z",
        "Lteam/opay/pay/websocket/IWsMessageDelegate;",
        "n0",
        "()Lteam/opay/pay/websocket/IWsMessageDelegate;",
        "orderListener",
        "Lteam/opay/pay/cashier/SOURCE;",
        "A",
        "Lteam/opay/pay/cashier/SOURCE;",
        "I0",
        "()Lteam/opay/pay/cashier/SOURCE;",
        "c1",
        "(Lteam/opay/pay/cashier/SOURCE;)V",
        "source",
        "B",
        "K0",
        "setWebAuthCancel",
        "webAuthCancel",
        "Lteam/opay/pay/cashier/OrderStatusPolling;",
        "C",
        "v0",
        "()Lteam/opay/pay/cashier/OrderStatusPolling;",
        "orderStatusPolling",
        "D",
        "inTopup",
        "",
        "E",
        "J",
        "getStartTime",
        "()J",
        "setStartTime",
        "(J)V",
        "startTime",
        "Lteam/opay/pay/cashier/OutPayResultData;",
        "F",
        "B0",
        "outPaySuccessLiveData",
        "Lteam/opay/pay/cashier/result/OutPayFailInfo;",
        "G",
        "x0",
        "outPayFailedLiveData",
        "w0",
        "otpResendInterval",
        "Lteam/opay/core/api/Country;",
        "()Lteam/opay/core/api/Country;",
        "country",
        "Lteam/opay/core/api/GraphQL$Currency;",
        "()Lteam/opay/core/api/GraphQL$Currency;",
        "currency",
        "Lteam/opay/core/api/GraphQL$User;",
        "()Lteam/opay/core/api/GraphQL$User;",
        "user",
        "H",
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
.field public static final H:Lteam/opay/pay/cashier/PaySheetViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static I:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lteam/opay/pay/cashier/ResultNativeAd;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static J:Lteam/opay/pay/cashier/OrderInput;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public static K:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static L:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public A:Lteam/opay/pay/cashier/SOURCE;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public B:Landroidx/lifecycle/MutableLiveData;
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

.field public final C:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public D:Z

.field public E:J

.field public final F:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/cashier/OutPayResultData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final G:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/cashier/result/OutPayFailInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final synthetic d:Laj0;

.field public final e:Landroid/app/Application;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lteam/opay/core/api/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lteam/opay/pay/home/security/SecretSecurityRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lteam/opay/pay/cashier/CashierRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Landroidx/lifecycle/MutableLiveData;
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

.field public j:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/cashier/PaymentResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:Lteam/opay/pay/cashier/OrderInput;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public n:Lteam/opay/pay/cashier/result/OutPaySchemeInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public o:Lteam/opay/pay/cashier/CashDeskInput;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public p:Lteam/opay/pay/cashier/OrderInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public q:Lteam/opay/pay/cashier/PayStatus;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public r:Lteam/opay/pay/cashier/OrderResponse;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public s:Lteam/opay/pay/cashier/FailedInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public t:Lteam/opay/pay/cashier/SuccessInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public u:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/cashier/OrderResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public v:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/cashier/OrderResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final w:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public x:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public y:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final z:Lteam/opay/pay/websocket/IWsMessageDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/websocket/IWsMessageDelegate<",
            "Lteam/opay/pay/cashier/OrderChannelData;",
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
    new-instance v0, Lteam/opay/pay/cashier/PaySheetViewModel$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/cashier/PaySheetViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/cashier/PaySheetViewModel;->H:Lteam/opay/pay/cashier/PaySheetViewModel$Companion;

    .line 8
    .line 9
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lteam/opay/pay/cashier/PaySheetViewModel;->I:Ljava/util/Map;

    .line 15
    .line 16
    const-string v0, ""

    .line 17
    .line 18
    sput-object v0, Lteam/opay/pay/cashier/PaySheetViewModel;->K:Ljava/lang/String;

    .line 19
    .line 20
    sput-object v0, Lteam/opay/pay/cashier/PaySheetViewModel;->L:Ljava/lang/String;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lteam/opay/core/api/e;Lteam/opay/pay/home/security/SecretSecurityRepository;Lteam/opay/pay/cashier/CashierRepository;Laj0;)V
    .locals 26
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/api/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/pay/home/security/SecretSecurityRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lteam/opay/pay/cashier/CashierRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Laj0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p4

    .line 10
    .line 11
    move-object/from16 v5, p5

    .line 12
    .line 13
    const-string v6, "app"

    .line 14
    .line 15
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v6, "sessionProvider"

    .line 19
    .line 20
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v6, "secretSecurityRepository"

    .line 24
    .line 25
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v6, "cashier"

    .line 29
    .line 30
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v6, "bankInfoProvider"

    .line 34
    .line 35
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-direct/range {p0 .. p1}, Lteam/opay/core/api/BaseAndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 39
    .line 40
    .line 41
    iput-object v5, v0, Lteam/opay/pay/cashier/PaySheetViewModel;->d:Laj0;

    .line 42
    .line 43
    iput-object v1, v0, Lteam/opay/pay/cashier/PaySheetViewModel;->e:Landroid/app/Application;

    .line 44
    .line 45
    iput-object v2, v0, Lteam/opay/pay/cashier/PaySheetViewModel;->f:Lteam/opay/core/api/e;

    .line 46
    .line 47
    iput-object v3, v0, Lteam/opay/pay/cashier/PaySheetViewModel;->g:Lteam/opay/pay/home/security/SecretSecurityRepository;

    .line 48
    .line 49
    iput-object v4, v0, Lteam/opay/pay/cashier/PaySheetViewModel;->h:Lteam/opay/pay/cashier/CashierRepository;

    .line 50
    .line 51
    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    .line 52
    .line 53
    invoke-direct {v2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v2, v0, Lteam/opay/pay/cashier/PaySheetViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    .line 57
    .line 58
    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    .line 59
    .line 60
    invoke-direct {v2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v2, v0, Lteam/opay/pay/cashier/PaySheetViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    .line 64
    .line 65
    new-instance v2, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;

    .line 66
    .line 67
    move-object v3, v2

    .line 68
    new-instance v4, Lteam/opay/pay/cashier/newpayment/VerifyReqInfo;

    .line 69
    .line 70
    move-object/from16 v16, v4

    .line 71
    .line 72
    const/4 v8, 0x7

    .line 73
    const/4 v9, 0x0

    .line 74
    const/4 v5, 0x0

    .line 75
    const/4 v6, 0x0

    .line 76
    const/4 v7, 0x0

    .line 77
    invoke-direct/range {v4 .. v9}, Lteam/opay/pay/cashier/newpayment/VerifyReqInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 78
    .line 79
    .line 80
    new-instance v18, Lteam/opay/pay/cashier/newpayment/ValidPoolInfo;

    .line 81
    .line 82
    move-object/from16 v17, v18

    .line 83
    .line 84
    const/16 v24, 0x1f

    .line 85
    .line 86
    const/16 v25, 0x0

    .line 87
    .line 88
    const/16 v19, 0x0

    .line 89
    .line 90
    const/16 v20, 0x0

    .line 91
    .line 92
    const/16 v21, 0x0

    .line 93
    .line 94
    const/16 v22, 0x0

    .line 95
    .line 96
    const/16 v23, 0x0

    .line 97
    .line 98
    invoke-direct/range {v18 .. v25}, Lteam/opay/pay/cashier/newpayment/ValidPoolInfo;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 99
    .line 100
    .line 101
    const/16 v18, 0xfff

    .line 102
    .line 103
    const/4 v4, 0x0

    .line 104
    const/4 v8, 0x0

    .line 105
    const/4 v10, 0x0

    .line 106
    const/4 v11, 0x0

    .line 107
    const/4 v12, 0x0

    .line 108
    const/4 v13, 0x0

    .line 109
    const/4 v14, 0x0

    .line 110
    const/4 v15, 0x0

    .line 111
    invoke-direct/range {v3 .. v19}, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;-><init>(Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/util/List;Ljava/lang/String;Lteam/opay/pay/cashier/newpayment/DeskActivityInfo;Ljava/lang/String;Ljava/lang/Boolean;Lteam/opay/pay/cashier/newpayment/VerifyReqInfo;Lteam/opay/pay/cashier/newpayment/ValidPoolInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 112
    .line 113
    .line 114
    iput-object v2, v0, Lteam/opay/pay/cashier/PaySheetViewModel;->k:Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;

    .line 115
    .line 116
    new-instance v2, Lbcb;

    .line 117
    .line 118
    invoke-direct {v2, v0}, Lbcb;-><init>(Lteam/opay/pay/cashier/PaySheetViewModel;)V

    .line 119
    .line 120
    .line 121
    invoke-static {v2}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    iput-object v2, v0, Lteam/opay/pay/cashier/PaySheetViewModel;->l:Lid8;

    .line 126
    .line 127
    new-instance v2, Lteam/opay/pay/cashier/OrderInput;

    .line 128
    .line 129
    sget-object v3, Lteam/opay/core/api/GraphQL$ServiceType;->ANY:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 130
    .line 131
    invoke-virtual {v3}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    sget-object v3, Lteam/opay/core/api/GraphQL$ServiceId;->ANY:Lteam/opay/core/api/GraphQL$ServiceId;

    .line 136
    .line 137
    invoke-virtual {v3}, Lteam/opay/core/api/GraphQL$ServiceId;->getValue()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    const/16 v17, 0x1ffc

    .line 142
    .line 143
    const/16 v18, 0x0

    .line 144
    .line 145
    const/16 v16, 0x0

    .line 146
    .line 147
    move-object v3, v2

    .line 148
    invoke-direct/range {v3 .. v18}, Lteam/opay/pay/cashier/OrderInput;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 149
    .line 150
    .line 151
    iput-object v2, v0, Lteam/opay/pay/cashier/PaySheetViewModel;->m:Lteam/opay/pay/cashier/OrderInput;

    .line 152
    .line 153
    new-instance v11, Lteam/opay/pay/cashier/CashDeskInput;

    .line 154
    .line 155
    const/16 v9, 0x1e

    .line 156
    .line 157
    const/4 v5, 0x0

    .line 158
    const/4 v6, 0x0

    .line 159
    const/4 v8, 0x0

    .line 160
    move-object v3, v11

    .line 161
    move-object v4, v2

    .line 162
    invoke-direct/range {v3 .. v10}, Lteam/opay/pay/cashier/CashDeskInput;-><init>(Lteam/opay/pay/cashier/OrderInput;ZZLteam/opay/pay/cashier/PaymentType;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 163
    .line 164
    .line 165
    iput-object v11, v0, Lteam/opay/pay/cashier/PaySheetViewModel;->o:Lteam/opay/pay/cashier/CashDeskInput;

    .line 166
    .line 167
    sget-object v2, Lteam/opay/pay/cashier/PayStatus;->NORMAL:Lteam/opay/pay/cashier/PayStatus;

    .line 168
    .line 169
    iput-object v2, v0, Lteam/opay/pay/cashier/PaySheetViewModel;->q:Lteam/opay/pay/cashier/PayStatus;

    .line 170
    .line 171
    new-instance v2, Lteam/opay/pay/cashier/FailedInfo;

    .line 172
    .line 173
    sget v3, Lteam/opay/pay/R$string;->payment_failed_header:I

    .line 174
    .line 175
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    const-string v3, "getString(...)"

    .line 180
    .line 181
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    sget v5, Lteam/opay/pay/R$string;->payment_failed_description:I

    .line 185
    .line 186
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    const/16 v10, 0x3c

    .line 194
    .line 195
    const/4 v11, 0x0

    .line 196
    const/4 v8, 0x0

    .line 197
    const/4 v9, 0x0

    .line 198
    move-object v3, v2

    .line 199
    invoke-direct/range {v3 .. v11}, Lteam/opay/pay/cashier/FailedInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 200
    .line 201
    .line 202
    iput-object v2, v0, Lteam/opay/pay/cashier/PaySheetViewModel;->s:Lteam/opay/pay/cashier/FailedInfo;

    .line 203
    .line 204
    new-instance v1, Lteam/opay/pay/cashier/SuccessInfo;

    .line 205
    .line 206
    const-string v2, ""

    .line 207
    .line 208
    invoke-direct {v1, v2, v2, v2}, Lteam/opay/pay/cashier/SuccessInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    iput-object v1, v0, Lteam/opay/pay/cashier/PaySheetViewModel;->t:Lteam/opay/pay/cashier/SuccessInfo;

    .line 212
    .line 213
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    .line 214
    .line 215
    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 216
    .line 217
    .line 218
    iput-object v1, v0, Lteam/opay/pay/cashier/PaySheetViewModel;->u:Landroidx/lifecycle/MutableLiveData;

    .line 219
    .line 220
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    .line 221
    .line 222
    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 223
    .line 224
    .line 225
    iput-object v1, v0, Lteam/opay/pay/cashier/PaySheetViewModel;->v:Landroidx/lifecycle/MutableLiveData;

    .line 226
    .line 227
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 228
    .line 229
    const/4 v3, 0x0

    .line 230
    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 231
    .line 232
    .line 233
    iput-object v1, v0, Lteam/opay/pay/cashier/PaySheetViewModel;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 234
    .line 235
    iput-object v2, v0, Lteam/opay/pay/cashier/PaySheetViewModel;->x:Ljava/lang/String;

    .line 236
    .line 237
    iput-object v2, v0, Lteam/opay/pay/cashier/PaySheetViewModel;->y:Ljava/lang/String;

    .line 238
    .line 239
    new-instance v1, Lteam/opay/pay/cashier/PaySheetViewModel$b;

    .line 240
    .line 241
    invoke-direct {v1, v0}, Lteam/opay/pay/cashier/PaySheetViewModel$b;-><init>(Lteam/opay/pay/cashier/PaySheetViewModel;)V

    .line 242
    .line 243
    .line 244
    iput-object v1, v0, Lteam/opay/pay/cashier/PaySheetViewModel;->z:Lteam/opay/pay/websocket/IWsMessageDelegate;

    .line 245
    .line 246
    sget-object v1, Lteam/opay/pay/cashier/SOURCE;->PAYMENT:Lteam/opay/pay/cashier/SOURCE;

    .line 247
    .line 248
    iput-object v1, v0, Lteam/opay/pay/cashier/PaySheetViewModel;->A:Lteam/opay/pay/cashier/SOURCE;

    .line 249
    .line 250
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    .line 251
    .line 252
    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 253
    .line 254
    .line 255
    iput-object v1, v0, Lteam/opay/pay/cashier/PaySheetViewModel;->B:Landroidx/lifecycle/MutableLiveData;

    .line 256
    .line 257
    new-instance v1, Lccb;

    .line 258
    .line 259
    invoke-direct {v1, v0}, Lccb;-><init>(Lteam/opay/pay/cashier/PaySheetViewModel;)V

    .line 260
    .line 261
    .line 262
    invoke-static {v1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    iput-object v1, v0, Lteam/opay/pay/cashier/PaySheetViewModel;->C:Lid8;

    .line 267
    .line 268
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    .line 269
    .line 270
    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 271
    .line 272
    .line 273
    iput-object v1, v0, Lteam/opay/pay/cashier/PaySheetViewModel;->F:Landroidx/lifecycle/MutableLiveData;

    .line 274
    .line 275
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    .line 276
    .line 277
    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 278
    .line 279
    .line 280
    iput-object v1, v0, Lteam/opay/pay/cashier/PaySheetViewModel;->G:Landroidx/lifecycle/MutableLiveData;

    .line 281
    .line 282
    return-void
.end method

.method public static synthetic A(Lteam/opay/core/android/arch/Resource;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/cashier/PaySheetViewModel;->s0(Lteam/opay/core/android/arch/Resource;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final A0(Lteam/opay/pay/cashier/PaySheetViewModel;ZLteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->f()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-ne v2, v1, :cond_0

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v2, 0x0

    .line 17
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    :goto_1
    if-nez v0, :cond_2

    .line 33
    .line 34
    const/4 v0, -0x1

    .line 35
    goto :goto_2

    .line 36
    :cond_2
    sget-object v2, Lteam/opay/pay/cashier/PaySheetViewModel$a;->a:[I

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    aget v0, v2, v0

    .line 43
    .line 44
    :goto_2
    if-eq v0, v1, :cond_5

    .line 45
    .line 46
    const/4 v1, 0x2

    .line 47
    if-eq v0, v1, :cond_3

    .line 48
    .line 49
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 50
    .line 51
    .line 52
    goto :goto_4

    .line 53
    :cond_3
    iget-object p0, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->F:Landroidx/lifecycle/MutableLiveData;

    .line 54
    .line 55
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    move-object v0, p2

    .line 60
    check-cast v0, Lteam/opay/pay/cashier/OutPayResultData;

    .line 61
    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Lteam/opay/pay/cashier/OutPayResultData;->l(Z)V

    .line 65
    .line 66
    .line 67
    :cond_4
    invoke-virtual {p0, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    goto :goto_4

    .line 71
    :cond_5
    iget-object p0, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->G:Landroidx/lifecycle/MutableLiveData;

    .line 72
    .line 73
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const-string v1, ""

    .line 78
    .line 79
    if-nez v0, :cond_6

    .line 80
    .line 81
    move-object v0, v1

    .line 82
    :cond_6
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    if-nez p2, :cond_7

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_7
    move-object v1, p2

    .line 90
    :goto_3
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    if-nez p2, :cond_8

    .line 95
    .line 96
    sget p2, Lteam/opay/pay/R$string;->payment_failed_description:I

    .line 97
    .line 98
    invoke-static {p2}, Ljmf;->k(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    :cond_8
    new-instance p2, Lteam/opay/pay/cashier/result/OutPayFailInfo;

    .line 103
    .line 104
    invoke-direct {p2, v0, v1, p1}, Lteam/opay/pay/cashier/result/OutPayFailInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 111
    .line 112
    return-object p0
.end method

.method public static synthetic B(Lteam/opay/pay/cashier/PaySheetViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/cashier/PaySheetViewModel;->r0(Lteam/opay/pay/cashier/PaySheetViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C(Lteam/opay/pay/cashier/PaySheetViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/cashier/PaySheetViewModel;->a0(Lteam/opay/pay/cashier/PaySheetViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic D(Lteam/opay/pay/cashier/PaySheetViewModel;ZLteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/cashier/PaySheetViewModel;->A0(Lteam/opay/pay/cashier/PaySheetViewModel;ZLteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic E(Lteam/opay/pay/cashier/PaySheetViewModel;)Lgv;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/cashier/PaySheetViewModel;->X(Lteam/opay/pay/cashier/PaySheetViewModel;)Lgv;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic F(Lteam/opay/pay/cashier/PaySheetViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/cashier/PaySheetViewModel;->d0(Lteam/opay/pay/cashier/PaySheetViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic G(Lteam/opay/pay/cashier/PaySheetViewModel;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/cashier/PaySheetViewModel;->O0(Lteam/opay/pay/cashier/PaySheetViewModel;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic H(Lteam/opay/pay/cashier/PaySheetViewModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/cashier/PaySheetViewModel;->P0(Lteam/opay/pay/cashier/PaySheetViewModel;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic I(Lteam/opay/pay/cashier/PaySheetViewModel;)Lteam/opay/pay/cashier/OrderStatusPolling;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/cashier/PaySheetViewModel;->N0(Lteam/opay/pay/cashier/PaySheetViewModel;)Lteam/opay/pay/cashier/OrderStatusPolling;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic J(Lkotlin/jvm/functions/Function0;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/cashier/PaySheetViewModel;->S0(Lkotlin/jvm/functions/Function0;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic K(Lteam/opay/pay/cashier/PaySheetViewModel;)Landroid/app/Application;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->e:Landroid/app/Application;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic L(Lteam/opay/pay/cashier/PaySheetViewModel;)Lgv;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/cashier/PaySheetViewModel;->f0()Lgv;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic M()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/cashier/PaySheetViewModel;->I:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic N()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/cashier/PaySheetViewModel;->K:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final N0(Lteam/opay/pay/cashier/PaySheetViewModel;)Lteam/opay/pay/cashier/OrderStatusPolling;
    .locals 4

    .line 1
    new-instance v0, Lteam/opay/pay/cashier/OrderStatusPolling;

    .line 2
    .line 3
    new-instance v1, Ldcb;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Ldcb;-><init>(Lteam/opay/pay/cashier/PaySheetViewModel;)V

    .line 6
    .line 7
    .line 8
    new-instance v2, Lecb;

    .line 9
    .line 10
    invoke-direct {v2, p0}, Lecb;-><init>(Lteam/opay/pay/cashier/PaySheetViewModel;)V

    .line 11
    .line 12
    .line 13
    const/16 v3, 0x8

    .line 14
    .line 15
    invoke-direct {v0, p0, v3, v1, v2}, Lteam/opay/pay/cashier/OrderStatusPolling;-><init>(Landroidx/lifecycle/AndroidViewModel;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public static final synthetic O()Lteam/opay/pay/cashier/OrderInput;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/cashier/PaySheetViewModel;->J:Lteam/opay/pay/cashier/OrderInput;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final O0(Lteam/opay/pay/cashier/PaySheetViewModel;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object p0, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method

.method public static final synthetic P()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/cashier/PaySheetViewModel;->L:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final P0(Lteam/opay/pay/cashier/PaySheetViewModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->p:Lteam/opay/pay/cashier/OrderInfo;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lteam/opay/pay/cashier/OrderInfo;->getOrderNo()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    if-nez v0, :cond_1

    .line 17
    .line 18
    const-string v0, ""

    .line 19
    .line 20
    :cond_1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0}, Lteam/opay/pay/cashier/PaySheetViewModel;->p0()V

    .line 27
    .line 28
    .line 29
    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 30
    .line 31
    return-object p0
.end method

.method public static final synthetic Q(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lteam/opay/pay/cashier/PaySheetViewModel;->K:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic R(Lteam/opay/pay/cashier/OrderInput;)V
    .locals 0

    .line 1
    sput-object p0, Lteam/opay/pay/cashier/PaySheetViewModel;->J:Lteam/opay/pay/cashier/OrderInput;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic S(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lteam/opay/pay/cashier/PaySheetViewModel;->L:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static final S0(Lkotlin/jvm/functions/Function0;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

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
    sget-object v1, Lteam/opay/core/android/arch/Status;->SUCCESS:Lteam/opay/core/android/arch/Status;

    .line 10
    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p0
.end method

.method public static final W(Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    sget-object v0, Lteam/opay/pay/cashier/PaySheetViewModel$a;->a:[I

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    aget p0, v0, p0

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    if-eq p0, v0, :cond_2

    .line 20
    .line 21
    const/4 v0, 0x2

    .line 22
    if-eq p0, v0, :cond_2

    .line 23
    .line 24
    const/4 v0, 0x3

    .line 25
    if-ne p0, v0, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 29
    .line 30
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 31
    .line 32
    .line 33
    throw p0

    .line 34
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 35
    .line 36
    return-object p0
.end method

.method public static final X(Lteam/opay/pay/cashier/PaySheetViewModel;)Lgv;
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 2
    .line 3
    iget-object p0, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->e:Landroid/app/Application;

    .line 4
    .line 5
    const-class v1, Lgv;

    .line 6
    .line 7
    invoke-virtual {v0, p0, v1}, Lteam/opay/core/api/GraphQL;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lgv;

    .line 12
    .line 13
    return-object p0
.end method

.method public static final a0(Lteam/opay/pay/cashier/PaySheetViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lteam/opay/pay/cashier/PaySheetViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->f()Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    if-ne v4, v3, :cond_0

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v4, 0x0

    .line 18
    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v1, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, v0, Lteam/opay/pay/cashier/PaySheetViewModel;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->f()Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/4 v4, 0x1

    .line 35
    :goto_1
    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 36
    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    move-object v4, v1

    .line 47
    :goto_2
    if-nez v4, :cond_3

    .line 48
    .line 49
    const/4 v4, -0x1

    .line 50
    goto :goto_3

    .line 51
    :cond_3
    sget-object v5, Lteam/opay/pay/cashier/PaySheetViewModel$a;->a:[I

    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    aget v4, v5, v4

    .line 58
    .line 59
    :goto_3
    if-eq v4, v3, :cond_8

    .line 60
    .line 61
    const/4 v3, 0x2

    .line 62
    if-eq v4, v3, :cond_4

    .line 63
    .line 64
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 65
    .line 66
    .line 67
    goto/16 :goto_c

    .line 68
    .line 69
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    check-cast v3, Lteam/opay/pay/cashier/OrderInfo;

    .line 74
    .line 75
    iput-object v3, v0, Lteam/opay/pay/cashier/PaySheetViewModel;->p:Lteam/opay/pay/cashier/OrderInfo;

    .line 76
    .line 77
    iget-object v4, v0, Lteam/opay/pay/cashier/PaySheetViewModel;->u:Landroidx/lifecycle/MutableLiveData;

    .line 78
    .line 79
    if-eqz v3, :cond_5

    .line 80
    .line 81
    invoke-virtual {v3}, Lteam/opay/pay/cashier/OrderInfo;->getOrderNo()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    goto :goto_4

    .line 86
    :cond_5
    move-object v3, v1

    .line 87
    :goto_4
    if-eqz v3, :cond_7

    .line 88
    .line 89
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-nez v3, :cond_6

    .line 94
    .line 95
    goto :goto_5

    .line 96
    :cond_6
    new-instance v3, Lteam/opay/pay/cashier/OrderResult;

    .line 97
    .line 98
    sget-object v6, Lteam/opay/pay/cashier/OrderStatus;->SUBMITTED:Lteam/opay/pay/cashier/OrderStatus;

    .line 99
    .line 100
    const/4 v9, 0x6

    .line 101
    const/4 v10, 0x0

    .line 102
    const/4 v7, 0x0

    .line 103
    const/4 v8, 0x0

    .line 104
    move-object v5, v3

    .line 105
    invoke-direct/range {v5 .. v10}, Lteam/opay/pay/cashier/OrderResult;-><init>(Lteam/opay/pay/cashier/OrderStatus;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 106
    .line 107
    .line 108
    goto :goto_6

    .line 109
    :cond_7
    :goto_5
    new-instance v3, Lteam/opay/pay/cashier/OrderResult;

    .line 110
    .line 111
    sget-object v12, Lteam/opay/pay/cashier/OrderStatus;->FAILED:Lteam/opay/pay/cashier/OrderStatus;

    .line 112
    .line 113
    const/4 v15, 0x6

    .line 114
    const/16 v16, 0x0

    .line 115
    .line 116
    const/4 v13, 0x0

    .line 117
    const/4 v14, 0x0

    .line 118
    move-object v11, v3

    .line 119
    invoke-direct/range {v11 .. v16}, Lteam/opay/pay/cashier/OrderResult;-><init>(Lteam/opay/pay/cashier/OrderStatus;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 120
    .line 121
    .line 122
    :goto_6
    invoke-virtual {v4, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 126
    .line 127
    goto/16 :goto_c

    .line 128
    .line 129
    :cond_8
    iget-object v3, v0, Lteam/opay/pay/cashier/PaySheetViewModel;->e:Landroid/app/Application;

    .line 130
    .line 131
    sget v4, Lteam/opay/pay/R$string;->payment_failed_header:I

    .line 132
    .line 133
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    const-string v3, "getString(...)"

    .line 138
    .line 139
    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    if-eqz v4, :cond_b

    .line 147
    .line 148
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    if-nez v5, :cond_9

    .line 153
    .line 154
    move-object v4, v1

    .line 155
    :cond_9
    if-nez v4, :cond_a

    .line 156
    .line 157
    goto :goto_8

    .line 158
    :cond_a
    :goto_7
    move-object v7, v4

    .line 159
    goto :goto_9

    .line 160
    :cond_b
    :goto_8
    iget-object v4, v0, Lteam/opay/pay/cashier/PaySheetViewModel;->e:Landroid/app/Application;

    .line 161
    .line 162
    sget v5, Lteam/opay/pay/R$string;->payment_failed_description:I

    .line 163
    .line 164
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    goto :goto_7

    .line 172
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    if-eqz v3, :cond_c

    .line 177
    .line 178
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 179
    .line 180
    .line 181
    move-result v4

    .line 182
    if-nez v4, :cond_d

    .line 183
    .line 184
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->e()I

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    goto :goto_a

    .line 193
    :cond_c
    move-object v3, v1

    .line 194
    :cond_d
    :goto_a
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v9

    .line 198
    new-instance v3, Lteam/opay/pay/cashier/FailedInfo;

    .line 199
    .line 200
    const/4 v8, 0x0

    .line 201
    const/4 v10, 0x0

    .line 202
    const/4 v11, 0x0

    .line 203
    const/16 v12, 0x34

    .line 204
    .line 205
    const/4 v13, 0x0

    .line 206
    move-object v5, v3

    .line 207
    invoke-direct/range {v5 .. v13}, Lteam/opay/pay/cashier/FailedInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 208
    .line 209
    .line 210
    iput-object v3, v0, Lteam/opay/pay/cashier/PaySheetViewModel;->s:Lteam/opay/pay/cashier/FailedInfo;

    .line 211
    .line 212
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->d()Ljava/util/List;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    new-instance v4, Ljava/util/ArrayList;

    .line 217
    .line 218
    const/16 v5, 0xa

    .line 219
    .line 220
    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 221
    .line 222
    .line 223
    move-result v5

    .line 224
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 225
    .line 226
    .line 227
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 232
    .line 233
    .line 234
    move-result v5

    .line 235
    if-eqz v5, :cond_11

    .line 236
    .line 237
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    check-cast v5, Lteam/opay/core/android/arch/ResourceError;

    .line 242
    .line 243
    invoke-virtual {v5}, Lteam/opay/core/android/arch/ResourceError;->d()Lteam/opay/core/android/arch/ErrorType;

    .line 244
    .line 245
    .line 246
    move-result-object v6

    .line 247
    sget-object v7, Lteam/opay/core/android/arch/ErrorType;->LIMIT_EXCEEDED:Lteam/opay/core/android/arch/ErrorType;

    .line 248
    .line 249
    if-ne v6, v7, :cond_e

    .line 250
    .line 251
    iget-object v0, v0, Lteam/opay/pay/cashier/PaySheetViewModel;->u:Landroidx/lifecycle/MutableLiveData;

    .line 252
    .line 253
    new-instance v1, Lteam/opay/pay/cashier/OrderResult;

    .line 254
    .line 255
    sget-object v7, Lteam/opay/pay/cashier/OrderStatus;->KYC_UPGRADE:Lteam/opay/pay/cashier/OrderStatus;

    .line 256
    .line 257
    invoke-virtual {v5}, Lteam/opay/core/android/arch/ResourceError;->a()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v8

    .line 261
    const/4 v10, 0x4

    .line 262
    const/4 v11, 0x0

    .line 263
    const/4 v9, 0x0

    .line 264
    move-object v6, v1

    .line 265
    invoke-direct/range {v6 .. v11}, Lteam/opay/pay/cashier/OrderResult;-><init>(Lteam/opay/pay/cashier/OrderStatus;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 269
    .line 270
    .line 271
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 272
    .line 273
    return-object v0

    .line 274
    :cond_e
    invoke-virtual {v5}, Lteam/opay/core/android/arch/ResourceError;->d()Lteam/opay/core/android/arch/ErrorType;

    .line 275
    .line 276
    .line 277
    move-result-object v6

    .line 278
    sget-object v7, Lteam/opay/core/android/arch/ErrorType;->LIMIT_RECEIVER_EXCEEDED:Lteam/opay/core/android/arch/ErrorType;

    .line 279
    .line 280
    if-ne v6, v7, :cond_f

    .line 281
    .line 282
    iget-object v0, v0, Lteam/opay/pay/cashier/PaySheetViewModel;->u:Landroidx/lifecycle/MutableLiveData;

    .line 283
    .line 284
    new-instance v1, Lteam/opay/pay/cashier/OrderResult;

    .line 285
    .line 286
    sget-object v7, Lteam/opay/pay/cashier/OrderStatus;->KYC_RECEIVER_EXCEEDED:Lteam/opay/pay/cashier/OrderStatus;

    .line 287
    .line 288
    invoke-virtual {v5}, Lteam/opay/core/android/arch/ResourceError;->a()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v8

    .line 292
    const/4 v10, 0x4

    .line 293
    const/4 v11, 0x0

    .line 294
    const/4 v9, 0x0

    .line 295
    move-object v6, v1

    .line 296
    invoke-direct/range {v6 .. v11}, Lteam/opay/pay/cashier/OrderResult;-><init>(Lteam/opay/pay/cashier/OrderStatus;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 303
    .line 304
    return-object v0

    .line 305
    :cond_f
    invoke-virtual {v5}, Lteam/opay/core/android/arch/ResourceError;->a()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v6

    .line 309
    const-string v7, "05047"

    .line 310
    .line 311
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v6

    .line 315
    if-eqz v6, :cond_10

    .line 316
    .line 317
    iget-object v0, v0, Lteam/opay/pay/cashier/PaySheetViewModel;->u:Landroidx/lifecycle/MutableLiveData;

    .line 318
    .line 319
    new-instance v1, Lteam/opay/pay/cashier/OrderResult;

    .line 320
    .line 321
    sget-object v7, Lteam/opay/pay/cashier/OrderStatus;->REAL_NAME_INVALID:Lteam/opay/pay/cashier/OrderStatus;

    .line 322
    .line 323
    invoke-virtual {v5}, Lteam/opay/core/android/arch/ResourceError;->a()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v8

    .line 327
    const/4 v10, 0x4

    .line 328
    const/4 v11, 0x0

    .line 329
    const/4 v9, 0x0

    .line 330
    move-object v6, v1

    .line 331
    invoke-direct/range {v6 .. v11}, Lteam/opay/pay/cashier/OrderResult;-><init>(Lteam/opay/pay/cashier/OrderStatus;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 335
    .line 336
    .line 337
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 338
    .line 339
    return-object v0

    .line 340
    :cond_10
    iget-object v6, v0, Lteam/opay/pay/cashier/PaySheetViewModel;->u:Landroidx/lifecycle/MutableLiveData;

    .line 341
    .line 342
    new-instance v13, Lteam/opay/pay/cashier/OrderResult;

    .line 343
    .line 344
    sget-object v8, Lteam/opay/pay/cashier/OrderStatus;->FAILED:Lteam/opay/pay/cashier/OrderStatus;

    .line 345
    .line 346
    invoke-virtual {v5}, Lteam/opay/core/android/arch/ResourceError;->a()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v9

    .line 350
    const/4 v11, 0x4

    .line 351
    const/4 v12, 0x0

    .line 352
    const/4 v10, 0x0

    .line 353
    move-object v7, v13

    .line 354
    invoke-direct/range {v7 .. v12}, Lteam/opay/pay/cashier/OrderResult;-><init>(Lteam/opay/pay/cashier/OrderStatus;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v6, v13}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 358
    .line 359
    .line 360
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 361
    .line 362
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    goto/16 :goto_b

    .line 366
    .line 367
    :cond_11
    :goto_c
    if-eqz p1, :cond_12

    .line 368
    .line 369
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 370
    .line 371
    .line 372
    move-result-object v3

    .line 373
    goto :goto_d

    .line 374
    :cond_12
    move-object v3, v1

    .line 375
    :goto_d
    sget-object v4, Lteam/opay/core/android/arch/Status;->LOADING:Lteam/opay/core/android/arch/Status;

    .line 376
    .line 377
    if-eq v3, v4, :cond_18

    .line 378
    .line 379
    if-eqz p1, :cond_14

    .line 380
    .line 381
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v3

    .line 385
    if-eqz v3, :cond_14

    .line 386
    .line 387
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 388
    .line 389
    .line 390
    move-result v4

    .line 391
    if-nez v4, :cond_13

    .line 392
    .line 393
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->e()I

    .line 394
    .line 395
    .line 396
    move-result v3

    .line 397
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 398
    .line 399
    .line 400
    move-result-object v3

    .line 401
    :cond_13
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v3

    .line 405
    goto :goto_e

    .line 406
    :cond_14
    move-object v3, v1

    .line 407
    :goto_e
    if-eqz p1, :cond_15

    .line 408
    .line 409
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v4

    .line 413
    goto :goto_f

    .line 414
    :cond_15
    move-object v4, v1

    .line 415
    :goto_f
    invoke-virtual {v0, v3, v4}, Lteam/opay/pay/cashier/PaySheetViewModel;->U(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 416
    .line 417
    .line 418
    move-result-object v3

    .line 419
    if-eqz p1, :cond_16

    .line 420
    .line 421
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 422
    .line 423
    .line 424
    move-result-object v1

    .line 425
    :cond_16
    sget-object v4, Lteam/opay/core/android/arch/Status;->SUCCESS:Lteam/opay/core/android/arch/Status;

    .line 426
    .line 427
    if-ne v1, v4, :cond_17

    .line 428
    .line 429
    const-string v1, "0"

    .line 430
    .line 431
    goto :goto_10

    .line 432
    :cond_17
    const-string v1, "1"

    .line 433
    .line 434
    :goto_10
    const-string v4, "st"

    .line 435
    .line 436
    invoke-static {v4, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 437
    .line 438
    .line 439
    move-result-object v1

    .line 440
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    .line 442
    .line 443
    sget-object v1, Lteam/opay/pay/cashier/PaySheetViewModel;->H:Lteam/opay/pay/cashier/PaySheetViewModel$Companion;

    .line 444
    .line 445
    iget-object v0, v0, Lteam/opay/pay/cashier/PaySheetViewModel;->m:Lteam/opay/pay/cashier/OrderInput;

    .line 446
    .line 447
    new-array v2, v2, [Lkotlin/Pair;

    .line 448
    .line 449
    invoke-interface {v3, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v2

    .line 453
    check-cast v2, [Lkotlin/Pair;

    .line 454
    .line 455
    array-length v3, v2

    .line 456
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v2

    .line 460
    check-cast v2, [Lkotlin/Pair;

    .line 461
    .line 462
    const-string v3, "COMMON_order_request"

    .line 463
    .line 464
    invoke-virtual {v1, v3, v0, v2}, Lteam/opay/pay/cashier/PaySheetViewModel$Companion;->a(Ljava/lang/String;Lteam/opay/pay/cashier/OrderInput;[Lkotlin/Pair;)V

    .line 465
    .line 466
    .line 467
    :cond_18
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 468
    .line 469
    return-object v0
.end method

.method public static final d0(Lteam/opay/pay/cashier/PaySheetViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lteam/opay/pay/cashier/PaySheetViewModel$a;->a:[I

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    aget v0, v1, v0

    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lteam/opay/odialog/net/ADListResponse;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lteam/opay/pay/cashier/PaySheetViewModel;->b1(Lteam/opay/odialog/net/ADListResponse;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 32
    .line 33
    .line 34
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 35
    .line 36
    return-object p0
.end method

.method public static final q0(Lteam/opay/pay/cashier/PaySheetViewModel;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object p0, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "getOrderStatus begin, fetching = "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public static final r0(Lteam/opay/pay/cashier/PaySheetViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    sget-object v2, Lxk8;->a:Lxk8;

    .line 6
    .line 7
    new-instance v3, Lzbb;

    .line 8
    .line 9
    invoke-direct {v3, v1}, Lzbb;-><init>(Lteam/opay/core/android/arch/Resource;)V

    .line 10
    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x1

    .line 14
    invoke-static {v2, v4, v3, v5, v4}, Lxk8;->l(Lxk8;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object v2, v0, Lteam/opay/pay/cashier/PaySheetViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->f()Z

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    if-ne v6, v5, :cond_0

    .line 27
    .line 28
    const/4 v6, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v6, 0x0

    .line 31
    :goto_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    invoke-virtual {v2, v6}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-object v2, v0, Lteam/opay/pay/cashier/PaySheetViewModel;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->f()Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/4 v6, 0x1

    .line 48
    :goto_1
    invoke-virtual {v2, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 49
    .line 50
    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Lteam/opay/pay/cashier/OrderResponse;

    .line 58
    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    invoke-virtual {v2}, Lteam/opay/pay/cashier/OrderResponse;->f()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    if-eqz v2, :cond_3

    .line 66
    .line 67
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-nez v6, :cond_2

    .line 72
    .line 73
    move-object v2, v4

    .line 74
    :cond_2
    if-nez v2, :cond_5

    .line 75
    .line 76
    :cond_3
    if-eqz v1, :cond_4

    .line 77
    .line 78
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    goto :goto_2

    .line 83
    :cond_4
    move-object v2, v4

    .line 84
    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    .line 85
    .line 86
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    goto :goto_3

    .line 91
    :cond_6
    move-object v6, v4

    .line 92
    :goto_3
    sget-object v7, Lteam/opay/core/android/arch/Status;->LOADING:Lteam/opay/core/android/arch/Status;

    .line 93
    .line 94
    const-string v8, "v6"

    .line 95
    .line 96
    if-eq v6, v7, :cond_11

    .line 97
    .line 98
    if-eqz v1, :cond_7

    .line 99
    .line 100
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    goto :goto_4

    .line 105
    :cond_7
    move-object v6, v4

    .line 106
    :goto_4
    if-eqz v1, :cond_8

    .line 107
    .line 108
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    goto :goto_5

    .line 113
    :cond_8
    move-object v7, v4

    .line 114
    :goto_5
    invoke-virtual {v0, v6, v7}, Lteam/opay/pay/cashier/PaySheetViewModel;->U(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    sget-object v7, Lteam/opay/pay/cashier/PaySheetViewModel;->H:Lteam/opay/pay/cashier/PaySheetViewModel$Companion;

    .line 119
    .line 120
    iget-object v9, v0, Lteam/opay/pay/cashier/PaySheetViewModel;->m:Lteam/opay/pay/cashier/OrderInput;

    .line 121
    .line 122
    new-array v10, v3, [Lkotlin/Pair;

    .line 123
    .line 124
    invoke-interface {v6, v10}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    check-cast v6, [Lkotlin/Pair;

    .line 129
    .line 130
    array-length v10, v6

    .line 131
    invoke-static {v6, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    check-cast v6, [Lkotlin/Pair;

    .line 136
    .line 137
    const-string v10, "COMMON_payment_status_query"

    .line 138
    .line 139
    invoke-virtual {v7, v10, v9, v6}, Lteam/opay/pay/cashier/PaySheetViewModel$Companion;->a(Ljava/lang/String;Lteam/opay/pay/cashier/OrderInput;[Lkotlin/Pair;)V

    .line 140
    .line 141
    .line 142
    iget-object v6, v0, Lteam/opay/pay/cashier/PaySheetViewModel;->e:Landroid/app/Application;

    .line 143
    .line 144
    sget v7, Lteam/opay/pay/R$string;->payment_failed_header:I

    .line 145
    .line 146
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v10

    .line 150
    const-string v6, "getString(...)"

    .line 151
    .line 152
    invoke-static {v10, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    if-eqz v2, :cond_b

    .line 156
    .line 157
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 158
    .line 159
    .line 160
    move-result v7

    .line 161
    if-nez v7, :cond_9

    .line 162
    .line 163
    move-object v2, v4

    .line 164
    :cond_9
    if-nez v2, :cond_a

    .line 165
    .line 166
    goto :goto_7

    .line 167
    :cond_a
    :goto_6
    move-object v11, v2

    .line 168
    goto :goto_8

    .line 169
    :cond_b
    :goto_7
    iget-object v2, v0, Lteam/opay/pay/cashier/PaySheetViewModel;->e:Landroid/app/Application;

    .line 170
    .line 171
    sget v7, Lteam/opay/pay/R$string;->payment_failed_description:I

    .line 172
    .line 173
    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    goto :goto_6

    .line 181
    :goto_8
    if-eqz v1, :cond_c

    .line 182
    .line 183
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    if-eqz v2, :cond_c

    .line 188
    .line 189
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 190
    .line 191
    .line 192
    move-result v6

    .line 193
    if-nez v6, :cond_d

    .line 194
    .line 195
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->e()I

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    goto :goto_9

    .line 204
    :cond_c
    move-object v2, v4

    .line 205
    :cond_d
    :goto_9
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v13

    .line 209
    if-eqz v1, :cond_e

    .line 210
    .line 211
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    goto :goto_a

    .line 216
    :cond_e
    move-object v2, v4

    .line 217
    :goto_a
    sget-object v6, Lteam/opay/core/android/arch/Status;->ERROR:Lteam/opay/core/android/arch/Status;

    .line 218
    .line 219
    if-ne v2, v6, :cond_10

    .line 220
    .line 221
    iget-object v2, v0, Lteam/opay/pay/cashier/PaySheetViewModel;->x:Ljava/lang/String;

    .line 222
    .line 223
    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    if-nez v2, :cond_f

    .line 228
    .line 229
    const/4 v15, 0x1

    .line 230
    goto :goto_b

    .line 231
    :cond_f
    const/4 v15, 0x0

    .line 232
    goto :goto_b

    .line 233
    :cond_10
    if-eqz v1, :cond_f

    .line 234
    .line 235
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    check-cast v2, Lteam/opay/pay/cashier/OrderResponse;

    .line 240
    .line 241
    if-eqz v2, :cond_f

    .line 242
    .line 243
    invoke-virtual {v2}, Lteam/opay/pay/cashier/OrderResponse;->h()Ljava/lang/Boolean;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 248
    .line 249
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    move v15, v2

    .line 254
    :goto_b
    new-instance v2, Lteam/opay/pay/cashier/FailedInfo;

    .line 255
    .line 256
    const/4 v12, 0x0

    .line 257
    const/4 v14, 0x0

    .line 258
    const/16 v16, 0x14

    .line 259
    .line 260
    const/16 v17, 0x0

    .line 261
    .line 262
    move-object v9, v2

    .line 263
    invoke-direct/range {v9 .. v17}, Lteam/opay/pay/cashier/FailedInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 264
    .line 265
    .line 266
    iput-object v2, v0, Lteam/opay/pay/cashier/PaySheetViewModel;->s:Lteam/opay/pay/cashier/FailedInfo;

    .line 267
    .line 268
    :cond_11
    if-eqz v1, :cond_12

    .line 269
    .line 270
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 271
    .line 272
    .line 273
    move-result-object v2

    .line 274
    goto :goto_c

    .line 275
    :cond_12
    move-object v2, v4

    .line 276
    :goto_c
    if-nez v2, :cond_13

    .line 277
    .line 278
    const/4 v2, -0x1

    .line 279
    goto :goto_d

    .line 280
    :cond_13
    sget-object v6, Lteam/opay/pay/cashier/PaySheetViewModel$a;->a:[I

    .line 281
    .line 282
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 283
    .line 284
    .line 285
    move-result v2

    .line 286
    aget v2, v6, v2

    .line 287
    .line 288
    :goto_d
    if-eq v2, v5, :cond_1b

    .line 289
    .line 290
    const/4 v6, 0x2

    .line 291
    if-eq v2, v6, :cond_14

    .line 292
    .line 293
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 294
    .line 295
    .line 296
    goto/16 :goto_11

    .line 297
    .line 298
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    check-cast v2, Lteam/opay/pay/cashier/OrderResponse;

    .line 303
    .line 304
    if-eqz v2, :cond_15

    .line 305
    .line 306
    invoke-virtual {v2}, Lteam/opay/pay/cashier/OrderResponse;->i()Lteam/opay/core/api/GraphQL$State;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    goto :goto_e

    .line 311
    :cond_15
    move-object v2, v4

    .line 312
    :goto_e
    sget-object v6, Lteam/opay/core/api/GraphQL$State;->CardPending:Lteam/opay/core/api/GraphQL$State;

    .line 313
    .line 314
    if-ne v2, v6, :cond_17

    .line 315
    .line 316
    :cond_16
    const/4 v2, 0x0

    .line 317
    goto :goto_f

    .line 318
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v2

    .line 322
    check-cast v2, Lteam/opay/pay/cashier/OrderResponse;

    .line 323
    .line 324
    if-eqz v2, :cond_16

    .line 325
    .line 326
    invoke-virtual {v2}, Lteam/opay/pay/cashier/OrderResponse;->e()Ljava/lang/Boolean;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 331
    .line 332
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    move-result v2

    .line 336
    :goto_f
    iput-boolean v2, v0, Lteam/opay/pay/cashier/PaySheetViewModel;->D:Z

    .line 337
    .line 338
    iget-object v2, v0, Lteam/opay/pay/cashier/PaySheetViewModel;->s:Lteam/opay/pay/cashier/FailedInfo;

    .line 339
    .line 340
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v6

    .line 344
    check-cast v6, Lteam/opay/pay/cashier/OrderResponse;

    .line 345
    .line 346
    if-eqz v6, :cond_18

    .line 347
    .line 348
    invoke-virtual {v6}, Lteam/opay/pay/cashier/OrderResponse;->h()Ljava/lang/Boolean;

    .line 349
    .line 350
    .line 351
    move-result-object v3

    .line 352
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 353
    .line 354
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result v3

    .line 358
    :cond_18
    xor-int/2addr v3, v5

    .line 359
    invoke-virtual {v2, v3}, Lteam/opay/pay/cashier/FailedInfo;->f(Z)V

    .line 360
    .line 361
    .line 362
    iget-object v2, v0, Lteam/opay/pay/cashier/PaySheetViewModel;->s:Lteam/opay/pay/cashier/FailedInfo;

    .line 363
    .line 364
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v3

    .line 368
    check-cast v3, Lteam/opay/pay/cashier/OrderResponse;

    .line 369
    .line 370
    if-eqz v3, :cond_19

    .line 371
    .line 372
    invoke-virtual {v3}, Lteam/opay/pay/cashier/OrderResponse;->c()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v4

    .line 376
    :cond_19
    if-nez v4, :cond_1a

    .line 377
    .line 378
    const-string v4, ""

    .line 379
    .line 380
    :cond_1a
    invoke-virtual {v2, v4}, Lteam/opay/pay/cashier/FailedInfo;->g(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    check-cast v1, Lteam/opay/pay/cashier/OrderResponse;

    .line 388
    .line 389
    iput-object v1, v0, Lteam/opay/pay/cashier/PaySheetViewModel;->r:Lteam/opay/pay/cashier/OrderResponse;

    .line 390
    .line 391
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/cashier/PaySheetViewModel;->T()V

    .line 392
    .line 393
    .line 394
    goto :goto_11

    .line 395
    :cond_1b
    iget-object v2, v0, Lteam/opay/pay/cashier/PaySheetViewModel;->u:Landroidx/lifecycle/MutableLiveData;

    .line 396
    .line 397
    iget-object v0, v0, Lteam/opay/pay/cashier/PaySheetViewModel;->x:Ljava/lang/String;

    .line 398
    .line 399
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    move-result v0

    .line 403
    if-eqz v0, :cond_1c

    .line 404
    .line 405
    new-instance v0, Lteam/opay/pay/cashier/OrderResult;

    .line 406
    .line 407
    sget-object v4, Lteam/opay/pay/cashier/OrderStatus;->PENDING:Lteam/opay/pay/cashier/OrderStatus;

    .line 408
    .line 409
    const/4 v7, 0x6

    .line 410
    const/4 v8, 0x0

    .line 411
    const/4 v5, 0x0

    .line 412
    const/4 v6, 0x0

    .line 413
    move-object v3, v0

    .line 414
    invoke-direct/range {v3 .. v8}, Lteam/opay/pay/cashier/OrderResult;-><init>(Lteam/opay/pay/cashier/OrderStatus;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 415
    .line 416
    .line 417
    goto :goto_10

    .line 418
    :cond_1c
    new-instance v0, Lteam/opay/pay/cashier/OrderResult;

    .line 419
    .line 420
    sget-object v3, Lteam/opay/pay/cashier/OrderStatus;->FAILED:Lteam/opay/pay/cashier/OrderStatus;

    .line 421
    .line 422
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v1

    .line 426
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 427
    .line 428
    invoke-direct {v0, v3, v1, v4}, Lteam/opay/pay/cashier/OrderResult;-><init>(Lteam/opay/pay/cashier/OrderStatus;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 429
    .line 430
    .line 431
    :goto_10
    invoke-virtual {v2, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 432
    .line 433
    .line 434
    :goto_11
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 435
    .line 436
    return-object v0
.end method

.method public static final s0(Lteam/opay/core/android/arch/Resource;)Ljava/lang/Object;
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "getOrderStatus result -> "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public static final t0(Lteam/opay/pay/cashier/PaySheetViewModel;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object p0, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->q:Lteam/opay/pay/cashier/PayStatus;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "getOrderStatus payStatus != PayStatus.ORDER "

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static synthetic x(Lteam/opay/pay/cashier/PaySheetViewModel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/cashier/PaySheetViewModel;->q0(Lteam/opay/pay/cashier/PaySheetViewModel;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic y(Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/cashier/PaySheetViewModel;->W(Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic z(Lteam/opay/pay/cashier/PaySheetViewModel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/cashier/PaySheetViewModel;->t0(Lteam/opay/pay/cashier/PaySheetViewModel;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final B0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/cashier/OutPayResultData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->F:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final C0()Lteam/opay/pay/cashier/PayStatus;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->q:Lteam/opay/pay/cashier/PayStatus;

    .line 2
    .line 3
    return-object v0
.end method

.method public final D0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/cashier/PaymentResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final E0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->y:Ljava/lang/String;

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
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final G0()Lteam/opay/core/api/e;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->f:Lteam/opay/core/api/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public final H0(Lteam/opay/pay/cashier/result/OrderStatusRequest;)Landroidx/lifecycle/LiveData;
    .locals 1
    .param p1    # Lteam/opay/pay/cashier/result/OrderStatusRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/cashier/result/OrderStatusRequest;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/cashier/result/PaymentResponse;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->h:Lteam/opay/pay/cashier/CashierRepository;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lteam/opay/pay/cashier/CashierRepository;->k(Lteam/opay/pay/cashier/result/OrderStatusRequest;)Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final I0()Lteam/opay/pay/cashier/SOURCE;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->A:Lteam/opay/pay/cashier/SOURCE;

    .line 2
    .line 3
    return-object v0
.end method

.method public final J0()Lteam/opay/pay/cashier/SuccessInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->t:Lteam/opay/pay/cashier/SuccessInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final K0()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->B:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final L0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/cashier/OrderResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->v:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final M0(Lag8;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
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
    const-string v0, "key"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/api/BaseAndroidViewModel;->t(Lag8;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final Q0(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/api/CardStateResponse;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "cardId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->h:Lteam/opay/pay/cashier/CashierRepository;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lteam/opay/pay/cashier/CashierRepository;->l(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final R0(Ljava/lang/String;ILjava/lang/String;Lag8;Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lag8;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "id"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "sceneType"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "lifecycleOwner"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "callback"

    .line 17
    .line 18
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lcom/opay/team/newhome/home/FrequencyInfoReportReq;

    .line 22
    .line 23
    invoke-static {p1}, Lkotlin/text/StringsKt;->y(Ljava/lang/String;)Ljava/lang/Long;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 30
    .line 31
    .line 32
    move-result-wide v1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-wide/16 v1, 0x0

    .line 35
    .line 36
    :goto_0
    invoke-direct {v0, v1, v2, p2, p3}, Lcom/opay/team/newhome/home/FrequencyInfoReportReq;-><init>(JILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance p1, Lteam/opay/core/android/arch/RequestBuilder;

    .line 40
    .line 41
    invoke-direct {p1}, Lteam/opay/core/android/arch/RequestBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p0}, Lteam/opay/core/android/arch/RequestBuilder;->v(Landroidx/lifecycle/AndroidViewModel;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    sget-object p2, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 49
    .line 50
    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->q()Landroid/app/Application;

    .line 51
    .line 52
    .line 53
    move-result-object p3

    .line 54
    const-class v1, Lfv;

    .line 55
    .line 56
    invoke-virtual {p2, p3, v1}, Lteam/opay/core/api/GraphQL;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    check-cast p2, Lfv;

    .line 61
    .line 62
    invoke-interface {p2, v0}, Lfv;->p1(Lcom/opay/team/newhome/home/FrequencyInfoReportReq;)Lretrofit2/Call;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-virtual {p1, p2}, Lteam/opay/core/android/arch/RequestBuilder;->a(Lretrofit2/Call;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Lteam/opay/core/android/arch/RequestBuilder;->b()Landroidx/lifecycle/LiveData;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    new-instance p2, Lybb;

    .line 75
    .line 76
    invoke-direct {p2, p5}, Lybb;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 77
    .line 78
    .line 79
    invoke-static {p1, p4, p2}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final T()V
    .locals 10

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->u:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->r:Lteam/opay/pay/cashier/OrderResponse;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-static {v1}, Lfwa;->c(Lteam/opay/pay/cashier/OrderResponse;)Lteam/opay/pay/cashier/OrderStatus;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    :goto_0
    move-object v3, v1

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    goto :goto_0

    .line 15
    :goto_1
    invoke-virtual {p0}, Lteam/opay/pay/cashier/PaySheetViewModel;->v0()Lteam/opay/pay/cashier/OrderStatusPolling;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lteam/opay/pay/cashier/OrderStatusPolling;->l()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    new-instance v1, Lteam/opay/pay/cashier/OrderResult;

    .line 26
    .line 27
    sget-object v5, Lteam/opay/pay/cashier/OrderStatus;->STATUS_RETRY_LIMIT:Lteam/opay/pay/cashier/OrderStatus;

    .line 28
    .line 29
    const/4 v8, 0x6

    .line 30
    const/4 v9, 0x0

    .line 31
    const/4 v6, 0x0

    .line 32
    const/4 v7, 0x0

    .line 33
    move-object v4, v1

    .line 34
    invoke-direct/range {v4 .. v9}, Lteam/opay/pay/cashier/OrderResult;-><init>(Lteam/opay/pay/cashier/OrderStatus;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 35
    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_1
    new-instance v1, Lteam/opay/pay/cashier/OrderResult;

    .line 39
    .line 40
    const/4 v6, 0x6

    .line 41
    const/4 v7, 0x0

    .line 42
    const/4 v4, 0x0

    .line 43
    const/4 v5, 0x0

    .line 44
    move-object v2, v1

    .line 45
    invoke-direct/range {v2 .. v7}, Lteam/opay/pay/cashier/OrderResult;-><init>(Lteam/opay/pay/cashier/OrderStatus;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 46
    .line 47
    .line 48
    :goto_2
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final T0(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "values"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->x:Ljava/lang/String;

    .line 7
    .line 8
    sput-object p1, Lteam/opay/pay/cashier/PaySheetViewModel;->K:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method public final U(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->m:Lteam/opay/pay/cashier/OrderInput;

    .line 7
    .line 8
    invoke-virtual {v1}, Lteam/opay/pay/cashier/OrderInput;->getServiceType()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    sget-object v2, Lteam/opay/core/api/GraphQL$ServiceType;->COINS_TOPUP:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 13
    .line 14
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    iget-object v1, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->p:Lteam/opay/pay/cashier/OrderInfo;

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {v1}, Lteam/opay/pay/cashier/OrderInfo;->getOrderNo()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v1, 0x0

    .line 34
    :goto_0
    const-string v2, "topup_order_no"

    .line 35
    .line 36
    invoke-static {v2, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->m:Lteam/opay/pay/cashier/OrderInput;

    .line 44
    .line 45
    invoke-virtual {v1}, Lteam/opay/pay/cashier/OrderInput;->getTopUpLogType()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const-string v2, "topup_type"

    .line 50
    .line 51
    invoke-static {v2, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    const-string v1, "science_source"

    .line 59
    .line 60
    const-string v2, "Topup_Balance"

    .line 61
    .line 62
    invoke-static {v1, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->m:Lteam/opay/pay/cashier/OrderInput;

    .line 70
    .line 71
    invoke-virtual {v1}, Lteam/opay/pay/cashier/OrderInput;->getPayChannel()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    sget-object v2, Lteam/opay/pay/cashier/PayChannel;->BANK_CARD:Lteam/opay/pay/cashier/PayChannel;

    .line 76
    .line 77
    invoke-virtual {v2}, Lteam/opay/pay/cashier/PayChannel;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_1

    .line 86
    .line 87
    const-string v1, "bankcard"

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_1
    const-string v1, "bankaccount"

    .line 91
    .line 92
    :goto_1
    const-string v2, "media_type"

    .line 93
    .line 94
    invoke-static {v2, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    const-string v1, "error_code"

    .line 102
    .line 103
    invoke-static {v1, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    const-string p1, "error_message"

    .line 111
    .line 112
    invoke-static {p1, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    :cond_2
    return-object v0
.end method

.method public final U0(Lteam/opay/pay/cashier/FailedInfo;)V
    .locals 1
    .param p1    # Lteam/opay/pay/cashier/FailedInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->s:Lteam/opay/pay/cashier/FailedInfo;

    .line 7
    .line 8
    return-void
.end method

.method public final V()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->h:Lteam/opay/pay/cashier/CashierRepository;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/pay/cashier/PaySheetViewModel;->k0()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const-string v1, ""

    .line 10
    .line 11
    :cond_0
    invoke-virtual {v0, v1}, Lteam/opay/pay/cashier/CashierRepository;->g(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lxbb;

    .line 16
    .line 17
    invoke-direct {v1}, Lxbb;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Lqna;->b(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final V0(Lteam/opay/pay/cashier/CashDeskInput;)V
    .locals 1
    .param p1    # Lteam/opay/pay/cashier/CashDeskInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->o:Lteam/opay/pay/cashier/CashDeskInput;

    .line 7
    .line 8
    return-void
.end method

.method public final W0(Lteam/opay/pay/cashier/OrderInfo;)V
    .locals 0
    .param p1    # Lteam/opay/pay/cashier/OrderInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->p:Lteam/opay/pay/cashier/OrderInfo;

    .line 2
    .line 3
    return-void
.end method

.method public final X0(Lteam/opay/pay/cashier/OrderInput;)V
    .locals 2
    .param p1    # Lteam/opay/pay/cashier/OrderInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "values"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->m:Lteam/opay/pay/cashier/OrderInput;

    .line 7
    .line 8
    invoke-virtual {p1}, Lteam/opay/pay/cashier/OrderInput;->getServiceType()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->COINS_TOPUP:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 13
    .line 14
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    sput-object p1, Lteam/opay/pay/cashier/PaySheetViewModel;->J:Lteam/opay/pay/cashier/OrderInput;

    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final Y(Landroid/app/Activity;)V
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->n:Lteam/opay/pay/cashier/result/OutPaySchemeInfo;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lteam/opay/pay/cashier/result/OutPaySchemeInfo;->a()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    move-object v0, v1

    .line 20
    :goto_0
    if-eqz v0, :cond_4

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    new-instance v0, Landroid/content/Intent;

    .line 30
    .line 31
    const-string v2, "android.intent.action.VIEW"

    .line 32
    .line 33
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->n:Lteam/opay/pay/cashier/result/OutPaySchemeInfo;

    .line 37
    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    invoke-virtual {v2}, Lteam/opay/pay/cashier/result/OutPaySchemeInfo;->a()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    :cond_3
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :catch_0
    move-exception p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 67
    .line 68
    .line 69
    :cond_4
    :goto_1
    return-void
.end method

.method public final Y0(Lteam/opay/pay/cashier/result/OutPaySchemeInfo;)V
    .locals 0
    .param p1    # Lteam/opay/pay/cashier/result/OutPaySchemeInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->n:Lteam/opay/pay/cashier/result/OutPaySchemeInfo;

    .line 2
    .line 3
    return-void
.end method

.method public final Z(Lteam/opay/pay/cashier/OrderInput;)V
    .locals 1
    .param p1    # Lteam/opay/pay/cashier/OrderInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->h:Lteam/opay/pay/cashier/CashierRepository;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lteam/opay/pay/cashier/CashierRepository;->h(Lteam/opay/pay/cashier/OrderInput;)Landroidx/lifecycle/LiveData;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance v0, Lacb;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lacb;-><init>(Lteam/opay/pay/cashier/PaySheetViewModel;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p1, v0}, Lqna;->b(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final Z0(Lteam/opay/pay/cashier/PayStatus;)V
    .locals 1
    .param p1    # Lteam/opay/pay/cashier/PayStatus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->q:Lteam/opay/pay/cashier/PayStatus;

    .line 7
    .line 8
    return-void
.end method

.method public final a1(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "values"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->y:Ljava/lang/String;

    .line 7
    .line 8
    sput-object p1, Lteam/opay/pay/cashier/PaySheetViewModel;->L:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method public final b0(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/cashier/result/Order3DSResponse;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "orderId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->h:Lteam/opay/pay/cashier/CashierRepository;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lteam/opay/pay/cashier/CashierRepository;->i(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final b1(Lteam/opay/odialog/net/ADListResponse;)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget-object v0, Lteam/opay/pay/cashier/PaySheetViewModel;->I:Ljava/util/Map;

    .line 5
    .line 6
    iget-object v1, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->m:Lteam/opay/pay/cashier/OrderInput;

    .line 7
    .line 8
    invoke-virtual {v1}, Lteam/opay/pay/cashier/OrderInput;->getServiceType()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Lteam/opay/pay/cashier/ResultNativeAd;

    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v3

    .line 18
    invoke-direct {v2, p1, v3, v4}, Lteam/opay/pay/cashier/ResultNativeAd;-><init>(Lteam/opay/odialog/net/ADListResponse;J)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final c0()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/cashier/PaySheetViewModel;->e0()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lteam/opay/pay/cashio/AdDataReqBody;

    .line 6
    .line 7
    invoke-direct {v1, v0, v0}, Lteam/opay/pay/cashio/AdDataReqBody;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v3, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    new-instance v0, Lteam/opay/pay/cashio/AdDataReq;

    .line 19
    .line 20
    invoke-virtual {p0}, Lteam/opay/pay/cashier/PaySheetViewModel;->m()Lteam/opay/core/api/GraphQL$User;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$User;->i()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v1, 0x0

    .line 32
    :goto_0
    if-nez v1, :cond_1

    .line 33
    .line 34
    const-string v1, ""

    .line 35
    .line 36
    :cond_1
    move-object v4, v1

    .line 37
    const/4 v6, 0x4

    .line 38
    const/4 v7, 0x0

    .line 39
    const/4 v5, 0x0

    .line 40
    move-object v2, v0

    .line 41
    invoke-direct/range {v2 .. v7}, Lteam/opay/pay/cashio/AdDataReq;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 42
    .line 43
    .line 44
    new-instance v1, Lteam/opay/core/android/arch/RequestBuilder;

    .line 45
    .line 46
    invoke-direct {v1}, Lteam/opay/core/android/arch/RequestBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p0}, Lteam/opay/core/android/arch/RequestBuilder;->v(Landroidx/lifecycle/AndroidViewModel;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const-string v2, "200"

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Lteam/opay/core/android/arch/RequestBuilder;->e(Ljava/lang/String;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    sget-object v2, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 60
    .line 61
    iget-object v3, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->e:Landroid/app/Application;

    .line 62
    .line 63
    const-class v4, Ltd8;

    .line 64
    .line 65
    invoke-virtual {v2, v3, v4}, Lteam/opay/core/api/GraphQL;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    check-cast v2, Ltd8;

    .line 70
    .line 71
    invoke-interface {v2, v0}, Ltd8;->l(Lteam/opay/pay/cashio/AdDataReq;)Lretrofit2/Call;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v1, v0}, Lteam/opay/core/android/arch/RequestBuilder;->a(Lretrofit2/Call;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lteam/opay/core/android/arch/RequestBuilder;->b()Landroidx/lifecycle/LiveData;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    new-instance v1, Lfcb;

    .line 84
    .line 85
    invoke-direct {v1, p0}, Lfcb;-><init>(Lteam/opay/pay/cashier/PaySheetViewModel;)V

    .line 86
    .line 87
    .line 88
    invoke-static {v0, v1}, Lqna;->b(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public final c1(Lteam/opay/pay/cashier/SOURCE;)V
    .locals 1
    .param p1    # Lteam/opay/pay/cashier/SOURCE;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->A:Lteam/opay/pay/cashier/SOURCE;

    .line 7
    .line 8
    return-void
.end method

.method public final d1(Lteam/opay/pay/cashier/SuccessInfo;)V
    .locals 1
    .param p1    # Lteam/opay/pay/cashier/SuccessInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->t:Lteam/opay/pay/cashier/SuccessInfo;

    .line 7
    .line 8
    return-void
.end method

.method public final e0()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->m:Lteam/opay/pay/cashier/OrderInput;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/cashier/OrderInput;->getServiceType()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->AIRTIME:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 8
    .line 9
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const-string v0, "pay_succ_rid_airtime"

    .line 20
    .line 21
    goto/16 :goto_1

    .line 22
    .line 23
    :cond_0
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->DATA:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 24
    .line 25
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    const-string v0, "pay_succ_rid_data"

    .line 36
    .line 37
    goto/16 :goto_1

    .line 38
    .line 39
    :cond_1
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->TV:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 40
    .line 41
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    const-string v0, "pay_succ_rid_tv"

    .line 52
    .line 53
    goto/16 :goto_1

    .line 54
    .line 55
    :cond_2
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->ELECTRICITY:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 56
    .line 57
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_3

    .line 66
    .line 67
    const-string v0, "pay_succ_rid_electricity"

    .line 68
    .line 69
    goto/16 :goto_1

    .line 70
    .line 71
    :cond_3
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->BETTING:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 72
    .line 73
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_4

    .line 82
    .line 83
    const-string v0, "pay_succ_rid_betting"

    .line 84
    .line 85
    goto/16 :goto_1

    .line 86
    .line 87
    :cond_4
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->COINS_SEND:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 88
    .line 89
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_5

    .line 98
    .line 99
    const-string v0, "pay_succ_rid_aatransfer"

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_5
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->BANK:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 103
    .line 104
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-eqz v1, :cond_6

    .line 113
    .line 114
    const-string v0, "pay_succ_rid_actransfer"

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_6
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->COINS_TOPUP:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 118
    .line 119
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_7

    .line 128
    .line 129
    const-string v0, "pay_succ_rid_topup"

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_7
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->CASH_IN:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 133
    .line 134
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-eqz v1, :cond_8

    .line 143
    .line 144
    const-string v0, "pay_succ_rid_cashin"

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_8
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->CASH_OUT:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 148
    .line 149
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    if-eqz v1, :cond_9

    .line 158
    .line 159
    const-string v0, "pay_succ_rid_cashout"

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_9
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->GATEWAY:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 163
    .line 164
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    const-string v2, "pay_succ_rid_other"

    .line 173
    .line 174
    if-eqz v1, :cond_a

    .line 175
    .line 176
    :goto_0
    move-object v0, v2

    .line 177
    goto :goto_1

    .line 178
    :cond_a
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->GATEWAY_COMMIT:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 179
    .line 180
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-eqz v0, :cond_b

    .line 189
    .line 190
    goto :goto_0

    .line 191
    :cond_b
    const-string v0, "pay_succ_rid_generic"

    .line 192
    .line 193
    :goto_1
    return-object v0
.end method

.method public final e1(Ljava/util/Map;)Landroidx/lifecycle/LiveData;
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/home/security/ValidatePaymentPinResponse;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "params"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->g:Lteam/opay/pay/home/security/SecretSecurityRepository;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lteam/opay/pay/home/security/SecretSecurityRepository;->g(Ljava/util/Map;)Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final f0()Lgv;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->l:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lgv;

    .line 8
    .line 9
    return-object v0
.end method

.method public final g0()Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->k:Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->x:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i0()Lteam/opay/pay/cashier/FailedInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->s:Lteam/opay/pay/cashier/FailedInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j0()Lteam/opay/pay/cashier/CashDeskInput;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->o:Lteam/opay/pay/cashier/CashDeskInput;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->p:Lteam/opay/pay/cashier/OrderInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/cashier/OrderInfo;->getOrderNo()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public final l0()Lteam/opay/pay/cashier/OrderInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->p:Lteam/opay/pay/cashier/OrderInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public m()Lteam/opay/core/api/GraphQL$User;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->f:Lteam/opay/core/api/e;

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

.method public final m0()Lteam/opay/pay/cashier/OrderInput;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->m:Lteam/opay/pay/cashier/OrderInput;

    .line 2
    .line 3
    return-object v0
.end method

.method public final n0()Lteam/opay/pay/websocket/IWsMessageDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/pay/websocket/IWsMessageDelegate<",
            "Lteam/opay/pay/cashier/OrderChannelData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->z:Lteam/opay/pay/websocket/IWsMessageDelegate;

    .line 2
    .line 3
    return-object v0
.end method

.method public o()Lteam/opay/core/api/Country;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->f:Lteam/opay/core/api/e;

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

.method public final o0()Lteam/opay/pay/cashier/OrderResponse;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->r:Lteam/opay/pay/cashier/OrderResponse;

    .line 2
    .line 3
    return-object v0
.end method

.method public p()Lteam/opay/core/api/GraphQL$Currency;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->f:Lteam/opay/core/api/e;

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

.method public final p0()V
    .locals 11

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->x:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "v6"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->q:Lteam/opay/pay/cashier/PayStatus;

    .line 14
    .line 15
    sget-object v3, Lteam/opay/pay/cashier/PayStatus;->ORDER:Lteam/opay/pay/cashier/PayStatus;

    .line 16
    .line 17
    if-eq v0, v3, :cond_0

    .line 18
    .line 19
    sget-object v0, Lxk8;->a:Lxk8;

    .line 20
    .line 21
    new-instance v3, Lgcb;

    .line 22
    .line 23
    invoke-direct {v3, p0}, Lgcb;-><init>(Lteam/opay/pay/cashier/PaySheetViewModel;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v2, v3, v1, v2}, Lxk8;->i(Lxk8;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lteam/opay/pay/cashier/PaySheetViewModel;->v0()Lteam/opay/pay/cashier/OrderStatusPolling;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0, v1}, Lteam/opay/pay/cashier/IOrderStatusPolling;->d(Z)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    iget-wide v3, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->E:J

    .line 38
    .line 39
    const-wide/16 v5, 0x0

    .line 40
    .line 41
    cmp-long v0, v3, v5

    .line 42
    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide v3

    .line 49
    const/16 v0, 0x3e8

    .line 50
    .line 51
    int-to-long v5, v0

    .line 52
    div-long/2addr v3, v5

    .line 53
    iput-wide v3, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->E:J

    .line 54
    .line 55
    :cond_1
    sget-object v0, Lxk8;->a:Lxk8;

    .line 56
    .line 57
    new-instance v3, Lhcb;

    .line 58
    .line 59
    invoke-direct {v3, p0}, Lhcb;-><init>(Lteam/opay/pay/cashier/PaySheetViewModel;)V

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v2, v3, v1, v2}, Lxk8;->l(Lxk8;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    return-void

    .line 74
    :cond_2
    iget-object v0, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->p:Lteam/opay/pay/cashier/OrderInfo;

    .line 75
    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    invoke-virtual {v0}, Lteam/opay/pay/cashier/OrderInfo;->getOrderNo()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    goto :goto_0

    .line 83
    :cond_3
    move-object v0, v2

    .line 84
    :goto_0
    if-eqz v0, :cond_7

    .line 85
    .line 86
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_4

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_4
    iget-object v0, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->h:Lteam/opay/pay/cashier/CashierRepository;

    .line 94
    .line 95
    new-instance v1, Lteam/opay/pay/cashier/result/OrderRequest;

    .line 96
    .line 97
    iget-object v3, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->p:Lteam/opay/pay/cashier/OrderInfo;

    .line 98
    .line 99
    if-eqz v3, :cond_5

    .line 100
    .line 101
    invoke-virtual {v3}, Lteam/opay/pay/cashier/OrderInfo;->getOrderNo()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    :cond_5
    if-nez v2, :cond_6

    .line 106
    .line 107
    const-string v2, ""

    .line 108
    .line 109
    :cond_6
    invoke-direct {v1, v2}, Lteam/opay/pay/cashier/result/OrderRequest;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1}, Lteam/opay/pay/cashier/CashierRepository;->j(Lteam/opay/pay/cashier/result/OrderRequest;)Landroidx/lifecycle/LiveData;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    new-instance v1, Licb;

    .line 117
    .line 118
    invoke-direct {v1, p0}, Licb;-><init>(Lteam/opay/pay/cashier/PaySheetViewModel;)V

    .line 119
    .line 120
    .line 121
    invoke-static {v0, v1}, Lqna;->b(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_7
    :goto_1
    new-instance v0, Lteam/opay/pay/cashier/FailedInfo;

    .line 126
    .line 127
    iget-object v1, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->e:Landroid/app/Application;

    .line 128
    .line 129
    sget v2, Lteam/opay/pay/R$string;->payment_failed_header:I

    .line 130
    .line 131
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    const-string v1, "getString(...)"

    .line 136
    .line 137
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    const/16 v9, 0x3c

    .line 141
    .line 142
    const/4 v10, 0x0

    .line 143
    const-string v4, "Order id can not empty!"

    .line 144
    .line 145
    const/4 v5, 0x0

    .line 146
    const/4 v6, 0x0

    .line 147
    const/4 v7, 0x0

    .line 148
    const/4 v8, 0x0

    .line 149
    move-object v2, v0

    .line 150
    invoke-direct/range {v2 .. v10}, Lteam/opay/pay/cashier/FailedInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 151
    .line 152
    .line 153
    iput-object v0, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->s:Lteam/opay/pay/cashier/FailedInfo;

    .line 154
    .line 155
    iget-object v0, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->u:Landroidx/lifecycle/MutableLiveData;

    .line 156
    .line 157
    new-instance v7, Lteam/opay/pay/cashier/OrderResult;

    .line 158
    .line 159
    sget-object v2, Lteam/opay/pay/cashier/OrderStatus;->FAILED:Lteam/opay/pay/cashier/OrderStatus;

    .line 160
    .line 161
    const/4 v5, 0x4

    .line 162
    const-string v3, ""

    .line 163
    .line 164
    const/4 v4, 0x0

    .line 165
    move-object v1, v7

    .line 166
    invoke-direct/range {v1 .. v6}, Lteam/opay/pay/cashier/OrderResult;-><init>(Lteam/opay/pay/cashier/OrderStatus;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, v7}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    return-void
.end method

.method public final u0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/cashier/OrderResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->u:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final v0()Lteam/opay/pay/cashier/OrderStatusPolling;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->C:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/cashier/OrderStatusPolling;

    .line 8
    .line 9
    return-object v0
.end method

.method public final w0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->r:Lteam/opay/pay/cashier/OrderResponse;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/cashier/OrderResponse;->g()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public final x0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/cashier/result/OutPayFailInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->G:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final y0()Lteam/opay/pay/cashier/result/OutPaySchemeInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/PaySheetViewModel;->n:Lteam/opay/pay/cashier/result/OutPaySchemeInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final z0(Lag8;ZLjr2;)Ljava/lang/Object;
    .locals 5
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljr2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lag8;",
            "Z",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p3, Lteam/opay/pay/cashier/PaySheetViewModel$getOutPayResult$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lteam/opay/pay/cashier/PaySheetViewModel$getOutPayResult$1;

    .line 7
    .line 8
    iget v1, v0, Lteam/opay/pay/cashier/PaySheetViewModel$getOutPayResult$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lteam/opay/pay/cashier/PaySheetViewModel$getOutPayResult$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lteam/opay/pay/cashier/PaySheetViewModel$getOutPayResult$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lteam/opay/pay/cashier/PaySheetViewModel$getOutPayResult$1;-><init>(Lteam/opay/pay/cashier/PaySheetViewModel;Ljr2;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lteam/opay/pay/cashier/PaySheetViewModel$getOutPayResult$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lteam/opay/pay/cashier/PaySheetViewModel$getOutPayResult$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-boolean p2, v0, Lteam/opay/pay/cashier/PaySheetViewModel$getOutPayResult$1;->Z$0:Z

    .line 39
    .line 40
    iget-object p1, v0, Lteam/opay/pay/cashier/PaySheetViewModel$getOutPayResult$1;->L$1:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p1, Lag8;

    .line 43
    .line 44
    iget-object v0, v0, Lteam/opay/pay/cashier/PaySheetViewModel$getOutPayResult$1;->L$0:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 47
    .line 48
    invoke-static {p3}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 55
    .line 56
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1

    .line 60
    :cond_2
    invoke-static {p3}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    new-instance v2, Lteam/opay/pay/cashier/PaySheetViewModel$getOutPayResult$liveData$1;

    .line 68
    .line 69
    const/4 v4, 0x0

    .line 70
    invoke-direct {v2, p0, v4}, Lteam/opay/pay/cashier/PaySheetViewModel$getOutPayResult$liveData$1;-><init>(Lteam/opay/pay/cashier/PaySheetViewModel;Ljr2;)V

    .line 71
    .line 72
    .line 73
    iput-object p0, v0, Lteam/opay/pay/cashier/PaySheetViewModel$getOutPayResult$1;->L$0:Ljava/lang/Object;

    .line 74
    .line 75
    iput-object p1, v0, Lteam/opay/pay/cashier/PaySheetViewModel$getOutPayResult$1;->L$1:Ljava/lang/Object;

    .line 76
    .line 77
    iput-boolean p2, v0, Lteam/opay/pay/cashier/PaySheetViewModel$getOutPayResult$1;->Z$0:Z

    .line 78
    .line 79
    iput v3, v0, Lteam/opay/pay/cashier/PaySheetViewModel$getOutPayResult$1;->label:I

    .line 80
    .line 81
    invoke-static {p3, v2, v0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    if-ne p3, v1, :cond_3

    .line 86
    .line 87
    return-object v1

    .line 88
    :cond_3
    move-object v0, p0

    .line 89
    :goto_1
    check-cast p3, Landroidx/lifecycle/LiveData;

    .line 90
    .line 91
    new-instance v1, Lwbb;

    .line 92
    .line 93
    invoke-direct {v1, v0, p2}, Lwbb;-><init>(Lteam/opay/pay/cashier/PaySheetViewModel;Z)V

    .line 94
    .line 95
    .line 96
    invoke-static {p3, p1, v1}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 97
    .line 98
    .line 99
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 100
    .line 101
    return-object p1
.end method
