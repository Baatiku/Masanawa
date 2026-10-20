.class public final Lteam/opay/pay/cashio/RecentCashContactsActivity;
.super Lteam/opay/pay/cashio/Hilt_RecentCashContactsActivity;
.source "RecentCashContactsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/cashio/RecentCashContactsActivity$Companion;,
        Lteam/opay/pay/cashio/RecentCashContactsActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 %2\u00020\u0001:\u0001&B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0003J\u001d\u0010\r\u001a\u00020\u00062\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001d\u0010\u0010\u001a\u00020\u00062\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u000eR\u001b\u0010\u0016\u001a\u00020\u00118VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\u001b\u0010\u001b\u001a\u00020\u00178BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0013\u001a\u0004\u0008\u0019\u0010\u001aR$\u0010 \u001a\u0012\u0012\u0004\u0012\u00020\u000b0\u001cj\u0008\u0012\u0004\u0012\u00020\u000b`\u001d8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0016\u0010$\u001a\u00020!8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#\u00a8\u0006\'"
    }
    d2 = {
        "Lteam/opay/pay/cashio/RecentCashContactsActivity;",
        "Lteam/opay/pay/android/BaseActivity;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "H",
        "",
        "Lteam/opay/pay/wallet/transferhistory/RecentCashContact;",
        "it",
        "J",
        "(Ljava/util/List;)V",
        "list",
        "D",
        "Lxf;",
        "e",
        "Lid8;",
        "G",
        "()Lxf;",
        "viewBinding",
        "Lteam/opay/pay/wallet/transferhistory/TransferHistoryViewModel;",
        "f",
        "F",
        "()Lteam/opay/pay/wallet/transferhistory/TransferHistoryViewModel;",
        "transferHistoryViewModel",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "g",
        "Ljava/util/ArrayList;",
        "listData",
        "",
        "h",
        "Ljava/lang/String;",
        "selectPhone",
        "i",
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
.field public static final i:Lteam/opay/pay/cashio/RecentCashContactsActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final e:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lteam/opay/pay/wallet/transferhistory/RecentCashContact;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/cashio/RecentCashContactsActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/cashio/RecentCashContactsActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/cashio/RecentCashContactsActivity;->i:Lteam/opay/pay/cashio/RecentCashContactsActivity$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->activity_recent_cash_contact:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/cashio/Hilt_RecentCashContactsActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lyec;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lyec;-><init>(Lteam/opay/pay/cashio/RecentCashContactsActivity;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lteam/opay/pay/cashio/RecentCashContactsActivity;->e:Lid8;

    .line 16
    .line 17
    new-instance v0, Lteam/opay/pay/cashio/RecentCashContactsActivity$special$$inlined$viewModels$default$1;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lteam/opay/pay/cashio/RecentCashContactsActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 23
    .line 24
    const-class v2, Lteam/opay/pay/wallet/transferhistory/TransferHistoryViewModel;

    .line 25
    .line 26
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    new-instance v3, Lteam/opay/pay/cashio/RecentCashContactsActivity$special$$inlined$viewModels$default$2;

    .line 31
    .line 32
    invoke-direct {v3, p0}, Lteam/opay/pay/cashio/RecentCashContactsActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 33
    .line 34
    .line 35
    new-instance v4, Lteam/opay/pay/cashio/RecentCashContactsActivity$special$$inlined$viewModels$default$3;

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    invoke-direct {v4, v5, p0}, Lteam/opay/pay/cashio/RecentCashContactsActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lteam/opay/pay/cashio/RecentCashContactsActivity;->f:Lid8;

    .line 45
    .line 46
    new-instance v0, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lteam/opay/pay/cashio/RecentCashContactsActivity;->g:Ljava/util/ArrayList;

    .line 52
    .line 53
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/cashio/RecentCashContactsActivity;Lteam/opay/core/android/arch/Resource;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/cashio/RecentCashContactsActivity;->I(Lteam/opay/pay/cashio/RecentCashContactsActivity;Lteam/opay/core/android/arch/Resource;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic B(Lteam/opay/pay/cashio/RecentCashContactsActivity;)Lxf;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/cashio/RecentCashContactsActivity;->K(Lteam/opay/pay/cashio/RecentCashContactsActivity;)Lxf;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C(Lteam/opay/pay/cashio/RecentCashContactsActivity;Lteam/opay/pay/wallet/transferhistory/RecentCashContact;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/cashio/RecentCashContactsActivity;->E(Lteam/opay/pay/cashio/RecentCashContactsActivity;Lteam/opay/pay/wallet/transferhistory/RecentCashContact;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final E(Lteam/opay/pay/cashio/RecentCashContactsActivity;Lteam/opay/pay/wallet/transferhistory/RecentCashContact;)Lkotlin/Unit;
    .locals 3

    .line 1
    const-string v0, "contact"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/content/Intent;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lteam/opay/pay/wallet/transferhistory/RecentCashContact;->getMobile()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "select_phone"

    .line 16
    .line 17
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    const-string v1, "select_name"

    .line 21
    .line 22
    invoke-virtual {p1}, Lteam/opay/pay/wallet/transferhistory/RecentCashContact;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 30
    .line 31
    const/16 p1, 0x2711

    .line 32
    .line 33
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 37
    .line 38
    .line 39
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 40
    .line 41
    return-object p0
.end method

.method private final F()Lteam/opay/pay/wallet/transferhistory/TransferHistoryViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashio/RecentCashContactsActivity;->f:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/wallet/transferhistory/TransferHistoryViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final I(Lteam/opay/pay/cashio/RecentCashContactsActivity;Lteam/opay/core/android/arch/Resource;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/cashio/RecentCashContactsActivity;->G()Lxf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lxf;->e:Landroid/widget/ProgressBar;

    .line 6
    .line 7
    const-string v1, "progressSpinner"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->f()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-static {v0, v1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget-object v1, Lteam/opay/pay/cashio/RecentCashContactsActivity$a;->a:[I

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    aget v0, v1, v0

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    if-eq v0, v1, :cond_4

    .line 33
    .line 34
    const/4 v1, 0x2

    .line 35
    if-eq v0, v1, :cond_3

    .line 36
    .line 37
    const/4 v1, 0x3

    .line 38
    if-ne v0, v1, :cond_2

    .line 39
    .line 40
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Ljava/util/List;

    .line 45
    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p0, p1}, Lteam/opay/pay/cashio/RecentCashContactsActivity;->J(Ljava/util/List;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lteam/opay/pay/cashio/RecentCashContactsActivity;->G()Lxf;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    iget-object p0, p0, Lxf;->c:Landroidx/constraintlayout/widget/Group;

    .line 63
    .line 64
    if-eqz p0, :cond_5

    .line 65
    .line 66
    invoke-static {p0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lteam/opay/pay/cashio/RecentCashContactsActivity;->G()Lxf;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    iget-object p0, p0, Lxf;->c:Landroidx/constraintlayout/widget/Group;

    .line 75
    .line 76
    if-eqz p0, :cond_5

    .line 77
    .line 78
    invoke-static {p0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 83
    .line 84
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 85
    .line 86
    .line 87
    throw p0

    .line 88
    :cond_3
    sget p1, Lteam/opay/pay/R$string;->verify_error_msg:I

    .line 89
    .line 90
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    const-string v0, "getString(...)"

    .line 95
    .line 96
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-static {p0, p1}, Lkmf;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_4
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 104
    .line 105
    .line 106
    :cond_5
    :goto_1
    return-void
.end method

.method public static final K(Lteam/opay/pay/cashio/RecentCashContactsActivity;)Lxf;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lxf;->inflate(Landroid/view/LayoutInflater;)Lxf;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public final D(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/pay/wallet/transferhistory/RecentCashContact;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/cashio/RecentCashContactsActivity;->G()Lxf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lxf;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    new-instance v1, Lteam/opay/pay/cashio/TransferHistoryAdapter;

    .line 8
    .line 9
    iget-object v2, p0, Lteam/opay/pay/cashio/RecentCashContactsActivity;->h:Ljava/lang/String;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    const-string v2, "selectPhone"

    .line 14
    .line 15
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    :cond_0
    new-instance v3, Lafc;

    .line 20
    .line 21
    invoke-direct {v3, p0}, Lafc;-><init>(Lteam/opay/pay/cashio/RecentCashContactsActivity;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, p1, v2, v3}, Lteam/opay/pay/cashio/TransferHistoryAdapter;-><init>(Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public G()Lxf;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashio/RecentCashContactsActivity;->e:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lxf;

    .line 8
    .line 9
    return-object v0
.end method

.method public final H()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/cashio/RecentCashContactsActivity;->F()Lteam/opay/pay/wallet/transferhistory/TransferHistoryViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/wallet/transferhistory/TransferHistoryViewModel;->u()Landroidx/lifecycle/LiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lzec;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lzec;-><init>(Lteam/opay/pay/cashio/RecentCashContactsActivity;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final J(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/pay/wallet/transferhistory/RecentCashContact;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashio/RecentCashContactsActivity;->g:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/cashio/RecentCashContactsActivity;->g:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 9
    .line 10
    .line 11
    new-instance p1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lteam/opay/pay/cashio/RecentCashContactsActivity;->g:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-lez v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lteam/opay/pay/cashio/RecentCashContactsActivity;->g:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lteam/opay/pay/cashio/RecentCashContactsActivity;->D(Ljava/util/List;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public bridge synthetic getViewBinding()Lxyf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/cashio/RecentCashContactsActivity;->G()Lxf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/pay/cashio/Hilt_RecentCashContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "select_phone"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    const-string p1, ""

    .line 19
    .line 20
    :cond_0
    iput-object p1, p0, Lteam/opay/pay/cashio/RecentCashContactsActivity;->h:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p0}, Lteam/opay/pay/cashio/RecentCashContactsActivity;->H()V

    .line 23
    .line 24
    .line 25
    return-void
.end method
