.class public final Lteam/opay/pay/account/verify/VerifyViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "VerifyViewModel.kt"

# interfaces
.implements Lteam/opay/core/api/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/account/verify/VerifyViewModel$Companion;,
        Lteam/opay/pay/account/verify/VerifyViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0096\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010!\n\u0002\u0008\u0018\n\u0002\u0018\u0002\n\u0002\u00083\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 \u00ec\u00012\u00020\u00012\u00020\u0002:\u0002\u00fa\u0001B)\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ%\u0010\u0011\u001a\u00020\u00102\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c2\n\u0010\u000f\u001a\u0006\u0012\u0002\u0008\u00030\u000eH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J$\u0010\u0018\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00170\u00160\u00152\u0006\u0010\u0014\u001a\u00020\u0013H\u0082@\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J)\u0010!\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020 0\u001f0\u001e2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001c\u00a2\u0006\u0004\u0008!\u0010\"J\r\u0010#\u001a\u00020\u0010\u00a2\u0006\u0004\u0008#\u0010$J!\u0010&\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00170\u001f0\u001e2\u0006\u0010\u001b\u001a\u00020%\u00a2\u0006\u0004\u0008&\u0010\'J!\u0010)\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00170\u001f0\u001e2\u0006\u0010\u001b\u001a\u00020(\u00a2\u0006\u0004\u0008)\u0010*J!\u0010-\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020,0\u001f0\u001e2\u0006\u0010\u001b\u001a\u00020+\u00a2\u0006\u0004\u0008-\u0010.J\u008f\u0001\u0010;\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020/2\n\u0010\u000f\u001a\u0006\u0012\u0002\u0008\u00030\u000e2\u0006\u00101\u001a\u0002002\u0008\u0008\u0002\u00102\u001a\u00020\u001c2\u0008\u0008\u0002\u00103\u001a\u00020\u000c2\u0008\u0008\u0002\u00104\u001a\u00020\u000c2\u0008\u0008\u0002\u00105\u001a\u00020\u001c2(\u0008\u0002\u00108\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002070\u001f\u0012\u0004\u0012\u000200\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u0010\u0018\u0001062\u0012\u0010:\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u001009\u00a2\u0006\u0004\u0008;\u0010<J-\u0010?\u001a\u00020\u00102\n\u0010\u000f\u001a\u0006\u0012\u0002\u0008\u00030\u000e2\u0008\u0010=\u001a\u0004\u0018\u00010\u000c2\u0008\u0010>\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008?\u0010@J1\u0010E\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020A2\u0006\u0010C\u001a\u00020B2\u0012\u0010D\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u001009\u00a2\u0006\u0004\u0008E\u0010FJ\u001d\u0010I\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020G2\u0006\u0010H\u001a\u00020\u000c\u00a2\u0006\u0004\u0008I\u0010JJ\u0015\u0010L\u001a\u00020\u001c2\u0006\u0010K\u001a\u00020\u000c\u00a2\u0006\u0004\u0008L\u0010MJ\u0019\u0010O\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020N0\u001f0\u001e\u00a2\u0006\u0004\u0008O\u0010PR\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008Q\u0010RR\u0017\u0010\u0005\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008S\u0010T\u001a\u0004\u0008U\u0010VR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008W\u0010XR\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008Y\u0010ZR\u001b\u0010`\u001a\u00020[8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\\\u0010]\u001a\u0004\u0008^\u0010_R\u001b\u0010e\u001a\u00020a8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008b\u0010]\u001a\u0004\u0008c\u0010dR\u001b\u0010j\u001a\u00020f8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008g\u0010]\u001a\u0004\u0008h\u0010iR\"\u0010q\u001a\u00020\u001c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008k\u0010l\u001a\u0004\u0008m\u0010n\"\u0004\u0008o\u0010pR\"\u0010x\u001a\u00020\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008r\u0010s\u001a\u0004\u0008t\u0010u\"\u0004\u0008v\u0010wR\"\u0010|\u001a\u00020\u000c8F@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008y\u0010s\u001a\u0004\u0008z\u0010u\"\u0004\u0008{\u0010wR-\u0010\u0084\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u001c0}8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0004\u0008~\u0010\u007f\u001a\u0006\u0008\u0080\u0001\u0010\u0081\u0001\"\u0006\u0008\u0082\u0001\u0010\u0083\u0001R0\u0010\u008c\u0001\u001a\t\u0012\u0004\u0012\u00020\u001c0\u0085\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0086\u0001\u0010\u0087\u0001\u001a\u0006\u0008\u0088\u0001\u0010\u0089\u0001\"\u0006\u0008\u008a\u0001\u0010\u008b\u0001R0\u0010\u0090\u0001\u001a\t\u0012\u0004\u0012\u00020\u001c0\u0085\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u008d\u0001\u0010\u0087\u0001\u001a\u0006\u0008\u008e\u0001\u0010\u0089\u0001\"\u0006\u0008\u008f\u0001\u0010\u008b\u0001R\'\u0010K\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u0091\u0001\u0010s\u001a\u0005\u0008\u0092\u0001\u0010u\"\u0005\u0008\u0093\u0001\u0010wR/\u0010\u0098\u0001\u001a\t\u0012\u0005\u0012\u00030\u0094\u00010}8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008\u0095\u0001\u0010\u007f\u001a\u0006\u0008\u0096\u0001\u0010\u0081\u0001\"\u0006\u0008\u0097\u0001\u0010\u0083\u0001R*\u0010\u009f\u0001\u001a\u00030\u0094\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0099\u0001\u0010\u009a\u0001\u001a\u0006\u0008\u009b\u0001\u0010\u009c\u0001\"\u0006\u0008\u009d\u0001\u0010\u009e\u0001R.\u0010\u00a3\u0001\u001a\u0008\u0012\u0004\u0012\u0002000}8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008\u00a0\u0001\u0010\u007f\u001a\u0006\u0008\u00a1\u0001\u0010\u0081\u0001\"\u0006\u0008\u00a2\u0001\u0010\u0083\u0001R0\u0010\u00ab\u0001\u001a\t\u0012\u0004\u0012\u0002000\u00a4\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00a5\u0001\u0010\u00a6\u0001\u001a\u0006\u0008\u00a7\u0001\u0010\u00a8\u0001\"\u0006\u0008\u00a9\u0001\u0010\u00aa\u0001R+\u0010\u00b2\u0001\u001a\u0004\u0018\u00010 8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00ac\u0001\u0010\u00ad\u0001\u001a\u0006\u0008\u00ae\u0001\u0010\u00af\u0001\"\u0006\u0008\u00b0\u0001\u0010\u00b1\u0001R%\u0010\u00b5\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u000c0}8FX\u0086\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u00b3\u0001\u0010]\u001a\u0006\u0008\u00b4\u0001\u0010\u0081\u0001R+\u0010\u00bc\u0001\u001a\u0004\u0018\u0001078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00b6\u0001\u0010\u00b7\u0001\u001a\u0006\u0008\u00b8\u0001\u0010\u00b9\u0001\"\u0006\u0008\u00ba\u0001\u0010\u00bb\u0001R.\u0010\u00c0\u0001\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u000c0\u00bd\u00010}8\u0006\u00a2\u0006\u000f\n\u0005\u0008\u00be\u0001\u0010\u007f\u001a\u0006\u0008\u00bf\u0001\u0010\u0081\u0001R#\u0010\u00c3\u0001\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100}8\u0006\u00a2\u0006\u000f\n\u0005\u0008\u00c1\u0001\u0010\u007f\u001a\u0006\u0008\u00c2\u0001\u0010\u0081\u0001R&\u0010\u00c7\u0001\u001a\u00020\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u00c4\u0001\u0010s\u001a\u0005\u0008\u00c5\u0001\u0010u\"\u0005\u0008\u00c6\u0001\u0010wR&\u0010\u00cb\u0001\u001a\u00020\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u00c8\u0001\u0010s\u001a\u0005\u0008\u00c9\u0001\u0010u\"\u0005\u0008\u00ca\u0001\u0010wR&\u0010\u00cf\u0001\u001a\u00020\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u00cc\u0001\u0010s\u001a\u0005\u0008\u00cd\u0001\u0010u\"\u0005\u0008\u00ce\u0001\u0010wR&\u0010\u00d3\u0001\u001a\u00020\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u00d0\u0001\u0010s\u001a\u0005\u0008\u00d1\u0001\u0010u\"\u0005\u0008\u00d2\u0001\u0010wR&\u0010\u00d7\u0001\u001a\u00020\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u00d4\u0001\u0010s\u001a\u0005\u0008\u00d5\u0001\u0010u\"\u0005\u0008\u00d6\u0001\u0010wR&\u0010\u00db\u0001\u001a\u00020\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u00d8\u0001\u0010s\u001a\u0005\u0008\u00d9\u0001\u0010u\"\u0005\u0008\u00da\u0001\u0010wR$\u0010\u00dd\u0001\u001a\u00020\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0013\n\u0004\u0008?\u0010s\u001a\u0004\u0008l\u0010u\"\u0005\u0008\u00dc\u0001\u0010wR%\u0010\u00e0\u0001\u001a\u00020\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008#\u0010s\u001a\u0005\u0008\u00de\u0001\u0010u\"\u0005\u0008\u00df\u0001\u0010wR&\u0010\u00e4\u0001\u001a\u00020\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u00e1\u0001\u0010s\u001a\u0005\u0008\u00e2\u0001\u0010u\"\u0005\u0008\u00e3\u0001\u0010wR*\u0010\u00ea\u0001\u001a\u0004\u0018\u00010\u001c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008\u0018\u0010\u00e5\u0001\u001a\u0006\u0008\u00e6\u0001\u0010\u00e7\u0001\"\u0006\u0008\u00e8\u0001\u0010\u00e9\u0001R#\u0010\u00ed\u0001\u001a\t\u0012\u0004\u0012\u0002070\u0085\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u00eb\u0001\u0010\u0087\u0001\u001a\u0006\u0008\u00ec\u0001\u0010\u0089\u0001R!\u0010\u00ee\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u001c0}8\u0006\u00a2\u0006\u000f\n\u0005\u0008\u009b\u0001\u0010\u007f\u001a\u0006\u0008\u00eb\u0001\u0010\u0081\u0001R\u0013\u0010\u00f0\u0001\u001a\u00020\u000c8F\u00a2\u0006\u0007\u001a\u0005\u0008\u00ef\u0001\u0010uR\u0018\u0010\u00f3\u0001\u001a\u00030\u00f1\u00018\u0016X\u0096\u0005\u00a2\u0006\u0008\u001a\u0006\u0008\u0091\u0001\u0010\u00f2\u0001R\u0018\u0010\u00f6\u0001\u001a\u00030\u00f4\u00018\u0016X\u0096\u0005\u00a2\u0006\u0008\u001a\u0006\u0008\u0095\u0001\u0010\u00f5\u0001R\u001a\u0010\u00f9\u0001\u001a\u0005\u0018\u00010\u00f7\u00018\u0016X\u0096\u0005\u00a2\u0006\u0008\u001a\u0006\u0008\u0086\u0001\u0010\u00f8\u0001\u00a8\u0006\u00fb\u0001"
    }
    d2 = {
        "Lteam/opay/pay/account/verify/VerifyViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Lteam/opay/core/api/e;",
        "Landroid/app/Application;",
        "app",
        "sessionProvider",
        "Lteam/opay/pay/account/verify/VerifyRepository;",
        "repository",
        "Lteam/opay/pay/biometric/BiometricRepository;",
        "biometricRepository",
        "<init>",
        "(Landroid/app/Application;Lteam/opay/core/api/e;Lteam/opay/pay/account/verify/VerifyRepository;Lteam/opay/pay/biometric/BiometricRepository;)V",
        "",
        "failMsg",
        "Lteam/opay/pay/account/verify/BaseVerifyFragment;",
        "viewLifecycleOwner",
        "",
        "L0",
        "(Ljava/lang/String;Lteam/opay/pay/account/verify/BaseVerifyFragment;)V",
        "Lteam/opay/pay/account/OutCallReq;",
        "req",
        "Lretrofit2/Call;",
        "Lteam/opay/pay/api/HttpResponse;",
        "",
        "H",
        "(Lteam/opay/pay/account/OutCallReq;Ljr2;)Ljava/lang/Object;",
        "Lteam/opay/pay/account/verify/VerifyPoolRequest;",
        "request",
        "",
        "withId",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/Resource;",
        "Lteam/opay/pay/account/verify/VerifyPoolResponse;",
        "r0",
        "(Lteam/opay/pay/account/verify/VerifyPoolRequest;Z)Landroidx/lifecycle/LiveData;",
        "F",
        "()V",
        "Lteam/opay/pay/account/verify/SendOtpRequest;",
        "t0",
        "(Lteam/opay/pay/account/verify/SendOtpRequest;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/pay/account/verify/SendEmailRequest;",
        "s0",
        "(Lteam/opay/pay/account/verify/SendEmailRequest;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/pay/account/verify/OldValidationRequest;",
        "Lteam/opay/pay/account/verify/OldValidationResponse;",
        "o0",
        "(Lteam/opay/pay/account/verify/OldValidationRequest;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/pay/account/verify/ValidationRequest;",
        "Lteam/opay/pay/account/verify/ValidationType;",
        "validationType",
        "close",
        "traceId",
        "type",
        "identifyLoading",
        "Lkotlin/Function3;",
        "Lteam/opay/pay/account/verify/ValidationResponse;",
        "successCallback",
        "Lkotlin/Function1;",
        "fail",
        "O0",
        "(Lteam/opay/pay/account/verify/ValidationRequest;Lteam/opay/pay/account/verify/BaseVerifyFragment;Lteam/opay/pay/account/verify/ValidationType;ZLjava/lang/String;Ljava/lang/String;ZLhm6;Lkotlin/jvm/functions/Function1;)V",
        "popupScene",
        "outCallTemp",
        "E",
        "(Lteam/opay/pay/account/verify/BaseVerifyFragment;Ljava/lang/String;Ljava/lang/String;)V",
        "Lteam/opay/pay/account/verify/VerifyCallbackRequest;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "activity",
        "callback",
        "S0",
        "(Lteam/opay/pay/account/verify/VerifyCallbackRequest;Landroidx/appcompat/app/AppCompatActivity;Lkotlin/jvm/functions/Function1;)V",
        "Lag8;",
        "password",
        "U0",
        "(Lag8;Ljava/lang/String;)V",
        "modifyType",
        "N0",
        "(Ljava/lang/String;)Z",
        "Lteam/opay/pay/home/security/SecretQuestionResult;",
        "q0",
        "()Landroidx/lifecycle/LiveData;",
        "b",
        "Landroid/app/Application;",
        "c",
        "Lteam/opay/core/api/e;",
        "getSessionProvider",
        "()Lteam/opay/core/api/e;",
        "d",
        "Lteam/opay/pay/account/verify/VerifyRepository;",
        "e",
        "Lteam/opay/pay/biometric/BiometricRepository;",
        "Lev;",
        "f",
        "Lid8;",
        "k0",
        "()Lev;",
        "verifyApi",
        "Lteam/opay/pay/account/verify/VerifyManager;",
        "g",
        "S",
        "()Lteam/opay/pay/account/verify/VerifyManager;",
        "poolManager",
        "Lteam/opay/core/settings/SettingsStorage;",
        "h",
        "V",
        "()Lteam/opay/core/settings/SettingsStorage;",
        "settingsStorage",
        "i",
        "Z",
        "getExitConfirm",
        "()Z",
        "v0",
        "(Z)V",
        "exitConfirm",
        "j",
        "Ljava/lang/String;",
        "M",
        "()Ljava/lang/String;",
        "w0",
        "(Ljava/lang/String;)V",
        "from",
        "k",
        "X",
        "z0",
        "userPhone",
        "Landroidx/lifecycle/MutableLiveData;",
        "l",
        "Landroidx/lifecycle/MutableLiveData;",
        "T",
        "()Landroidx/lifecycle/MutableLiveData;",
        "setRequestProcess",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "requestProcess",
        "Lteam/opay/pay/util/SingleLiveEvent;",
        "m",
        "Lteam/opay/pay/util/SingleLiveEvent;",
        "O",
        "()Lteam/opay/pay/util/SingleLiveEvent;",
        "setIdentifyLoadingEvent",
        "(Lteam/opay/pay/util/SingleLiveEvent;)V",
        "identifyLoadingEvent",
        "n",
        "U",
        "setSafeDialogEvent",
        "safeDialogEvent",
        "o",
        "P",
        "x0",
        "Lteam/opay/pay/account/verify/VerifyStep;",
        "p",
        "i0",
        "setValidationStep",
        "validationStep",
        "q",
        "Lteam/opay/pay/account/verify/VerifyStep;",
        "J",
        "()Lteam/opay/pay/account/verify/VerifyStep;",
        "u0",
        "(Lteam/opay/pay/account/verify/VerifyStep;)V",
        "currentStep",
        "r",
        "g0",
        "setValidationPool",
        "validationPool",
        "",
        "s",
        "Ljava/util/List;",
        "j0",
        "()Ljava/util/List;",
        "setVerifiedItem",
        "(Ljava/util/List;)V",
        "verifiedItem",
        "t",
        "Lteam/opay/pay/account/verify/VerifyPoolResponse;",
        "m0",
        "()Lteam/opay/pay/account/verify/VerifyPoolResponse;",
        "J0",
        "(Lteam/opay/pay/account/verify/VerifyPoolResponse;)V",
        "verifyPoolResponse",
        "u",
        "N",
        "hitSecurityLockNotice",
        "v",
        "Lteam/opay/pay/account/verify/ValidationResponse;",
        "h0",
        "()Lteam/opay/pay/account/verify/ValidationResponse;",
        "I0",
        "(Lteam/opay/pay/account/verify/ValidationResponse;)V",
        "validationResponse",
        "Lkotlin/Pair;",
        "w",
        "L",
        "fingerValidateEvent",
        "x",
        "W",
        "showDeviceChangeEvent",
        "y",
        "Y",
        "A0",
        "valVerifyShowPage",
        "z",
        "f0",
        "H0",
        "valVerifyShowPageType",
        "A",
        "c0",
        "E0",
        "valVerifyShowPageHeadPic",
        "B",
        "d0",
        "F0",
        "valVerifyShowPageHeadTitle",
        "C",
        "b0",
        "D0",
        "valVerifyShowPageHeadIcon",
        "D",
        "a0",
        "C0",
        "valVerifyShowPageHeadContent",
        "B0",
        "valVerifyShowPageContent",
        "e0",
        "G0",
        "valVerifyShowPagePauseHours",
        "G",
        "Q",
        "y0",
        "pauseSecurityLockProtect",
        "Ljava/lang/Boolean;",
        "l0",
        "()Ljava/lang/Boolean;",
        "setVerifyFailed",
        "(Ljava/lang/Boolean;)V",
        "verifyFailed",
        "I",
        "K",
        "faceValidationErrorEvent",
        "callPhoneLivaData",
        "R",
        "phoneNumber",
        "Lteam/opay/core/api/Country;",
        "()Lteam/opay/core/api/Country;",
        "country",
        "Lteam/opay/core/api/GraphQL$Currency;",
        "()Lteam/opay/core/api/GraphQL$Currency;",
        "currency",
        "Lteam/opay/core/api/GraphQL$User;",
        "()Lteam/opay/core/api/GraphQL$User;",
        "user",
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
.field public static final K:Lteam/opay/pay/account/verify/VerifyViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public A:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public B:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public C:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public D:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public E:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public F:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public G:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public H:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final I:Lteam/opay/pay/util/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Lteam/opay/pay/account/verify/ValidationResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final J:Landroidx/lifecycle/MutableLiveData;
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

.field public final b:Landroid/app/Application;
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

.field public final e:Lteam/opay/pay/biometric/BiometricRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Z

.field public j:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l:Landroidx/lifecycle/MutableLiveData;
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

.field public m:Lteam/opay/pay/util/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public n:Lteam/opay/pay/util/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public o:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public p:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/account/verify/VerifyStep;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public q:Lteam/opay/pay/account/verify/VerifyStep;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public r:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/account/verify/ValidationType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/pay/account/verify/ValidationType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public t:Lteam/opay/pay/account/verify/VerifyPoolResponse;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final u:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public v:Lteam/opay/pay/account/verify/ValidationResponse;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final w:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final x:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public y:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public z:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/account/verify/VerifyViewModel$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/account/verify/VerifyViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/account/verify/VerifyViewModel;->K:Lteam/opay/pay/account/verify/VerifyViewModel$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lteam/opay/core/api/e;Lteam/opay/pay/account/verify/VerifyRepository;Lteam/opay/pay/biometric/BiometricRepository;)V
    .locals 1
    .param p1    # Landroid/app/Application;
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
    .param p4    # Lteam/opay/pay/biometric/BiometricRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "app"

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
    const-string v0, "biometricRepository"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->b:Landroid/app/Application;

    .line 25
    .line 26
    iput-object p2, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->c:Lteam/opay/core/api/e;

    .line 27
    .line 28
    iput-object p3, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->d:Lteam/opay/pay/account/verify/VerifyRepository;

    .line 29
    .line 30
    iput-object p4, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->e:Lteam/opay/pay/biometric/BiometricRepository;

    .line 31
    .line 32
    new-instance p1, Lmvf;

    .line 33
    .line 34
    invoke-direct {p1, p0}, Lmvf;-><init>(Lteam/opay/pay/account/verify/VerifyViewModel;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->f:Lid8;

    .line 42
    .line 43
    new-instance p1, Lnvf;

    .line 44
    .line 45
    invoke-direct {p1, p0}, Lnvf;-><init>(Lteam/opay/pay/account/verify/VerifyViewModel;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iput-object p1, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->g:Lid8;

    .line 53
    .line 54
    new-instance p1, Lovf;

    .line 55
    .line 56
    invoke-direct {p1, p0}, Lovf;-><init>(Lteam/opay/pay/account/verify/VerifyViewModel;)V

    .line 57
    .line 58
    .line 59
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iput-object p1, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->h:Lid8;

    .line 64
    .line 65
    const/4 p1, 0x1

    .line 66
    iput-boolean p1, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->i:Z

    .line 67
    .line 68
    const-string p1, ""

    .line 69
    .line 70
    iput-object p1, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->j:Ljava/lang/String;

    .line 71
    .line 72
    iput-object p1, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->k:Ljava/lang/String;

    .line 73
    .line 74
    new-instance p2, Landroidx/lifecycle/MutableLiveData;

    .line 75
    .line 76
    invoke-direct {p2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object p2, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    .line 80
    .line 81
    new-instance p2, Lteam/opay/pay/util/SingleLiveEvent;

    .line 82
    .line 83
    invoke-direct {p2}, Lteam/opay/pay/util/SingleLiveEvent;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object p2, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->m:Lteam/opay/pay/util/SingleLiveEvent;

    .line 87
    .line 88
    new-instance p2, Lteam/opay/pay/util/SingleLiveEvent;

    .line 89
    .line 90
    invoke-direct {p2}, Lteam/opay/pay/util/SingleLiveEvent;-><init>()V

    .line 91
    .line 92
    .line 93
    iput-object p2, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->n:Lteam/opay/pay/util/SingleLiveEvent;

    .line 94
    .line 95
    new-instance p2, Landroidx/lifecycle/MutableLiveData;

    .line 96
    .line 97
    invoke-direct {p2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object p2, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    .line 101
    .line 102
    new-instance p2, Lteam/opay/pay/account/verify/VerifyStep;

    .line 103
    .line 104
    const/4 p3, 0x0

    .line 105
    invoke-direct {p2, p3, p3}, Lteam/opay/pay/account/verify/VerifyStep;-><init>(II)V

    .line 106
    .line 107
    .line 108
    iput-object p2, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->q:Lteam/opay/pay/account/verify/VerifyStep;

    .line 109
    .line 110
    new-instance p2, Landroidx/lifecycle/MutableLiveData;

    .line 111
    .line 112
    invoke-direct {p2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 113
    .line 114
    .line 115
    iput-object p2, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->r:Landroidx/lifecycle/MutableLiveData;

    .line 116
    .line 117
    new-instance p2, Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .line 121
    .line 122
    iput-object p2, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->s:Ljava/util/List;

    .line 123
    .line 124
    new-instance p2, Lpvf;

    .line 125
    .line 126
    invoke-direct {p2}, Lpvf;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-static {p2}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    iput-object p2, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->u:Lid8;

    .line 134
    .line 135
    new-instance p2, Landroidx/lifecycle/MutableLiveData;

    .line 136
    .line 137
    invoke-direct {p2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 138
    .line 139
    .line 140
    iput-object p2, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->w:Landroidx/lifecycle/MutableLiveData;

    .line 141
    .line 142
    new-instance p2, Landroidx/lifecycle/MutableLiveData;

    .line 143
    .line 144
    invoke-direct {p2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 145
    .line 146
    .line 147
    iput-object p2, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->x:Landroidx/lifecycle/MutableLiveData;

    .line 148
    .line 149
    iput-object p1, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->y:Ljava/lang/String;

    .line 150
    .line 151
    iput-object p1, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->z:Ljava/lang/String;

    .line 152
    .line 153
    iput-object p1, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->A:Ljava/lang/String;

    .line 154
    .line 155
    iput-object p1, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->B:Ljava/lang/String;

    .line 156
    .line 157
    iput-object p1, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->C:Ljava/lang/String;

    .line 158
    .line 159
    iput-object p1, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->D:Ljava/lang/String;

    .line 160
    .line 161
    iput-object p1, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->E:Ljava/lang/String;

    .line 162
    .line 163
    iput-object p1, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->F:Ljava/lang/String;

    .line 164
    .line 165
    iput-object p1, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->G:Ljava/lang/String;

    .line 166
    .line 167
    new-instance p1, Lteam/opay/pay/util/SingleLiveEvent;

    .line 168
    .line 169
    invoke-direct {p1}, Lteam/opay/pay/util/SingleLiveEvent;-><init>()V

    .line 170
    .line 171
    .line 172
    iput-object p1, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->I:Lteam/opay/pay/util/SingleLiveEvent;

    .line 173
    .line 174
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 175
    .line 176
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 177
    .line 178
    .line 179
    iput-object p1, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->J:Landroidx/lifecycle/MutableLiveData;

    .line 180
    .line 181
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/account/verify/VerifyViewModel;)Lteam/opay/pay/account/verify/VerifyManager;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/account/verify/VerifyViewModel;->p0(Lteam/opay/pay/account/verify/VerifyViewModel;)Lteam/opay/pay/account/verify/VerifyManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic B(Lteam/opay/pay/account/verify/VerifyViewModel;Lteam/opay/pay/account/OutCallReq;Ljr2;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/account/verify/VerifyViewModel;->H(Lteam/opay/pay/account/OutCallReq;Ljr2;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic C(Lteam/opay/pay/account/verify/VerifyViewModel;)Lev;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifyViewModel;->k0()Lev;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic D(Lteam/opay/pay/account/verify/VerifyViewModel;Ljava/lang/String;Lteam/opay/pay/account/verify/BaseVerifyFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/account/verify/VerifyViewModel;->L0(Ljava/lang/String;Lteam/opay/pay/account/verify/BaseVerifyFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final G(Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final K0(Lteam/opay/pay/account/verify/VerifyViewModel;)Lteam/opay/core/settings/SettingsStorage;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/core/settings/SettingsStorage;

    .line 2
    .line 3
    iget-object p0, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->b:Landroid/app/Application;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lteam/opay/core/settings/SettingsStorage;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static final M0(Lteam/opay/pay/account/verify/BaseVerifyFragment;Lteam/opay/pay/account/verify/VerifyViewModel;Ljava/lang/String;Z)Lkotlin/Unit;
    .locals 9

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lsy2;->a(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    new-instance p0, Lteam/opay/pay/account/verify/VerifyExitEvent;

    .line 11
    .line 12
    iget-object p3, p1, Lteam/opay/pay/account/verify/VerifyViewModel;->o:Ljava/lang/String;

    .line 13
    .line 14
    const-string v0, ""

    .line 15
    .line 16
    if-nez p3, :cond_1

    .line 17
    .line 18
    move-object v2, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move-object v2, p3

    .line 21
    :goto_0
    if-nez p2, :cond_2

    .line 22
    .line 23
    move-object v3, v0

    .line 24
    goto :goto_1

    .line 25
    :cond_2
    move-object v3, p2

    .line 26
    :goto_1
    iget-object v5, p1, Lteam/opay/pay/account/verify/VerifyViewModel;->j:Ljava/lang/String;

    .line 27
    .line 28
    const/16 v7, 0x20

    .line 29
    .line 30
    const/4 v8, 0x0

    .line 31
    const/4 v1, 0x1

    .line 32
    const-string v4, "C10101"

    .line 33
    .line 34
    const/4 v6, 0x0

    .line 35
    move-object v0, p0

    .line 36
    invoke-direct/range {v0 .. v8}, Lteam/opay/pay/account/verify/VerifyExitEvent;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyViewModel;->S()Lteam/opay/pay/account/verify/VerifyManager;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1, p0}, Lteam/opay/pay/account/verify/VerifyManager;->X(Lteam/opay/pay/account/verify/VerifyExitEvent;)V

    .line 44
    .line 45
    .line 46
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 47
    .line 48
    return-object p0
.end method

.method public static synthetic P0(Lteam/opay/pay/account/verify/VerifyViewModel;Lteam/opay/pay/account/verify/ValidationRequest;Lteam/opay/pay/account/verify/BaseVerifyFragment;Lteam/opay/pay/account/verify/ValidationType;ZLjava/lang/String;Ljava/lang/String;ZLhm6;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 13

    .line 1
    move/from16 v0, p10

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x8

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v7, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move/from16 v7, p4

    .line 11
    .line 12
    :goto_0
    and-int/lit8 v1, v0, 0x10

    .line 13
    .line 14
    const-string v3, ""

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    move-object v8, v3

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move-object/from16 v8, p5

    .line 21
    .line 22
    :goto_1
    and-int/lit8 v1, v0, 0x20

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    move-object v9, v3

    .line 27
    goto :goto_2

    .line 28
    :cond_2
    move-object/from16 v9, p6

    .line 29
    .line 30
    :goto_2
    and-int/lit8 v1, v0, 0x40

    .line 31
    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    const/4 v10, 0x0

    .line 35
    goto :goto_3

    .line 36
    :cond_3
    move/from16 v10, p7

    .line 37
    .line 38
    :goto_3
    and-int/lit16 v0, v0, 0x80

    .line 39
    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    move-object v11, v0

    .line 44
    goto :goto_4

    .line 45
    :cond_4
    move-object/from16 v11, p8

    .line 46
    .line 47
    :goto_4
    move-object v3, p0

    .line 48
    move-object v4, p1

    .line 49
    move-object v5, p2

    .line 50
    move-object/from16 v6, p3

    .line 51
    .line 52
    move-object/from16 v12, p9

    .line 53
    .line 54
    invoke-virtual/range {v3 .. v12}, Lteam/opay/pay/account/verify/VerifyViewModel;->O0(Lteam/opay/pay/account/verify/ValidationRequest;Lteam/opay/pay/account/verify/BaseVerifyFragment;Lteam/opay/pay/account/verify/ValidationType;ZLjava/lang/String;Ljava/lang/String;ZLhm6;Lkotlin/jvm/functions/Function1;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public static final Q0(Lteam/opay/pay/account/verify/ValidationType;ZLteam/opay/pay/account/verify/VerifyViewModel;Lteam/opay/pay/account/verify/BaseVerifyFragment;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lhm6;ZLteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 20

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move-object/from16 v10, p2

    .line 4
    .line 5
    move-object/from16 v6, p3

    .line 6
    .line 7
    move-object/from16 v7, p5

    .line 8
    .line 9
    move-object/from16 v11, p6

    .line 10
    .line 11
    move-object/from16 v0, p7

    .line 12
    .line 13
    move-object/from16 v12, p9

    .line 14
    .line 15
    const/4 v8, 0x3

    .line 16
    const/4 v13, 0x2

    .line 17
    const/4 v14, 0x1

    .line 18
    if-nez v12, :cond_0

    .line 19
    .line 20
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_0
    sget-object v1, Lteam/opay/pay/account/verify/ValidationType;->MTN:Lteam/opay/pay/account/verify/ValidationType;

    .line 24
    .line 25
    if-eq v9, v1, :cond_3

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    iget-object v1, v10, Lteam/opay/pay/account/verify/VerifyViewModel;->m:Lteam/opay/pay/util/SingleLiveEvent;

    .line 30
    .line 31
    invoke-virtual/range {p9 .. p9}, Lteam/opay/core/android/arch/Resource;->f()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    iget-object v1, v10, Lteam/opay/pay/account/verify/VerifyViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    .line 44
    .line 45
    invoke-virtual/range {p9 .. p9}, Lteam/opay/core/android/arch/Resource;->f()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-ne v2, v14, :cond_2

    .line 50
    .line 51
    const/4 v2, 0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const/4 v2, 0x0

    .line 54
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :cond_3
    :goto_1
    invoke-virtual/range {p9 .. p9}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    sget-object v2, Lteam/opay/pay/account/verify/VerifyViewModel$a;->a:[I

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    aget v1, v2, v1

    .line 72
    .line 73
    const-string v5, "source"

    .line 74
    .line 75
    const-string v4, "phone"

    .line 76
    .line 77
    const-string v3, "type"

    .line 78
    .line 79
    const-string v16, ""

    .line 80
    .line 81
    if-eq v1, v14, :cond_16

    .line 82
    .line 83
    if-eq v1, v13, :cond_5

    .line 84
    .line 85
    if-ne v1, v8, :cond_4

    .line 86
    .line 87
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 88
    .line 89
    .line 90
    goto/16 :goto_11

    .line 91
    .line 92
    :cond_4
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 93
    .line 94
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 95
    .line 96
    .line 97
    throw v0

    .line 98
    :cond_5
    invoke-virtual/range {p9 .. p9}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    check-cast v1, Lteam/opay/pay/account/verify/ValidationResponse;

    .line 103
    .line 104
    const/16 v17, 0x0

    .line 105
    .line 106
    if-eqz v1, :cond_6

    .line 107
    .line 108
    invoke-virtual {v1}, Lteam/opay/pay/account/verify/ValidationResponse;->getValStatus()Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    goto :goto_2

    .line 117
    :cond_6
    move-object/from16 v1, v17

    .line 118
    .line 119
    :goto_2
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 120
    .line 121
    invoke-static {v1, v2}, Loj2;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    check-cast v1, Ljava/lang/Boolean;

    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-eqz v1, :cond_9

    .line 132
    .line 133
    if-nez v0, :cond_8

    .line 134
    .line 135
    sget-object v0, Lteam/opay/pay/account/verify/ValidationType;->FACE:Lteam/opay/pay/account/verify/ValidationType;

    .line 136
    .line 137
    if-ne v9, v0, :cond_7

    .line 138
    .line 139
    new-instance v1, Luvf;

    .line 140
    .line 141
    move-object v0, v1

    .line 142
    move-object v13, v1

    .line 143
    move-object/from16 v1, p2

    .line 144
    .line 145
    move-object v15, v2

    .line 146
    move-object/from16 v2, p9

    .line 147
    .line 148
    move-object v8, v3

    .line 149
    move-object/from16 v3, p0

    .line 150
    .line 151
    move-object/from16 v18, v4

    .line 152
    .line 153
    move/from16 v4, p8

    .line 154
    .line 155
    move-object/from16 v19, v5

    .line 156
    .line 157
    move-object/from16 v5, p6

    .line 158
    .line 159
    invoke-direct/range {v0 .. v5}, Luvf;-><init>(Lteam/opay/pay/account/verify/VerifyViewModel;Lteam/opay/core/android/arch/Resource;Lteam/opay/pay/account/verify/ValidationType;ZLkotlin/jvm/functions/Function1;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v6, v13}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->h0(Lkotlin/jvm/functions/Function0;)V

    .line 163
    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_7
    move-object v15, v2

    .line 167
    move-object v8, v3

    .line 168
    move-object/from16 v18, v4

    .line 169
    .line 170
    move-object/from16 v19, v5

    .line 171
    .line 172
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/account/verify/VerifyViewModel;->S()Lteam/opay/pay/account/verify/VerifyManager;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    move/from16 v1, p8

    .line 177
    .line 178
    invoke-virtual {v0, v12, v9, v1, v11}, Lteam/opay/pay/account/verify/VerifyManager;->Y(Lteam/opay/core/android/arch/Resource;Lteam/opay/pay/account/verify/ValidationType;ZLkotlin/jvm/functions/Function1;)V

    .line 179
    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_8
    move/from16 v1, p8

    .line 183
    .line 184
    move-object v15, v2

    .line 185
    move-object v8, v3

    .line 186
    move-object/from16 v18, v4

    .line 187
    .line 188
    move-object/from16 v19, v5

    .line 189
    .line 190
    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-interface {v0, v12, v9, v1}, Lhm6;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    :goto_3
    iput-object v15, v10, Lteam/opay/pay/account/verify/VerifyViewModel;->H:Ljava/lang/Boolean;

    .line 198
    .line 199
    goto :goto_7

    .line 200
    :cond_9
    move-object v15, v2

    .line 201
    move-object v8, v3

    .line 202
    move-object/from16 v18, v4

    .line 203
    .line 204
    move-object/from16 v19, v5

    .line 205
    .line 206
    invoke-virtual/range {p9 .. p9}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    check-cast v0, Lteam/opay/pay/account/verify/ValidationResponse;

    .line 211
    .line 212
    if-eqz v0, :cond_a

    .line 213
    .line 214
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/ValidationResponse;->getFailCode()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    goto :goto_4

    .line 219
    :cond_a
    move-object/from16 v0, v17

    .line 220
    .line 221
    :goto_4
    const-string v1, "9000011"

    .line 222
    .line 223
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    if-eqz v0, :cond_b

    .line 228
    .line 229
    invoke-virtual/range {p9 .. p9}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    check-cast v0, Lteam/opay/pay/account/verify/ValidationResponse;

    .line 234
    .line 235
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/ValidationResponse;->getFailMsg()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {v10, v0, v6}, Lteam/opay/pay/account/verify/VerifyViewModel;->L0(Ljava/lang/String;Lteam/opay/pay/account/verify/BaseVerifyFragment;)V

    .line 240
    .line 241
    .line 242
    goto :goto_6

    .line 243
    :cond_b
    sget-object v0, Lteam/opay/pay/account/verify/ValidationType;->FACE:Lteam/opay/pay/account/verify/ValidationType;

    .line 244
    .line 245
    if-ne v9, v0, :cond_c

    .line 246
    .line 247
    invoke-virtual/range {p9 .. p9}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    check-cast v0, Lteam/opay/pay/account/verify/ValidationResponse;

    .line 252
    .line 253
    if-eqz v0, :cond_f

    .line 254
    .line 255
    iget-object v1, v10, Lteam/opay/pay/account/verify/VerifyViewModel;->I:Lteam/opay/pay/util/SingleLiveEvent;

    .line 256
    .line 257
    invoke-virtual {v1, v0}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 258
    .line 259
    .line 260
    goto :goto_6

    .line 261
    :cond_c
    invoke-virtual/range {p9 .. p9}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    check-cast v0, Lteam/opay/pay/account/verify/ValidationResponse;

    .line 266
    .line 267
    if-eqz v0, :cond_d

    .line 268
    .line 269
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/ValidationResponse;->getFailMsg()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    goto :goto_5

    .line 274
    :cond_d
    move-object/from16 v0, v17

    .line 275
    .line 276
    :goto_5
    if-nez v0, :cond_e

    .line 277
    .line 278
    move-object/from16 v0, v16

    .line 279
    .line 280
    :cond_e
    invoke-interface {v11, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    :cond_f
    :goto_6
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 284
    .line 285
    iput-object v0, v10, Lteam/opay/pay/account/verify/VerifyViewModel;->H:Ljava/lang/Boolean;

    .line 286
    .line 287
    :goto_7
    invoke-virtual/range {p9 .. p9}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    check-cast v0, Lteam/opay/pay/account/verify/ValidationResponse;

    .line 292
    .line 293
    if-eqz v0, :cond_10

    .line 294
    .line 295
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/ValidationResponse;->getValStatus()Z

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    goto :goto_8

    .line 304
    :cond_10
    move-object/from16 v0, v17

    .line 305
    .line 306
    :goto_8
    invoke-static {v0, v15}, Loj2;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    check-cast v0, Ljava/lang/Boolean;

    .line 311
    .line 312
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 313
    .line 314
    .line 315
    move-result v0

    .line 316
    xor-int/lit8 v2, v0, 0x1

    .line 317
    .line 318
    sget-object v0, Lteam/opay/pay/account/verify/ValidationType;->OTP:Lteam/opay/pay/account/verify/ValidationType;

    .line 319
    .line 320
    if-ne v9, v0, :cond_13

    .line 321
    .line 322
    sget-object v0, Lteam/opay/pay/account/verify/c;->a:Lteam/opay/pay/account/verify/c;

    .line 323
    .line 324
    invoke-virtual/range {p3 .. p3}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    iget-object v4, v10, Lteam/opay/pay/account/verify/VerifyViewModel;->o:Ljava/lang/String;

    .line 329
    .line 330
    invoke-virtual/range {p9 .. p9}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v3

    .line 334
    check-cast v3, Lteam/opay/pay/account/verify/ValidationResponse;

    .line 335
    .line 336
    if-eqz v3, :cond_11

    .line 337
    .line 338
    invoke-virtual {v3}, Lteam/opay/pay/account/verify/ValidationResponse;->getFailCode()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v3

    .line 342
    move-object v5, v3

    .line 343
    goto :goto_9

    .line 344
    :cond_11
    move-object/from16 v5, v17

    .line 345
    .line 346
    :goto_9
    invoke-virtual/range {p9 .. p9}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    check-cast v3, Lteam/opay/pay/account/verify/ValidationResponse;

    .line 351
    .line 352
    if-eqz v3, :cond_12

    .line 353
    .line 354
    invoke-virtual {v3}, Lteam/opay/pay/account/verify/ValidationResponse;->getFailMsg()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v3

    .line 358
    move-object v6, v3

    .line 359
    goto :goto_a

    .line 360
    :cond_12
    move-object/from16 v6, v17

    .line 361
    .line 362
    :goto_a
    invoke-static {v8, v7}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 363
    .line 364
    .line 365
    move-result-object v3

    .line 366
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/account/verify/VerifyViewModel;->X()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v7

    .line 370
    move-object/from16 v13, v18

    .line 371
    .line 372
    invoke-static {v13, v7}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 373
    .line 374
    .line 375
    move-result-object v7

    .line 376
    iget-object v8, v10, Lteam/opay/pay/account/verify/VerifyViewModel;->j:Ljava/lang/String;

    .line 377
    .line 378
    move-object/from16 v15, v19

    .line 379
    .line 380
    invoke-static {v15, v8}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 381
    .line 382
    .line 383
    move-result-object v8

    .line 384
    const/4 v10, 0x3

    .line 385
    new-array v10, v10, [Lkotlin/Pair;

    .line 386
    .line 387
    const/4 v11, 0x0

    .line 388
    aput-object v3, v10, v11

    .line 389
    .line 390
    aput-object v7, v10, v14

    .line 391
    .line 392
    const/4 v3, 0x2

    .line 393
    aput-object v8, v10, v3

    .line 394
    .line 395
    move-object/from16 v3, p0

    .line 396
    .line 397
    move-object/from16 v7, p4

    .line 398
    .line 399
    move-object v8, v10

    .line 400
    invoke-virtual/range {v0 .. v8}, Lteam/opay/pay/account/verify/c;->f(Landroid/content/Context;ILteam/opay/pay/account/verify/ValidationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 401
    .line 402
    .line 403
    goto/16 :goto_11

    .line 404
    .line 405
    :cond_13
    sget-object v0, Lteam/opay/pay/account/verify/c;->a:Lteam/opay/pay/account/verify/c;

    .line 406
    .line 407
    invoke-virtual/range {p3 .. p3}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    iget-object v4, v10, Lteam/opay/pay/account/verify/VerifyViewModel;->o:Ljava/lang/String;

    .line 412
    .line 413
    invoke-virtual/range {p9 .. p9}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    move-result-object v3

    .line 417
    check-cast v3, Lteam/opay/pay/account/verify/ValidationResponse;

    .line 418
    .line 419
    if-eqz v3, :cond_14

    .line 420
    .line 421
    invoke-virtual {v3}, Lteam/opay/pay/account/verify/ValidationResponse;->getFailCode()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v3

    .line 425
    move-object v5, v3

    .line 426
    goto :goto_b

    .line 427
    :cond_14
    move-object/from16 v5, v17

    .line 428
    .line 429
    :goto_b
    invoke-virtual/range {p9 .. p9}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v3

    .line 433
    check-cast v3, Lteam/opay/pay/account/verify/ValidationResponse;

    .line 434
    .line 435
    if-eqz v3, :cond_15

    .line 436
    .line 437
    invoke-virtual {v3}, Lteam/opay/pay/account/verify/ValidationResponse;->getFailMsg()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v3

    .line 441
    move-object v6, v3

    .line 442
    :goto_c
    const/4 v3, 0x0

    .line 443
    goto :goto_d

    .line 444
    :cond_15
    move-object/from16 v6, v17

    .line 445
    .line 446
    goto :goto_c

    .line 447
    :goto_d
    new-array v8, v3, [Lkotlin/Pair;

    .line 448
    .line 449
    move-object/from16 v3, p0

    .line 450
    .line 451
    move-object/from16 v7, p4

    .line 452
    .line 453
    invoke-virtual/range {v0 .. v8}, Lteam/opay/pay/account/verify/c;->f(Landroid/content/Context;ILteam/opay/pay/account/verify/ValidationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 454
    .line 455
    .line 456
    goto/16 :goto_11

    .line 457
    .line 458
    :cond_16
    move-object v8, v3

    .line 459
    move-object v13, v4

    .line 460
    move-object v15, v5

    .line 461
    sget-object v0, Lteam/opay/pay/account/verify/ValidationType;->OTP:Lteam/opay/pay/account/verify/ValidationType;

    .line 462
    .line 463
    if-ne v9, v0, :cond_17

    .line 464
    .line 465
    sget-object v0, Lteam/opay/pay/account/verify/c;->a:Lteam/opay/pay/account/verify/c;

    .line 466
    .line 467
    invoke-virtual/range {p3 .. p3}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 468
    .line 469
    .line 470
    move-result-object v1

    .line 471
    iget-object v4, v10, Lteam/opay/pay/account/verify/VerifyViewModel;->o:Ljava/lang/String;

    .line 472
    .line 473
    invoke-virtual/range {p9 .. p9}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v5

    .line 477
    invoke-virtual/range {p9 .. p9}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v6

    .line 481
    invoke-static {v8, v7}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 482
    .line 483
    .line 484
    move-result-object v2

    .line 485
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/account/verify/VerifyViewModel;->X()Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v3

    .line 489
    invoke-static {v13, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 490
    .line 491
    .line 492
    move-result-object v3

    .line 493
    iget-object v7, v10, Lteam/opay/pay/account/verify/VerifyViewModel;->j:Ljava/lang/String;

    .line 494
    .line 495
    invoke-static {v15, v7}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 496
    .line 497
    .line 498
    move-result-object v7

    .line 499
    const/4 v8, 0x3

    .line 500
    new-array v8, v8, [Lkotlin/Pair;

    .line 501
    .line 502
    const/4 v13, 0x0

    .line 503
    aput-object v2, v8, v13

    .line 504
    .line 505
    aput-object v3, v8, v14

    .line 506
    .line 507
    const/4 v2, 0x2

    .line 508
    aput-object v7, v8, v2

    .line 509
    .line 510
    const/4 v2, 0x1

    .line 511
    move-object/from16 v3, p0

    .line 512
    .line 513
    move-object/from16 v7, p4

    .line 514
    .line 515
    invoke-virtual/range {v0 .. v8}, Lteam/opay/pay/account/verify/c;->f(Landroid/content/Context;ILteam/opay/pay/account/verify/ValidationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 516
    .line 517
    .line 518
    goto :goto_e

    .line 519
    :cond_17
    sget-object v0, Lteam/opay/pay/account/verify/c;->a:Lteam/opay/pay/account/verify/c;

    .line 520
    .line 521
    invoke-virtual/range {p3 .. p3}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 522
    .line 523
    .line 524
    move-result-object v1

    .line 525
    iget-object v4, v10, Lteam/opay/pay/account/verify/VerifyViewModel;->o:Ljava/lang/String;

    .line 526
    .line 527
    invoke-virtual/range {p9 .. p9}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v5

    .line 531
    invoke-virtual/range {p9 .. p9}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v6

    .line 535
    const/4 v2, 0x0

    .line 536
    new-array v8, v2, [Lkotlin/Pair;

    .line 537
    .line 538
    const/4 v2, 0x1

    .line 539
    move-object/from16 v3, p0

    .line 540
    .line 541
    move-object/from16 v7, p4

    .line 542
    .line 543
    invoke-virtual/range {v0 .. v8}, Lteam/opay/pay/account/verify/c;->f(Landroid/content/Context;ILteam/opay/pay/account/verify/ValidationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 544
    .line 545
    .line 546
    :goto_e
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 547
    .line 548
    iput-object v0, v10, Lteam/opay/pay/account/verify/VerifyViewModel;->H:Ljava/lang/Boolean;

    .line 549
    .line 550
    sget-object v0, Lteam/opay/pay/account/verify/ValidationType;->FACE:Lteam/opay/pay/account/verify/ValidationType;

    .line 551
    .line 552
    if-ne v9, v0, :cond_1a

    .line 553
    .line 554
    iget-object v0, v10, Lteam/opay/pay/account/verify/VerifyViewModel;->I:Lteam/opay/pay/util/SingleLiveEvent;

    .line 555
    .line 556
    invoke-virtual/range {p9 .. p9}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v1

    .line 560
    if-nez v1, :cond_18

    .line 561
    .line 562
    move-object/from16 v6, v16

    .line 563
    .line 564
    goto :goto_f

    .line 565
    :cond_18
    move-object v6, v1

    .line 566
    :goto_f
    invoke-virtual/range {p9 .. p9}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object v1

    .line 570
    if-nez v1, :cond_19

    .line 571
    .line 572
    move-object/from16 v5, v16

    .line 573
    .line 574
    goto :goto_10

    .line 575
    :cond_19
    move-object v5, v1

    .line 576
    :goto_10
    new-instance v1, Lteam/opay/pay/account/verify/ValidationResponse;

    .line 577
    .line 578
    const/16 v11, 0xf3

    .line 579
    .line 580
    const/4 v12, 0x0

    .line 581
    const/4 v3, 0x0

    .line 582
    const/4 v4, 0x0

    .line 583
    const/4 v7, 0x0

    .line 584
    const/4 v8, 0x0

    .line 585
    const/4 v9, 0x0

    .line 586
    const/4 v10, 0x0

    .line 587
    move-object v2, v1

    .line 588
    invoke-direct/range {v2 .. v12}, Lteam/opay/pay/account/verify/ValidationResponse;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 589
    .line 590
    .line 591
    invoke-virtual {v0, v1}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 592
    .line 593
    .line 594
    goto :goto_11

    .line 595
    :cond_1a
    invoke-virtual/range {p9 .. p9}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v0

    .line 599
    if-nez v0, :cond_1b

    .line 600
    .line 601
    move-object/from16 v0, v16

    .line 602
    .line 603
    :cond_1b
    invoke-interface {v11, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    .line 605
    .line 606
    :goto_11
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 607
    .line 608
    return-object v0
.end method

.method public static final R0(Lteam/opay/pay/account/verify/VerifyViewModel;Lteam/opay/core/android/arch/Resource;Lteam/opay/pay/account/verify/ValidationType;ZLkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifyViewModel;->S()Lteam/opay/pay/account/verify/VerifyManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1, p2, p3, p4}, Lteam/opay/pay/account/verify/VerifyManager;->Y(Lteam/opay/core/android/arch/Resource;Lteam/opay/pay/account/verify/ValidationType;ZLkotlin/jvm/functions/Function1;)V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method

.method public static final T0(Lteam/opay/pay/account/verify/VerifyViewModel;Landroidx/appcompat/app/AppCompatActivity;Lkotlin/jvm/functions/Function1;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 4

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->f()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-ne v3, v2, :cond_0

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v3, 0x0

    .line 16
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v0, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    if-eqz p3, :cond_1

    .line 24
    .line 25
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/4 v0, 0x0

    .line 31
    :goto_1
    if-nez v0, :cond_2

    .line 32
    .line 33
    const/4 v0, -0x1

    .line 34
    goto :goto_2

    .line 35
    :cond_2
    sget-object v3, Lteam/opay/pay/account/verify/VerifyViewModel$a;->a:[I

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    aget v0, v3, v0

    .line 42
    .line 43
    :goto_2
    if-eq v0, v2, :cond_6

    .line 44
    .line 45
    const/4 p0, 0x2

    .line 46
    if-eq v0, p0, :cond_3

    .line 47
    .line 48
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 49
    .line 50
    .line 51
    goto :goto_4

    .line 52
    :cond_3
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    check-cast p0, Lteam/opay/pay/account/verify/UnfreezeCallbackResponse;

    .line 57
    .line 58
    if-eqz p0, :cond_4

    .line 59
    .line 60
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/UnfreezeCallbackResponse;->a()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    if-nez p0, :cond_5

    .line 65
    .line 66
    :cond_4
    const-string p0, "success"

    .line 67
    .line 68
    :cond_5
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    goto :goto_4

    .line 72
    :cond_6
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    const-string v0, ""

    .line 77
    .line 78
    if-nez p2, :cond_7

    .line 79
    .line 80
    move-object p2, v0

    .line 81
    :cond_7
    invoke-static {p1, p2}, Lkmf;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifyViewModel;->S()Lteam/opay/pay/account/verify/VerifyManager;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    if-nez p1, :cond_8

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_8
    move-object v0, p1

    .line 96
    :goto_3
    const-string p1, "failed"

    .line 97
    .line 98
    invoke-virtual {p0, p1, v1, v0}, Lteam/opay/pay/account/verify/VerifyManager;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 102
    .line 103
    return-object p0
.end method

.method public static final V0(Lteam/opay/pay/account/verify/VerifyViewModel;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    sget-object v4, Lteam/opay/pay/account/verify/VerifyViewModel$a;->a:[I

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    aget v3, v4, v3

    .line 20
    .line 21
    const-string v4, ""

    .line 22
    .line 23
    const-string v5, "2"

    .line 24
    .line 25
    const-string v6, "quicklogin_type"

    .line 26
    .line 27
    if-eq v3, v2, :cond_4

    .line 28
    .line 29
    if-eq v3, v1, :cond_1

    .line 30
    .line 31
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 32
    .line 33
    .line 34
    goto/16 :goto_5

    .line 35
    .line 36
    :cond_1
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    check-cast p2, Ljava/lang/Boolean;

    .line 41
    .line 42
    if-eqz p2, :cond_3

    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    sget-object v3, Lx7b;->a:Lx7b;

    .line 49
    .line 50
    invoke-static {v6, v5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    new-array v2, v2, [Lkotlin/Pair;

    .line 55
    .line 56
    aput-object v5, v2, v0

    .line 57
    .line 58
    const-string v0, "quicklogin_success"

    .line 59
    .line 60
    invoke-virtual {v3, v0, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 61
    .line 62
    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    move-object p1, v4

    .line 67
    :goto_0
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->w:Landroidx/lifecycle/MutableLiveData;

    .line 68
    .line 69
    new-instance v1, Lkotlin/Pair;

    .line 70
    .line 71
    invoke-direct {v1, p2, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :cond_3
    iget-object p0, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    .line 78
    .line 79
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    goto/16 :goto_5

    .line 85
    .line 86
    :cond_4
    sget-object p1, Lx7b;->a:Lx7b;

    .line 87
    .line 88
    invoke-static {v6, v5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    const/4 v6, 0x0

    .line 97
    if-eqz v5, :cond_5

    .line 98
    .line 99
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    if-nez v7, :cond_6

    .line 104
    .line 105
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->e()I

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    goto :goto_1

    .line 114
    :cond_5
    move-object v5, v6

    .line 115
    :cond_6
    :goto_1
    const-string v7, "code"

    .line 116
    .line 117
    invoke-static {v7, v5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    const-string v7, "msg"

    .line 122
    .line 123
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    invoke-static {v7, v8}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 128
    .line 129
    .line 130
    move-result-object v7

    .line 131
    const/4 v8, 0x3

    .line 132
    new-array v8, v8, [Lkotlin/Pair;

    .line 133
    .line 134
    aput-object v3, v8, v0

    .line 135
    .line 136
    aput-object v5, v8, v2

    .line 137
    .line 138
    aput-object v7, v8, v1

    .line 139
    .line 140
    const-string v0, "quicklogin_fail"

    .line 141
    .line 142
    invoke-virtual {p1, v0, v8}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->e()I

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    const/16 v0, -0x3ec

    .line 150
    .line 151
    if-ne p1, v0, :cond_a

    .line 152
    .line 153
    sget-object p1, Lteam/opay/pay/kyc/ConnectionFailedDialog;->m:Lteam/opay/pay/kyc/ConnectionFailedDialog$Companion;

    .line 154
    .line 155
    sget-object v0, Ld00;->a:Ld00;

    .line 156
    .line 157
    invoke-virtual {v0}, Ld00;->e()Landroid/app/Activity;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    .line 162
    .line 163
    if-eqz v1, :cond_7

    .line 164
    .line 165
    move-object v6, v0

    .line 166
    check-cast v6, Landroidx/fragment/app/FragmentActivity;

    .line 167
    .line 168
    :cond_7
    if-nez v6, :cond_8

    .line 169
    .line 170
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 171
    .line 172
    return-object p0

    .line 173
    :cond_8
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p2

    .line 177
    if-nez p2, :cond_9

    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_9
    move-object v4, p2

    .line 181
    :goto_2
    const-string p2, "finger_login"

    .line 182
    .line 183
    invoke-virtual {p1, v6, p2, v4}, Lteam/opay/pay/kyc/ConnectionFailedDialog$Companion;->a(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    goto :goto_4

    .line 187
    :cond_a
    invoke-static {p2}, Lteam/opay/core/android/arch/ResourceKt;->h(Lteam/opay/core/android/arch/Resource;)Z

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    if-eqz p1, :cond_b

    .line 192
    .line 193
    iget-object p1, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->b:Landroid/app/Application;

    .line 194
    .line 195
    sget v0, Lteam/opay/pay/R$string;->bad_gateway_error:I

    .line 196
    .line 197
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    goto :goto_3

    .line 202
    :cond_b
    invoke-static {p2}, Lteam/opay/core/android/arch/ResourceKt;->g(Lteam/opay/core/android/arch/Resource;)Z

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    if-eqz p1, :cond_c

    .line 207
    .line 208
    iget-object p1, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->b:Landroid/app/Application;

    .line 209
    .line 210
    sget v0, Lteam/opay/pay/R$string;->connection_error_body:I

    .line 211
    .line 212
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    goto :goto_3

    .line 217
    :cond_c
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    if-nez p1, :cond_d

    .line 222
    .line 223
    iget-object p1, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->b:Landroid/app/Application;

    .line 224
    .line 225
    sget v0, Lteam/opay/pay/R$string;->connection_error_headline:I

    .line 226
    .line 227
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    const-string v0, "getString(...)"

    .line 232
    .line 233
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    :cond_d
    :goto_3
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->w:Landroidx/lifecycle/MutableLiveData;

    .line 240
    .line 241
    new-instance v1, Lkotlin/Pair;

    .line 242
    .line 243
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 244
    .line 245
    invoke-direct {v1, v2, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    const-string v0, "unauthenticated"

    .line 256
    .line 257
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result p1

    .line 261
    if-nez p1, :cond_e

    .line 262
    .line 263
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    const-string v0, "02202"

    .line 268
    .line 269
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result p1

    .line 273
    if-nez p1, :cond_e

    .line 274
    .line 275
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    const-string p2, "02340"

    .line 280
    .line 281
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result p1

    .line 285
    if-eqz p1, :cond_f

    .line 286
    .line 287
    :cond_e
    iget-object p1, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->x:Landroidx/lifecycle/MutableLiveData;

    .line 288
    .line 289
    invoke-virtual {p1, v6}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    :cond_f
    :goto_4
    iget-object p0, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    .line 293
    .line 294
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 295
    .line 296
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    :goto_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 300
    .line 301
    return-object p0
.end method

.method public static final W0(Lteam/opay/pay/account/verify/VerifyViewModel;)Lev;
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 2
    .line 3
    iget-object p0, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->b:Landroid/app/Application;

    .line 4
    .line 5
    const-class v1, Lev;

    .line 6
    .line 7
    invoke-virtual {v0, p0, v1}, Lteam/opay/core/api/GraphQL;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lev;

    .line 12
    .line 13
    return-object p0
.end method

.method public static final n0()Landroidx/lifecycle/MutableLiveData;
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

.method public static final p0(Lteam/opay/pay/account/verify/VerifyViewModel;)Lteam/opay/pay/account/verify/VerifyManager;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/pay/account/verify/VerifyManager;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lteam/opay/pay/account/verify/VerifyManager;-><init>(Lteam/opay/pay/account/verify/VerifyViewModel;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static synthetic r(Lteam/opay/pay/account/verify/VerifyViewModel;)Lev;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/account/verify/VerifyViewModel;->W0(Lteam/opay/pay/account/verify/VerifyViewModel;)Lev;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic s(Lteam/opay/pay/account/verify/ValidationType;ZLteam/opay/pay/account/verify/VerifyViewModel;Lteam/opay/pay/account/verify/BaseVerifyFragment;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lhm6;ZLteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p9}, Lteam/opay/pay/account/verify/VerifyViewModel;->Q0(Lteam/opay/pay/account/verify/ValidationType;ZLteam/opay/pay/account/verify/VerifyViewModel;Lteam/opay/pay/account/verify/BaseVerifyFragment;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lhm6;ZLteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic t(Lteam/opay/pay/account/verify/VerifyViewModel;Landroidx/appcompat/app/AppCompatActivity;Lkotlin/jvm/functions/Function1;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/account/verify/VerifyViewModel;->T0(Lteam/opay/pay/account/verify/VerifyViewModel;Landroidx/appcompat/app/AppCompatActivity;Lkotlin/jvm/functions/Function1;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic u(Lteam/opay/pay/account/verify/VerifyViewModel;Lteam/opay/core/android/arch/Resource;Lteam/opay/pay/account/verify/ValidationType;ZLkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lteam/opay/pay/account/verify/VerifyViewModel;->R0(Lteam/opay/pay/account/verify/VerifyViewModel;Lteam/opay/core/android/arch/Resource;Lteam/opay/pay/account/verify/ValidationType;ZLkotlin/jvm/functions/Function1;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic v(Lteam/opay/pay/account/verify/VerifyViewModel;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/account/verify/VerifyViewModel;->V0(Lteam/opay/pay/account/verify/VerifyViewModel;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic w(Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/account/verify/VerifyViewModel;->G(Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic x(Lteam/opay/pay/account/verify/VerifyViewModel;)Lteam/opay/core/settings/SettingsStorage;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/account/verify/VerifyViewModel;->K0(Lteam/opay/pay/account/verify/VerifyViewModel;)Lteam/opay/core/settings/SettingsStorage;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic y(Lteam/opay/pay/account/verify/BaseVerifyFragment;Lteam/opay/pay/account/verify/VerifyViewModel;Ljava/lang/String;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/account/verify/VerifyViewModel;->M0(Lteam/opay/pay/account/verify/BaseVerifyFragment;Lteam/opay/pay/account/verify/VerifyViewModel;Ljava/lang/String;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic z()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/account/verify/VerifyViewModel;->n0()Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public final A0(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
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
    iput-object p1, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->y:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final B0(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
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
    iput-object p1, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->E:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final C0(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
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
    iput-object p1, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->D:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final D0(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
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
    iput-object p1, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->C:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final E(Lteam/opay/pay/account/verify/BaseVerifyFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1    # Lteam/opay/pay/account/verify/BaseVerifyFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/account/verify/BaseVerifyFragment<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "viewLifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v0, Lteam/opay/pay/account/verify/VerifyViewModel$callOutPhone$1;

    .line 11
    .line 12
    const/4 v7, 0x0

    .line 13
    move-object v2, v0

    .line 14
    move-object v3, p0

    .line 15
    move-object v4, p1

    .line 16
    move-object v5, p2

    .line 17
    move-object v6, p3

    .line 18
    invoke-direct/range {v2 .. v7}, Lteam/opay/pay/account/verify/VerifyViewModel$callOutPhone$1;-><init>(Lteam/opay/pay/account/verify/VerifyViewModel;Lteam/opay/pay/account/verify/BaseVerifyFragment;Ljava/lang/String;Ljava/lang/String;Ljr2;)V

    .line 19
    .line 20
    .line 21
    const/4 v5, 0x3

    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x0

    .line 25
    move-object v4, v0

    .line 26
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final E0(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
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
    iput-object p1, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->A:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final F()V
    .locals 9

    .line 1
    new-instance v7, Lteam/opay/pay/account/verify/VerifyExitRequest;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->t:Lteam/opay/pay/account/verify/VerifyPoolResponse;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyPoolResponse;->getValChainId()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    move-object v2, v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object v2, v1

    .line 15
    :goto_0
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->t:Lteam/opay/pay/account/verify/VerifyPoolResponse;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyPoolResponse;->getSecurityId()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    move-object v3, v0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move-object v3, v1

    .line 26
    :goto_1
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifyViewModel;->R()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    iget-object v5, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->j:Ljava/lang/String;

    .line 31
    .line 32
    const/4 v6, 0x0

    .line 33
    iget-object v8, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->o:Ljava/lang/String;

    .line 34
    .line 35
    move-object v0, v7

    .line 36
    move-object v1, v2

    .line 37
    move-object v2, v3

    .line 38
    move-object v3, v4

    .line 39
    move-object v4, v5

    .line 40
    move-object v5, v6

    .line 41
    move-object v6, v8

    .line 42
    invoke-direct/range {v0 .. v6}, Lteam/opay/pay/account/verify/VerifyExitRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->d:Lteam/opay/pay/account/verify/VerifyRepository;

    .line 46
    .line 47
    invoke-virtual {v0, v7}, Lteam/opay/pay/account/verify/VerifyRepository;->g(Lteam/opay/pay/account/verify/VerifyExitRequest;)Landroidx/lifecycle/LiveData;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    new-instance v1, Lsvf;

    .line 52
    .line 53
    invoke-direct {v1}, Lsvf;-><init>()V

    .line 54
    .line 55
    .line 56
    new-instance v2, Lteam/opay/pay/account/verify/VerifyViewModel$b;

    .line 57
    .line 58
    invoke-direct {v2, v1}, Lteam/opay/pay/account/verify/VerifyViewModel$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v2}, Landroidx/lifecycle/LiveData;->observeForever(Lvfa;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final F0(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
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
    iput-object p1, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->B:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final G0(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
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
    iput-object p1, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->F:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final H(Lteam/opay/pay/account/OutCallReq;Ljr2;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/account/OutCallReq;",
            "Ljr2<",
            "-",
            "Lretrofit2/Call<",
            "Lteam/opay/pay/api/HttpResponse<",
            "Ljava/lang/Object;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lteam/opay/pay/account/verify/VerifyViewModel$getCallOutPhoneApi$2;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p0, p1, v2}, Lteam/opay/pay/account/verify/VerifyViewModel$getCallOutPhoneApi$2;-><init>(Lteam/opay/pay/account/verify/VerifyViewModel;Lteam/opay/pay/account/OutCallReq;Ljr2;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, p2}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public final H0(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
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
    iput-object p1, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->z:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final I()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->J:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final I0(Lteam/opay/pay/account/verify/ValidationResponse;)V
    .locals 0
    .param p1    # Lteam/opay/pay/account/verify/ValidationResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->v:Lteam/opay/pay/account/verify/ValidationResponse;

    .line 2
    .line 3
    return-void
.end method

.method public final J()Lteam/opay/pay/account/verify/VerifyStep;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->q:Lteam/opay/pay/account/verify/VerifyStep;

    .line 2
    .line 3
    return-object v0
.end method

.method public final J0(Lteam/opay/pay/account/verify/VerifyPoolResponse;)V
    .locals 0
    .param p1    # Lteam/opay/pay/account/verify/VerifyPoolResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->t:Lteam/opay/pay/account/verify/VerifyPoolResponse;

    .line 2
    .line 3
    return-void
.end method

.method public final K()Lteam/opay/pay/util/SingleLiveEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Lteam/opay/pay/account/verify/ValidationResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->I:Lteam/opay/pay/util/SingleLiveEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final L()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->w:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final L0(Ljava/lang/String;Lteam/opay/pay/account/verify/BaseVerifyFragment;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lteam/opay/pay/account/verify/BaseVerifyFragment<",
            "*>;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    sget-object v1, Lteam/opay/pay/base/VerticalTwoButtonDialogFragment;->l:Lteam/opay/pay/base/VerticalTwoButtonDialogFragment$Companion;

    .line 4
    .line 5
    new-instance v15, Lteam/opay/pay/base/DialogInfo;

    .line 6
    .line 7
    sget v2, Lteam/opay/pay/R$string;->opay_max_error_title:I

    .line 8
    .line 9
    invoke-static {v2}, Ljmf;->k(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const-string v2, ""

    .line 16
    .line 17
    move-object v4, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v4, v0

    .line 20
    :goto_0
    sget v2, Lteam/opay/pay/R$string;->opay_hotline_prompt:I

    .line 21
    .line 22
    invoke-static {v2}, Ljmf;->k(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    sget v2, Lteam/opay/pay/R$string;->cancel:I

    .line 27
    .line 28
    invoke-static {v2}, Ljmf;->k(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    const/16 v16, 0x1ff0

    .line 33
    .line 34
    const/16 v17, 0x0

    .line 35
    .line 36
    const/4 v7, 0x0

    .line 37
    const/4 v8, 0x0

    .line 38
    const/4 v9, 0x0

    .line 39
    const/4 v10, 0x0

    .line 40
    const/4 v11, 0x0

    .line 41
    const/4 v12, 0x0

    .line 42
    const/4 v13, 0x0

    .line 43
    const/4 v14, 0x0

    .line 44
    const/16 v18, 0x0

    .line 45
    .line 46
    move-object v2, v15

    .line 47
    move-object/from16 v19, v15

    .line 48
    .line 49
    move-object/from16 v15, v18

    .line 50
    .line 51
    invoke-direct/range {v2 .. v17}, Lteam/opay/pay/base/DialogInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;IIIILandroid/text/SpannableStringBuilder;ZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 52
    .line 53
    .line 54
    move-object/from16 v2, v19

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Lteam/opay/pay/base/VerticalTwoButtonDialogFragment$Companion;->a(Lteam/opay/pay/base/DialogInfo;)Lteam/opay/pay/base/VerticalTwoButtonDialogFragment;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    new-instance v2, Llvf;

    .line 61
    .line 62
    move-object/from16 v3, p0

    .line 63
    .line 64
    move-object/from16 v4, p2

    .line 65
    .line 66
    invoke-direct {v2, v4, v3, v0}, Llvf;-><init>(Lteam/opay/pay/account/verify/BaseVerifyFragment;Lteam/opay/pay/account/verify/VerifyViewModel;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v2}, Lteam/opay/pay/base/VerticalTwoButtonDialogFragment;->S(Lkotlin/jvm/functions/Function1;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual/range {p2 .. p2}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {v0, v1}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final M()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final N()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->u:Lid8;

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

.method public final N0(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "modifyType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lteam/opay/pay/account/verify/ModifyType;->MODIFY_PASSWORD:Lteam/opay/pay/account/verify/ModifyType;

    .line 7
    .line 8
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/ModifyType;->getValue()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    sget-object v0, Lteam/opay/pay/account/verify/ModifyType;->FORGET_PASSWORD:Lteam/opay/pay/account/verify/ModifyType;

    .line 19
    .line 20
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/ModifyType;->getValue()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    sget-object v0, Lteam/opay/pay/account/verify/ModifyType;->MODIFY_PAYMENT_PIN:Lteam/opay/pay/account/verify/ModifyType;

    .line 31
    .line 32
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/ModifyType;->getValue()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    sget-object v0, Lteam/opay/pay/account/verify/ModifyType;->FORGET_PAYMENT_PIN:Lteam/opay/pay/account/verify/ModifyType;

    .line 43
    .line 44
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/ModifyType;->getValue()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/4 p1, 0x0

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 58
    :goto_1
    return p1
.end method

.method public final O()Lteam/opay/pay/util/SingleLiveEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->m:Lteam/opay/pay/util/SingleLiveEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final O0(Lteam/opay/pay/account/verify/ValidationRequest;Lteam/opay/pay/account/verify/BaseVerifyFragment;Lteam/opay/pay/account/verify/ValidationType;ZLjava/lang/String;Ljava/lang/String;ZLhm6;Lkotlin/jvm/functions/Function1;)V
    .locals 14
    .param p1    # Lteam/opay/pay/account/verify/ValidationRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/account/verify/BaseVerifyFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/pay/account/verify/ValidationType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lhm6;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/account/verify/ValidationRequest;",
            "Lteam/opay/pay/account/verify/BaseVerifyFragment<",
            "*>;",
            "Lteam/opay/pay/account/verify/ValidationType;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lhm6<",
            "-",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/account/verify/ValidationResponse;",
            ">;-",
            "Lteam/opay/pay/account/verify/ValidationType;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object v10, p0

    .line 2
    move-object v0, p1

    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    const-string v2, "request"

    .line 6
    .line 7
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v2, "viewLifecycleOwner"

    .line 11
    .line 12
    move-object/from16 v4, p2

    .line 13
    .line 14
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v2, "validationType"

    .line 18
    .line 19
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v2, "traceId"

    .line 23
    .line 24
    move-object/from16 v5, p5

    .line 25
    .line 26
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v2, "type"

    .line 30
    .line 31
    move-object/from16 v6, p6

    .line 32
    .line 33
    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v2, "fail"

    .line 37
    .line 38
    move-object/from16 v7, p9

    .line 39
    .line 40
    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual/range {p2 .. p2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_3

    .line 48
    .line 49
    invoke-virtual/range {p2 .. p2}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_3

    .line 54
    .line 55
    invoke-virtual/range {p2 .. p2}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-nez v2, :cond_3

    .line 60
    .line 61
    invoke-virtual/range {p2 .. p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    if-nez v2, :cond_0

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-static {v2}, Lkmf;->e(Landroid/app/Activity;)Lkotlin/Unit;

    .line 73
    .line 74
    .line 75
    iget-object v2, v10, Lteam/opay/pay/account/verify/VerifyViewModel;->t:Lteam/opay/pay/account/verify/VerifyPoolResponse;

    .line 76
    .line 77
    if-eqz v2, :cond_2

    .line 78
    .line 79
    invoke-virtual {v2}, Lteam/opay/pay/account/verify/VerifyPoolResponse;->getExtraMap()Ljava/util/Map;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    if-eqz v2, :cond_2

    .line 84
    .line 85
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/ValidationRequest;->a()Ljava/util/Map;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    if-nez v3, :cond_1

    .line 90
    .line 91
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 92
    .line 93
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 94
    .line 95
    .line 96
    :cond_1
    invoke-interface {v3, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 97
    .line 98
    .line 99
    :cond_2
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifyViewModel;->S()Lteam/opay/pay/account/verify/VerifyManager;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v2, v1}, Lteam/opay/pay/account/verify/VerifyManager;->L(Lteam/opay/pay/account/verify/ValidationType;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {p1, v2}, Lteam/opay/pay/account/verify/ValidationRequest;->b(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget-object v2, v10, Lteam/opay/pay/account/verify/VerifyViewModel;->d:Lteam/opay/pay/account/verify/VerifyRepository;

    .line 111
    .line 112
    invoke-virtual {v2, p1}, Lteam/opay/pay/account/verify/VerifyRepository;->m(Lteam/opay/pay/account/verify/ValidationRequest;)Landroidx/lifecycle/LiveData;

    .line 113
    .line 114
    .line 115
    move-result-object v11

    .line 116
    invoke-virtual/range {p2 .. p2}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 117
    .line 118
    .line 119
    move-result-object v12

    .line 120
    const-string v0, "getViewLifecycleOwner(...)"

    .line 121
    .line 122
    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    new-instance v13, Lrvf;

    .line 126
    .line 127
    move-object v0, v13

    .line 128
    move-object/from16 v1, p3

    .line 129
    .line 130
    move/from16 v2, p7

    .line 131
    .line 132
    move-object v3, p0

    .line 133
    move-object/from16 v4, p2

    .line 134
    .line 135
    move-object/from16 v5, p5

    .line 136
    .line 137
    move-object/from16 v6, p6

    .line 138
    .line 139
    move-object/from16 v7, p9

    .line 140
    .line 141
    move-object/from16 v8, p8

    .line 142
    .line 143
    move/from16 v9, p4

    .line 144
    .line 145
    invoke-direct/range {v0 .. v9}, Lrvf;-><init>(Lteam/opay/pay/account/verify/ValidationType;ZLteam/opay/pay/account/verify/VerifyViewModel;Lteam/opay/pay/account/verify/BaseVerifyFragment;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lhm6;Z)V

    .line 146
    .line 147
    .line 148
    invoke-static {v11, v12, v13}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 149
    .line 150
    .line 151
    :cond_3
    :goto_0
    return-void
.end method

.method public final P()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->o:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Q()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->G:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final R()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifyViewModel;->X()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Loj2;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lca2;->b(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifyViewModel;->V()Lteam/opay/core/settings/SettingsStorage;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lteam/opay/core/settings/SettingsStorage;->h()Lteam/opay/core/api/Country;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifyViewModel;->X()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Lxob;->h(Lteam/opay/core/api/Country;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifyViewModel;->X()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :goto_0
    return-object v0
.end method

.method public final S()Lteam/opay/pay/account/verify/VerifyManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->g:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/account/verify/VerifyManager;

    .line 8
    .line 9
    return-object v0
.end method

.method public final S0(Lteam/opay/pay/account/verify/VerifyCallbackRequest;Landroidx/appcompat/app/AppCompatActivity;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lteam/opay/pay/account/verify/VerifyCallbackRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/appcompat/app/AppCompatActivity;
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
            "Lteam/opay/pay/account/verify/VerifyCallbackRequest;",
            "Landroidx/appcompat/app/AppCompatActivity;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "activity"

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
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->d:Lteam/opay/pay/account/verify/VerifyRepository;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lteam/opay/pay/account/verify/VerifyRepository;->n(Lteam/opay/pay/account/verify/VerifyCallbackRequest;)Landroidx/lifecycle/LiveData;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance v0, Ltvf;

    .line 23
    .line 24
    invoke-direct {v0, p0, p2, p3}, Ltvf;-><init>(Lteam/opay/pay/account/verify/VerifyViewModel;Landroidx/appcompat/app/AppCompatActivity;Lkotlin/jvm/functions/Function1;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1, p2, v0}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final T()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final U()Lteam/opay/pay/util/SingleLiveEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->n:Lteam/opay/pay/util/SingleLiveEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final U0(Lag8;Ljava/lang/String;)V
    .locals 4
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "viewLifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "password"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 12
    .line 13
    const-class v1, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IUserDataGenerator;->uid()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    new-instance v1, Lteam/opay/pay/biometric/ValidateFingerReq;

    .line 39
    .line 40
    const-string v2, "LOGIN_FINGERPRINT"

    .line 41
    .line 42
    const-string v3, ""

    .line 43
    .line 44
    invoke-direct {v1, v0, v2, p2, v3}, Lteam/opay/pay/biometric/ValidateFingerReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    .line 48
    .line 49
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->e:Lteam/opay/pay/biometric/BiometricRepository;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lteam/opay/pay/biometric/BiometricRepository;->h(Lteam/opay/pay/biometric/ValidateFingerReq;)Landroidx/lifecycle/LiveData;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    new-instance v1, Lqvf;

    .line 61
    .line 62
    invoke-direct {v1, p0, p2}, Lqvf;-><init>(Lteam/opay/pay/account/verify/VerifyViewModel;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-static {v0, p1, v1}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 66
    .line 67
    .line 68
    :cond_2
    :goto_1
    return-void
.end method

.method public final V()Lteam/opay/core/settings/SettingsStorage;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->h:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/core/settings/SettingsStorage;

    .line 8
    .line 9
    return-object v0
.end method

.method public final W()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->x:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final X()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->k:Ljava/lang/String;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifyViewModel;->V()Lteam/opay/core/settings/SettingsStorage;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lteam/opay/core/settings/SettingsStorage;->K()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_0
    return-object v0
.end method

.method public final Y()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->y:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Z()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->E:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final a0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->D:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->C:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->A:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->B:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->F:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->z:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/account/verify/ValidationType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->r:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h0()Lteam/opay/pay/account/verify/ValidationResponse;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->v:Lteam/opay/pay/account/verify/ValidationResponse;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/account/verify/VerifyStep;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/pay/account/verify/ValidationType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->s:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k0()Lev;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->f:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lev;

    .line 8
    .line 9
    return-object v0
.end method

.method public final l0()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->H:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public m()Lteam/opay/core/api/GraphQL$User;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->c:Lteam/opay/core/api/e;

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

.method public final m0()Lteam/opay/pay/account/verify/VerifyPoolResponse;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->t:Lteam/opay/pay/account/verify/VerifyPoolResponse;

    .line 2
    .line 3
    return-object v0
.end method

.method public o()Lteam/opay/core/api/Country;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->c:Lteam/opay/core/api/e;

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

.method public final o0(Lteam/opay/pay/account/verify/OldValidationRequest;)Landroidx/lifecycle/LiveData;
    .locals 1
    .param p1    # Lteam/opay/pay/account/verify/OldValidationRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/account/verify/OldValidationRequest;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/account/verify/OldValidationResponse;",
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
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->d:Lteam/opay/pay/account/verify/VerifyRepository;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lteam/opay/pay/account/verify/VerifyRepository;->h(Lteam/opay/pay/account/verify/OldValidationRequest;)Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public p()Lteam/opay/core/api/GraphQL$Currency;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->c:Lteam/opay/core/api/e;

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

.method public final q0()Landroidx/lifecycle/LiveData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/home/security/SecretQuestionResult;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

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
    sget-object v1, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 11
    .line 12
    iget-object v2, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->b:Landroid/app/Application;

    .line 13
    .line 14
    const-class v3, Ln7d;

    .line 15
    .line 16
    invoke-virtual {v1, v2, v3}, Lteam/opay/core/api/GraphQL;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ln7d;

    .line 21
    .line 22
    new-instance v2, Lteam/opay/pay/home/security/QuerySecretQuestionReq;

    .line 23
    .line 24
    iget-object v3, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->t:Lteam/opay/pay/account/verify/VerifyPoolResponse;

    .line 25
    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    invoke-virtual {v3}, Lteam/opay/pay/account/verify/VerifyPoolResponse;->getValChainId()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v3, 0x0

    .line 34
    :goto_0
    if-nez v3, :cond_1

    .line 35
    .line 36
    const-string v3, ""

    .line 37
    .line 38
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifyViewModel;->R()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-direct {v2, v3, v4}, Lteam/opay/pay/home/security/QuerySecretQuestionReq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v1, v2}, Ln7d;->l(Lteam/opay/pay/home/security/QuerySecretQuestionReq;)Lretrofit2/Call;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Lteam/opay/core/android/arch/RequestBuilder;->a(Lretrofit2/Call;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lteam/opay/core/android/arch/RequestBuilder;->b()Landroidx/lifecycle/LiveData;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    return-object v0
.end method

.method public final r0(Lteam/opay/pay/account/verify/VerifyPoolRequest;Z)Landroidx/lifecycle/LiveData;
    .locals 1
    .param p1    # Lteam/opay/pay/account/verify/VerifyPoolRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/account/verify/VerifyPoolRequest;",
            "Z)",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/account/verify/VerifyPoolResponse;",
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
    if-eqz p2, :cond_0

    .line 7
    .line 8
    iget-object p2, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->d:Lteam/opay/pay/account/verify/VerifyRepository;

    .line 9
    .line 10
    invoke-virtual {p2, p1}, Lteam/opay/pay/account/verify/VerifyRepository;->i(Lteam/opay/pay/account/verify/VerifyPoolRequest;)Landroidx/lifecycle/LiveData;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object p2, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->d:Lteam/opay/pay/account/verify/VerifyRepository;

    .line 16
    .line 17
    invoke-virtual {p2, p1}, Lteam/opay/pay/account/verify/VerifyRepository;->j(Lteam/opay/pay/account/verify/VerifyPoolRequest;)Landroidx/lifecycle/LiveData;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :goto_0
    return-object p1
.end method

.method public final s0(Lteam/opay/pay/account/verify/SendEmailRequest;)Landroidx/lifecycle/LiveData;
    .locals 1
    .param p1    # Lteam/opay/pay/account/verify/SendEmailRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/account/verify/SendEmailRequest;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Ljava/lang/Object;",
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
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->d:Lteam/opay/pay/account/verify/VerifyRepository;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lteam/opay/pay/account/verify/VerifyRepository;->k(Lteam/opay/pay/account/verify/SendEmailRequest;)Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final t0(Lteam/opay/pay/account/verify/SendOtpRequest;)Landroidx/lifecycle/LiveData;
    .locals 1
    .param p1    # Lteam/opay/pay/account/verify/SendOtpRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/account/verify/SendOtpRequest;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Ljava/lang/Object;",
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
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->d:Lteam/opay/pay/account/verify/VerifyRepository;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lteam/opay/pay/account/verify/VerifyRepository;->l(Lteam/opay/pay/account/verify/SendOtpRequest;)Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final u0(Lteam/opay/pay/account/verify/VerifyStep;)V
    .locals 1
    .param p1    # Lteam/opay/pay/account/verify/VerifyStep;
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
    iput-object p1, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->q:Lteam/opay/pay/account/verify/VerifyStep;

    .line 7
    .line 8
    return-void
.end method

.method public final v0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->i:Z

    .line 2
    .line 3
    return-void
.end method

.method public final w0(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
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
    iput-object p1, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->j:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final x0(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->o:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final y0(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
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
    iput-object p1, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->G:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final z0(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
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
    iput-object p1, p0, Lteam/opay/pay/account/verify/VerifyViewModel;->k:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
