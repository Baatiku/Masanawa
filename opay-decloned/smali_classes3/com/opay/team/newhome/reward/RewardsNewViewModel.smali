.class public final Lcom/opay/team/newhome/reward/RewardsNewViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "RewardsNewViewModel.kt"

# interfaces
.implements Lteam/opay/core/api/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opay/team/newhome/reward/RewardsNewViewModel$Companion;,
        Lcom/opay/team/newhome/reward/RewardsNewViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0088\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008,\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \u00ee\u00012\u00020\u00012\u00020\u0002:\u0002\u00ef\u0001B!\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ!\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J!\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0010J\u0015\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J-\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u00122\u0006\u0010\u0019\u001a\u00020\u0018H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u001f\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00122\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u000cH\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u000f\u0010 \u001a\u00020\u001fH\u0002\u00a2\u0006\u0004\u0008 \u0010!J7\u0010(\u001a\u00020\u000e2\u0016\u0010%\u001a\u0012\u0012\u0004\u0012\u00020#0\"j\u0008\u0012\u0004\u0012\u00020#`$2\u0006\u0010&\u001a\u00020\u001f2\u0006\u0010\'\u001a\u00020\u0018H\u0002\u00a2\u0006\u0004\u0008(\u0010)J\u0017\u0010,\u001a\u00020\u000e2\u0006\u0010+\u001a\u00020*H\u0002\u00a2\u0006\u0004\u0008,\u0010-J\u0017\u0010/\u001a\u00020\u000e2\u0006\u0010.\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008/\u00100J\u001f\u00102\u001a\u00020\u000e2\u0006\u0010.\u001a\u00020\n2\u0006\u00101\u001a\u00020*H\u0002\u00a2\u0006\u0004\u00082\u00103J\u0015\u00104\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u00084\u00100J\r\u00105\u001a\u00020\u000e\u00a2\u0006\u0004\u00085\u00106J\'\u0010:\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u00107\u001a\u00020#2\u0008\u00109\u001a\u0004\u0018\u000108\u00a2\u0006\u0004\u0008:\u0010;J\'\u0010=\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010<\u001a\u00020*2\u0008\u00109\u001a\u0004\u0018\u000108\u00a2\u0006\u0004\u0008=\u0010>J\u001d\u0010?\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010<\u001a\u00020*\u00a2\u0006\u0004\u0008?\u00103J\u0017\u0010C\u001a\u00020B2\u0008\u0010A\u001a\u0004\u0018\u00010@\u00a2\u0006\u0004\u0008C\u0010DJ\u0015\u0010G\u001a\u00020\u00182\u0006\u0010F\u001a\u00020E\u00a2\u0006\u0004\u0008G\u0010HJ\u001d\u0010K\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010J\u001a\u00020I\u00a2\u0006\u0004\u0008K\u0010LJ\u0015\u0010M\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008M\u00100J\u0015\u0010P\u001a\u00020\u000e2\u0006\u0010O\u001a\u00020N\u00a2\u0006\u0004\u0008P\u0010QR\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008R\u0010SR\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008T\u0010UR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008V\u0010WR\u0014\u0010[\u001a\u00020X8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008Y\u0010ZR\u001b\u0010a\u001a\u00020\\8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008]\u0010^\u001a\u0004\u0008_\u0010`R\u001d\u0010g\u001a\u0008\u0012\u0004\u0012\u00020B0b8\u0006\u00a2\u0006\u000c\n\u0004\u0008c\u0010d\u001a\u0004\u0008e\u0010fR#\u0010j\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00130\u00120b8\u0006\u00a2\u0006\u000c\n\u0004\u0008h\u0010d\u001a\u0004\u0008i\u0010fR\u001d\u0010m\u001a\u0008\u0012\u0004\u0012\u00020\u000e0b8\u0006\u00a2\u0006\u000c\n\u0004\u0008k\u0010d\u001a\u0004\u0008l\u0010fR\u001f\u0010p\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00130b8\u0006\u00a2\u0006\u000c\n\u0004\u0008n\u0010d\u001a\u0004\u0008o\u0010fR\u001d\u0010s\u001a\u0008\u0012\u0004\u0012\u00020\u000e0b8\u0006\u00a2\u0006\u000c\n\u0004\u0008q\u0010d\u001a\u0004\u0008r\u0010fR\u0018\u0010v\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008t\u0010uR$\u0010~\u001a\u0004\u0018\u00010w8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008x\u0010y\u001a\u0004\u0008z\u0010{\"\u0004\u0008|\u0010}R!\u0010\u0081\u0001\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010w0b8\u0006\u00a2\u0006\r\n\u0004\u0008\u007f\u0010d\u001a\u0005\u0008\u0080\u0001\u0010fR \u0010\u0084\u0001\u001a\u0008\u0012\u0004\u0012\u00020*0b8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u0082\u0001\u0010d\u001a\u0005\u0008\u0083\u0001\u0010fR!\u0010\u0088\u0001\u001a\t\u0012\u0005\u0012\u00030\u0085\u00010b8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u0086\u0001\u0010d\u001a\u0005\u0008\u0087\u0001\u0010fR \u0010\u008b\u0001\u001a\u0008\u0012\u0004\u0012\u00020B0b8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u0089\u0001\u0010d\u001a\u0005\u0008\u008a\u0001\u0010fR!\u0010\u008f\u0001\u001a\t\u0012\u0005\u0012\u00030\u008c\u00010b8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u008d\u0001\u0010d\u001a\u0005\u0008\u008e\u0001\u0010fR-\u0010\u0093\u0001\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020*0\u0090\u00010b8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u0091\u0001\u0010d\u001a\u0005\u0008\u0092\u0001\u0010fR#\u0010\u0099\u0001\u001a\t\u0012\u0004\u0012\u00020\u00180\u0094\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u0095\u0001\u0010\u0096\u0001\u001a\u0006\u0008\u0097\u0001\u0010\u0098\u0001R+\u0010\u00a0\u0001\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u009a\u0001\u0010\u009b\u0001\u001a\u0006\u0008\u009c\u0001\u0010\u009d\u0001\"\u0006\u0008\u009e\u0001\u0010\u009f\u0001R \u0010\u00a3\u0001\u001a\u0008\u0012\u0004\u0012\u00020*0b8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u00a1\u0001\u0010d\u001a\u0005\u0008\u00a2\u0001\u0010fR\'\u0010\u00a7\u0001\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u00a4\u00010\u00120b8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u00a5\u0001\u0010d\u001a\u0005\u0008\u00a6\u0001\u0010fR&\u0010\u00aa\u0001\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00130\u00120b8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u00a8\u0001\u0010d\u001a\u0005\u0008\u00a9\u0001\u0010fR)\u0010\u00b1\u0001\u001a\u00020B8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00ab\u0001\u0010\u00ac\u0001\u001a\u0006\u0008\u00ad\u0001\u0010\u00ae\u0001\"\u0006\u0008\u00af\u0001\u0010\u00b0\u0001R \u0010\u00b4\u0001\u001a\u0008\u0012\u0004\u0012\u00020@0b8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u00b2\u0001\u0010d\u001a\u0005\u0008\u00b3\u0001\u0010fR-\u0010\u00b8\u0001\u001a\u0008\u0012\u0004\u0012\u00020B0b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0005\u0008\u00b5\u0001\u0010d\u001a\u0005\u0008\u00ac\u0001\u0010f\"\u0006\u0008\u00b6\u0001\u0010\u00b7\u0001R \u0010\u00bb\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u000e0b8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u00b9\u0001\u0010d\u001a\u0005\u0008\u00ba\u0001\u0010fR*\u0010\u00c1\u0001\u001a\u0004\u0018\u00010*8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0006\u0008\u00bc\u0001\u0010\u00bd\u0001\u001a\u0006\u0008\u00be\u0001\u0010\u00bf\u0001\"\u0005\u0008\u00c0\u0001\u0010-R*\u0010\u00c5\u0001\u001a\u0004\u0018\u00010*8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0006\u0008\u00c2\u0001\u0010\u00bd\u0001\u001a\u0006\u0008\u00c3\u0001\u0010\u00bf\u0001\"\u0005\u0008\u00c4\u0001\u0010-R\u001b\u0010\u00c7\u0001\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c6\u0001\u0010\u00bd\u0001R \u0010\u00ca\u0001\u001a\u0008\u0012\u0004\u0012\u00020N0b8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u00c8\u0001\u0010d\u001a\u0005\u0008\u00c9\u0001\u0010fR \u0010\u00cd\u0001\u001a\u0008\u0012\u0004\u0012\u00020N0b8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u00cb\u0001\u0010d\u001a\u0005\u0008\u00cc\u0001\u0010fR\u0019\u0010\u00cf\u0001\u001a\u00020B8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ce\u0001\u0010\u00ac\u0001R\u0018\u0010\u00d0\u0001\u001a\u00020B8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008(\u0010\u00ac\u0001R,\u0010\u00d8\u0001\u001a\u0005\u0018\u00010\u00d1\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00d2\u0001\u0010\u00d3\u0001\u001a\u0006\u0008\u00d4\u0001\u0010\u00d5\u0001\"\u0006\u0008\u00d6\u0001\u0010\u00d7\u0001R(\u0010\u00db\u0001\u001a\u00020B8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008K\u0010\u00ac\u0001\u001a\u0006\u0008\u00d9\u0001\u0010\u00ae\u0001\"\u0006\u0008\u00da\u0001\u0010\u00b0\u0001R*\u0010\u00dd\u0001\u001a\u0011\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020N\u0018\u00010\u00120\u0094\u00018\u0006\u00a2\u0006\u000f\n\u0005\u0008/\u0010\u0096\u0001\u001a\u0006\u0008\u00dc\u0001\u0010\u0098\u0001R$\u0010\u00df\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u0094\u00018\u0006\u00a2\u0006\u000f\n\u0005\u0008\u001a\u0010\u0096\u0001\u001a\u0006\u0008\u00de\u0001\u0010\u0098\u0001R,\u0010\u00e1\u0001\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u0004\u0012\u00020B\u0012\u0004\u0012\u00020#0\u0090\u00010b8\u0006\u00a2\u0006\r\n\u0004\u00084\u0010d\u001a\u0005\u0008\u00e0\u0001\u0010fR/\u0010\u00e4\u0001\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020B\u0012\u0007\u0012\u0005\u0018\u00010\u00e2\u00010\u0090\u00010b8\u0006\u00a2\u0006\r\n\u0004\u0008?\u0010d\u001a\u0005\u0008\u00e3\u0001\u0010fR\u0018\u0010\u00e7\u0001\u001a\u00030\u00e5\u00018\u0016X\u0096\u0005\u00a2\u0006\u0008\u001a\u0006\u0008\u0082\u0001\u0010\u00e6\u0001R\u0018\u0010\u00ea\u0001\u001a\u00030\u00e8\u00018\u0016X\u0096\u0005\u00a2\u0006\u0008\u001a\u0006\u0008\u0086\u0001\u0010\u00e9\u0001R\u0019\u0010\u00ed\u0001\u001a\u0005\u0018\u00010\u00eb\u00018\u0016X\u0096\u0005\u00a2\u0006\u0007\u001a\u0005\u0008x\u0010\u00ec\u0001\u00a8\u0006\u00f0\u0001"
    }
    d2 = {
        "Lcom/opay/team/newhome/reward/RewardsNewViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Lteam/opay/core/api/e;",
        "Lcom/opay/team/newhome/reward/RewardsRepository;",
        "rewardsRepository",
        "sessionProvider",
        "Landroid/app/Application;",
        "appLi",
        "<init>",
        "(Lcom/opay/team/newhome/reward/RewardsRepository;Lteam/opay/core/api/e;Landroid/app/Application;)V",
        "Lag8;",
        "viewLifecycleOwner",
        "Lcom/opay/team/newhome/reward/RewardsHomeRsp;",
        "rewardsHomeRsp",
        "",
        "O0",
        "(Lag8;Lcom/opay/team/newhome/reward/RewardsHomeRsp;)V",
        "P0",
        "",
        "Lcom/opay/team/newhome/reward/RewardsModule;",
        "i0",
        "()Ljava/util/List;",
        "Lteam/opay/pay/cashio/AdDataReqBody;",
        "adsReqs",
        "",
        "adType",
        "M",
        "(Lag8;Ljava/util/List;I)V",
        "rsp",
        "N0",
        "(Lcom/opay/team/newhome/reward/RewardsHomeRsp;)Ljava/util/List;",
        "Lcom/opay/team/newhome/reward/RewardsTaskModule;",
        "c0",
        "()Lcom/opay/team/newhome/reward/RewardsTaskModule;",
        "Ljava/util/ArrayList;",
        "Lcom/opay/team/newhome/reward/RewardsBean;",
        "Lkotlin/collections/ArrayList;",
        "list",
        "entity",
        "taskType",
        "I",
        "(Ljava/util/ArrayList;Lcom/opay/team/newhome/reward/RewardsTaskModule;I)V",
        "",
        "color",
        "G0",
        "(Ljava/lang/String;)V",
        "lifecycleOwner",
        "L",
        "(Lag8;)V",
        "adCode",
        "E0",
        "(Lag8;Ljava/lang/String;)V",
        "N",
        "B0",
        "()V",
        "item",
        "Lcom/opay/team/newhome/reward/RewardsNumItem;",
        "rewardsNum",
        "y0",
        "(Lag8;Lcom/opay/team/newhome/reward/RewardsBean;Lcom/opay/team/newhome/reward/RewardsNumItem;)V",
        "taskId",
        "Q0",
        "(Lag8;Ljava/lang/String;Lcom/opay/team/newhome/reward/RewardsNumItem;)V",
        "O",
        "Lcom/opay/team/newhome/reward/TaskItem;",
        "taskItem",
        "",
        "A0",
        "(Lcom/opay/team/newhome/reward/TaskItem;)Z",
        "Landroid/content/Context;",
        "context",
        "U",
        "(Landroid/content/Context;)I",
        "Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;",
        "topOrBottomPopViewModel",
        "K",
        "(Lag8;Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;)V",
        "F0",
        "Lteam/opay/odialog/net/AdDataItem;",
        "pop",
        "C0",
        "(Lteam/opay/odialog/net/AdDataItem;)V",
        "b",
        "Lcom/opay/team/newhome/reward/RewardsRepository;",
        "c",
        "Lteam/opay/core/api/e;",
        "d",
        "Landroid/app/Application;",
        "Lusc;",
        "e",
        "Lusc;",
        "api",
        "Lfv;",
        "f",
        "Lid8;",
        "S",
        "()Lfv;",
        "apiService",
        "Lteam/opay/pay/util/SingleLiveEvent;",
        "g",
        "Lteam/opay/pay/util/SingleLiveEvent;",
        "l0",
        "()Lteam/opay/pay/util/SingleLiveEvent;",
        "loadingEvent",
        "h",
        "t0",
        "rewardsHomeSuccessEvent",
        "i",
        "T",
        "bigSaleBgColorEvent",
        "j",
        "W",
        "bigSaleSuccessEvent",
        "k",
        "V",
        "bigSaleRemoveEvent",
        "l",
        "Lcom/opay/team/newhome/reward/RewardsModule;",
        "bigSale",
        "Ljava/math/BigDecimal;",
        "m",
        "Ljava/math/BigDecimal;",
        "Y",
        "()Ljava/math/BigDecimal;",
        "H0",
        "(Ljava/math/BigDecimal;)V",
        "cashbackPre",
        "n",
        "X",
        "cashbackEvent",
        "o",
        "w0",
        "voucherEvent",
        "",
        "p",
        "v0",
        "voucherAmountEvnet",
        "q",
        "x0",
        "voucherNewEvnet",
        "Lcom/opay/team/newhome/reward/RecentFinishedTask;",
        "r",
        "e0",
        "finishTaskEvent",
        "Lkotlin/Pair;",
        "s",
        "j0",
        "homeErrorEvent",
        "Landroidx/lifecycle/MutableLiveData;",
        "t",
        "Landroidx/lifecycle/MutableLiveData;",
        "s0",
        "()Landroidx/lifecycle/MutableLiveData;",
        "rewardHomeView",
        "u",
        "Lcom/opay/team/newhome/reward/RewardsHomeRsp;",
        "k0",
        "()Lcom/opay/team/newhome/reward/RewardsHomeRsp;",
        "L0",
        "(Lcom/opay/team/newhome/reward/RewardsHomeRsp;)V",
        "homeRsp",
        "v",
        "u0",
        "toaskEvent",
        "Lteam/opay/odialog/net/ADListItem;",
        "w",
        "Q",
        "adsSuccessEvent",
        "x",
        "f0",
        "firstLoadingEvent",
        "y",
        "Z",
        "getFirstFetchHome",
        "()Z",
        "setFirstFetchHome",
        "(Z)V",
        "firstFetchHome",
        "z",
        "q0",
        "receiveTaskSuccessEvent",
        "A",
        "setCenterLoadingEvent",
        "(Lteam/opay/pay/util/SingleLiveEvent;)V",
        "centerLoadingEvent",
        "B",
        "r0",
        "refreshRewardsHomeEvent",
        "C",
        "Ljava/lang/String;",
        "b0",
        "()Ljava/lang/String;",
        "J0",
        "deeplinkViewAll",
        "D",
        "a0",
        "I0",
        "deeplinkAnchor",
        "E",
        "bigSaleBgColor",
        "F",
        "h0",
        "floatAdEvent",
        "G",
        "n0",
        "popAdEvent",
        "H",
        "popAndFloatFetched",
        "queryFixedResource",
        "Lcom/opay/team/newhome/reward/FixedResources;",
        "J",
        "Lcom/opay/team/newhome/reward/FixedResources;",
        "g0",
        "()Lcom/opay/team/newhome/reward/FixedResources;",
        "K0",
        "(Lcom/opay/team/newhome/reward/FixedResources;)V",
        "fixedResources",
        "m0",
        "M0",
        "needRefreash",
        "R",
        "announcementLiveData",
        "d0",
        "fetchPopAndFloatAdLiveData",
        "o0",
        "receiveLoadingEvent",
        "Lcom/opay/team/newhome/reward/ReceiveRsp;",
        "p0",
        "receiveSuccessEvent",
        "Lteam/opay/core/api/Country;",
        "()Lteam/opay/core/api/Country;",
        "country",
        "Lteam/opay/core/api/GraphQL$Currency;",
        "()Lteam/opay/core/api/GraphQL$Currency;",
        "currency",
        "Lteam/opay/core/api/GraphQL$User;",
        "()Lteam/opay/core/api/GraphQL$User;",
        "user",
        "P",
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
.field public static final P:Lcom/opay/team/newhome/reward/RewardsNewViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public A:Lteam/opay/pay/util/SingleLiveEvent;
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

.field public final B:Lteam/opay/pay/util/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public C:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public D:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public E:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final F:Lteam/opay/pay/util/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Lteam/opay/odialog/net/AdDataItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final G:Lteam/opay/pay/util/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Lteam/opay/odialog/net/AdDataItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public H:Z

.field public I:Z

.field public J:Lcom/opay/team/newhome/reward/FixedResources;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public K:Z

.field public final L:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lteam/opay/odialog/net/AdDataItem;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final M:Landroidx/lifecycle/MutableLiveData;
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

.field public final N:Lteam/opay/pay/util/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Lcom/opay/team/newhome/reward/RewardsBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final O:Lteam/opay/pay/util/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Lcom/opay/team/newhome/reward/ReceiveRsp;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/opay/team/newhome/reward/RewardsRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lteam/opay/core/api/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Landroid/app/Application;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lusc;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lteam/opay/pay/util/SingleLiveEvent;
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

.field public final h:Lteam/opay/pay/util/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/reward/RewardsModule;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lteam/opay/pay/util/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lteam/opay/pay/util/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Lcom/opay/team/newhome/reward/RewardsModule;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Lteam/opay/pay/util/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l:Lcom/opay/team/newhome/reward/RewardsModule;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public m:Ljava/math/BigDecimal;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final n:Lteam/opay/pay/util/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final o:Lteam/opay/pay/util/SingleLiveEvent;
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

.field public final p:Lteam/opay/pay/util/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final q:Lteam/opay/pay/util/SingleLiveEvent;
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

.field public final r:Lteam/opay/pay/util/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Lcom/opay/team/newhome/reward/RecentFinishedTask;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final s:Lteam/opay/pay/util/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final t:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public u:Lcom/opay/team/newhome/reward/RewardsHomeRsp;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final v:Lteam/opay/pay/util/SingleLiveEvent;
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

.field public final w:Lteam/opay/pay/util/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Ljava/util/List<",
            "Lteam/opay/odialog/net/ADListItem;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final x:Lteam/opay/pay/util/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/reward/RewardsModule;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public y:Z

.field public final z:Lteam/opay/pay/util/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Lcom/opay/team/newhome/reward/TaskItem;",
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
    new-instance v0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/opay/team/newhome/reward/RewardsNewViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->P:Lcom/opay/team/newhome/reward/RewardsNewViewModel$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/opay/team/newhome/reward/RewardsRepository;Lteam/opay/core/api/e;Landroid/app/Application;)V
    .locals 1
    .param p1    # Lcom/opay/team/newhome/reward/RewardsRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/api/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "rewardsRepository"

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
    const-string v0, "appLi"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p3}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->b:Lcom/opay/team/newhome/reward/RewardsRepository;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->c:Lteam/opay/core/api/e;

    .line 22
    .line 23
    iput-object p3, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->d:Landroid/app/Application;

    .line 24
    .line 25
    sget-object p1, Lcom/opay/team/home/api/HomeApiService;->a:Lcom/opay/team/home/api/HomeApiService;

    .line 26
    .line 27
    invoke-virtual {p1, p3}, Lcom/opay/team/home/api/HomeApiService;->g(Landroid/content/Context;)Lusc;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->e:Lusc;

    .line 32
    .line 33
    new-instance p1, Lbxc;

    .line 34
    .line 35
    invoke-direct {p1, p0}, Lbxc;-><init>(Lcom/opay/team/newhome/reward/RewardsNewViewModel;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->f:Lid8;

    .line 43
    .line 44
    new-instance p1, Lteam/opay/pay/util/SingleLiveEvent;

    .line 45
    .line 46
    invoke-direct {p1}, Lteam/opay/pay/util/SingleLiveEvent;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->g:Lteam/opay/pay/util/SingleLiveEvent;

    .line 50
    .line 51
    new-instance p1, Lteam/opay/pay/util/SingleLiveEvent;

    .line 52
    .line 53
    invoke-direct {p1}, Lteam/opay/pay/util/SingleLiveEvent;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->h:Lteam/opay/pay/util/SingleLiveEvent;

    .line 57
    .line 58
    new-instance p1, Lteam/opay/pay/util/SingleLiveEvent;

    .line 59
    .line 60
    invoke-direct {p1}, Lteam/opay/pay/util/SingleLiveEvent;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object p1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->i:Lteam/opay/pay/util/SingleLiveEvent;

    .line 64
    .line 65
    new-instance p1, Lteam/opay/pay/util/SingleLiveEvent;

    .line 66
    .line 67
    invoke-direct {p1}, Lteam/opay/pay/util/SingleLiveEvent;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object p1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->j:Lteam/opay/pay/util/SingleLiveEvent;

    .line 71
    .line 72
    new-instance p1, Lteam/opay/pay/util/SingleLiveEvent;

    .line 73
    .line 74
    invoke-direct {p1}, Lteam/opay/pay/util/SingleLiveEvent;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object p1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->k:Lteam/opay/pay/util/SingleLiveEvent;

    .line 78
    .line 79
    new-instance p1, Lteam/opay/pay/util/SingleLiveEvent;

    .line 80
    .line 81
    invoke-direct {p1}, Lteam/opay/pay/util/SingleLiveEvent;-><init>()V

    .line 82
    .line 83
    .line 84
    iput-object p1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->n:Lteam/opay/pay/util/SingleLiveEvent;

    .line 85
    .line 86
    new-instance p1, Lteam/opay/pay/util/SingleLiveEvent;

    .line 87
    .line 88
    invoke-direct {p1}, Lteam/opay/pay/util/SingleLiveEvent;-><init>()V

    .line 89
    .line 90
    .line 91
    iput-object p1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->o:Lteam/opay/pay/util/SingleLiveEvent;

    .line 92
    .line 93
    new-instance p1, Lteam/opay/pay/util/SingleLiveEvent;

    .line 94
    .line 95
    invoke-direct {p1}, Lteam/opay/pay/util/SingleLiveEvent;-><init>()V

    .line 96
    .line 97
    .line 98
    iput-object p1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->p:Lteam/opay/pay/util/SingleLiveEvent;

    .line 99
    .line 100
    new-instance p1, Lteam/opay/pay/util/SingleLiveEvent;

    .line 101
    .line 102
    invoke-direct {p1}, Lteam/opay/pay/util/SingleLiveEvent;-><init>()V

    .line 103
    .line 104
    .line 105
    iput-object p1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->q:Lteam/opay/pay/util/SingleLiveEvent;

    .line 106
    .line 107
    new-instance p1, Lteam/opay/pay/util/SingleLiveEvent;

    .line 108
    .line 109
    invoke-direct {p1}, Lteam/opay/pay/util/SingleLiveEvent;-><init>()V

    .line 110
    .line 111
    .line 112
    iput-object p1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->r:Lteam/opay/pay/util/SingleLiveEvent;

    .line 113
    .line 114
    new-instance p1, Lteam/opay/pay/util/SingleLiveEvent;

    .line 115
    .line 116
    invoke-direct {p1}, Lteam/opay/pay/util/SingleLiveEvent;-><init>()V

    .line 117
    .line 118
    .line 119
    iput-object p1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->s:Lteam/opay/pay/util/SingleLiveEvent;

    .line 120
    .line 121
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 122
    .line 123
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 124
    .line 125
    .line 126
    iput-object p1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->t:Landroidx/lifecycle/MutableLiveData;

    .line 127
    .line 128
    new-instance p1, Lteam/opay/pay/util/SingleLiveEvent;

    .line 129
    .line 130
    invoke-direct {p1}, Lteam/opay/pay/util/SingleLiveEvent;-><init>()V

    .line 131
    .line 132
    .line 133
    iput-object p1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->v:Lteam/opay/pay/util/SingleLiveEvent;

    .line 134
    .line 135
    new-instance p1, Lteam/opay/pay/util/SingleLiveEvent;

    .line 136
    .line 137
    invoke-direct {p1}, Lteam/opay/pay/util/SingleLiveEvent;-><init>()V

    .line 138
    .line 139
    .line 140
    iput-object p1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->w:Lteam/opay/pay/util/SingleLiveEvent;

    .line 141
    .line 142
    new-instance p1, Lteam/opay/pay/util/SingleLiveEvent;

    .line 143
    .line 144
    invoke-direct {p1}, Lteam/opay/pay/util/SingleLiveEvent;-><init>()V

    .line 145
    .line 146
    .line 147
    iput-object p1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->x:Lteam/opay/pay/util/SingleLiveEvent;

    .line 148
    .line 149
    const/4 p1, 0x1

    .line 150
    iput-boolean p1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->y:Z

    .line 151
    .line 152
    new-instance p2, Lteam/opay/pay/util/SingleLiveEvent;

    .line 153
    .line 154
    invoke-direct {p2}, Lteam/opay/pay/util/SingleLiveEvent;-><init>()V

    .line 155
    .line 156
    .line 157
    iput-object p2, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->z:Lteam/opay/pay/util/SingleLiveEvent;

    .line 158
    .line 159
    new-instance p2, Lteam/opay/pay/util/SingleLiveEvent;

    .line 160
    .line 161
    invoke-direct {p2}, Lteam/opay/pay/util/SingleLiveEvent;-><init>()V

    .line 162
    .line 163
    .line 164
    iput-object p2, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->A:Lteam/opay/pay/util/SingleLiveEvent;

    .line 165
    .line 166
    new-instance p2, Lteam/opay/pay/util/SingleLiveEvent;

    .line 167
    .line 168
    invoke-direct {p2}, Lteam/opay/pay/util/SingleLiveEvent;-><init>()V

    .line 169
    .line 170
    .line 171
    iput-object p2, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->B:Lteam/opay/pay/util/SingleLiveEvent;

    .line 172
    .line 173
    new-instance p2, Lteam/opay/pay/util/SingleLiveEvent;

    .line 174
    .line 175
    invoke-direct {p2}, Lteam/opay/pay/util/SingleLiveEvent;-><init>()V

    .line 176
    .line 177
    .line 178
    iput-object p2, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->F:Lteam/opay/pay/util/SingleLiveEvent;

    .line 179
    .line 180
    new-instance p2, Lteam/opay/pay/util/SingleLiveEvent;

    .line 181
    .line 182
    invoke-direct {p2}, Lteam/opay/pay/util/SingleLiveEvent;-><init>()V

    .line 183
    .line 184
    .line 185
    iput-object p2, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->G:Lteam/opay/pay/util/SingleLiveEvent;

    .line 186
    .line 187
    iput-boolean p1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->K:Z

    .line 188
    .line 189
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 190
    .line 191
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 192
    .line 193
    .line 194
    iput-object p1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->L:Landroidx/lifecycle/MutableLiveData;

    .line 195
    .line 196
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 197
    .line 198
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 199
    .line 200
    .line 201
    iput-object p1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->M:Landroidx/lifecycle/MutableLiveData;

    .line 202
    .line 203
    new-instance p1, Lteam/opay/pay/util/SingleLiveEvent;

    .line 204
    .line 205
    invoke-direct {p1}, Lteam/opay/pay/util/SingleLiveEvent;-><init>()V

    .line 206
    .line 207
    .line 208
    iput-object p1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->N:Lteam/opay/pay/util/SingleLiveEvent;

    .line 209
    .line 210
    new-instance p1, Lteam/opay/pay/util/SingleLiveEvent;

    .line 211
    .line 212
    invoke-direct {p1}, Lteam/opay/pay/util/SingleLiveEvent;-><init>()V

    .line 213
    .line 214
    .line 215
    iput-object p1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->O:Lteam/opay/pay/util/SingleLiveEvent;

    .line 216
    .line 217
    return-void
.end method

.method public static final synthetic A(Lcom/opay/team/newhome/reward/RewardsNewViewModel;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->G0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic B(Lcom/opay/team/newhome/reward/RewardsNewViewModel;Lcom/opay/team/newhome/reward/RewardsModule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->l:Lcom/opay/team/newhome/reward/RewardsModule;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic C(Lcom/opay/team/newhome/reward/RewardsNewViewModel;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->E:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic D(Lcom/opay/team/newhome/reward/RewardsNewViewModel;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->H:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final D0(Lteam/opay/odialog/net/AdDataItem;Lcom/opay/team/newhome/reward/RewardsNewViewModel;Ljava/lang/String;II)Lkotlin/Unit;
    .locals 38

    .line 1
    const-string v0, "img"

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static/range {p2 .. p2}, Ljzf;->b(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const-string v2, ""

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    move-object v5, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v5, v1

    .line 19
    :goto_0
    if-eqz v0, :cond_1

    .line 20
    .line 21
    move-object v6, v1

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move-object v6, v2

    .line 24
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lteam/opay/odialog/net/AdDataItem;->getAction()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v8

    .line 28
    invoke-virtual/range {p0 .. p0}, Lteam/opay/odialog/net/AdDataItem;->getId()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual/range {p0 .. p0}, Lteam/opay/odialog/net/AdDataItem;->getCloseIconPosition()Lteam/opay/odialog/DialogClosePosition;

    .line 33
    .line 34
    .line 35
    move-result-object v16

    .line 36
    invoke-virtual/range {p0 .. p0}, Lteam/opay/odialog/net/AdDataItem;->getCallbackShow()Ljava/lang/Boolean;

    .line 37
    .line 38
    .line 39
    move-result-object v23

    .line 40
    invoke-virtual/range {p0 .. p0}, Lteam/opay/odialog/net/AdDataItem;->getCallbackClick()Ljava/lang/Boolean;

    .line 41
    .line 42
    .line 43
    move-result-object v24

    .line 44
    invoke-virtual/range {p0 .. p0}, Lteam/opay/odialog/net/AdDataItem;->getButtonConfirmTitle()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v25

    .line 48
    invoke-virtual/range {p0 .. p0}, Lteam/opay/odialog/net/AdDataItem;->getButtonConfirmLink()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v26

    .line 52
    invoke-virtual/range {p0 .. p0}, Lteam/opay/odialog/net/AdDataItem;->getButtonCancelTitle()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v27

    .line 56
    invoke-virtual/range {p0 .. p0}, Lteam/opay/odialog/net/AdDataItem;->getButtonCancelLink()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v28

    .line 60
    new-instance v0, Lteam/opay/odialog/net/AdDataItem;

    .line 61
    .line 62
    move-object v3, v0

    .line 63
    const/4 v1, 0x0

    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v30

    .line 68
    const v36, -0x5f81018

    .line 69
    .line 70
    .line 71
    const/16 v37, 0x0

    .line 72
    .line 73
    const/4 v7, 0x0

    .line 74
    const/4 v9, 0x0

    .line 75
    const/4 v10, 0x0

    .line 76
    const/4 v11, 0x0

    .line 77
    const/4 v12, 0x0

    .line 78
    const/4 v13, 0x0

    .line 79
    const/4 v14, 0x0

    .line 80
    const/4 v15, 0x0

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
    const/16 v29, 0x0

    .line 94
    .line 95
    const/16 v31, 0x0

    .line 96
    .line 97
    const/16 v32, 0x0

    .line 98
    .line 99
    const/16 v33, 0x0

    .line 100
    .line 101
    const/16 v34, 0x0

    .line 102
    .line 103
    const/16 v35, 0x0

    .line 104
    .line 105
    invoke-direct/range {v3 .. v37}, Lteam/opay/odialog/net/AdDataItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lteam/opay/odialog/DialogClosePosition;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lteam/opay/odialog/net/BackgroundConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 106
    .line 107
    .line 108
    move-object/from16 v1, p1

    .line 109
    .line 110
    iget-object v1, v1, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->G:Lteam/opay/pay/util/SingleLiveEvent;

    .line 111
    .line 112
    invoke-virtual {v1, v0}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 116
    .line 117
    return-object v0
.end method

.method public static final synthetic E(Lcom/opay/team/newhome/reward/RewardsNewViewModel;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->I:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic F(Lcom/opay/team/newhome/reward/RewardsNewViewModel;Lcom/opay/team/newhome/reward/RewardsHomeRsp;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->N0(Lcom/opay/team/newhome/reward/RewardsHomeRsp;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic G(Lcom/opay/team/newhome/reward/RewardsNewViewModel;Lag8;Lcom/opay/team/newhome/reward/RewardsHomeRsp;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->O0(Lag8;Lcom/opay/team/newhome/reward/RewardsHomeRsp;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic H(Lcom/opay/team/newhome/reward/RewardsNewViewModel;Lag8;Lcom/opay/team/newhome/reward/RewardsHomeRsp;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->P0(Lag8;Lcom/opay/team/newhome/reward/RewardsHomeRsp;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final J(Lcom/opay/team/newhome/reward/RewardsNewViewModel;)Lfv;
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 2
    .line 3
    invoke-static {p0}, Lloa;->c(Landroidx/lifecycle/AndroidViewModel;)Lteam/opay/pay/android/OpayApplication;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-class v1, Lfv;

    .line 8
    .line 9
    invoke-virtual {v0, p0, v1}, Lteam/opay/core/api/GraphQL;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lfv;

    .line 14
    .line 15
    return-object p0
.end method

.method public static final P(Lcom/opay/team/newhome/reward/RewardsNewViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
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
    sget-object v1, Lcom/opay/team/newhome/reward/RewardsNewViewModel$a;->a:[I

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
    const/4 v1, 0x1

    .line 19
    if-eq v0, v1, :cond_3

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    if-eq v0, v1, :cond_1

    .line 23
    .line 24
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object p0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->v:Lteam/opay/pay/util/SingleLiveEvent;

    .line 29
    .line 30
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-nez p1, :cond_2

    .line 35
    .line 36
    const-string p1, ""

    .line 37
    .line 38
    :cond_2
    invoke-virtual {p0, p1}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/opay/team/newhome/reward/TaskItem;

    .line 47
    .line 48
    if-nez v0, :cond_4

    .line 49
    .line 50
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 51
    .line 52
    return-object p0

    .line 53
    :cond_4
    sget-object v0, Lnyc;->a:Lnyc;

    .line 54
    .line 55
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Lcom/opay/team/newhome/reward/TaskItem;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lnyc;->a(Lcom/opay/team/newhome/reward/TaskItem;)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    const/4 v1, 0x3

    .line 66
    if-ne v0, v1, :cond_5

    .line 67
    .line 68
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Lcom/opay/team/newhome/reward/TaskItem;

    .line 73
    .line 74
    iget-object p0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->z:Lteam/opay/pay/util/SingleLiveEvent;

    .line 75
    .line 76
    invoke-virtual {p0, p1}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :cond_5
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 80
    .line 81
    return-object p0
.end method

.method public static final R0(Lcom/opay/team/newhome/reward/RewardsNewViewModel;Lcom/opay/team/newhome/reward/RewardsNumItem;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 4

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
    iget-object v0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->A:Lteam/opay/pay/util/SingleLiveEvent;

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
    if-ne v1, v2, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v1, 0x0

    .line 20
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sget-object v1, Lcom/opay/team/newhome/reward/RewardsNewViewModel$a;->a:[I

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    aget v0, v1, v0

    .line 38
    .line 39
    if-eq v0, v3, :cond_4

    .line 40
    .line 41
    const/4 p1, 0x2

    .line 42
    if-eq v0, p1, :cond_2

    .line 43
    .line 44
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    iget-object p0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->v:Lteam/opay/pay/util/SingleLiveEvent;

    .line 49
    .line 50
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-nez p1, :cond_3

    .line 55
    .line 56
    const-string p1, ""

    .line 57
    .line 58
    :cond_3
    invoke-virtual {p0, p1}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_4
    iget-object p0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->O:Lteam/opay/pay/util/SingleLiveEvent;

    .line 63
    .line 64
    new-instance v0, Lkotlin/Pair;

    .line 65
    .line 66
    sget-object v1, Lnyc;->a:Lnyc;

    .line 67
    .line 68
    invoke-virtual {v1, p1}, Lnyc;->d(Lcom/opay/team/newhome/reward/RewardsNumItem;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-direct {v0, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v0}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 87
    .line 88
    return-object p0
.end method

.method private final S()Lfv;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->f:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lfv;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic r(Lcom/opay/team/newhome/reward/RewardsNewViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->P(Lcom/opay/team/newhome/reward/RewardsNewViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic s(Lcom/opay/team/newhome/reward/RewardsNewViewModel;Lcom/opay/team/newhome/reward/RewardsNumItem;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->R0(Lcom/opay/team/newhome/reward/RewardsNewViewModel;Lcom/opay/team/newhome/reward/RewardsNumItem;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic t(Lcom/opay/team/newhome/reward/RewardsNewViewModel;)Lfv;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->J(Lcom/opay/team/newhome/reward/RewardsNewViewModel;)Lfv;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic u(Lcom/opay/team/newhome/reward/RewardsNewViewModel;Lcom/opay/team/newhome/reward/RewardsBean;Lcom/opay/team/newhome/reward/RewardsNumItem;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->z0(Lcom/opay/team/newhome/reward/RewardsNewViewModel;Lcom/opay/team/newhome/reward/RewardsBean;Lcom/opay/team/newhome/reward/RewardsNumItem;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic v(Lteam/opay/odialog/net/AdDataItem;Lcom/opay/team/newhome/reward/RewardsNewViewModel;Ljava/lang/String;II)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->D0(Lteam/opay/odialog/net/AdDataItem;Lcom/opay/team/newhome/reward/RewardsNewViewModel;Ljava/lang/String;II)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic w(Lcom/opay/team/newhome/reward/RewardsNewViewModel;Lag8;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->L(Lag8;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic x(Lcom/opay/team/newhome/reward/RewardsNewViewModel;)Lusc;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->e:Lusc;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic y(Lcom/opay/team/newhome/reward/RewardsNewViewModel;)Lfv;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->S()Lfv;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic z(Lcom/opay/team/newhome/reward/RewardsNewViewModel;)Lcom/opay/team/newhome/reward/RewardsModule;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->l:Lcom/opay/team/newhome/reward/RewardsModule;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final z0(Lcom/opay/team/newhome/reward/RewardsNewViewModel;Lcom/opay/team/newhome/reward/RewardsBean;Lcom/opay/team/newhome/reward/RewardsNumItem;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 5

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->N:Lteam/opay/pay/util/SingleLiveEvent;

    .line 7
    .line 8
    new-instance v1, Lkotlin/Pair;

    .line 9
    .line 10
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    sget-object v3, Lteam/opay/core/android/arch/Status;->LOADING:Lteam/opay/core/android/arch/Status;

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    if-ne v2, v3, :cond_1

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v2, 0x0

    .line 22
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-direct {v1, v2, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    sget-object v0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$a;->a:[I

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    aget p1, v0, p1

    .line 43
    .line 44
    if-eq p1, v4, :cond_4

    .line 45
    .line 46
    const/4 p2, 0x2

    .line 47
    if-eq p1, p2, :cond_2

    .line 48
    .line 49
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    iget-object p0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->v:Lteam/opay/pay/util/SingleLiveEvent;

    .line 54
    .line 55
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-nez p1, :cond_3

    .line 60
    .line 61
    const-string p1, ""

    .line 62
    .line 63
    :cond_3
    invoke-virtual {p0, p1}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_4
    iget-object p0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->O:Lteam/opay/pay/util/SingleLiveEvent;

    .line 68
    .line 69
    new-instance p1, Lkotlin/Pair;

    .line 70
    .line 71
    sget-object v0, Lnyc;->a:Lnyc;

    .line 72
    .line 73
    invoke-virtual {v0, p2}, Lnyc;->d(Lcom/opay/team/newhome/reward/RewardsNumItem;)Z

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    invoke-direct {p1, p2, p3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, p1}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 92
    .line 93
    return-object p0
.end method


# virtual methods
.method public final A0(Lcom/opay/team/newhome/reward/TaskItem;)Z
    .locals 3
    .param p1    # Lcom/opay/team/newhome/reward/TaskItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lnyc;->a:Lnyc;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lnyc;->a(Lcom/opay/team/newhome/reward/TaskItem;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x3

    .line 9
    if-ne v0, v2, :cond_3

    .line 10
    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/TaskItem;->getRewardType()Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-ne v0, v2, :cond_2

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/TaskItem;->getRewardSubType()Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 40
    :cond_3
    return v1
.end method

.method public final B0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->n:Lteam/opay/pay/util/SingleLiveEvent;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->u:Lcom/opay/team/newhome/reward/RewardsHomeRsp;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/RewardsHomeRsp;->b()Lcom/opay/team/newhome/reward/RewardsSummary;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/RewardsSummary;->d()Ljava/math/BigDecimal;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :goto_0
    invoke-virtual {v0, v1}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final C0(Lteam/opay/odialog/net/AdDataItem;)V
    .locals 4
    .param p1    # Lteam/opay/odialog/net/AdDataItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "pop"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Llm;->a:Llm;

    .line 7
    .line 8
    invoke-virtual {p1}, Lteam/opay/odialog/net/AdDataItem;->getDiverseImgUrl()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p1}, Lteam/opay/odialog/net/AdDataItem;->getImg_url()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    new-instance v3, Lexc;

    .line 17
    .line 18
    invoke-direct {v3, p1, p0}, Lexc;-><init>(Lteam/opay/odialog/net/AdDataItem;Lcom/opay/team/newhome/reward/RewardsNewViewModel;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, v2, v3}, Llm;->h(Ljava/lang/String;Ljava/lang/String;Lhm6;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final E0(Lag8;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {p0}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v3, Lcom/opay/team/newhome/reward/RewardsNewViewModel$queryAnnouncement$1;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v3, p0, p2, p1, v2}, Lcom/opay/team/newhome/reward/RewardsNewViewModel$queryAnnouncement$1;-><init>(Lcom/opay/team/newhome/reward/RewardsNewViewModel;Ljava/lang/String;Lag8;Ljr2;)V

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

.method public final F0(Lag8;)V
    .locals 7
    .param p1    # Lag8;
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
    iget-boolean v0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->I:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-static {p0}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v4, Lcom/opay/team/newhome/reward/RewardsNewViewModel$queryFixedResource$1;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-direct {v4, p0, p1, v0}, Lcom/opay/team/newhome/reward/RewardsNewViewModel$queryFixedResource$1;-><init>(Lcom/opay/team/newhome/reward/RewardsNewViewModel;Lag8;Ljr2;)V

    .line 23
    .line 24
    .line 25
    const/4 v5, 0x2

    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final G0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->E:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final H0(Ljava/math/BigDecimal;)V
    .locals 0
    .param p1    # Ljava/math/BigDecimal;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->m:Ljava/math/BigDecimal;

    .line 2
    .line 3
    return-void
.end method

.method public final I(Ljava/util/ArrayList;Lcom/opay/team/newhome/reward/RewardsTaskModule;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/opay/team/newhome/reward/RewardsBean;",
            ">;",
            "Lcom/opay/team/newhome/reward/RewardsTaskModule;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsTaskModule;->g()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    move-object v5, v1

    .line 22
    check-cast v5, Lcom/opay/team/newhome/reward/VoucherItem;

    .line 23
    .line 24
    new-instance v1, Lcom/opay/team/newhome/reward/RewardsBean;

    .line 25
    .line 26
    const/16 v9, 0x38

    .line 27
    .line 28
    const/4 v10, 0x0

    .line 29
    const/4 v3, 0x2

    .line 30
    const/4 v6, 0x0

    .line 31
    const/4 v7, 0x0

    .line 32
    const/4 v8, 0x0

    .line 33
    move-object v2, v1

    .line 34
    move v4, p3

    .line 35
    invoke-direct/range {v2 .. v10}, Lcom/opay/team/newhome/reward/RewardsBean;-><init>(IILcom/opay/team/newhome/reward/VoucherItem;Lcom/opay/team/newhome/reward/TaskItem;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsTaskModule;->d()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    move-object v6, v1

    .line 63
    check-cast v6, Lcom/opay/team/newhome/reward/TaskItem;

    .line 64
    .line 65
    new-instance v1, Lcom/opay/team/newhome/reward/RewardsBean;

    .line 66
    .line 67
    const/16 v9, 0x34

    .line 68
    .line 69
    const/4 v10, 0x0

    .line 70
    const/4 v3, 0x3

    .line 71
    const/4 v5, 0x0

    .line 72
    const/4 v7, 0x0

    .line 73
    const/4 v8, 0x0

    .line 74
    move-object v2, v1

    .line 75
    move v4, p3

    .line 76
    invoke-direct/range {v2 .. v10}, Lcom/opay/team/newhome/reward/RewardsBean;-><init>(IILcom/opay/team/newhome/reward/VoucherItem;Lcom/opay/team/newhome/reward/TaskItem;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsTaskModule;->e()Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    if-nez p3, :cond_2

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 91
    .line 92
    .line 93
    move-result p3

    .line 94
    const/4 v0, 0x2

    .line 95
    if-ne p3, v0, :cond_5

    .line 96
    .line 97
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsTaskModule;->d()Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object p3

    .line 101
    if-eqz p3, :cond_3

    .line 102
    .line 103
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    .line 104
    .line 105
    .line 106
    move-result p3

    .line 107
    if-eqz p3, :cond_5

    .line 108
    .line 109
    :cond_3
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsTaskModule;->g()Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object p3

    .line 113
    if-eqz p3, :cond_4

    .line 114
    .line 115
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    .line 116
    .line 117
    .line 118
    move-result p3

    .line 119
    if-eqz p3, :cond_5

    .line 120
    .line 121
    :cond_4
    new-instance p3, Lcom/opay/team/newhome/reward/RewardsBean;

    .line 122
    .line 123
    const/16 v7, 0x3e

    .line 124
    .line 125
    const/4 v8, 0x0

    .line 126
    const/4 v1, 0x6

    .line 127
    const/4 v2, 0x0

    .line 128
    const/4 v3, 0x0

    .line 129
    const/4 v4, 0x0

    .line 130
    const/4 v5, 0x0

    .line 131
    const/4 v6, 0x0

    .line 132
    move-object v0, p3

    .line 133
    invoke-direct/range {v0 .. v8}, Lcom/opay/team/newhome/reward/RewardsBean;-><init>(IILcom/opay/team/newhome/reward/VoucherItem;Lcom/opay/team/newhome/reward/TaskItem;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    :cond_5
    :goto_2
    invoke-virtual {p2, p1}, Lcom/opay/team/newhome/reward/RewardsTaskModule;->h(Ljava/util/List;)V

    .line 140
    .line 141
    .line 142
    return-void
.end method

.method public final I0(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->D:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final J0(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->C:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final K(Lag8;Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;)V
    .locals 2
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;
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
    const-string v0, "topOrBottomPopViewModel"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->H:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, p1}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->K0(Lag8;)V

    .line 22
    .line 23
    .line 24
    new-instance p2, Lteam/opay/pay/cashio/AdDataReqBody;

    .line 25
    .line 26
    const-string v1, "Rewards_Act_Floating"

    .line 27
    .line 28
    invoke-direct {p2, v1, v1}, Lteam/opay/pay/cashio/AdDataReqBody;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    const/4 p2, 0x3

    .line 35
    invoke-virtual {p0, p1, v0, p2}, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->M(Lag8;Ljava/util/List;I)V

    .line 36
    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->H:Z

    .line 40
    .line 41
    return-void
.end method

.method public final K0(Lcom/opay/team/newhome/reward/FixedResources;)V
    .locals 0
    .param p1    # Lcom/opay/team/newhome/reward/FixedResources;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->J:Lcom/opay/team/newhome/reward/FixedResources;

    .line 2
    .line 3
    return-void
.end method

.method public final L(Lag8;)V
    .locals 6

    .line 1
    invoke-static {p0}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v3, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRcentFinish$1;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v3, p0, p1, v2}, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRcentFinish$1;-><init>(Lcom/opay/team/newhome/reward/RewardsNewViewModel;Lag8;Ljr2;)V

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

.method public final L0(Lcom/opay/team/newhome/reward/RewardsHomeRsp;)V
    .locals 0
    .param p1    # Lcom/opay/team/newhome/reward/RewardsHomeRsp;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->u:Lcom/opay/team/newhome/reward/RewardsHomeRsp;

    .line 2
    .line 3
    return-void
.end method

.method public final M(Lag8;Ljava/util/List;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lag8;",
            "Ljava/util/List<",
            "Lteam/opay/pay/cashio/AdDataReqBody;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v8, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsAds$1;

    .line 10
    .line 11
    const/4 v7, 0x0

    .line 12
    move-object v2, v8

    .line 13
    move-object v3, p2

    .line 14
    move-object v4, p0

    .line 15
    move-object v5, p1

    .line 16
    move v6, p3

    .line 17
    invoke-direct/range {v2 .. v7}, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsAds$1;-><init>(Ljava/util/List;Lcom/opay/team/newhome/reward/RewardsNewViewModel;Lag8;ILjr2;)V

    .line 18
    .line 19
    .line 20
    const/4 v4, 0x2

    .line 21
    const/4 v5, 0x0

    .line 22
    const/4 v2, 0x0

    .line 23
    move-object v3, v8

    .line 24
    invoke-static/range {v0 .. v5}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final M0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->K:Z

    .line 2
    .line 3
    return-void
.end method

.method public final N(Lag8;)V
    .locals 10
    .param p1    # Lag8;
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
    new-instance v0, Lcom/opay/team/newhome/reward/RewardsHomeReq;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, v1}, Lcom/opay/team/newhome/reward/RewardsHomeReq;-><init>(Z)V

    .line 10
    .line 11
    .line 12
    iget-boolean v2, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->y:Z

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    iget-object v2, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->x:Lteam/opay/pay/util/SingleLiveEvent;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->i0()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v2, v3}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iput-boolean v1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->y:Z

    .line 26
    .line 27
    :cond_0
    invoke-static {p0}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    new-instance v7, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsPage$1;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-direct {v7, p0, v0, p1, v1}, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsPage$1;-><init>(Lcom/opay/team/newhome/reward/RewardsNewViewModel;Lcom/opay/team/newhome/reward/RewardsHomeReq;Lag8;Ljr2;)V

    .line 39
    .line 40
    .line 41
    const/4 v8, 0x2

    .line 42
    const/4 v9, 0x0

    .line 43
    const/4 v6, 0x0

    .line 44
    invoke-static/range {v4 .. v9}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final N0(Lcom/opay/team/newhome/reward/RewardsHomeRsp;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opay/team/newhome/reward/RewardsHomeRsp;",
            ")",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/reward/RewardsModule;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/RewardsHomeRsp;->a()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_e

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/opay/team/newhome/reward/RewardsModule;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/RewardsModule;->b()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-eqz v2, :cond_d

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    sparse-switch v3, :sswitch_data_0

    .line 45
    .line 46
    .line 47
    goto/16 :goto_1

    .line 48
    .line 49
    :sswitch_0
    const-string v3, "REWARDS_FLASH_SALE"

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_3

    .line 56
    .line 57
    goto/16 :goto_1

    .line 58
    .line 59
    :cond_3
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/RewardsModule;->c()Lcom/opay/team/newhome/reward/RewardsModuleData;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    if-eqz v2, :cond_2

    .line 64
    .line 65
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :sswitch_1
    const-string v3, "REWARDS_NEWER_TASK"

    .line 70
    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-nez v2, :cond_4

    .line 76
    .line 77
    goto/16 :goto_1

    .line 78
    .line 79
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/RewardsModule;->c()Lcom/opay/team/newhome/reward/RewardsModuleData;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    if-eqz v3, :cond_2

    .line 89
    .line 90
    invoke-virtual {v3}, Lcom/opay/team/newhome/reward/RewardsModuleData;->g()Lcom/opay/team/newhome/reward/RewardsTaskModule;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    if-eqz v3, :cond_2

    .line 95
    .line 96
    const/4 v4, 0x1

    .line 97
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    invoke-virtual {v3, v5}, Lcom/opay/team/newhome/reward/RewardsTaskModule;->i(Ljava/lang/Integer;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v2, v3, v4}, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->I(Ljava/util/ArrayList;Lcom/opay/team/newhome/reward/RewardsTaskModule;I)V

    .line 105
    .line 106
    .line 107
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :sswitch_2
    const-string v3, "REWARDS_BOTTOM_AD"

    .line 112
    .line 113
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-nez v2, :cond_5

    .line 118
    .line 119
    goto/16 :goto_1

    .line 120
    .line 121
    :cond_5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :sswitch_3
    const-string v3, "REWARDS_DAILY_TASK"

    .line 126
    .line 127
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    if-nez v2, :cond_6

    .line 132
    .line 133
    goto/16 :goto_1

    .line 134
    .line 135
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    .line 136
    .line 137
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/RewardsModule;->c()Lcom/opay/team/newhome/reward/RewardsModuleData;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    if-nez v3, :cond_7

    .line 145
    .line 146
    new-instance v3, Lcom/opay/team/newhome/reward/RewardsModuleData;

    .line 147
    .line 148
    invoke-virtual {p0}, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->c0()Lcom/opay/team/newhome/reward/RewardsTaskModule;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    const/16 v12, 0x7b

    .line 153
    .line 154
    const/4 v13, 0x0

    .line 155
    const/4 v5, 0x0

    .line 156
    const/4 v6, 0x0

    .line 157
    const/4 v8, 0x0

    .line 158
    const/4 v9, 0x0

    .line 159
    const/4 v10, 0x0

    .line 160
    const/4 v11, 0x0

    .line 161
    move-object v4, v3

    .line 162
    invoke-direct/range {v4 .. v13}, Lcom/opay/team/newhome/reward/RewardsModuleData;-><init>(Ljava/util/List;Lcom/opay/team/newhome/reward/RewardsTaskModule;Lcom/opay/team/newhome/reward/RewardsTaskModule;Lcom/opay/team/newhome/reward/CouponData;Lcom/opay/team/newhome/reward/FlashSaleModule;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1, v3}, Lcom/opay/team/newhome/reward/RewardsModule;->e(Lcom/opay/team/newhome/reward/RewardsModuleData;)V

    .line 166
    .line 167
    .line 168
    :cond_7
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/RewardsModule;->c()Lcom/opay/team/newhome/reward/RewardsModuleData;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    if-eqz v3, :cond_8

    .line 173
    .line 174
    invoke-virtual {v3}, Lcom/opay/team/newhome/reward/RewardsModuleData;->d()Lcom/opay/team/newhome/reward/RewardsTaskModule;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    if-nez v3, :cond_9

    .line 179
    .line 180
    :cond_8
    invoke-virtual {p0}, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->c0()Lcom/opay/team/newhome/reward/RewardsTaskModule;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    :cond_9
    const/4 v4, 0x2

    .line 185
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    invoke-virtual {v3, v5}, Lcom/opay/team/newhome/reward/RewardsTaskModule;->i(Ljava/lang/Integer;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0, v2, v3, v4}, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->I(Ljava/util/ArrayList;Lcom/opay/team/newhome/reward/RewardsTaskModule;I)V

    .line 193
    .line 194
    .line 195
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    goto/16 :goto_0

    .line 199
    .line 200
    :sswitch_4
    const-string v3, "REWARDS_VOUCHERS"

    .line 201
    .line 202
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    if-nez v2, :cond_a

    .line 207
    .line 208
    goto :goto_1

    .line 209
    :cond_a
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/RewardsModule;->c()Lcom/opay/team/newhome/reward/RewardsModuleData;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    if-eqz v2, :cond_2

    .line 214
    .line 215
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    goto/16 :goto_0

    .line 219
    .line 220
    :sswitch_5
    const-string v3, "REWARDS_FIRST_BANNER"

    .line 221
    .line 222
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    if-nez v2, :cond_b

    .line 227
    .line 228
    goto :goto_1

    .line 229
    :cond_b
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    goto/16 :goto_0

    .line 233
    .line 234
    :sswitch_6
    const-string v3, "REWARDS_FIXED_ENTRY"

    .line 235
    .line 236
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    if-nez v2, :cond_c

    .line 241
    .line 242
    goto :goto_1

    .line 243
    :cond_c
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/RewardsModule;->c()Lcom/opay/team/newhome/reward/RewardsModuleData;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    if-eqz v2, :cond_2

    .line 248
    .line 249
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    goto/16 :goto_0

    .line 253
    .line 254
    :cond_d
    :goto_1
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 255
    .line 256
    .line 257
    goto/16 :goto_0

    .line 258
    .line 259
    :cond_e
    return-object v0

    .line 260
    nop

    .line 261
    :sswitch_data_0
    .sparse-switch
        -0x73d75114 -> :sswitch_6
        -0x2cd31eea -> :sswitch_5
        -0x2b1495a0 -> :sswitch_4
        0x1acdbc26 -> :sswitch_3
        0x1babd33c -> :sswitch_2
        0x26d0cc72 -> :sswitch_1
        0x7890c371 -> :sswitch_0
    .end sparse-switch
.end method

.method public final O(Lag8;Ljava/lang/String;)V
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
    const-string v0, "viewLifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "taskId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->b:Lcom/opay/team/newhome/reward/RewardsRepository;

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Lcom/opay/team/newhome/reward/RewardsRepository;->g(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    new-instance v0, Ldxc;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Ldxc;-><init>(Lcom/opay/team/newhome/reward/RewardsNewViewModel;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p2, p1, v0}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final O0(Lag8;Lcom/opay/team/newhome/reward/RewardsHomeRsp;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_2

    .line 3
    .line 4
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsHomeRsp;->a()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    if-eqz p2, :cond_2

    .line 9
    .line 10
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    move-object v2, v1

    .line 25
    check-cast v2, Lcom/opay/team/newhome/reward/RewardsModule;

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/opay/team/newhome/reward/RewardsModule;->b()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const-string v3, "REWARDS_BIG_SALE"

    .line 32
    .line 33
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move-object v1, v0

    .line 41
    :goto_0
    check-cast v1, Lcom/opay/team/newhome/reward/RewardsModule;

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    move-object v1, v0

    .line 45
    :goto_1
    if-eqz v1, :cond_5

    .line 46
    .line 47
    iput-object v1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->l:Lcom/opay/team/newhome/reward/RewardsModule;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/RewardsModule;->a()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    if-eqz p2, :cond_4

    .line 54
    .line 55
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    if-nez p2, :cond_3

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_3
    new-instance p2, Lteam/opay/pay/cashio/AdDataReqBody;

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/RewardsModule;->a()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/RewardsModule;->a()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-direct {p2, v0, v1}, Lteam/opay/pay/cashio/AdDataReqBody;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    const/4 v0, 0x1

    .line 80
    invoke-virtual {p0, p1, p2, v0}, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->M(Lag8;Ljava/util/List;I)V

    .line 81
    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->k:Lteam/opay/pay/util/SingleLiveEvent;

    .line 85
    .line 86
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 87
    .line 88
    invoke-virtual {p1, p2}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_5
    iput-object v0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->l:Lcom/opay/team/newhome/reward/RewardsModule;

    .line 93
    .line 94
    iget-object p1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->k:Lteam/opay/pay/util/SingleLiveEvent;

    .line 95
    .line 96
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 97
    .line 98
    invoke-virtual {p1, p2}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    :goto_3
    return-void
.end method

.method public final P0(Lag8;Lcom/opay/team/newhome/reward/RewardsHomeRsp;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eqz p2, :cond_2

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsHomeRsp;->a()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    if-eqz p2, :cond_2

    .line 14
    .line 15
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/opay/team/newhome/reward/RewardsModule;

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/opay/team/newhome/reward/RewardsModule;->d()Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    if-nez v3, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-ne v3, v1, :cond_0

    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/opay/team/newhome/reward/RewardsModule;->b()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    const-string v4, "REWARDS_BIG_SALE"

    .line 49
    .line 50
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-nez v3, :cond_0

    .line 55
    .line 56
    new-instance v3, Lteam/opay/pay/cashio/AdDataReqBody;

    .line 57
    .line 58
    invoke-virtual {v2}, Lcom/opay/team/newhome/reward/RewardsModule;->a()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v2}, Lcom/opay/team/newhome/reward/RewardsModule;->a()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-direct {v3, v4, v2}, Lteam/opay/pay/cashio/AdDataReqBody;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {p0, p1, v0, v1}, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->M(Lag8;Ljava/util/List;I)V

    .line 74
    .line 75
    .line 76
    const-string p2, "Rewards_Act_Notice"

    .line 77
    .line 78
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->E0(Lag8;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public final Q()Lteam/opay/pay/util/SingleLiveEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Ljava/util/List<",
            "Lteam/opay/odialog/net/ADListItem;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->w:Lteam/opay/pay/util/SingleLiveEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Q0(Lag8;Ljava/lang/String;Lcom/opay/team/newhome/reward/RewardsNumItem;)V
    .locals 2
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/opay/team/newhome/reward/RewardsNumItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    const-string v0, "taskId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/opay/team/newhome/reward/ReceiveReq;

    .line 12
    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    invoke-virtual {p3}, Lcom/opay/team/newhome/reward/RewardsNumItem;->getRewardNo()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    :goto_0
    if-nez v1, :cond_1

    .line 22
    .line 23
    const-string v1, ""

    .line 24
    .line 25
    :cond_1
    invoke-direct {v0, p2, v1}, Lcom/opay/team/newhome/reward/ReceiveReq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object p2, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->b:Lcom/opay/team/newhome/reward/RewardsRepository;

    .line 29
    .line 30
    invoke-virtual {p2, v0}, Lcom/opay/team/newhome/reward/RewardsRepository;->h(Lcom/opay/team/newhome/reward/ReceiveReq;)Landroidx/lifecycle/LiveData;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    new-instance v0, Lfxc;

    .line 35
    .line 36
    invoke-direct {v0, p0, p3}, Lfxc;-><init>(Lcom/opay/team/newhome/reward/RewardsNewViewModel;Lcom/opay/team/newhome/reward/RewardsNumItem;)V

    .line 37
    .line 38
    .line 39
    invoke-static {p2, p1, v0}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final R()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lteam/opay/odialog/net/AdDataItem;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->L:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final T()Lteam/opay/pay/util/SingleLiveEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->i:Lteam/opay/pay/util/SingleLiveEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final U(Landroid/content/Context;)I
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Lteam/opay/pay/R$color;->osdk_rewards_top_bg:I

    .line 7
    .line 8
    invoke-static {p1, v0}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iget-object v1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->E:Ljava/lang/String;

    .line 13
    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_0
    :try_start_0
    sget-object v1, Lhh2;->a:Lhh2;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->E:Ljava/lang/String;

    .line 26
    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    const-string v2, ""

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    invoke-virtual {v1, v2, v0}, Lhh2;->b(Ljava/lang/String;I)I

    .line 35
    .line 36
    .line 37
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_2

    .line 39
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    .line 41
    .line 42
    :cond_2
    :goto_2
    return p1
.end method

.method public final V()Lteam/opay/pay/util/SingleLiveEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->k:Lteam/opay/pay/util/SingleLiveEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final W()Lteam/opay/pay/util/SingleLiveEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Lcom/opay/team/newhome/reward/RewardsModule;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->j:Lteam/opay/pay/util/SingleLiveEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final X()Lteam/opay/pay/util/SingleLiveEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->n:Lteam/opay/pay/util/SingleLiveEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Y()Ljava/math/BigDecimal;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->m:Ljava/math/BigDecimal;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Z()Lteam/opay/pay/util/SingleLiveEvent;
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
    iget-object v0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->A:Lteam/opay/pay/util/SingleLiveEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final a0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->D:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->C:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c0()Lcom/opay/team/newhome/reward/RewardsTaskModule;
    .locals 9

    .line 1
    new-instance v8, Lcom/opay/team/newhome/reward/RewardsTaskModule;

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    const/4 v7, 0x0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x0

    .line 10
    move-object v0, v8

    .line 11
    invoke-direct/range {v0 .. v7}, Lcom/opay/team/newhome/reward/RewardsTaskModule;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    return-object v8
.end method

.method public final d0()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->M:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e0()Lteam/opay/pay/util/SingleLiveEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Lcom/opay/team/newhome/reward/RecentFinishedTask;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->r:Lteam/opay/pay/util/SingleLiveEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f0()Lteam/opay/pay/util/SingleLiveEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/reward/RewardsModule;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->x:Lteam/opay/pay/util/SingleLiveEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g0()Lcom/opay/team/newhome/reward/FixedResources;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->J:Lcom/opay/team/newhome/reward/FixedResources;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h0()Lteam/opay/pay/util/SingleLiveEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Lteam/opay/odialog/net/AdDataItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->F:Lteam/opay/pay/util/SingleLiveEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i0()Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/reward/RewardsModule;",
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
    new-instance v10, Lcom/opay/team/newhome/reward/RewardsModule;

    .line 7
    .line 8
    const/16 v8, 0x37

    .line 9
    .line 10
    const/4 v9, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    const-string v5, "REWARDS_HOLD_TITLE"

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v7, 0x0

    .line 18
    move-object v1, v10

    .line 19
    invoke-direct/range {v1 .. v9}, Lcom/opay/team/newhome/reward/RewardsModule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/opay/team/newhome/reward/RewardsModuleData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    new-instance v1, Lcom/opay/team/newhome/reward/RewardsModule;

    .line 26
    .line 27
    const/16 v18, 0x37

    .line 28
    .line 29
    const/16 v19, 0x0

    .line 30
    .line 31
    const/4 v12, 0x0

    .line 32
    const/4 v13, 0x0

    .line 33
    const/4 v14, 0x0

    .line 34
    const-string v15, "REWARDS_HOLD_ITEM"

    .line 35
    .line 36
    const/16 v16, 0x0

    .line 37
    .line 38
    const/16 v17, 0x0

    .line 39
    .line 40
    move-object v11, v1

    .line 41
    invoke-direct/range {v11 .. v19}, Lcom/opay/team/newhome/reward/RewardsModule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/opay/team/newhome/reward/RewardsModuleData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    new-instance v1, Lcom/opay/team/newhome/reward/RewardsModule;

    .line 48
    .line 49
    const/16 v9, 0x37

    .line 50
    .line 51
    const/4 v10, 0x0

    .line 52
    const/4 v5, 0x0

    .line 53
    const-string v6, "REWARDS_HOLD_ITEM"

    .line 54
    .line 55
    const/4 v8, 0x0

    .line 56
    move-object v2, v1

    .line 57
    invoke-direct/range {v2 .. v10}, Lcom/opay/team/newhome/reward/RewardsModule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/opay/team/newhome/reward/RewardsModuleData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 58
    .line 59
    .line 60
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    new-instance v1, Lcom/opay/team/newhome/reward/RewardsModule;

    .line 64
    .line 65
    const-string v15, "REWARDS_HOLD_ITEM"

    .line 66
    .line 67
    move-object v11, v1

    .line 68
    invoke-direct/range {v11 .. v19}, Lcom/opay/team/newhome/reward/RewardsModule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/opay/team/newhome/reward/RewardsModuleData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    new-instance v1, Lcom/opay/team/newhome/reward/RewardsModule;

    .line 75
    .line 76
    const-string v6, "REWARDS_HOLD_TITLE"

    .line 77
    .line 78
    move-object v2, v1

    .line 79
    invoke-direct/range {v2 .. v10}, Lcom/opay/team/newhome/reward/RewardsModule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/opay/team/newhome/reward/RewardsModuleData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 80
    .line 81
    .line 82
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    new-instance v1, Lcom/opay/team/newhome/reward/RewardsModule;

    .line 86
    .line 87
    const-string v15, "REWARDS_HOLD_ITEM"

    .line 88
    .line 89
    move-object v11, v1

    .line 90
    invoke-direct/range {v11 .. v19}, Lcom/opay/team/newhome/reward/RewardsModule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/opay/team/newhome/reward/RewardsModuleData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 91
    .line 92
    .line 93
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    new-instance v1, Lcom/opay/team/newhome/reward/RewardsModule;

    .line 97
    .line 98
    const-string v6, "REWARDS_HOLD_ITEM"

    .line 99
    .line 100
    move-object v2, v1

    .line 101
    invoke-direct/range {v2 .. v10}, Lcom/opay/team/newhome/reward/RewardsModule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/opay/team/newhome/reward/RewardsModuleData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 102
    .line 103
    .line 104
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    return-object v0
.end method

.method public final j0()Lteam/opay/pay/util/SingleLiveEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->s:Lteam/opay/pay/util/SingleLiveEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k0()Lcom/opay/team/newhome/reward/RewardsHomeRsp;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->u:Lcom/opay/team/newhome/reward/RewardsHomeRsp;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l0()Lteam/opay/pay/util/SingleLiveEvent;
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
    iget-object v0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->g:Lteam/opay/pay/util/SingleLiveEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public m()Lteam/opay/core/api/GraphQL$User;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->c:Lteam/opay/core/api/e;

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

.method public final m0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->K:Z

    .line 2
    .line 3
    return v0
.end method

.method public final n0()Lteam/opay/pay/util/SingleLiveEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Lteam/opay/odialog/net/AdDataItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->G:Lteam/opay/pay/util/SingleLiveEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public o()Lteam/opay/core/api/Country;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->c:Lteam/opay/core/api/e;

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

.method public final o0()Lteam/opay/pay/util/SingleLiveEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Lcom/opay/team/newhome/reward/RewardsBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->N:Lteam/opay/pay/util/SingleLiveEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public p()Lteam/opay/core/api/GraphQL$Currency;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->c:Lteam/opay/core/api/e;

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

.method public final p0()Lteam/opay/pay/util/SingleLiveEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Lcom/opay/team/newhome/reward/ReceiveRsp;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->O:Lteam/opay/pay/util/SingleLiveEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final q0()Lteam/opay/pay/util/SingleLiveEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Lcom/opay/team/newhome/reward/TaskItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->z:Lteam/opay/pay/util/SingleLiveEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final r0()Lteam/opay/pay/util/SingleLiveEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->B:Lteam/opay/pay/util/SingleLiveEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final s0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->t:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final t0()Lteam/opay/pay/util/SingleLiveEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/reward/RewardsModule;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->h:Lteam/opay/pay/util/SingleLiveEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final u0()Lteam/opay/pay/util/SingleLiveEvent;
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
    iget-object v0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->v:Lteam/opay/pay/util/SingleLiveEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final v0()Lteam/opay/pay/util/SingleLiveEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->p:Lteam/opay/pay/util/SingleLiveEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final w0()Lteam/opay/pay/util/SingleLiveEvent;
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
    iget-object v0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->o:Lteam/opay/pay/util/SingleLiveEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final x0()Lteam/opay/pay/util/SingleLiveEvent;
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
    iget-object v0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->q:Lteam/opay/pay/util/SingleLiveEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final y0(Lag8;Lcom/opay/team/newhome/reward/RewardsBean;Lcom/opay/team/newhome/reward/RewardsNumItem;)V
    .locals 4
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/opay/team/newhome/reward/RewardsBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/opay/team/newhome/reward/RewardsNumItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    const-string v0, "item"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/RewardsBean;->c()Lcom/opay/team/newhome/reward/TaskItem;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/opay/team/newhome/reward/TaskItem;->getId()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v0, v1

    .line 24
    :goto_0
    const-string v2, ""

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    move-object v0, v2

    .line 29
    :cond_1
    new-instance v3, Lcom/opay/team/newhome/reward/ReceiveReq;

    .line 30
    .line 31
    if-eqz p3, :cond_2

    .line 32
    .line 33
    invoke-virtual {p3}, Lcom/opay/team/newhome/reward/RewardsNumItem;->getRewardNo()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    :cond_2
    if-nez v1, :cond_3

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_3
    move-object v2, v1

    .line 41
    :goto_1
    invoke-direct {v3, v0, v2}, Lcom/opay/team/newhome/reward/ReceiveReq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->b:Lcom/opay/team/newhome/reward/RewardsRepository;

    .line 45
    .line 46
    invoke-virtual {v0, v3}, Lcom/opay/team/newhome/reward/RewardsRepository;->h(Lcom/opay/team/newhome/reward/ReceiveReq;)Landroidx/lifecycle/LiveData;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    new-instance v1, Lcxc;

    .line 51
    .line 52
    invoke-direct {v1, p0, p2, p3}, Lcxc;-><init>(Lcom/opay/team/newhome/reward/RewardsNewViewModel;Lcom/opay/team/newhome/reward/RewardsBean;Lcom/opay/team/newhome/reward/RewardsNumItem;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v0, p1, v1}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method
