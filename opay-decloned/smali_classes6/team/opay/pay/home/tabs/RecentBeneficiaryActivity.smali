.class public final Lteam/opay/pay/home/tabs/RecentBeneficiaryActivity;
.super Lteam/opay/pay/home/tabs/Hilt_RecentBeneficiaryActivity;
.source "RecentBeneficiaryActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/home/tabs/RecentBeneficiaryActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 \u000f2\u00020\u0001:\u0001\u0010B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u001b\u0010\u000e\u001a\u00020\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0011"
    }
    d2 = {
        "Lteam/opay/pay/home/tabs/RecentBeneficiaryActivity;",
        "Lteam/opay/pay/android/NoBindingActivity;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Lteam/opay/pay/wallet/transferhistory/TransferHistoryViewModel;",
        "g",
        "Lid8;",
        "B",
        "()Lteam/opay/pay/wallet/transferhistory/TransferHistoryViewModel;",
        "transferHistoryViewModel",
        "h",
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
.field public static final h:Lteam/opay/pay/home/tabs/RecentBeneficiaryActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final g:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/home/tabs/RecentBeneficiaryActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/home/tabs/RecentBeneficiaryActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/home/tabs/RecentBeneficiaryActivity;->h:Lteam/opay/pay/home/tabs/RecentBeneficiaryActivity$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->activity_recent_beneficiary:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/home/tabs/Hilt_RecentBeneficiaryActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/pay/home/tabs/RecentBeneficiaryActivity$special$$inlined$viewModels$default$1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lteam/opay/pay/home/tabs/RecentBeneficiaryActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 12
    .line 13
    const-class v2, Lteam/opay/pay/wallet/transferhistory/TransferHistoryViewModel;

    .line 14
    .line 15
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Lteam/opay/pay/home/tabs/RecentBeneficiaryActivity$special$$inlined$viewModels$default$2;

    .line 20
    .line 21
    invoke-direct {v3, p0}, Lteam/opay/pay/home/tabs/RecentBeneficiaryActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 22
    .line 23
    .line 24
    new-instance v4, Lteam/opay/pay/home/tabs/RecentBeneficiaryActivity$special$$inlined$viewModels$default$3;

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    invoke-direct {v4, v5, p0}, Lteam/opay/pay/home/tabs/RecentBeneficiaryActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lteam/opay/pay/home/tabs/RecentBeneficiaryActivity;->g:Lid8;

    .line 34
    .line 35
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/home/tabs/RecentBeneficiaryActivity;Lteam/opay/pay/wallet/transferhistory/TransferHistory;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/tabs/RecentBeneficiaryActivity;->C(Lteam/opay/pay/home/tabs/RecentBeneficiaryActivity;Lteam/opay/pay/wallet/transferhistory/TransferHistory;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final B()Lteam/opay/pay/wallet/transferhistory/TransferHistoryViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/tabs/RecentBeneficiaryActivity;->g:Lid8;

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

.method public static final C(Lteam/opay/pay/home/tabs/RecentBeneficiaryActivity;Lteam/opay/pay/wallet/transferhistory/TransferHistory;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "transferHistory"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    const/16 p1, 0x2711

    .line 14
    .line 15
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lcom/opay/team/a;->a:Lcom/opay/team/a;

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    new-array p1, p1, [Lkotlin/Pair;

    .line 25
    .line 26
    const-string v0, "TRANSFER_transfer_bank_transferor_click"

    .line 27
    .line 28
    invoke-virtual {p0, v0, p1}, Lcom/opay/team/a;->c(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/pay/home/tabs/Hilt_RecentBeneficiaryActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    sget-object p1, Lteam/opay/pay/home/tabs/RecentBeneficiaryFragment;->w:Lteam/opay/pay/home/tabs/RecentBeneficiaryFragment$Companion;

    .line 7
    .line 8
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/RecentBeneficiaryFragment$Companion;->a()Lteam/opay/pay/home/tabs/RecentBeneficiaryFragment;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    new-instance v0, Landroid/os/Bundle;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v1, "key_only_ac"

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    const-string v1, "key_item_count"

    .line 24
    .line 25
    const/4 v2, -0x1

    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 30
    .line 31
    .line 32
    sget v0, Lteam/opay/pay/R$id;->content_recent_beneficiary:I

    .line 33
    .line 34
    invoke-static {p0, v0, p1}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Lteam/opay/pay/home/tabs/RecentBeneficiaryActivity;->B()Lteam/opay/pay/wallet/transferhistory/TransferHistoryViewModel;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lteam/opay/pay/wallet/transferhistory/TransferHistoryViewModel;->t()Landroidx/lifecycle/LiveData;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    new-instance v0, Lqec;

    .line 46
    .line 47
    invoke-direct {v0, p0}, Lqec;-><init>(Lteam/opay/pay/home/tabs/RecentBeneficiaryActivity;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method
