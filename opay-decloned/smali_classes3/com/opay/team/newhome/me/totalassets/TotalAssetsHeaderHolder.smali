.class public final Lcom/opay/team/newhome/me/totalassets/TotalAssetsHeaderHolder;
.super Lcom/opay/team/newhome/me/totalassets/TotalAssetsViewHolder;
.source "TotalAssetsHeaderHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001f\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0019\u0010\u0015\u001a\u00020\u00052\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0014H\u0003\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019R\u001d\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR\u001b\u0010#\u001a\u00020\u001e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"R\u001b\u0010(\u001a\u00020$8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008%\u0010 \u001a\u0004\u0008&\u0010\'\u00a8\u0006)"
    }
    d2 = {
        "Lcom/opay/team/newhome/me/totalassets/TotalAssetsHeaderHolder;",
        "Lcom/opay/team/newhome/me/totalassets/TotalAssetsViewHolder;",
        "Lpja;",
        "binding",
        "Lkotlin/Function0;",
        "",
        "callback",
        "<init>",
        "(Lpja;Lkotlin/jvm/functions/Function0;)V",
        "Lteam/opay/core/android/money/MoneyAmount;",
        "amount",
        "",
        "g",
        "(Lteam/opay/core/android/money/MoneyAmount;)Ljava/lang/String;",
        "",
        "position",
        "Lcom/opay/team/newhome/bean/TotalAssetsItemData;",
        "data",
        "a",
        "(ILcom/opay/team/newhome/bean/TotalAssetsItemData;)V",
        "Lcom/opay/team/newhome/bean/TotalAssetsHeaderData;",
        "m",
        "(Lcom/opay/team/newhome/bean/TotalAssetsHeaderData;)V",
        "Lpja;",
        "getBinding",
        "()Lpja;",
        "b",
        "Lkotlin/jvm/functions/Function0;",
        "getCallback",
        "()Lkotlin/jvm/functions/Function0;",
        "Lteam/opay/core/settings/SettingsStorage;",
        "c",
        "Lid8;",
        "i",
        "()Lteam/opay/core/settings/SettingsStorage;",
        "settingsStorage",
        "Lcom/opay/team/newhome/me/totalassets/TotalAssetsAmountAdapter;",
        "d",
        "h",
        "()Lcom/opay/team/newhome/me/totalassets/TotalAssetsAmountAdapter;",
        "amountAdapter",
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
.field public final a:Lpja;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lpja;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .param p1    # Lpja;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpja;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lpja;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "getRoot(...)"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v0}, Lcom/opay/team/newhome/me/totalassets/TotalAssetsViewHolder;-><init>(Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/opay/team/newhome/me/totalassets/TotalAssetsHeaderHolder;->a:Lpja;

    .line 24
    .line 25
    iput-object p2, p0, Lcom/opay/team/newhome/me/totalassets/TotalAssetsHeaderHolder;->b:Lkotlin/jvm/functions/Function0;

    .line 26
    .line 27
    new-instance p1, Lwpe;

    .line 28
    .line 29
    invoke-direct {p1, p0}, Lwpe;-><init>(Lcom/opay/team/newhome/me/totalassets/TotalAssetsHeaderHolder;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/opay/team/newhome/me/totalassets/TotalAssetsHeaderHolder;->c:Lid8;

    .line 37
    .line 38
    new-instance p1, Lxpe;

    .line 39
    .line 40
    invoke-direct {p1}, Lxpe;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lcom/opay/team/newhome/me/totalassets/TotalAssetsHeaderHolder;->d:Lid8;

    .line 48
    .line 49
    return-void
.end method

.method public static synthetic b(Lcom/opay/team/newhome/me/totalassets/TotalAssetsAmountAdapter;Landroidx/recyclerview/widget/GridLayoutManager;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/opay/team/newhome/me/totalassets/TotalAssetsHeaderHolder;->k(Lcom/opay/team/newhome/me/totalassets/TotalAssetsAmountAdapter;Landroidx/recyclerview/widget/GridLayoutManager;I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic c(Lcom/opay/team/newhome/me/totalassets/TotalAssetsHeaderHolder;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/me/totalassets/TotalAssetsHeaderHolder;->j(Lcom/opay/team/newhome/me/totalassets/TotalAssetsHeaderHolder;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d()Lcom/opay/team/newhome/me/totalassets/TotalAssetsAmountAdapter;
    .locals 1

    .line 1
    invoke-static {}, Lcom/opay/team/newhome/me/totalassets/TotalAssetsHeaderHolder;->f()Lcom/opay/team/newhome/me/totalassets/TotalAssetsAmountAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic e(Lcom/opay/team/newhome/me/totalassets/TotalAssetsHeaderHolder;)Lteam/opay/core/settings/SettingsStorage;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/me/totalassets/TotalAssetsHeaderHolder;->l(Lcom/opay/team/newhome/me/totalassets/TotalAssetsHeaderHolder;)Lteam/opay/core/settings/SettingsStorage;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final f()Lcom/opay/team/newhome/me/totalassets/TotalAssetsAmountAdapter;
    .locals 1

    .line 1
    new-instance v0, Lcom/opay/team/newhome/me/totalassets/TotalAssetsAmountAdapter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/opay/team/newhome/me/totalassets/TotalAssetsAmountAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final g(Lteam/opay/core/android/money/MoneyAmount;)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget v0, Lteam/opay/pay/R$string;->account_balance_unknown:I

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "getString(...)"

    .line 16
    .line 17
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_0
    sget-object v0, Lbd9;->a:Lbd9;

    .line 22
    .line 23
    sget-object v1, Lteam/opay/core/api/Country;->NIGERIA:Lteam/opay/core/api/Country;

    .line 24
    .line 25
    invoke-virtual {v0, p1, v1}, Lbd9;->k(Lteam/opay/core/android/money/MoneyAmount;Lteam/opay/core/api/Country;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1
.end method

.method private final i()Lteam/opay/core/settings/SettingsStorage;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/me/totalassets/TotalAssetsHeaderHolder;->c:Lid8;

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

.method public static final j(Lcom/opay/team/newhome/me/totalassets/TotalAssetsHeaderHolder;)Lkotlin/Unit;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/opay/team/newhome/me/totalassets/TotalAssetsHeaderHolder;->i()Lteam/opay/core/settings/SettingsStorage;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0}, Lcom/opay/team/newhome/me/totalassets/TotalAssetsHeaderHolder;->i()Lteam/opay/core/settings/SettingsStorage;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lteam/opay/core/settings/SettingsStorage;->u()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    xor-int/lit8 v1, v1, 0x1

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lteam/opay/core/settings/SettingsStorage;->f0(Z)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/opay/team/newhome/me/totalassets/TotalAssetsHeaderHolder;->b:Lkotlin/jvm/functions/Function0;

    .line 19
    .line 20
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->c()Lorg/greenrobot/eventbus/EventBus;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    new-instance v0, Lcom/opay/team/newhome/home/bean/BalanceHideChangeEvent;

    .line 28
    .line 29
    invoke-direct {v0}, Lcom/opay/team/newhome/home/bean/BalanceHideChangeEvent;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->l(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    sget-object p0, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 36
    .line 37
    const/4 v0, 0x2

    .line 38
    const/4 v1, 0x0

    .line 39
    const-string v2, "balance_hidden_change"

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-static {p0, v2, v3, v0, v1}, Lteam/opay/pay/util/FlowBus;->h(Lteam/opay/pay/util/FlowBus;Ljava/lang/Object;IILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 46
    .line 47
    return-object p0
.end method

.method public static final k(Lcom/opay/team/newhome/me/totalassets/TotalAssetsAmountAdapter;Landroidx/recyclerview/widget/GridLayoutManager;I)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;

    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;->b()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public static final l(Lcom/opay/team/newhome/me/totalassets/TotalAssetsHeaderHolder;)Lteam/opay/core/settings/SettingsStorage;
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/core/settings/SettingsStorage;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v1, "getContext(...)"

    .line 10
    .line 11
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, p0}, Lteam/opay/core/settings/SettingsStorage;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method


# virtual methods
.method public a(ILcom/opay/team/newhome/bean/TotalAssetsItemData;)V
    .locals 7
    .param p2    # Lcom/opay/team/newhome/bean/TotalAssetsItemData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p1, "data"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/opay/team/newhome/bean/TotalAssetsItemData;->c()Lcom/opay/team/newhome/bean/TotalAssetsHeaderData;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/opay/team/newhome/me/totalassets/TotalAssetsHeaderHolder;->a:Lpja;

    .line 14
    .line 15
    iget-object p1, p1, Lpja;->f:Landroidx/appcompat/widget/AppCompatImageView;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    new-instance v0, Lype;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lype;-><init>(Lcom/opay/team/newhome/me/totalassets/TotalAssetsHeaderHolder;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1, v0}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {p2}, Lcom/opay/team/newhome/bean/TotalAssetsItemData;->c()Lcom/opay/team/newhome/bean/TotalAssetsHeaderData;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0, p1}, Lcom/opay/team/newhome/me/totalassets/TotalAssetsHeaderHolder;->m(Lcom/opay/team/newhome/bean/TotalAssetsHeaderData;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Lcom/opay/team/newhome/bean/TotalAssetsItemData;->c()Lcom/opay/team/newhome/bean/TotalAssetsHeaderData;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_5

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/opay/team/newhome/bean/TotalAssetsHeaderData;->a()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-eqz p1, :cond_5

    .line 45
    .line 46
    iget-object p2, p0, Lcom/opay/team/newhome/me/totalassets/TotalAssetsHeaderHolder;->a:Lpja;

    .line 47
    .line 48
    iget-object p2, p2, Lpja;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 49
    .line 50
    const/4 v0, 0x2

    .line 51
    if-eqz p2, :cond_2

    .line 52
    .line 53
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 54
    .line 55
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-direct {v1, v2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/opay/team/newhome/me/totalassets/TotalAssetsHeaderHolder;->h()Lcom/opay/team/newhome/me/totalassets/TotalAssetsAmountAdapter;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    new-instance v2, Lzpe;

    .line 70
    .line 71
    invoke-direct {v2, v1}, Lzpe;-><init>(Lcom/opay/team/newhome/me/totalassets/TotalAssetsAmountAdapter;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setSpanSizeLookup(Lcom/chad/library/adapter/base/BaseQuickAdapter$SpanSizeLookup;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 78
    .line 79
    .line 80
    :cond_2
    invoke-virtual {p0}, Lcom/opay/team/newhome/me/totalassets/TotalAssetsHeaderHolder;->h()Lcom/opay/team/newhome/me/totalassets/TotalAssetsAmountAdapter;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-eqz v2, :cond_4

    .line 98
    .line 99
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    check-cast v2, Lcom/opay/team/newhome/bean/TotalAssetsItemList;

    .line 104
    .line 105
    new-instance v3, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;

    .line 106
    .line 107
    invoke-virtual {v2}, Lcom/opay/team/newhome/bean/TotalAssetsItemList;->b()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    const/16 v5, 0x2711

    .line 112
    .line 113
    invoke-direct {v3, v5, v4, v0}, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;-><init>(ILjava/lang/Object;I)V

    .line 114
    .line 115
    .line 116
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Lcom/opay/team/newhome/bean/TotalAssetsItemList;->a()Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    if-eqz v2, :cond_3

    .line 124
    .line 125
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    if-eqz v3, :cond_3

    .line 134
    .line 135
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    check-cast v3, Lcom/opay/team/newhome/bean/TotalAssetsAccountsItem;

    .line 140
    .line 141
    new-instance v4, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;

    .line 142
    .line 143
    const/16 v5, 0x2712

    .line 144
    .line 145
    const/4 v6, 0x1

    .line 146
    invoke-direct {v4, v5, v3, v6}, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;-><init>(ILjava/lang/Object;I)V

    .line 147
    .line 148
    .line 149
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_4
    invoke-virtual {p2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 154
    .line 155
    .line 156
    :cond_5
    return-void
.end method

.method public final h()Lcom/opay/team/newhome/me/totalassets/TotalAssetsAmountAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/me/totalassets/TotalAssetsHeaderHolder;->d:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/opay/team/newhome/me/totalassets/TotalAssetsAmountAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method public final m(Lcom/opay/team/newhome/bean/TotalAssetsHeaderData;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/opay/team/newhome/me/totalassets/TotalAssetsHeaderHolder;->i()Lteam/opay/core/settings/SettingsStorage;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lteam/opay/core/settings/SettingsStorage;->u()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    sget v1, Lteam/opay/pay/R$drawable;->omain_ic_balance_hide:I

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget v1, Lteam/opay/pay/R$mipmap;->omain_ic_balance_show:I

    .line 17
    .line 18
    :goto_0
    iget-object v2, p0, Lcom/opay/team/newhome/me/totalassets/TotalAssetsHeaderHolder;->a:Lpja;

    .line 19
    .line 20
    iget-object v2, v2, Lpja;->f:Landroidx/appcompat/widget/AppCompatImageView;

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/opay/team/newhome/me/totalassets/TotalAssetsHeaderHolder;->i()Lteam/opay/core/settings/SettingsStorage;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lteam/opay/core/settings/SettingsStorage;->u()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/4 v2, 0x0

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    sget v3, Lteam/opay/pay/R$string;->omain_pay_balance_place_holder:I

    .line 41
    .line 42
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_1
    sget-object v1, Lnyc;->a:Lnyc;

    .line 51
    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/opay/team/newhome/bean/TotalAssetsHeaderData;->c()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    if-eqz v3, :cond_2

    .line 59
    .line 60
    invoke-virtual {v3}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->asMoneyAmount()Lteam/opay/core/android/money/MoneyAmount;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    move-object v3, v2

    .line 66
    :goto_1
    invoke-direct {p0, v3}, Lcom/opay/team/newhome/me/totalassets/TotalAssetsHeaderHolder;->g(Lteam/opay/core/android/money/MoneyAmount;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    const/16 v4, 0x16

    .line 71
    .line 72
    invoke-virtual {v1, v3, v4}, Lnyc;->h(Ljava/lang/String;I)Ljava/lang/CharSequence;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    :goto_2
    iget-object v3, p0, Lcom/opay/team/newhome/me/totalassets/TotalAssetsHeaderHolder;->a:Lpja;

    .line 77
    .line 78
    iget-object v3, v3, Lpja;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 79
    .line 80
    if-eqz v3, :cond_3

    .line 81
    .line 82
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    .line 84
    .line 85
    :cond_3
    const-string v1, "totalAsstesAmountTips"

    .line 86
    .line 87
    if-eqz p1, :cond_8

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/opay/team/newhome/bean/TotalAssetsHeaderData;->b()Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    const/4 v4, 0x1

    .line 94
    if-ne v3, v4, :cond_8

    .line 95
    .line 96
    iget-object v3, p0, Lcom/opay/team/newhome/me/totalassets/TotalAssetsHeaderHolder;->a:Lpja;

    .line 97
    .line 98
    iget-object v3, v3, Lpja;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 99
    .line 100
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-static {v3}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 104
    .line 105
    .line 106
    if-eqz p1, :cond_4

    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/opay/team/newhome/bean/TotalAssetsHeaderData;->d()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    if-nez v1, :cond_5

    .line 113
    .line 114
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    sget v3, Lteam/opay/pay/R$string;->omain_total_assets_yesterday_income:I

    .line 119
    .line 120
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    const-string v3, "getString(...)"

    .line 125
    .line 126
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    :cond_5
    invoke-direct {p0}, Lcom/opay/team/newhome/me/totalassets/TotalAssetsHeaderHolder;->i()Lteam/opay/core/settings/SettingsStorage;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-virtual {v3}, Lteam/opay/core/settings/SettingsStorage;->u()Z

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    if-eqz v3, :cond_6

    .line 138
    .line 139
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    sget v0, Lteam/opay/pay/R$string;->omain_pay_balance_place_holder:I

    .line 144
    .line 145
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    goto :goto_3

    .line 150
    :cond_6
    if-eqz p1, :cond_7

    .line 151
    .line 152
    invoke-virtual {p1}, Lcom/opay/team/newhome/bean/TotalAssetsHeaderData;->e()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    if-eqz p1, :cond_7

    .line 157
    .line 158
    invoke-virtual {p1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->asMoneyAmount()Lteam/opay/core/android/money/MoneyAmount;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    :cond_7
    invoke-direct {p0, v2}, Lcom/opay/team/newhome/me/totalassets/TotalAssetsHeaderHolder;->g(Lteam/opay/core/android/money/MoneyAmount;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .line 170
    .line 171
    const-string v2, "+"

    .line 172
    .line 173
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    :goto_3
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    iget-object v0, p0, Lcom/opay/team/newhome/me/totalassets/TotalAssetsHeaderHolder;->a:Lpja;

    .line 187
    .line 188
    iget-object v0, v0, Lpja;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 189
    .line 190
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 194
    .line 195
    .line 196
    new-instance v2, Landroid/text/SpannableStringBuilder;

    .line 197
    .line 198
    new-instance v3, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v4, " "

    .line 207
    .line 208
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    invoke-direct {v2, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 219
    .line 220
    .line 221
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    .line 222
    .line 223
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    sget v3, Lteam/opay/pay/R$color;->black_45:I

    .line 228
    .line 229
    invoke-static {v0, v3}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    invoke-direct {p1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    const/16 v1, 0x21

    .line 241
    .line 242
    const/4 v3, 0x0

    .line 243
    invoke-virtual {v2, p1, v3, v0, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 244
    .line 245
    .line 246
    iget-object p1, p0, Lcom/opay/team/newhome/me/totalassets/TotalAssetsHeaderHolder;->a:Lpja;

    .line 247
    .line 248
    iget-object p1, p1, Lpja;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 249
    .line 250
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    .line 252
    .line 253
    goto :goto_4

    .line 254
    :cond_8
    iget-object p1, p0, Lcom/opay/team/newhome/me/totalassets/TotalAssetsHeaderHolder;->a:Lpja;

    .line 255
    .line 256
    iget-object p1, p1, Lpja;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 257
    .line 258
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 262
    .line 263
    .line 264
    :goto_4
    invoke-virtual {p0}, Lcom/opay/team/newhome/me/totalassets/TotalAssetsHeaderHolder;->h()Lcom/opay/team/newhome/me/totalassets/TotalAssetsAmountAdapter;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    invoke-direct {p0}, Lcom/opay/team/newhome/me/totalassets/TotalAssetsHeaderHolder;->i()Lteam/opay/core/settings/SettingsStorage;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    invoke-virtual {v0}, Lteam/opay/core/settings/SettingsStorage;->u()Z

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    invoke-virtual {p1, v0}, Lcom/opay/team/newhome/me/totalassets/TotalAssetsAmountAdapter;->o(Z)V

    .line 277
    .line 278
    .line 279
    return-void
.end method
