.class public abstract Lteam/opay/pay/transfer/contact/view/BaseContactFragment;
.super Lteam/opay/core/base/BaseInjectFragmentV2;
.source "BaseContactFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/base/BaseInjectFragmentV2<",
        "Lmi6;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008&\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u0004J\u000f\u0010\u000e\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u0004J?\u0010\u0014\u001a\u00020\u00102&\u0010\u0012\u001a\"\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fj\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u0010\u0018\u0001`\u00112\u0006\u0010\u0013\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u001d\u0010\u0018\u001a\u00020\u00052\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0016H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J!\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u001a2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u0005H&\u00a2\u0006\u0004\u0008 \u0010\u0004J\u000f\u0010!\u001a\u00020\u0005H&\u00a2\u0006\u0004\u0008!\u0010\u0004J\u0017\u0010\"\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0010H&\u00a2\u0006\u0004\u0008\"\u0010#J\u000f\u0010$\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008$\u0010\u0004JE\u0010%\u001a\u00020\u00052\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u00162&\u0010\u0012\u001a\"\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fj\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u0010\u0018\u0001`\u0011H\u0016\u00a2\u0006\u0004\u0008%\u0010&J\u0011\u0010\'\u001a\u0004\u0018\u00010\u001aH&\u00a2\u0006\u0004\u0008\'\u0010(J\u0017\u0010)\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008)\u0010#J#\u0010-\u001a\u00020\u00052\u0012\u0010,\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100+0*H\u0016\u00a2\u0006\u0004\u0008-\u0010.J\u000f\u0010/\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008/\u0010\u0004R$\u00104\u001a\u0012\u0012\u0004\u0012\u00020\u000800j\u0008\u0012\u0004\u0012\u00020\u0008`18\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00082\u00103R+\u00109\u001a\u0012\u0012\u0004\u0012\u00020\u001000j\u0008\u0012\u0004\u0012\u00020\u0010`18BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00085\u00106\u001a\u0004\u00087\u00108R\"\u0010A\u001a\u00020:8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008;\u0010<\u001a\u0004\u0008=\u0010>\"\u0004\u0008?\u0010@R\"\u0010E\u001a\u00020:8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008B\u0010<\u001a\u0004\u0008C\u0010>\"\u0004\u0008D\u0010@R\"\u0010J\u001a\u0010\u0012\u000c\u0012\n G*\u0004\u0018\u00010\u00080\u00080F8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008H\u0010IR\u0014\u0010N\u001a\u00020K8&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008L\u0010M\u00a8\u0006O"
    }
    d2 = {
        "Lteam/opay/pay/transfer/contact/view/BaseContactFragment;",
        "Lteam/opay/core/base/BaseInjectFragmentV2;",
        "Lmi6;",
        "<init>",
        "()V",
        "",
        "o0",
        "m0",
        "",
        "section",
        "",
        "h0",
        "(Ljava/lang/String;)I",
        "j0",
        "b0",
        "Ljava/util/HashMap;",
        "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
        "Lkotlin/collections/HashMap;",
        "map",
        "data",
        "i0",
        "(Ljava/util/HashMap;Lteam/opay/pay/transfer/contact/bean/TransferContactData;)Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
        "",
        "dataList",
        "v0",
        "(Ljava/util/List;)V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "u0",
        "t0",
        "s0",
        "(Lteam/opay/pay/transfer/contact/bean/TransferContactData;)V",
        "y0",
        "B0",
        "(Ljava/util/List;Ljava/util/HashMap;)V",
        "e0",
        "()Landroid/view/View;",
        "r0",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;",
        "list",
        "c0",
        "(Ljava/util/concurrent/CopyOnWriteArrayList;)V",
        "onResume",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "k",
        "Ljava/util/ArrayList;",
        "letterList",
        "l",
        "Lid8;",
        "d0",
        "()Ljava/util/ArrayList;",
        "allContactList",
        "",
        "m",
        "Z",
        "q0",
        "()Z",
        "z0",
        "(Z)V",
        "isFirstLoad",
        "n",
        "g0",
        "A0",
        "onSettting",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "kotlin.jvm.PlatformType",
        "o",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "requestCameraPermission",
        "Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;",
        "f0",
        "()Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;",
        "mAdapter",
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


# instance fields
.field public final k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:Z

.field public n:Z

.field public final o:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/pay/transfer/contact/view/BaseContactFragment$1;->INSTANCE:Lteam/opay/pay/transfer/contact/view/BaseContactFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/core/base/BaseInjectFragmentV2;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->k:Ljava/util/ArrayList;

    .line 12
    .line 13
    new-instance v0, Lyo0;

    .line 14
    .line 15
    invoke-direct {v0}, Lyo0;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->l:Lid8;

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->m:Z

    .line 26
    .line 27
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;

    .line 28
    .line 29
    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;-><init>()V

    .line 30
    .line 31
    .line 32
    new-instance v1, Lzo0;

    .line 33
    .line 34
    invoke-direct {v1, p0}, Lzo0;-><init>(Lteam/opay/pay/transfer/contact/view/BaseContactFragment;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Lag;)Landroidx/activity/result/ActivityResultLauncher;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, "registerForActivityResult(...)"

    .line 42
    .line 43
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->o:Landroidx/activity/result/ActivityResultLauncher;

    .line 47
    .line 48
    return-void
.end method

.method public static final C0(Lteam/opay/pay/transfer/contact/bean/TransferContactData;Lteam/opay/pay/transfer/contact/bean/TransferContactData;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getCategory()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "#"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getCategory()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p1}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getCategory()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getCategory()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    const/4 p0, -0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getCategory()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    const/4 v2, 0x0

    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    invoke-virtual {p1}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getCategory()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    :cond_2
    const/4 p0, 0x0

    .line 69
    goto :goto_0

    .line 70
    :cond_3
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getCategory()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    if-eqz p0, :cond_2

    .line 75
    .line 76
    invoke-virtual {p1}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getCategory()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    if-nez p1, :cond_4

    .line 81
    .line 82
    const-string p1, ""

    .line 83
    .line 84
    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    :goto_0
    return p0
.end method

.method public static synthetic O(Lteam/opay/pay/transfer/contact/view/BaseContactFragment;Landroidx/recyclerview/widget/GridLayoutManager;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->k0(Lteam/opay/pay/transfer/contact/view/BaseContactFragment;Landroidx/recyclerview/widget/GridLayoutManager;I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic P(Lteam/opay/pay/transfer/contact/view/BaseContactFragment;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->x0(Lteam/opay/pay/transfer/contact/view/BaseContactFragment;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Q(Lteam/opay/pay/transfer/contact/view/BaseContactFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->n0(Lteam/opay/pay/transfer/contact/view/BaseContactFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic R()Ljava/util/ArrayList;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->a0()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic S(Lteam/opay/pay/transfer/contact/view/BaseContactFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->p0(Lteam/opay/pay/transfer/contact/view/BaseContactFragment;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic T(Lteam/opay/pay/transfer/contact/bean/TransferContactData;Lteam/opay/pay/transfer/contact/bean/TransferContactData;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->C0(Lteam/opay/pay/transfer/contact/bean/TransferContactData;Lteam/opay/pay/transfer/contact/bean/TransferContactData;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic U(Lteam/opay/pay/transfer/contact/view/BaseContactFragment;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->w0(Lteam/opay/pay/transfer/contact/view/BaseContactFragment;Ljava/lang/Boolean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic V(Lteam/opay/pay/transfer/contact/view/BaseContactFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->l0(Lteam/opay/pay/transfer/contact/view/BaseContactFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic W(Lteam/opay/pay/transfer/contact/view/BaseContactFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->d0()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic X(Lteam/opay/pay/transfer/contact/view/BaseContactFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->k:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic Y(Lteam/opay/pay/transfer/contact/view/BaseContactFragment;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->h0(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic Z(Lteam/opay/pay/transfer/contact/view/BaseContactFragment;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->v0(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final a0()Ljava/util/ArrayList;
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

.method private final h0(Ljava/lang/String;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->f0()Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "getData(...)"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    add-int/lit8 v3, v1, 0x1

    .line 30
    .line 31
    if-gez v1, :cond_0

    .line 32
    .line 33
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 34
    .line 35
    .line 36
    :cond_0
    check-cast v2, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;

    .line 37
    .line 38
    invoke-virtual {v2}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;->b()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    const/4 v5, 0x1

    .line 43
    if-ne v4, v5, :cond_1

    .line 44
    .line 45
    invoke-virtual {v2}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;->h()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    return v1

    .line 56
    :cond_1
    move v1, v3

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    const/4 p1, -0x1

    .line 59
    return p1
.end method

.method public static final k0(Lteam/opay/pay/transfer/contact/view/BaseContactFragment;Landroidx/recyclerview/widget/GridLayoutManager;I)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->f0()Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;

    .line 14
    .line 15
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;->f()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public static final l0(Lteam/opay/pay/transfer/contact/view/BaseContactFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-nez p2, :cond_2

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-ge p3, p2, :cond_2

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string p2, "null cannot be cast to non-null type team.opay.pay.transfer.contact.adapter.MulDataEntity<*>"

    .line 39
    .line 40
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    check-cast p1, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;

    .line 44
    .line 45
    invoke-virtual {p1}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;->a()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    instance-of p2, p2, Lteam/opay/pay/transfer/contact/bean/TransferContactData;

    .line 50
    .line 51
    if-eqz p2, :cond_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const/4 p1, 0x0

    .line 55
    :goto_0
    if-eqz p1, :cond_2

    .line 56
    .line 57
    invoke-virtual {p1}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;->a()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const-string p2, "null cannot be cast to non-null type team.opay.pay.transfer.contact.bean.TransferContactData"

    .line 62
    .line 63
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    check-cast p1, Lteam/opay/pay/transfer/contact/bean/TransferContactData;

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->s0(Lteam/opay/pay/transfer/contact/bean/TransferContactData;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    :goto_1
    return-void
.end method

.method private final m0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lmi6;

    .line 6
    .line 7
    iget-object v0, v0, Lmi6;->d:Lteam/opay/pay/android/views/KeyboardEditText;

    .line 8
    .line 9
    new-instance v1, Lteam/opay/pay/transfer/contact/view/BaseContactFragment$b;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lteam/opay/pay/transfer/contact/view/BaseContactFragment$b;-><init>(Lteam/opay/pay/transfer/contact/view/BaseContactFragment;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lmi6;

    .line 22
    .line 23
    iget-object v0, v0, Lmi6;->e:Landroidx/appcompat/widget/AppCompatImageView;

    .line 24
    .line 25
    new-instance v1, Lcp0;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcp0;-><init>(Lteam/opay/pay/transfer/contact/view/BaseContactFragment;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public static final n0(Lteam/opay/pay/transfer/contact/view/BaseContactFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lmi6;

    .line 6
    .line 7
    iget-object p0, p0, Lmi6;->d:Lteam/opay/pay/android/views/KeyboardEditText;

    .line 8
    .line 9
    const-string p1, ""

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private final o0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lmi6;

    .line 6
    .line 7
    iget-object v0, v0, Lmi6;->h:Lteam/opay/core/android/views/InitialsLetterBar;

    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lmi6;

    .line 14
    .line 15
    iget-object v1, v1, Lmi6;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lteam/opay/core/android/views/InitialsLetterBar;->setMTextDialog(Landroid/widget/TextView;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lmi6;

    .line 25
    .line 26
    iget-object v0, v0, Lmi6;->h:Lteam/opay/core/android/views/InitialsLetterBar;

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-virtual {v0, v1}, Lteam/opay/core/android/views/InitialsLetterBar;->setLetterSelectable(Z)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lmi6;

    .line 37
    .line 38
    iget-object v0, v0, Lmi6;->h:Lteam/opay/core/android/views/InitialsLetterBar;

    .line 39
    .line 40
    new-instance v1, Lxo0;

    .line 41
    .line 42
    invoke-direct {v1, p0}, Lxo0;-><init>(Lteam/opay/pay/transfer/contact/view/BaseContactFragment;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lteam/opay/core/android/views/InitialsLetterBar;->setOnTouchingLetterChangedListener(Lkotlin/jvm/functions/Function1;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public static final p0(Lteam/opay/pay/transfer/contact/view/BaseContactFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 7

    .line 1
    const-string v0, "s"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    new-instance v4, Lteam/opay/pay/transfer/contact/view/BaseContactFragment$initSideBar$1$1;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-direct {v4, p0, p1, v0}, Lteam/opay/pay/transfer/contact/view/BaseContactFragment$initSideBar$1$1;-><init>(Lteam/opay/pay/transfer/contact/view/BaseContactFragment;Ljava/lang/String;Ljr2;)V

    .line 18
    .line 19
    .line 20
    const/4 v5, 0x2

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 24
    .line 25
    .line 26
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 27
    .line 28
    return-object p0
.end method

.method public static final w0(Lteam/opay/pay/transfer/contact/view/BaseContactFragment;Ljava/lang/Boolean;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->t0()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "android.permission.READ_CONTACTS"

    .line 16
    .line 17
    filled-new-array {v0}, [Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {p1, v0}, Lfu5;->b(Landroid/app/Activity;[Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sget p1, Lteam/opay/pay/R$string;->osdk_permission_tips:I

    .line 32
    .line 33
    invoke-static {p1}, Ljmf;->k(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    sget p1, Lteam/opay/pay/R$string;->osdk_permission_setting:I

    .line 38
    .line 39
    invoke-static {p1}, Ljmf;->k(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    new-instance v5, Ldp0;

    .line 44
    .line 45
    invoke-direct {v5, p0}, Ldp0;-><init>(Lteam/opay/pay/transfer/contact/view/BaseContactFragment;)V

    .line 46
    .line 47
    .line 48
    const-string v1, "android.permission.READ_CONTACTS"

    .line 49
    .line 50
    const-string v3, ""

    .line 51
    .line 52
    invoke-static/range {v0 .. v5}, Lfu5;->f(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    if-eqz p0, :cond_2

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 63
    .line 64
    .line 65
    :cond_2
    :goto_0
    return-void
.end method

.method public static final x0(Lteam/opay/pay/transfer/contact/view/BaseContactFragment;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->A0(Z)V

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 15
    .line 16
    .line 17
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p0
.end method


# virtual methods
.method public A0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->n:Z

    .line 2
    .line 3
    return-void
.end method

.method public B0(Ljava/util/List;Ljava/util/HashMap;)V
    .locals 21
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
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
    const-string v2, "dataList"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v3, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v4, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v5, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object v6, v0, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->k:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 33
    .line 34
    .line 35
    new-instance v6, Ljava/util/ArrayList;

    .line 36
    .line 37
    const/16 v7, 0xa

    .line 38
    .line 39
    invoke-static {v1, v7}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 40
    .line 41
    .line 42
    move-result v8

    .line 43
    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 44
    .line 45
    .line 46
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v8

    .line 54
    if-eqz v8, :cond_0

    .line 55
    .line 56
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    check-cast v8, Lteam/opay/pay/transfer/contact/bean/TransferContactData;

    .line 61
    .line 62
    move-object/from16 v9, p2

    .line 63
    .line 64
    invoke-virtual {v0, v9, v8}, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->i0(Ljava/util/HashMap;Lteam/opay/pay/transfer/contact/bean/TransferContactData;)Lteam/opay/pay/transfer/contact/bean/TransferContactData;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    invoke-interface {v6, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    new-instance v1, Lep0;

    .line 73
    .line 74
    invoke-direct {v1}, Lep0;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-static {v6, v1}, Lkotlin/collections/CollectionsKt;->M0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    const/16 v8, 0x10

    .line 90
    .line 91
    if-eqz v6, :cond_8

    .line 92
    .line 93
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    check-cast v6, Lteam/opay/pay/transfer/contact/bean/TransferContactData;

    .line 98
    .line 99
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->q0()Z

    .line 100
    .line 101
    .line 102
    move-result v9

    .line 103
    if-eqz v9, :cond_1

    .line 104
    .line 105
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->d0()Ljava/util/ArrayList;

    .line 106
    .line 107
    .line 108
    move-result-object v9

    .line 109
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 113
    .line 114
    .line 115
    move-result v9

    .line 116
    if-eqz v9, :cond_2

    .line 117
    .line 118
    new-instance v9, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;

    .line 119
    .line 120
    invoke-static {v8}, Ljmf;->d(I)I

    .line 121
    .line 122
    .line 123
    move-result v8

    .line 124
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v16

    .line 128
    invoke-static {v7}, Ljmf;->d(I)I

    .line 129
    .line 130
    .line 131
    move-result v8

    .line 132
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v17

    .line 136
    const/16 v19, 0x8a

    .line 137
    .line 138
    const/16 v20, 0x0

    .line 139
    .line 140
    const/4 v11, 0x0

    .line 141
    const/4 v12, 0x0

    .line 142
    const-string v13, "All Contacts"

    .line 143
    .line 144
    const/4 v14, 0x0

    .line 145
    const/4 v15, 0x4

    .line 146
    const/16 v18, 0x0

    .line 147
    .line 148
    move-object v10, v9

    .line 149
    invoke-direct/range {v10 .. v20}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2, v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    :cond_2
    iget-object v8, v0, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->k:Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 158
    .line 159
    .line 160
    move-result v8

    .line 161
    if-nez v8, :cond_3

    .line 162
    .line 163
    iget-object v8, v0, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->k:Ljava/util/ArrayList;

    .line 164
    .line 165
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 166
    .line 167
    .line 168
    move-result v9

    .line 169
    add-int/lit8 v9, v9, -0x1

    .line 170
    .line 171
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v8

    .line 175
    invoke-virtual {v6}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getCategory()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v9

    .line 179
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v8

    .line 183
    if-nez v8, :cond_5

    .line 184
    .line 185
    :cond_3
    iget-object v8, v0, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->k:Ljava/util/ArrayList;

    .line 186
    .line 187
    invoke-virtual {v6}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getCategory()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v9

    .line 191
    if-nez v9, :cond_4

    .line 192
    .line 193
    const-string v9, ""

    .line 194
    .line 195
    :cond_4
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 205
    .line 206
    .line 207
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 214
    .line 215
    .line 216
    new-instance v8, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;

    .line 217
    .line 218
    invoke-virtual {v6}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getCategory()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v12

    .line 222
    const/16 v18, 0xe8

    .line 223
    .line 224
    const/16 v19, 0x0

    .line 225
    .line 226
    const/4 v10, 0x1

    .line 227
    const/4 v13, 0x0

    .line 228
    const/4 v14, 0x4

    .line 229
    const/4 v15, 0x0

    .line 230
    const/16 v16, 0x0

    .line 231
    .line 232
    const/16 v17, 0x0

    .line 233
    .line 234
    move-object v9, v8

    .line 235
    move-object v11, v6

    .line 236
    invoke-direct/range {v9 .. v19}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v2, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    :cond_5
    invoke-virtual {v6}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getRole()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v8

    .line 246
    const-string v9, "customer"

    .line 247
    .line 248
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v9

    .line 252
    if-eqz v9, :cond_6

    .line 253
    .line 254
    invoke-virtual {v0, v6}, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->r0(Lteam/opay/pay/transfer/contact/bean/TransferContactData;)V

    .line 255
    .line 256
    .line 257
    new-instance v8, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;

    .line 258
    .line 259
    const/16 v18, 0xec

    .line 260
    .line 261
    const/16 v19, 0x0

    .line 262
    .line 263
    const/4 v10, 0x2

    .line 264
    const/4 v12, 0x0

    .line 265
    const/4 v13, 0x0

    .line 266
    const/4 v14, 0x4

    .line 267
    const/4 v15, 0x0

    .line 268
    const/16 v16, 0x0

    .line 269
    .line 270
    const/16 v17, 0x0

    .line 271
    .line 272
    move-object v9, v8

    .line 273
    move-object v11, v6

    .line 274
    invoke-direct/range {v9 .. v19}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    goto/16 :goto_1

    .line 281
    .line 282
    :cond_6
    const-string v9, "agent"

    .line 283
    .line 284
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    move-result v8

    .line 288
    if-eqz v8, :cond_7

    .line 289
    .line 290
    new-instance v8, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;

    .line 291
    .line 292
    const/16 v18, 0xec

    .line 293
    .line 294
    const/16 v19, 0x0

    .line 295
    .line 296
    const/4 v10, 0x2

    .line 297
    const/4 v12, 0x0

    .line 298
    const/4 v13, 0x0

    .line 299
    const/4 v14, 0x4

    .line 300
    const/4 v15, 0x0

    .line 301
    const/16 v16, 0x0

    .line 302
    .line 303
    const/16 v17, 0x0

    .line 304
    .line 305
    move-object v9, v8

    .line 306
    move-object v11, v6

    .line 307
    invoke-direct/range {v9 .. v19}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    goto/16 :goto_1

    .line 314
    .line 315
    :cond_7
    new-instance v8, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;

    .line 316
    .line 317
    const/16 v18, 0xec

    .line 318
    .line 319
    const/16 v19, 0x0

    .line 320
    .line 321
    const/4 v10, 0x2

    .line 322
    const/4 v12, 0x0

    .line 323
    const/4 v13, 0x0

    .line 324
    const/4 v14, 0x4

    .line 325
    const/4 v15, 0x0

    .line 326
    const/16 v16, 0x0

    .line 327
    .line 328
    const/16 v17, 0x0

    .line 329
    .line 330
    move-object v9, v8

    .line 331
    move-object v11, v6

    .line 332
    invoke-direct/range {v9 .. v19}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    goto/16 :goto_1

    .line 339
    .line 340
    :cond_8
    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 341
    .line 342
    .line 343
    invoke-virtual {v2, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 344
    .line 345
    .line 346
    invoke-virtual {v2, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 347
    .line 348
    .line 349
    invoke-virtual {v0, v2}, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->c0(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->f0()Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->f0()Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->e0()Landroid/view/View;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEmptyView(Landroid/view/View;)V

    .line 368
    .line 369
    .line 370
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->q0()Z

    .line 371
    .line 372
    .line 373
    move-result v1

    .line 374
    if-eqz v1, :cond_9

    .line 375
    .line 376
    const/4 v1, 0x0

    .line 377
    invoke-virtual {v0, v1}, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->z0(Z)V

    .line 378
    .line 379
    .line 380
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    check-cast v1, Lmi6;

    .line 385
    .line 386
    iget-object v1, v1, Lmi6;->h:Lteam/opay/core/android/views/InitialsLetterBar;

    .line 387
    .line 388
    if-eqz v1, :cond_c

    .line 389
    .line 390
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 394
    .line 395
    .line 396
    move-result-object v2

    .line 397
    check-cast v2, Lmi6;

    .line 398
    .line 399
    iget-object v2, v2, Lmi6;->h:Lteam/opay/core/android/views/InitialsLetterBar;

    .line 400
    .line 401
    iget-object v3, v0, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->k:Ljava/util/ArrayList;

    .line 402
    .line 403
    invoke-virtual {v2, v3}, Lteam/opay/core/android/views/InitialsLetterBar;->setLetters(Ljava/util/List;)V

    .line 404
    .line 405
    .line 406
    iget-object v2, v0, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->k:Ljava/util/ArrayList;

    .line 407
    .line 408
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 409
    .line 410
    .line 411
    move-result v2

    .line 412
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 413
    .line 414
    .line 415
    move-result-object v3

    .line 416
    invoke-static {v8}, Ljmf;->d(I)I

    .line 417
    .line 418
    .line 419
    move-result v4

    .line 420
    mul-int v4, v4, v2

    .line 421
    .line 422
    const/16 v5, 0x8

    .line 423
    .line 424
    invoke-static {v5}, Ljmf;->d(I)I

    .line 425
    .line 426
    .line 427
    move-result v5

    .line 428
    add-int/lit8 v2, v2, -0x1

    .line 429
    .line 430
    mul-int v5, v5, v2

    .line 431
    .line 432
    add-int/2addr v4, v5

    .line 433
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 434
    .line 435
    .line 436
    move-result-object v2

    .line 437
    invoke-static {v2}, Ljmf;->q(Landroid/content/Context;)I

    .line 438
    .line 439
    .line 440
    move-result v2

    .line 441
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 442
    .line 443
    .line 444
    move-result-object v5

    .line 445
    if-nez v5, :cond_a

    .line 446
    .line 447
    return-void

    .line 448
    :cond_a
    invoke-static {v5}, Lteam/opay/swarmfoundation/utils/StatusBarUtil;->d(Landroid/content/Context;)I

    .line 449
    .line 450
    .line 451
    move-result v5

    .line 452
    sub-int/2addr v2, v5

    .line 453
    const/16 v5, 0x90

    .line 454
    .line 455
    invoke-static {v5}, Ljmf;->d(I)I

    .line 456
    .line 457
    .line 458
    move-result v5

    .line 459
    sub-int/2addr v2, v5

    .line 460
    if-le v4, v2, :cond_b

    .line 461
    .line 462
    move v4, v2

    .line 463
    :cond_b
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 464
    .line 465
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 466
    .line 467
    .line 468
    :cond_c
    return-void
.end method

.method public final b0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "android.permission.READ_CONTACTS"

    .line 6
    .line 7
    filled-new-array {v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lfu5;->c(Landroid/app/Activity;[Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->u0()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->t0()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method public c0(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/CopyOnWriteArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lteam/opay/pay/transfer/contact/adapter/MulDataEntity<",
            "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "list"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d0()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->l:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    return-object v0
.end method

.method public abstract e0()Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract f0()Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public g0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->n:Z

    .line 2
    .line 3
    return v0
.end method

.method public final i0(Ljava/util/HashMap;Lteam/opay/pay/transfer/contact/bean/TransferContactData;)Lteam/opay/pay/transfer/contact/bean/TransferContactData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
            ">;",
            "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
            ")",
            "Lteam/opay/pay/transfer/contact/bean/TransferContactData;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getPhone()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, ""

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v2, 0x1

    .line 17
    if-ne v0, v2, :cond_2

    .line 18
    .line 19
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getPhone()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move-object v1, v0

    .line 27
    :goto_0
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lteam/opay/pay/transfer/contact/bean/TransferContactData;

    .line 32
    .line 33
    if-eqz p1, :cond_3

    .line 34
    .line 35
    invoke-virtual {p1}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p2, v0}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getCategoryByName(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p1, v0}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->setCategory(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    const/4 p1, 0x0

    .line 48
    :cond_3
    :goto_1
    if-nez p1, :cond_4

    .line 49
    .line 50
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p2, p1}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getCategoryByName(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p2, p1}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->setCategory(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_4
    move-object p2, p1

    .line 63
    :goto_2
    return-object p2
.end method

.method public final j0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lmi6;

    .line 6
    .line 7
    iget-object v0, v0, Lmi6;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x4

    .line 16
    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->f0()Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Lap0;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lap0;-><init>(Lteam/opay/pay/transfer/contact/view/BaseContactFragment;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setSpanSizeLookup(Lcom/chad/library/adapter/base/BaseQuickAdapter$SpanSizeLookup;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->f0()Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Lmi6;

    .line 43
    .line 44
    iget-object v1, v1, Lmi6;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->bindToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->f0()Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    new-instance v1, Lbp0;

    .line 54
    .line 55
    invoke-direct {v1, p0}, Lbp0;-><init>(Lteam/opay/pay/transfer/contact/view/BaseContactFragment;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Lmi6;

    .line 66
    .line 67
    iget-object v0, v0, Lmi6;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 68
    .line 69
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const-string v1, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    .line 74
    .line 75
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 79
    .line 80
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    check-cast v1, Lmi6;

    .line 85
    .line 86
    iget-object v1, v1, Lmi6;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 87
    .line 88
    new-instance v2, Lteam/opay/pay/transfer/contact/view/BaseContactFragment$a;

    .line 89
    .line 90
    invoke-direct {v2, v0, p0}, Lteam/opay/pay/transfer/contact/view/BaseContactFragment$a;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;Lteam/opay/pay/transfer/contact/view/BaseContactFragment;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->g0()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "android.permission.READ_CONTACTS"

    .line 15
    .line 16
    filled-new-array {v1}, [Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lfu5;->c(Landroid/app/Activity;[Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->t0()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, v0}, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->A0(Z)V

    .line 41
    .line 42
    .line 43
    :cond_2
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->b0()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->j0()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->o0()V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->m0()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public q0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->m:Z

    .line 2
    .line 3
    return v0
.end method

.method public r0(Lteam/opay/pay/transfer/contact/bean/TransferContactData;)V
    .locals 1
    .param p1    # Lteam/opay/pay/transfer/contact/bean/TransferContactData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public abstract s0(Lteam/opay/pay/transfer/contact/bean/TransferContactData;)V
    .param p1    # Lteam/opay/pay/transfer/contact/bean/TransferContactData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract t0()V
.end method

.method public abstract u0()V
.end method

.method public final v0(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->f0()Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getEmptyView()Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    sget v1, Lteam/opay/pay/R$id;->iv_empty:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroidx/appcompat/widget/AppCompatImageView;

    .line 24
    .line 25
    sget v2, Lteam/opay/pay/R$mipmap;->transfer_contact_search_empty_ic:I

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 28
    .line 29
    .line 30
    sget v1, Lteam/opay/pay/R$id;->tv_content:I

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/widget/TextView;

    .line 37
    .line 38
    sget v1, Lteam/opay/pay/R$string;->osdk_transfer_choose_beneficiary_search_no_data:I

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lmi6;

    .line 52
    .line 53
    iget-object v0, v0, Lmi6;->h:Lteam/opay/core/android/views/InitialsLetterBar;

    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->f0()Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    .line 65
    .line 66
    const/16 v2, 0xa

    .line 67
    .line 68
    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 73
    .line 74
    .line 75
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_2

    .line 84
    .line 85
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    move-object v5, v2

    .line 90
    check-cast v5, Lteam/opay/pay/transfer/contact/bean/TransferContactData;

    .line 91
    .line 92
    new-instance v2, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;

    .line 93
    .line 94
    const/16 v12, 0xec

    .line 95
    .line 96
    const/4 v13, 0x0

    .line 97
    const/4 v4, 0x2

    .line 98
    const/4 v6, 0x0

    .line 99
    const/4 v7, 0x0

    .line 100
    const/4 v8, 0x4

    .line 101
    const/4 v9, 0x0

    .line 102
    const/4 v10, 0x0

    .line 103
    const/4 v11, 0x0

    .line 104
    move-object v3, v2

    .line 105
    invoke-direct/range {v3 .. v13}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 106
    .line 107
    .line 108
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_2
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method public y0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->o:Landroidx/activity/result/ActivityResultLauncher;

    .line 8
    .line 9
    const-string v1, "android.permission.READ_CONTACTS"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->b(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public z0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/transfer/contact/view/BaseContactFragment;->m:Z

    .line 2
    .line 3
    return-void
.end method
