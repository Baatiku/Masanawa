.class public final Lteam/opay/pay/history/balance/BalanceUnAvailableHistoryActivity;
.super Lteam/opay/pay/history/balance/Hilt_BalanceUnAvailableHistoryActivity;
.source "BalanceUnAvailableHistoryActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/history/balance/BalanceUnAvailableHistoryActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 \u000f2\u00020\u0001:\u0001\u0010B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u001b\u0010\u000e\u001a\u00020\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0011"
    }
    d2 = {
        "Lteam/opay/pay/history/balance/BalanceUnAvailableHistoryActivity;",
        "Lteam/opay/pay/android/NoBindingActivity;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Lteam/opay/pay/history/balance/BalanceHistoryViewModel;",
        "g",
        "Lid8;",
        "A",
        "()Lteam/opay/pay/history/balance/BalanceHistoryViewModel;",
        "viewModel",
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
.field public static final h:Lteam/opay/pay/history/balance/BalanceUnAvailableHistoryActivity$Companion;
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
    new-instance v0, Lteam/opay/pay/history/balance/BalanceUnAvailableHistoryActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/history/balance/BalanceUnAvailableHistoryActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/history/balance/BalanceUnAvailableHistoryActivity;->h:Lteam/opay/pay/history/balance/BalanceUnAvailableHistoryActivity$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->activity_fragment_container:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/history/balance/Hilt_BalanceUnAvailableHistoryActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/pay/history/balance/BalanceUnAvailableHistoryActivity$special$$inlined$viewModels$default$1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lteam/opay/pay/history/balance/BalanceUnAvailableHistoryActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 12
    .line 13
    const-class v2, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;

    .line 14
    .line 15
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Lteam/opay/pay/history/balance/BalanceUnAvailableHistoryActivity$special$$inlined$viewModels$default$2;

    .line 20
    .line 21
    invoke-direct {v3, p0}, Lteam/opay/pay/history/balance/BalanceUnAvailableHistoryActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 22
    .line 23
    .line 24
    new-instance v4, Lteam/opay/pay/history/balance/BalanceUnAvailableHistoryActivity$special$$inlined$viewModels$default$3;

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    invoke-direct {v4, v5, p0}, Lteam/opay/pay/history/balance/BalanceUnAvailableHistoryActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lteam/opay/pay/history/balance/BalanceUnAvailableHistoryActivity;->g:Lid8;

    .line 34
    .line 35
    return-void
.end method

.method private final A()Lteam/opay/pay/history/balance/BalanceHistoryViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/balance/BalanceUnAvailableHistoryActivity;->g:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/pay/history/balance/Hilt_BalanceUnAvailableHistoryActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lteam/opay/pay/history/balance/BalanceUnAvailableHistoryActivity;->A()Lteam/opay/pay/history/balance/BalanceHistoryViewModel;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    sget-object v0, Lteam/opay/core/android/money/MoneyAmount;->Companion:Lteam/opay/core/android/money/MoneyAmount$Companion;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "freezeBalance"

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    const-string v1, ""

    .line 23
    .line 24
    :cond_0
    invoke-direct {p0}, Lteam/opay/pay/history/balance/BalanceUnAvailableHistoryActivity;->A()Lteam/opay/pay/history/balance/BalanceHistoryViewModel;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->p()Lteam/opay/core/api/GraphQL$Currency;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$Currency;->a()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0, v1, v2}, Lteam/opay/core/android/money/MoneyAmount$Companion;->a(Ljava/lang/String;Ljava/lang/String;)Lteam/opay/core/android/money/MoneyAmount;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p1, v0}, Lteam/opay/pay/history/balance/BalanceHistoryViewModel;->G(Lteam/opay/core/android/money/MoneyAmount;)V

    .line 41
    .line 42
    .line 43
    sget p1, Lteam/opay/pay/R$id;->fragment_container:I

    .line 44
    .line 45
    sget-object v0, Lteam/opay/pay/history/balance/BalanceHistoryFragment;->w:Lteam/opay/pay/history/balance/BalanceHistoryFragment$Companion;

    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    invoke-virtual {v0, v1}, Lteam/opay/pay/history/balance/BalanceHistoryFragment$Companion;->a(Z)Lteam/opay/pay/history/balance/BalanceHistoryFragment;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {p0, p1, v0}, Lr5g;->b(Landroidx/appcompat/app/AppCompatActivity;ILandroidx/fragment/app/Fragment;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method
