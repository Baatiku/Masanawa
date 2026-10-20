.class public final Lteam/opay/pay/kyc/base/SceneViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SceneViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/kyc/base/SceneViewModel$Companion;,
        Lteam/opay/pay/kyc/base/SceneViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00aa\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010%\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0019\n\u0002\u0010!\n\u0002\u0008B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0017\u0008\u0007\u0018\u0000 A2\u00020\u0001:\u0002\u00f0\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001f\u0010\u000c\u001a\u00020\u000b2\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0017J\u000f\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\r\u0010\u001c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u001c\u0010\u0017J\u0015\u0010\u001e\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u001e\u0010\u0015J!\u0010\"\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u001f2\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u0019\u00a2\u0006\u0004\u0008\"\u0010#J\u001f\u0010%\u001a\u00020\u00102\u0008\u0010$\u001a\u0004\u0018\u00010\u00192\u0006\u0010 \u001a\u00020\u001f\u00a2\u0006\u0004\u0008%\u0010&J\r\u0010\'\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\'\u0010(J\r\u0010)\u001a\u00020\u000b\u00a2\u0006\u0004\u0008)\u0010\u0017J\u001d\u0010,\u001a\u00020\u000b2\u0006\u0010*\u001a\u00020\u00192\u0006\u0010+\u001a\u00020\u0019\u00a2\u0006\u0004\u0008,\u0010-J\u0019\u0010/\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00190.\u00a2\u0006\u0004\u0008/\u00100R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00081\u00102R\u001d\u00108\u001a\u0008\u0012\u0004\u0012\u00020\u000e038\u0006\u00a2\u0006\u000c\n\u0004\u00084\u00105\u001a\u0004\u00086\u00107R\u001d\u0010<\u001a\u0008\u0012\u0004\u0012\u000209038\u0006\u00a2\u0006\u000c\n\u0004\u0008:\u00105\u001a\u0004\u0008;\u00107R\u001d\u0010?\u001a\u0008\u0012\u0004\u0012\u00020\u0019038\u0006\u00a2\u0006\u000c\n\u0004\u0008=\u00105\u001a\u0004\u0008>\u00107R(\u0010D\u001a\u0008\u0012\u0004\u0012\u00020\u0010038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008@\u00105\u001a\u0004\u0008A\u00107\"\u0004\u0008B\u0010CR(\u0010H\u001a\u0008\u0012\u0004\u0012\u00020\u000b038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008E\u00105\u001a\u0004\u0008F\u00107\"\u0004\u0008G\u0010CR\"\u0010N\u001a\u00020\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008I\u0010J\u001a\u0004\u0008K\u0010\u001b\"\u0004\u0008L\u0010MR\"\u0010R\u001a\u00020\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008O\u0010J\u001a\u0004\u0008P\u0010\u001b\"\u0004\u0008Q\u0010MR\u001d\u0010X\u001a\u0008\u0012\u0004\u0012\u00020\t0S8\u0006\u00a2\u0006\u000c\n\u0004\u0008T\u0010U\u001a\u0004\u0008V\u0010WR$\u0010_\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008Y\u0010Z\u001a\u0004\u0008[\u0010\\\"\u0004\u0008]\u0010^R\"\u0010c\u001a\u00020\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008`\u0010J\u001a\u0004\u0008a\u0010\u001b\"\u0004\u0008b\u0010MR\"\u0010g\u001a\u00020\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008d\u0010J\u001a\u0004\u0008e\u0010\u001b\"\u0004\u0008f\u0010MR\"\u0010k\u001a\u00020\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008h\u0010J\u001a\u0004\u0008i\u0010\u001b\"\u0004\u0008j\u0010MR\"\u0010o\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008l\u00106\u001a\u0004\u0008m\u0010(\"\u0004\u0008n\u0010\u0015R\"\u0010s\u001a\u00020\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008p\u0010J\u001a\u0004\u0008q\u0010\u001b\"\u0004\u0008r\u0010MR\"\u0010w\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008t\u00106\u001a\u0004\u0008u\u0010(\"\u0004\u0008v\u0010\u0015R\"\u0010{\u001a\u00020\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008x\u0010J\u001a\u0004\u0008y\u0010\u001b\"\u0004\u0008z\u0010MR$\u0010~\u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010J\u001a\u0004\u0008|\u0010\u001b\"\u0004\u0008}\u0010MR&\u0010\u0081\u0001\u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0013\n\u0004\u0008,\u0010J\u001a\u0004\u0008\u007f\u0010\u001b\"\u0005\u0008\u0080\u0001\u0010MR%\u0010\u0084\u0001\u001a\u00020\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008\u000c\u0010J\u001a\u0005\u0008\u0082\u0001\u0010\u001b\"\u0005\u0008\u0083\u0001\u0010MR\'\u0010\u0087\u0001\u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008)\u0010J\u001a\u0005\u0008\u0085\u0001\u0010\u001b\"\u0005\u0008\u0086\u0001\u0010MR%\u0010\u008a\u0001\u001a\u00020\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008\u0011\u0010J\u001a\u0005\u0008\u0088\u0001\u0010\u001b\"\u0005\u0008\u0089\u0001\u0010MR\'\u0010\u008d\u0001\u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008\"\u0010J\u001a\u0005\u0008\u008b\u0001\u0010\u001b\"\u0005\u0008\u008c\u0001\u0010MR(\u0010\u0091\u0001\u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u008e\u0001\u0010J\u001a\u0005\u0008\u008f\u0001\u0010\u001b\"\u0005\u0008\u0090\u0001\u0010MR&\u0010\u0095\u0001\u001a\u00020\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u0092\u0001\u0010J\u001a\u0005\u0008\u0093\u0001\u0010\u001b\"\u0005\u0008\u0094\u0001\u0010MR#\u0010\u009b\u0001\u001a\n\u0012\u0005\u0012\u00030\u0097\u00010\u0096\u00018\u0006\u00a2\u0006\u000f\n\u0005\u0008\u0016\u0010\u0098\u0001\u001a\u0006\u0008\u0099\u0001\u0010\u009a\u0001R*\u0010\u00a1\u0001\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008F\u0010\u009c\u0001\u001a\u0006\u0008\u009d\u0001\u0010\u009e\u0001\"\u0006\u0008\u009f\u0001\u0010\u00a0\u0001R,\u0010\u00a8\u0001\u001a\u0005\u0018\u00010\u00a2\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u008f\u0001\u0010\u00a3\u0001\u001a\u0006\u0008\u00a4\u0001\u0010\u00a5\u0001\"\u0006\u0008\u00a6\u0001\u0010\u00a7\u0001R\u001e\u0010\u00ab\u0001\u001a\t\u0012\u0004\u0012\u00020\t0\u00a9\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u008b\u0001\u0010\u00aa\u0001R$\u0010\u00ad\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u0096\u00018\u0006\u00a2\u0006\u000f\n\u0005\u0008y\u0010\u0098\u0001\u001a\u0006\u0008\u00ac\u0001\u0010\u009a\u0001R%\u0010\u0013\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u0082\u0001\u00106\u001a\u0005\u0008\u00ae\u0001\u0010(\"\u0005\u0008\u00af\u0001\u0010\u0015R(\u0010\u00b2\u0001\u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u00b0\u0001\u0010J\u001a\u0005\u0008\u00b0\u0001\u0010\u001b\"\u0005\u0008\u00b1\u0001\u0010MR%\u0010\u00b3\u0001\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008\u001a\u00106\u001a\u0005\u0008\u00b3\u0001\u0010(\"\u0005\u0008\u00b4\u0001\u0010\u0015R(\u0010\u00ba\u0001\u001a\u00030\u00b5\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0004\u0008;\u0010;\u001a\u0006\u0008\u00b6\u0001\u0010\u00b7\u0001\"\u0006\u0008\u00b8\u0001\u0010\u00b9\u0001R*\u0010\u00c1\u0001\u001a\u00030\u00bb\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00a4\u0001\u0010\u00bc\u0001\u001a\u0006\u0008\u00bd\u0001\u0010\u00be\u0001\"\u0006\u0008\u00bf\u0001\u0010\u00c0\u0001R(\u0010\u00c4\u0001\u001a\u00030\u00b5\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0004\u0008e\u0010;\u001a\u0006\u0008\u00c2\u0001\u0010\u00b7\u0001\"\u0006\u0008\u00c3\u0001\u0010\u00b9\u0001R,\u0010\u00cb\u0001\u001a\u0005\u0018\u00010\u00c5\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00bd\u0001\u0010\u00c6\u0001\u001a\u0006\u0008\u00c7\u0001\u0010\u00c8\u0001\"\u0006\u0008\u00c9\u0001\u0010\u00ca\u0001R,\u0010\u00d2\u0001\u001a\u0005\u0018\u00010\u00cc\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00c2\u0001\u0010\u00cd\u0001\u001a\u0006\u0008\u00ce\u0001\u0010\u00cf\u0001\"\u0006\u0008\u00d0\u0001\u0010\u00d1\u0001R(\u0010\u00d6\u0001\u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u00d3\u0001\u0010J\u001a\u0005\u0008\u00d4\u0001\u0010\u001b\"\u0005\u0008\u00d5\u0001\u0010MR(\u0010\u00d9\u0001\u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u0085\u0001\u0010J\u001a\u0005\u0008\u00d7\u0001\u0010\u001b\"\u0005\u0008\u00d8\u0001\u0010MR#\u0010\u00dc\u0001\u001a\n\u0012\u0005\u0012\u00030\u00da\u00010\u0096\u00018\u0006\u00a2\u0006\u000f\n\u0005\u0008m\u0010\u0098\u0001\u001a\u0006\u0008\u00db\u0001\u0010\u009a\u0001R(\u0010\u00e0\u0001\u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u00dd\u0001\u0010J\u001a\u0005\u0008\u00de\u0001\u0010\u001b\"\u0005\u0008\u00df\u0001\u0010MR\'\u0010\u00e3\u0001\u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008|\u0010J\u001a\u0005\u0008\u00e1\u0001\u0010\u001b\"\u0005\u0008\u00e2\u0001\u0010MR\"\u0010\u00e5\u0001\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00190.8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u007f\u0010\u00e4\u0001R%\u0010\u00e8\u0001\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008q\u00106\u001a\u0005\u0008\u00e6\u0001\u0010(\"\u0005\u0008\u00e7\u0001\u0010\u0015R(\u0010\u00eb\u0001\u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u00d4\u0001\u0010J\u001a\u0005\u0008\u00e9\u0001\u0010\u001b\"\u0005\u0008\u00ea\u0001\u0010MR&\u0010\u00ed\u0001\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u00ce\u0001\u00106\u001a\u0005\u0008\u00d3\u0001\u0010(\"\u0005\u0008\u00ec\u0001\u0010\u0015R%\u0010\u00ef\u0001\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008i\u00106\u001a\u0005\u0008\u00dd\u0001\u0010(\"\u0005\u0008\u00ee\u0001\u0010\u0015\u00a8\u0006\u00f1\u0001"
    }
    d2 = {
        "Lteam/opay/pay/kyc/base/SceneViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Landroid/app/Application;",
        "app",
        "Lteam/opay/pay/kyc/base/KycSceneRepository;",
        "kycSceneRepository",
        "<init>",
        "(Landroid/app/Application;Lteam/opay/pay/kyc/base/KycSceneRepository;)V",
        "",
        "Lteam/opay/pay/kyc/base/KycTaskNode;",
        "taskNodeList",
        "",
        "u",
        "(Ljava/util/List;)V",
        "Lteam/opay/pay/kyc/base/KycConsultRsp;",
        "consultRsp",
        "",
        "w",
        "(Lteam/opay/pay/kyc/base/KycConsultRsp;)Z",
        "isFinish",
        "s",
        "(Z)V",
        "A",
        "()V",
        "u0",
        "",
        "H",
        "()Ljava/lang/String;",
        "v0",
        "rewardShow",
        "W0",
        "Lag8;",
        "lifecycleOwner",
        "taskName",
        "x",
        "(Lag8;Ljava/lang/String;)V",
        "targetLevel",
        "t0",
        "(Ljava/lang/String;Lag8;)Z",
        "r0",
        "()Z",
        "v",
        "key",
        "value",
        "t",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "",
        "s0",
        "()Ljava/util/Map;",
        "b",
        "Lteam/opay/pay/kyc/base/KycSceneRepository;",
        "Landroidx/lifecycle/MutableLiveData;",
        "c",
        "Landroidx/lifecycle/MutableLiveData;",
        "Z",
        "()Landroidx/lifecycle/MutableLiveData;",
        "newKycLiveData",
        "Lteam/opay/pay/kyc/base/KycConsultDialogRsp;",
        "d",
        "I",
        "consultDialogEvent",
        "e",
        "f0",
        "requestErrorLiveData",
        "f",
        "X",
        "setLoading",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "loading",
        "g",
        "B",
        "setAddPepTask",
        "addPepTask",
        "h",
        "Ljava/lang/String;",
        "h0",
        "Q0",
        "(Ljava/lang/String;)V",
        "scene",
        "i",
        "p0",
        "setTestGroup",
        "testGroup",
        "",
        "j",
        "Ljava/util/List;",
        "i0",
        "()Ljava/util/List;",
        "sceneKycTaskList",
        "k",
        "Lteam/opay/pay/kyc/base/KycConsultRsp;",
        "o0",
        "()Lteam/opay/pay/kyc/base/KycConsultRsp;",
        "setTaskResponse",
        "(Lteam/opay/pay/kyc/base/KycConsultRsp;)V",
        "taskResponse",
        "l",
        "d0",
        "N0",
        "refreshToken",
        "m",
        "K",
        "setFirstName",
        "firstName",
        "n",
        "W",
        "setLastName",
        "lastName",
        "o",
        "P",
        "F0",
        "idPage",
        "p",
        "T",
        "I0",
        "kycLevel",
        "q",
        "k0",
        "S0",
        "showSuccess",
        "r",
        "E",
        "y0",
        "bizSecurityId",
        "R",
        "G0",
        "idType",
        "S",
        "H0",
        "idTypeShowName",
        "F",
        "z0",
        "channel",
        "O",
        "E0",
        "idNum",
        "m0",
        "U0",
        "source",
        "D",
        "x0",
        "bankCode",
        "y",
        "C",
        "w0",
        "bankAccount",
        "z",
        "l0",
        "T0",
        "signChannel",
        "Lteam/opay/pay/util/SingleLiveEvent;",
        "Lteam/opay/pay/kyc/upgrade1/Kyc1NextTask;",
        "Lteam/opay/pay/util/SingleLiveEvent;",
        "a0",
        "()Lteam/opay/pay/util/SingleLiveEvent;",
        "nextTaskNodeEvent",
        "Lteam/opay/pay/kyc/base/KycTaskNode;",
        "n0",
        "()Lteam/opay/pay/kyc/base/KycTaskNode;",
        "V0",
        "(Lteam/opay/pay/kyc/base/KycTaskNode;)V",
        "taskNodeData",
        "Lteam/opay/pay/kyc/base/KycExtensions;",
        "Lteam/opay/pay/kyc/base/KycExtensions;",
        "J",
        "()Lteam/opay/pay/kyc/base/KycExtensions;",
        "B0",
        "(Lteam/opay/pay/kyc/base/KycExtensions;)V",
        "extensions",
        "Ljava/util/Stack;",
        "Ljava/util/Stack;",
        "taskNodeStack",
        "c0",
        "reConsultEvent",
        "q0",
        "C0",
        "G",
        "A0",
        "complianceKycLevel",
        "isFirstConsult",
        "setFirstConsult",
        "",
        "getSeriesCount",
        "()I",
        "setSeriesCount",
        "(I)V",
        "seriesCount",
        "Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;",
        "Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;",
        "L",
        "()Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;",
        "setGuardianInfoReq",
        "(Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;)V",
        "guardianInfoReq",
        "M",
        "setGuardianOptionBvnLimit",
        "guardianOptionBvnLimit",
        "Lteam/opay/pay/kyc/base/KycNameCodeVo;",
        "Lteam/opay/pay/kyc/base/KycNameCodeVo;",
        "j0",
        "()Lteam/opay/pay/kyc/base/KycNameCodeVo;",
        "R0",
        "(Lteam/opay/pay/kyc/base/KycNameCodeVo;)V",
        "selectRelationShipItem",
        "Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;",
        "Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;",
        "V",
        "()Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;",
        "K0",
        "(Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;)V",
        "lastInputType",
        "N",
        "U",
        "J0",
        "lastInputNumbner",
        "g0",
        "P0",
        "route",
        "Lteam/opay/pay/kyc/customer/ManualReviewSubmitRsp;",
        "Y",
        "manualReviewSubmitSuccessEvent",
        "Q",
        "b0",
        "M0",
        "paramTipsContent",
        "getForgotMethod",
        "D0",
        "forgotMethod",
        "Ljava/util/Map;",
        "commonBuriedParamMap",
        "getNeedAutoFoundId",
        "L0",
        "needAutoFoundId",
        "e0",
        "O0",
        "registerType",
        "setHaveSetPassword",
        "haveSetPassword",
        "setIdPageRewardsRetainShow",
        "idPageRewardsRetainShow",
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
.field public static final X:Lteam/opay/pay/kyc/base/SceneViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final A:Lteam/opay/pay/util/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Lteam/opay/pay/kyc/upgrade1/Kyc1NextTask;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public B:Lteam/opay/pay/kyc/base/KycTaskNode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public C:Lteam/opay/pay/kyc/base/KycExtensions;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final D:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lteam/opay/pay/kyc/base/KycTaskNode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final E:Lteam/opay/pay/util/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public F:Z

.field public G:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public H:Z

.field public I:I

.field public J:Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public K:I

.field public L:Lteam/opay/pay/kyc/base/KycNameCodeVo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public M:Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public N:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public O:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final P:Lteam/opay/pay/util/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Lteam/opay/pay/kyc/customer/ManualReviewSubmitRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public Q:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public R:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final S:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public T:Z

.field public U:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public V:Z

.field public W:Z

.field public final b:Lteam/opay/pay/kyc/base/KycSceneRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/kyc/base/KycConsultRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/kyc/base/KycConsultDialogRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Landroidx/lifecycle/MutableLiveData;
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

.field public g:Landroidx/lifecycle/MutableLiveData;
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

.field public h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/pay/kyc/base/KycTaskNode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Lteam/opay/pay/kyc/base/KycConsultRsp;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public l:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public n:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public o:Z

.field public p:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public q:Z

.field public r:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public s:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public t:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public u:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public v:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public w:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public x:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public y:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
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
    new-instance v0, Lteam/opay/pay/kyc/base/SceneViewModel$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/kyc/base/SceneViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/kyc/base/SceneViewModel;->X:Lteam/opay/pay/kyc/base/SceneViewModel$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lteam/opay/pay/kyc/base/KycSceneRepository;)V
    .locals 20
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/kyc/base/KycSceneRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const-string v2, "app"

    .line 6
    .line 7
    move-object/from16 v3, p1

    .line 8
    .line 9
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v2, "kycSceneRepository"

    .line 13
    .line 14
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-direct/range {p0 .. p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, v0, Lteam/opay/pay/kyc/base/SceneViewModel;->b:Lteam/opay/pay/kyc/base/KycSceneRepository;

    .line 21
    .line 22
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    .line 23
    .line 24
    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v1, v0, Lteam/opay/pay/kyc/base/SceneViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    .line 28
    .line 29
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    .line 30
    .line 31
    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v1, v0, Lteam/opay/pay/kyc/base/SceneViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    .line 35
    .line 36
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    .line 37
    .line 38
    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v1, v0, Lteam/opay/pay/kyc/base/SceneViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 42
    .line 43
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    .line 44
    .line 45
    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v1, v0, Lteam/opay/pay/kyc/base/SceneViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 49
    .line 50
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    .line 51
    .line 52
    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v1, v0, Lteam/opay/pay/kyc/base/SceneViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 56
    .line 57
    const-string v1, ""

    .line 58
    .line 59
    iput-object v1, v0, Lteam/opay/pay/kyc/base/SceneViewModel;->h:Ljava/lang/String;

    .line 60
    .line 61
    iput-object v1, v0, Lteam/opay/pay/kyc/base/SceneViewModel;->i:Ljava/lang/String;

    .line 62
    .line 63
    new-instance v2, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object v2, v0, Lteam/opay/pay/kyc/base/SceneViewModel;->j:Ljava/util/List;

    .line 69
    .line 70
    iput-object v1, v0, Lteam/opay/pay/kyc/base/SceneViewModel;->l:Ljava/lang/String;

    .line 71
    .line 72
    iput-object v1, v0, Lteam/opay/pay/kyc/base/SceneViewModel;->m:Ljava/lang/String;

    .line 73
    .line 74
    iput-object v1, v0, Lteam/opay/pay/kyc/base/SceneViewModel;->n:Ljava/lang/String;

    .line 75
    .line 76
    iput-object v1, v0, Lteam/opay/pay/kyc/base/SceneViewModel;->p:Ljava/lang/String;

    .line 77
    .line 78
    const/4 v2, 0x1

    .line 79
    iput-boolean v2, v0, Lteam/opay/pay/kyc/base/SceneViewModel;->q:Z

    .line 80
    .line 81
    iput-object v1, v0, Lteam/opay/pay/kyc/base/SceneViewModel;->r:Ljava/lang/String;

    .line 82
    .line 83
    iput-object v1, v0, Lteam/opay/pay/kyc/base/SceneViewModel;->u:Ljava/lang/String;

    .line 84
    .line 85
    iput-object v1, v0, Lteam/opay/pay/kyc/base/SceneViewModel;->w:Ljava/lang/String;

    .line 86
    .line 87
    const-string v1, "otp"

    .line 88
    .line 89
    iput-object v1, v0, Lteam/opay/pay/kyc/base/SceneViewModel;->z:Ljava/lang/String;

    .line 90
    .line 91
    new-instance v1, Lteam/opay/pay/util/SingleLiveEvent;

    .line 92
    .line 93
    invoke-direct {v1}, Lteam/opay/pay/util/SingleLiveEvent;-><init>()V

    .line 94
    .line 95
    .line 96
    iput-object v1, v0, Lteam/opay/pay/kyc/base/SceneViewModel;->A:Lteam/opay/pay/util/SingleLiveEvent;

    .line 97
    .line 98
    new-instance v1, Ljava/util/Stack;

    .line 99
    .line 100
    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    .line 101
    .line 102
    .line 103
    iput-object v1, v0, Lteam/opay/pay/kyc/base/SceneViewModel;->D:Ljava/util/Stack;

    .line 104
    .line 105
    new-instance v1, Lteam/opay/pay/util/SingleLiveEvent;

    .line 106
    .line 107
    invoke-direct {v1}, Lteam/opay/pay/util/SingleLiveEvent;-><init>()V

    .line 108
    .line 109
    .line 110
    iput-object v1, v0, Lteam/opay/pay/kyc/base/SceneViewModel;->E:Lteam/opay/pay/util/SingleLiveEvent;

    .line 111
    .line 112
    iput-boolean v2, v0, Lteam/opay/pay/kyc/base/SceneViewModel;->H:Z

    .line 113
    .line 114
    new-instance v1, Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;

    .line 115
    .line 116
    move-object v3, v1

    .line 117
    const/16 v18, 0x3fff

    .line 118
    .line 119
    const/16 v19, 0x0

    .line 120
    .line 121
    const/4 v4, 0x0

    .line 122
    const/4 v5, 0x0

    .line 123
    const/4 v6, 0x0

    .line 124
    const/4 v7, 0x0

    .line 125
    const/4 v8, 0x0

    .line 126
    const/4 v9, 0x0

    .line 127
    const/4 v10, 0x0

    .line 128
    const/4 v11, 0x0

    .line 129
    const/4 v12, 0x0

    .line 130
    const/4 v13, 0x0

    .line 131
    const/4 v14, 0x0

    .line 132
    const/4 v15, 0x0

    .line 133
    const/16 v16, 0x0

    .line 134
    .line 135
    const/16 v17, 0x0

    .line 136
    .line 137
    invoke-direct/range {v3 .. v19}, Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 138
    .line 139
    .line 140
    iput-object v1, v0, Lteam/opay/pay/kyc/base/SceneViewModel;->J:Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;

    .line 141
    .line 142
    const/16 v1, 0xb

    .line 143
    .line 144
    iput v1, v0, Lteam/opay/pay/kyc/base/SceneViewModel;->K:I

    .line 145
    .line 146
    new-instance v1, Lteam/opay/pay/util/SingleLiveEvent;

    .line 147
    .line 148
    invoke-direct {v1}, Lteam/opay/pay/util/SingleLiveEvent;-><init>()V

    .line 149
    .line 150
    .line 151
    iput-object v1, v0, Lteam/opay/pay/kyc/base/SceneViewModel;->P:Lteam/opay/pay/util/SingleLiveEvent;

    .line 152
    .line 153
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 154
    .line 155
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 156
    .line 157
    .line 158
    iput-object v1, v0, Lteam/opay/pay/kyc/base/SceneViewModel;->S:Ljava/util/Map;

    .line 159
    .line 160
    iput-boolean v2, v0, Lteam/opay/pay/kyc/base/SceneViewModel;->T:Z

    .line 161
    .line 162
    return-void
.end method

.method public static synthetic r(Lteam/opay/pay/kyc/base/SceneViewModel;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/kyc/base/SceneViewModel;->z(Lteam/opay/pay/kyc/base/SceneViewModel;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic y(Lteam/opay/pay/kyc/base/SceneViewModel;Lag8;Ljava/lang/String;ILjava/lang/Object;)V
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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/base/SceneViewModel;->x(Lag8;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final z(Lteam/opay/pay/kyc/base/SceneViewModel;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 5

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    sget-object v2, Lteam/opay/core/android/arch/Status;->LOADING:Lteam/opay/core/android/arch/Status;

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    const/4 v4, 0x0

    .line 16
    if-ne v1, v2, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v1, 0x0

    .line 21
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v2, "fetch kyc consult "

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p1, " "

    .line 46
    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    sget-object v0, Lteam/opay/pay/kyc/base/SceneViewModel$a;->a:[I

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    aget p1, v0, p1

    .line 64
    .line 65
    const-string v0, ""

    .line 66
    .line 67
    if-eq p1, v3, :cond_4

    .line 68
    .line 69
    const/4 v1, 0x2

    .line 70
    if-eq p1, v1, :cond_2

    .line 71
    .line 72
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 73
    .line 74
    .line 75
    goto/16 :goto_7

    .line 76
    .line 77
    :cond_2
    iget-object p0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 78
    .line 79
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    if-nez p1, :cond_3

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    move-object v0, p1

    .line 87
    :goto_1
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    goto/16 :goto_7

    .line 91
    .line 92
    :cond_4
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    check-cast p1, Lteam/opay/pay/kyc/base/KycConsultRsp;

    .line 97
    .line 98
    if-eqz p1, :cond_5

    .line 99
    .line 100
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycConsultRsp;->g()Ljava/util/Map;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    if-nez p1, :cond_6

    .line 105
    .line 106
    :cond_5
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 107
    .line 108
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 109
    .line 110
    .line 111
    :cond_6
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    if-nez v1, :cond_8

    .line 116
    .line 117
    iget-object p0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 118
    .line 119
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    if-nez p1, :cond_7

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_7
    move-object v0, p1

    .line 127
    :goto_2
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    goto/16 :goto_7

    .line 131
    .line 132
    :cond_8
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    check-cast v1, Lteam/opay/pay/kyc/base/KycConsultRsp;

    .line 137
    .line 138
    invoke-virtual {p0, v1}, Lteam/opay/pay/kyc/base/SceneViewModel;->w(Lteam/opay/pay/kyc/base/KycConsultRsp;)Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-eqz v1, :cond_9

    .line 143
    .line 144
    invoke-virtual {p0, v4}, Lteam/opay/pay/kyc/base/SceneViewModel;->s(Z)V

    .line 145
    .line 146
    .line 147
    iget-object p0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->P:Lteam/opay/pay/util/SingleLiveEvent;

    .line 148
    .line 149
    new-instance v0, Lteam/opay/pay/kyc/customer/ManualReviewSubmitRsp;

    .line 150
    .line 151
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    check-cast v1, Lteam/opay/pay/kyc/base/KycConsultRsp;

    .line 156
    .line 157
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/KycConsultRsp;->c()Ljava/lang/Long;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    check-cast v2, Lteam/opay/pay/kyc/base/KycConsultRsp;

    .line 166
    .line 167
    invoke-virtual {v2}, Lteam/opay/pay/kyc/base/KycConsultRsp;->a()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    check-cast p2, Lteam/opay/pay/kyc/base/KycConsultRsp;

    .line 176
    .line 177
    invoke-virtual {p2}, Lteam/opay/pay/kyc/base/KycConsultRsp;->b()Ljava/lang/Boolean;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    invoke-direct {v0, v1, v2, p2, p1}, Lteam/opay/pay/kyc/customer/ManualReviewSubmitRsp;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0, v0}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    goto/16 :goto_7

    .line 188
    .line 189
    :cond_9
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    check-cast p1, Lteam/opay/pay/kyc/base/KycConsultRsp;

    .line 194
    .line 195
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycConsultRsp;->j()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    const-string v1, "Y"

    .line 200
    .line 201
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    iput-boolean p1, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->V:Z

    .line 206
    .line 207
    iput-boolean v4, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->H:Z

    .line 208
    .line 209
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    check-cast p1, Lteam/opay/pay/kyc/base/KycConsultRsp;

    .line 214
    .line 215
    iput-object p1, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->k:Lteam/opay/pay/kyc/base/KycConsultRsp;

    .line 216
    .line 217
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycConsultRsp;->f()Lteam/opay/pay/kyc/base/KycConsultDialogRsp;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    if-eqz v1, :cond_a

    .line 222
    .line 223
    invoke-virtual {p0, v4}, Lteam/opay/pay/kyc/base/SceneViewModel;->s(Z)V

    .line 224
    .line 225
    .line 226
    iget-object p0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    .line 227
    .line 228
    invoke-virtual {p0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    goto/16 :goto_7

    .line 232
    .line 233
    :cond_a
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycConsultRsp;->i()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    if-nez v1, :cond_b

    .line 238
    .line 239
    goto :goto_3

    .line 240
    :cond_b
    move-object v0, v1

    .line 241
    :goto_3
    iput-object v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->p:Ljava/lang/String;

    .line 242
    .line 243
    sget-object v0, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 244
    .line 245
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    iget-object v1, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->p:Ljava/lang/String;

    .line 250
    .line 251
    invoke-virtual {v0, v1}, Lteam/opay/core/account/AccountInfoManager;->Q(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycConsultRsp;->h()Z

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    iput-boolean v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->F:Z

    .line 259
    .line 260
    if-eqz v0, :cond_c

    .line 261
    .line 262
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycConsultRsp;->e()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    iput-object v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->G:Ljava/lang/String;

    .line 267
    .line 268
    :cond_c
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycConsultRsp;->l()Ljava/util/List;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    if-eqz p1, :cond_f

    .line 273
    .line 274
    iget-object v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->j:Ljava/util/List;

    .line 275
    .line 276
    new-instance v1, Ljava/util/ArrayList;

    .line 277
    .line 278
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .line 280
    .line 281
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    :cond_d
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 286
    .line 287
    .line 288
    move-result v2

    .line 289
    if-eqz v2, :cond_e

    .line 290
    .line 291
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    move-object v3, v2

    .line 296
    check-cast v3, Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 297
    .line 298
    invoke-virtual {v3}, Lteam/opay/pay/kyc/base/KycTaskNode;->isCompleted()Z

    .line 299
    .line 300
    .line 301
    move-result v3

    .line 302
    if-nez v3, :cond_d

    .line 303
    .line 304
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    goto :goto_4

    .line 308
    :cond_e
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 309
    .line 310
    .line 311
    :cond_f
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/SceneViewModel;->A()V

    .line 312
    .line 313
    .line 314
    iget-object p1, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->j:Ljava/util/List;

    .line 315
    .line 316
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    check-cast p1, Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 321
    .line 322
    iput-object p1, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->B:Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 323
    .line 324
    const/4 v0, 0x0

    .line 325
    if-eqz p1, :cond_10

    .line 326
    .line 327
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycTaskNode;->getIdFoundMethod()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object p1

    .line 331
    goto :goto_5

    .line 332
    :cond_10
    move-object p1, v0

    .line 333
    :goto_5
    if-eqz p1, :cond_13

    .line 334
    .line 335
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 336
    .line 337
    .line 338
    move-result p1

    .line 339
    if-nez p1, :cond_11

    .line 340
    .line 341
    goto :goto_6

    .line 342
    :cond_11
    const-string p1, "method"

    .line 343
    .line 344
    const-string v1, "autofind"

    .line 345
    .line 346
    invoke-virtual {p0, p1, v1}, Lteam/opay/pay/kyc/base/SceneViewModel;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    sget-object p1, Lteam/opay/pay/kyc/a;->a:Lteam/opay/pay/kyc/a;

    .line 350
    .line 351
    iget-object v1, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->B:Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 352
    .line 353
    if-eqz v1, :cond_12

    .line 354
    .line 355
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/KycTaskNode;->getIdFoundMethod()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    :cond_12
    invoke-virtual {p1, v0}, Lteam/opay/pay/kyc/a;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object p1

    .line 363
    const-string v0, "type"

    .line 364
    .line 365
    invoke-virtual {p0, v0, p1}, Lteam/opay/pay/kyc/base/SceneViewModel;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    :cond_13
    :goto_6
    iget-object p1, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->j:Ljava/util/List;

    .line 369
    .line 370
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 371
    .line 372
    .line 373
    move-result p1

    .line 374
    invoke-virtual {p0, p1}, Lteam/opay/pay/kyc/base/SceneViewModel;->s(Z)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object p1

    .line 381
    check-cast p1, Lteam/opay/pay/kyc/base/KycConsultRsp;

    .line 382
    .line 383
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycConsultRsp;->l()Ljava/util/List;

    .line 384
    .line 385
    .line 386
    move-result-object p1

    .line 387
    invoke-virtual {p0, p1}, Lteam/opay/pay/kyc/base/SceneViewModel;->u(Ljava/util/List;)V

    .line 388
    .line 389
    .line 390
    iget-object p0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    .line 391
    .line 392
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object p1

    .line 396
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 397
    .line 398
    .line 399
    :goto_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 400
    .line 401
    return-object p0
.end method


# virtual methods
.method public final A()V
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->j:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-le v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->j:Ljava/util/List;

    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v2, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->j:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/base/KycTaskNode;->setNextNode(Lteam/opay/pay/kyc/base/KycTaskNode;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public final A0(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->G:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final B()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final B0(Lteam/opay/pay/kyc/base/KycExtensions;)V
    .locals 0
    .param p1    # Lteam/opay/pay/kyc/base/KycExtensions;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->C:Lteam/opay/pay/kyc/base/KycExtensions;

    .line 2
    .line 3
    return-void
.end method

.method public final C()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->y:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final C0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->F:Z

    .line 2
    .line 3
    return-void
.end method

.method public final D()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->x:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final D0(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->R:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final E()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->r:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final E0(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->v:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final F()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->u:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final F0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->o:Z

    .line 2
    .line 3
    return-void
.end method

.method public final G()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->G:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final G0(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->s:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final H()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->h:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "REGISTER"

    .line 9
    .line 10
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const-string v2, "RegMFindId"

    .line 15
    .line 16
    const-string/jumbo v3, "|"

    .line 17
    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->h:Ljava/lang/String;

    .line 22
    .line 23
    const-string v4, "LOGIN"

    .line 24
    .line 25
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    iget-object v1, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->h:Ljava/lang/String;

    .line 32
    .line 33
    const-string v4, "INFORMATION"

    .line 34
    .line 35
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    :cond_0
    const-string v1, "asyReg"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v1, "asyRegQry"

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, "FR1"

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    :cond_1
    iget-object v1, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->h:Ljava/lang/String;

    .line 72
    .line 73
    const-string v4, "KYC2"

    .line 74
    .line 75
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_3

    .line 80
    .line 81
    const-string v1, "MobileFindId"

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v1, "FR2"

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget-boolean v1, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->T:Z

    .line 98
    .line 99
    if-eqz v1, :cond_2

    .line 100
    .line 101
    const-string v1, "FindId"

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v1, "CertMFindId"

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    :cond_3
    iget-object v1, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->h:Ljava/lang/String;

    .line 124
    .line 125
    const-string v2, "KYC3"

    .line 126
    .line 127
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-nez v1, :cond_4

    .line 132
    .line 133
    const-string v1, "IPC"

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    const-string v1, "toString(...)"

    .line 146
    .line 147
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-lez v1, :cond_5

    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    add-int/lit8 v1, v1, -0x1

    .line 161
    .line 162
    const/4 v2, 0x0

    .line 163
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    const-string v1, "substring(...)"

    .line 168
    .line 169
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    :cond_5
    return-object v0
.end method

.method public final H0(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->t:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final I()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/kyc/base/KycConsultDialogRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final I0(Ljava/lang/String;)V
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
    iput-object p1, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->p:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final J()Lteam/opay/pay/kyc/base/KycExtensions;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->C:Lteam/opay/pay/kyc/base/KycExtensions;

    .line 2
    .line 3
    return-object v0
.end method

.method public final J0(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->N:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final K()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final K0(Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;)V
    .locals 0
    .param p1    # Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->M:Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;

    .line 2
    .line 3
    return-void
.end method

.method public final L()Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->J:Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;

    .line 2
    .line 3
    return-object v0
.end method

.method public final L0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->T:Z

    .line 2
    .line 3
    return-void
.end method

.method public final M()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->K:I

    .line 2
    .line 3
    return v0
.end method

.method public final M0(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->Q:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final N()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->V:Z

    .line 2
    .line 3
    return v0
.end method

.method public final N0(Ljava/lang/String;)V
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
    iput-object p1, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->l:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final O()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->v:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final O0(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->U:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final P()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->o:Z

    .line 2
    .line 3
    return v0
.end method

.method public final P0(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->O:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final Q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->W:Z

    .line 2
    .line 3
    return v0
.end method

.method public final Q0(Ljava/lang/String;)V
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
    iput-object p1, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->h:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final R()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->s:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final R0(Lteam/opay/pay/kyc/base/KycNameCodeVo;)V
    .locals 0
    .param p1    # Lteam/opay/pay/kyc/base/KycNameCodeVo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->L:Lteam/opay/pay/kyc/base/KycNameCodeVo;

    .line 2
    .line 3
    return-void
.end method

.method public final S()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->t:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final S0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->q:Z

    .line 2
    .line 3
    return-void
.end method

.method public final T()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->p:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final T0(Ljava/lang/String;)V
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
    iput-object p1, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->z:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final U()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->N:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final U0(Ljava/lang/String;)V
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
    iput-object p1, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->w:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final V()Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->M:Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;

    .line 2
    .line 3
    return-object v0
.end method

.method public final V0(Lteam/opay/pay/kyc/base/KycTaskNode;)V
    .locals 0
    .param p1    # Lteam/opay/pay/kyc/base/KycTaskNode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->B:Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 2
    .line 3
    return-void
.end method

.method public final W()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final W0(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->W:Z

    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public final X()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Y()Lteam/opay/pay/util/SingleLiveEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Lteam/opay/pay/kyc/customer/ManualReviewSubmitRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->P:Lteam/opay/pay/util/SingleLiveEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Z()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/kyc/base/KycConsultRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final a0()Lteam/opay/pay/util/SingleLiveEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Lteam/opay/pay/kyc/upgrade1/Kyc1NextTask;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->A:Lteam/opay/pay/util/SingleLiveEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->Q:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c0()Lteam/opay/pay/util/SingleLiveEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->E:Lteam/opay/pay/util/SingleLiveEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->U:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f0()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->O:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/pay/kyc/base/KycTaskNode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->j:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j0()Lteam/opay/pay/kyc/base/KycNameCodeVo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->L:Lteam/opay/pay/kyc/base/KycNameCodeVo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->q:Z

    .line 2
    .line 3
    return v0
.end method

.method public final l0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->z:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final m0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->w:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final n0()Lteam/opay/pay/kyc/base/KycTaskNode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->B:Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 2
    .line 3
    return-object v0
.end method

.method public final o0()Lteam/opay/pay/kyc/base/KycConsultRsp;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->k:Lteam/opay/pay/kyc/base/KycConsultRsp;

    .line 2
    .line 3
    return-object v0
.end method

.method public final p0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final q0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->F:Z

    .line 2
    .line 3
    return v0
.end method

.method public final r0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->k:Lteam/opay/pay/kyc/base/KycConsultRsp;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycConsultRsp;->l()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v0, v1

    .line 20
    :goto_0
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycTaskNode;->getTaskName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :cond_1
    const-string v0, "ID_INFO_VERIFY"

    .line 27
    .line 28
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    return v0
.end method

.method public final s(Z)V
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string p1, "set_password"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->U:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "recycled_number"

    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    move-object p1, v0

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const-string p1, "set_kyc1"

    .line 19
    .line 20
    :goto_0
    sget-object v0, Lx7b;->a:Lx7b;

    .line 21
    .line 22
    const-string v1, "type"

    .line 23
    .line 24
    iget-object v2, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->z:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v1, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "status"

    .line 31
    .line 32
    invoke-static {v2, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const/4 v2, 0x2

    .line 37
    new-array v2, v2, [Lkotlin/Pair;

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    aput-object v1, v2, v3

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    aput-object p1, v2, v1

    .line 44
    .line 45
    const-string p1, "register_pre_check_passed"

    .line 46
    .line 47
    invoke-virtual {v0, p1, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final s0()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->S:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final t(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "value"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->S:Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final t0(Ljava/lang/String;Lag8;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "lifecycleOwner"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "1"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    iget-object v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->G:Ljava/lang/String;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->G:Ljava/lang/String;

    .line 27
    .line 28
    const-string v2, "2"

    .line 29
    .line 30
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->G:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_2

    .line 44
    .line 45
    iget p1, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->I:I

    .line 46
    .line 47
    const/4 v0, 0x3

    .line 48
    if-ge p1, v0, :cond_2

    .line 49
    .line 50
    const/4 v1, 0x1

    .line 51
    add-int/2addr p1, v1

    .line 52
    iput p1, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->I:I

    .line 53
    .line 54
    const/4 p1, 0x2

    .line 55
    const/4 v0, 0x0

    .line 56
    invoke-static {p0, p2, v0, p1, v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->y(Lteam/opay/pay/kyc/base/SceneViewModel;Lag8;Ljava/lang/String;ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    :goto_0
    return v1
.end method

.method public final u(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/pay/kyc/base/KycTaskNode;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_4

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 19
    .line 20
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycTaskNode;->getTaskName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "ID_INFO_VERIFY"

    .line 25
    .line 26
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycTaskNode;->getSupportIdTypes()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;->getCode()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    const/4 v0, 0x0

    .line 52
    :goto_1
    if-eqz v0, :cond_1

    .line 53
    .line 54
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_3

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    const-string v1, "idType"

    .line 62
    .line 63
    invoke-virtual {p0, v1, v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_4
    return-void
.end method

.method public final u0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->j:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->B:Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 8
    .line 9
    iget-object v1, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->D:Ljava/util/Stack;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->clear()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->k:Lteam/opay/pay/kyc/base/KycConsultRsp;

    .line 15
    .line 16
    iput-object v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->R:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method

.method public final v()V
    .locals 5

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->B:Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycTaskNode;->getSupportIdTypes()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    move-object v3, v2

    .line 27
    check-cast v3, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;

    .line 28
    .line 29
    invoke-virtual {v3}, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;->getCode()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const-string v4, "BVN"

    .line 34
    .line 35
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    move-object v1, v2

    .line 42
    :cond_1
    check-cast v1, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;

    .line 43
    .line 44
    :cond_2
    if-eqz v1, :cond_4

    .line 45
    .line 46
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;->getLimitCount()Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    goto :goto_0

    .line 57
    :cond_3
    const/16 v0, 0xb

    .line 58
    .line 59
    :goto_0
    iput v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->K:I

    .line 60
    .line 61
    :cond_4
    return-void
.end method

.method public final v0()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v15, Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;

    .line 4
    .line 5
    move-object v1, v15

    .line 6
    const/16 v16, 0x3fff

    .line 7
    .line 8
    const/16 v17, 0x0

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v7, 0x0

    .line 16
    const/4 v8, 0x0

    .line 17
    const/4 v9, 0x0

    .line 18
    const/4 v10, 0x0

    .line 19
    const/4 v11, 0x0

    .line 20
    const/4 v12, 0x0

    .line 21
    const/4 v13, 0x0

    .line 22
    const/4 v14, 0x0

    .line 23
    const/16 v18, 0x0

    .line 24
    .line 25
    move-object/from16 v19, v15

    .line 26
    .line 27
    move-object/from16 v15, v18

    .line 28
    .line 29
    invoke-direct/range {v1 .. v17}, Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 30
    .line 31
    .line 32
    move-object/from16 v1, v19

    .line 33
    .line 34
    iput-object v1, v0, Lteam/opay/pay/kyc/base/SceneViewModel;->J:Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    iput-object v1, v0, Lteam/opay/pay/kyc/base/SceneViewModel;->L:Lteam/opay/pay/kyc/base/KycNameCodeVo;

    .line 38
    .line 39
    return-void
.end method

.method public final w(Lteam/opay/pay/kyc/base/KycConsultRsp;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->h:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    sparse-switch v1, :sswitch_data_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :sswitch_0
    const-string v1, "REGISTER"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :sswitch_1
    const-string v1, "LOGIN"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :sswitch_2
    const-string v1, "KYC2"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycConsultRsp;->b()Ljava/lang/Boolean;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 44
    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    goto :goto_0

    .line 50
    :sswitch_3
    const-string v1, "INFORMATION"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycConsultRsp;->g()Ljava/util/Map;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-nez p1, :cond_2

    .line 64
    .line 65
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 66
    .line 67
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 68
    .line 69
    .line 70
    :cond_2
    const-string v0, "auditRecordStatus"

    .line 71
    .line 72
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    const-string v3, "FAIL"

    .line 77
    .line 78
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-nez v1, :cond_3

    .line 83
    .line 84
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    const-string v3, "INIT"

    .line 89
    .line 90
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-nez v1, :cond_3

    .line 95
    .line 96
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    const-string v0, "CLAIM"

    .line 101
    .line 102
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-eqz p1, :cond_4

    .line 107
    .line 108
    :cond_3
    const/4 v2, 0x1

    .line 109
    :cond_4
    :goto_0
    return v2

    .line 110
    nop

    .line 111
    :sswitch_data_0
    .sparse-switch
        -0xa55f6f4 -> :sswitch_3
        0x236e3d -> :sswitch_2
        0x453f749 -> :sswitch_1
        0x5821ea3 -> :sswitch_0
    .end sparse-switch
.end method

.method public final w0(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->y:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final x(Lag8;Ljava/lang/String;)V
    .locals 18
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "lifecycleOwner"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/kyc/base/SceneViewModel;->v0()V

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/kyc/base/SceneViewModel;->u0()V

    .line 14
    .line 15
    .line 16
    iget-object v2, v0, Lteam/opay/pay/kyc/base/SceneViewModel;->h:Ljava/lang/String;

    .line 17
    .line 18
    const-string v3, "KYC2"

    .line 19
    .line 20
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const-string v4, "KYC3"

    .line 25
    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    iget-object v2, v0, Lteam/opay/pay/kyc/base/SceneViewModel;->h:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_0

    .line 35
    .line 36
    const-string v2, "Y"

    .line 37
    .line 38
    :goto_0
    move-object v11, v2

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    const-string v2, "N"

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :goto_1
    iget-object v2, v0, Lteam/opay/pay/kyc/base/SceneViewModel;->h:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-nez v2, :cond_2

    .line 50
    .line 51
    iget-object v2, v0, Lteam/opay/pay/kyc/base/SceneViewModel;->h:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_2

    .line 58
    .line 59
    iget-object v2, v0, Lteam/opay/pay/kyc/base/SceneViewModel;->h:Ljava/lang/String;

    .line 60
    .line 61
    const-string v3, "KYC_COMPLIANCE"

    .line 62
    .line 63
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_1

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_1
    sget-object v2, Lteam/opay/pay/kyc/task/guardian/KycGuardianConfig;->Companion:Lteam/opay/pay/kyc/task/guardian/KycGuardianConfig$Companion;

    .line 71
    .line 72
    invoke-virtual {v2}, Lteam/opay/pay/kyc/task/guardian/KycGuardianConfig$Companion;->a()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    :goto_2
    move-object v15, v2

    .line 77
    goto :goto_4

    .line 78
    :cond_2
    :goto_3
    const/4 v2, 0x0

    .line 79
    goto :goto_2

    .line 80
    :goto_4
    new-instance v2, Lteam/opay/pay/kyc/base/KycConsultReq;

    .line 81
    .line 82
    iget-object v6, v0, Lteam/opay/pay/kyc/base/SceneViewModel;->h:Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {v6}, Lg4d;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/kyc/base/SceneViewModel;->H()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v13

    .line 92
    iget-object v14, v0, Lteam/opay/pay/kyc/base/SceneViewModel;->w:Ljava/lang/String;

    .line 93
    .line 94
    const/16 v16, 0x44

    .line 95
    .line 96
    const/16 v17, 0x0

    .line 97
    .line 98
    const/4 v8, 0x0

    .line 99
    const/4 v10, 0x1

    .line 100
    const/4 v12, 0x0

    .line 101
    move-object v5, v2

    .line 102
    move-object/from16 v9, p2

    .line 103
    .line 104
    invoke-direct/range {v5 .. v17}, Lteam/opay/pay/kyc/base/KycConsultReq;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 105
    .line 106
    .line 107
    iget-object v3, v0, Lteam/opay/pay/kyc/base/SceneViewModel;->b:Lteam/opay/pay/kyc/base/KycSceneRepository;

    .line 108
    .line 109
    invoke-virtual {v3, v2}, Lteam/opay/pay/kyc/base/KycSceneRepository;->f(Lteam/opay/pay/kyc/base/KycConsultReq;)Landroidx/lifecycle/LiveData;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    new-instance v3, Lh4d;

    .line 114
    .line 115
    move-object/from16 v4, p2

    .line 116
    .line 117
    invoke-direct {v3, v0, v4}, Lh4d;-><init>(Lteam/opay/pay/kyc/base/SceneViewModel;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-static {v2, v1, v3}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 121
    .line 122
    .line 123
    return-void
.end method

.method public final x0(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->x:Ljava/lang/String;

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
    iput-object p1, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->r:Ljava/lang/String;

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
    iput-object p1, p0, Lteam/opay/pay/kyc/base/SceneViewModel;->u:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
