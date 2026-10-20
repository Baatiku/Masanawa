.class public final Lcom/opay/team/newhome/adapter/FinBannerViewHolder;
.super Ljava/lang/Object;
.source "FinBannerViewHolder.kt"

# interfaces
.implements Ltzf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opay/team/newhome/adapter/FinBannerViewHolder$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ltzf<",
        "Lteam/opay/odialog/net/AdDataItem;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0000\u0018\u0000 \u001e2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001fB\u0011\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\'\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001f\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J+\u0010\u0018\u001a\u00020\u000c2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0017\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019R\u0019\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\u00a8\u0006 "
    }
    d2 = {
        "Lcom/opay/team/newhome/adapter/FinBannerViewHolder;",
        "Ltzf;",
        "Lteam/opay/odialog/net/AdDataItem;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "holder",
        "data",
        "",
        "position",
        "",
        "g",
        "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lteam/opay/odialog/net/AdDataItem;I)V",
        "Landroid/view/ViewGroup;",
        "container",
        "viewType",
        "c",
        "(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Landroid/widget/TextView;",
        "ageTagView",
        "adTagView",
        "item",
        "e",
        "(Landroid/widget/TextView;Landroid/widget/TextView;Lteam/opay/odialog/net/AdDataItem;)V",
        "a",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "b",
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
.field public static final b:Lcom/opay/team/newhome/adapter/FinBannerViewHolder$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/opay/team/newhome/adapter/FinBannerViewHolder$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/opay/team/newhome/adapter/FinBannerViewHolder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/opay/team/newhome/adapter/FinBannerViewHolder;->b:Lcom/opay/team/newhome/adapter/FinBannerViewHolder$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/opay/team/newhome/adapter/FinBannerViewHolder;->a:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic d(Lteam/opay/odialog/net/AdDataItem;Lcom/opay/team/newhome/adapter/FinBannerViewHolder;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/adapter/FinBannerViewHolder;->h(Lteam/opay/odialog/net/AdDataItem;Lcom/opay/team/newhome/adapter/FinBannerViewHolder;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final h(Lteam/opay/odialog/net/AdDataItem;Lcom/opay/team/newhome/adapter/FinBannerViewHolder;)Lkotlin/Unit;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0}, Lteam/opay/odialog/net/AdDataItem;->getId()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-static {v1}, Lkotlin/text/StringsKt;->y(Ljava/lang/String;)Ljava/lang/Long;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 17
    .line 18
    .line 19
    move-result-wide v4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-wide v4, v2

    .line 22
    :goto_0
    cmp-long v1, v4, v2

    .line 23
    .line 24
    if-gtz v1, :cond_1

    .line 25
    .line 26
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_1
    sget-object v1, Lcom/opay/team/home/a;->a:Lcom/opay/team/home/a;

    .line 30
    .line 31
    iget-object v2, p1, Lcom/opay/team/newhome/adapter/FinBannerViewHolder;->a:Landroid/content/Context;

    .line 32
    .line 33
    invoke-virtual {p0}, Lteam/opay/odialog/net/AdDataItem;->getAction()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    sget-object v5, Lcom/opay/team/home/analytics/PageTarget;->FINANCE:Lcom/opay/team/home/analytics/PageTarget;

    .line 38
    .line 39
    sget-object v6, Lcom/opay/team/home/analytics/PageSubModule;->FINANCE_BANNER:Lcom/opay/team/home/analytics/PageSubModule;

    .line 40
    .line 41
    new-array v7, v0, [Lkotlin/Pair;

    .line 42
    .line 43
    const/4 v8, 0x4

    .line 44
    const/4 v9, 0x0

    .line 45
    const/4 v4, 0x0

    .line 46
    invoke-static/range {v1 .. v9}, Lcom/opay/team/home/a;->z(Lcom/opay/team/home/a;Landroid/content/Context;Ljava/lang/String;Lteam/opay/core/api/Country;Lcom/opay/team/home/analytics/PageTarget;Lcom/opay/team/home/analytics/PageSubModule;[Lkotlin/Pair;ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lteam/opay/odialog/net/AdDataItem;->getCallbackClick()Ljava/lang/Boolean;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 54
    .line 55
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    sget-object v1, Lx7b;->a:Lx7b;

    .line 62
    .line 63
    const/4 v5, 0x4

    .line 64
    const/4 v6, 0x0

    .line 65
    const-string v3, "Banner_ads"

    .line 66
    .line 67
    const/4 v4, 0x0

    .line 68
    move-object v2, p0

    .line 69
    invoke-static/range {v1 .. v6}, Lx7b;->y(Lx7b;Lteam/opay/odialog/net/AdDataItem;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    :cond_2
    sget-object p1, Lx7b;->a:Lx7b;

    .line 73
    .line 74
    const-string v1, "banner_name"

    .line 75
    .line 76
    invoke-virtual {p0}, Lteam/opay/odialog/net/AdDataItem;->getTitle()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-static {v1, p0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    const/4 v1, 0x1

    .line 85
    new-array v1, v1, [Lkotlin/Pair;

    .line 86
    .line 87
    aput-object p0, v1, v0

    .line 88
    .line 89
    const-string p0, "FinanceTopBannerClick"

    .line 90
    .line 91
    invoke-virtual {p1, p0, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 92
    .line 93
    .line 94
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 95
    .line 96
    return-object p0
.end method


# virtual methods
.method public bridge synthetic a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p2, Lteam/opay/odialog/net/AdDataItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/opay/team/newhome/adapter/FinBannerViewHolder;->g(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lteam/opay/odialog/net/AdDataItem;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic b(ILjava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p2, Lteam/opay/odialog/net/AdDataItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/adapter/FinBannerViewHolder;->f(ILteam/opay/odialog/net/AdDataItem;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public c(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p2, "container"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/opay/team/newhome/adapter/FinBannerViewHolder;->a:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {p2, p1, v0}, Lhia;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lhia;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string p2, "inflate(...)"

    .line 18
    .line 19
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lhia;->a()Landroidx/cardview/widget/CardView;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    new-instance p2, Lcom/opay/team/newhome/adapter/FinBannerViewHolder$a;

    .line 27
    .line 28
    invoke-direct {p2, p1}, Lcom/opay/team/newhome/adapter/FinBannerViewHolder$a;-><init>(Landroidx/cardview/widget/CardView;)V

    .line 29
    .line 30
    .line 31
    return-object p2
.end method

.method public final e(Landroid/widget/TextView;Landroid/widget/TextView;Lteam/opay/odialog/net/AdDataItem;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p3}, Lteam/opay/odialog/net/AdDataItem;->getAgeLimit()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p3}, Lteam/opay/odialog/net/AdDataItem;->getAgeLimit()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    :cond_2
    :goto_1
    if-eqz p2, :cond_5

    .line 31
    .line 32
    invoke-virtual {p3}, Lteam/opay/odialog/net/AdDataItem;->getAdReminder()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_4

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_3

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_3
    invoke-static {p2}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p3}, Lteam/opay/odialog/net/AdDataItem;->getAdReminder()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_4
    :goto_2
    invoke-static {p2}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 57
    .line 58
    .line 59
    :cond_5
    :goto_3
    return-void
.end method

.method public f(ILteam/opay/odialog/net/AdDataItem;)I
    .locals 0
    .param p2    # Lteam/opay/odialog/net/AdDataItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1, p2}, Ltzf$a;->a(Ltzf;ILjava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public g(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lteam/opay/odialog/net/AdDataItem;I)V
    .locals 9
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/odialog/net/AdDataItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p3, "holder"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p3, "data"

    .line 7
    .line 8
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p3, p0, Lcom/opay/team/newhome/adapter/FinBannerViewHolder;->a:Landroid/content/Context;

    .line 12
    .line 13
    if-nez p3, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 17
    .line 18
    invoke-static {p1}, Lhia;->bind(Landroid/view/View;)Lhia;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string p3, "bind(...)"

    .line 23
    .line 24
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p1, Lhia;->b:Lcom/opay/team/newhome/home/ImageLottieView;

    .line 28
    .line 29
    invoke-virtual {p2}, Lteam/opay/odialog/net/AdDataItem;->getImageIconUrl()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    sget v2, Lteam/opay/pay/R$mipmap;->osdk_fin_banner_holder:I

    .line 34
    .line 35
    const/16 p3, 0xc

    .line 36
    .line 37
    invoke-static {p3}, Ljmf;->d(I)I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    const/16 v7, 0x38

    .line 42
    .line 43
    const/4 v8, 0x0

    .line 44
    const/4 v4, 0x0

    .line 45
    const/4 v5, 0x0

    .line 46
    const/4 v6, 0x0

    .line 47
    invoke-static/range {v0 .. v8}, Lcom/opay/team/newhome/home/ImageLottieView;->n(Lcom/opay/team/newhome/home/ImageLottieView;Ljava/lang/String;IIZZZILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object p3, p1, Lhia;->b:Lcom/opay/team/newhome/home/ImageLottieView;

    .line 51
    .line 52
    const-string v0, "adImage"

    .line 53
    .line 54
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    new-instance v0, Lzz5;

    .line 58
    .line 59
    invoke-direct {v0, p2, p0}, Lzz5;-><init>(Lteam/opay/odialog/net/AdDataItem;Lcom/opay/team/newhome/adapter/FinBannerViewHolder;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p3, v0}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 63
    .line 64
    .line 65
    iget-object p3, p1, Lhia;->d:Landroid/widget/TextView;

    .line 66
    .line 67
    iget-object p1, p1, Lhia;->c:Landroid/widget/TextView;

    .line 68
    .line 69
    invoke-virtual {p0, p3, p1, p2}, Lcom/opay/team/newhome/adapter/FinBannerViewHolder;->e(Landroid/widget/TextView;Landroid/widget/TextView;Lteam/opay/odialog/net/AdDataItem;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method
