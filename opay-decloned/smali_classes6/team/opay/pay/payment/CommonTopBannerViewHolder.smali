.class public final Lteam/opay/pay/payment/CommonTopBannerViewHolder;
.super Ljava/lang/Object;
.source "CommonTopBannerViewHolder.kt"

# interfaces
.implements Ltzf;


# annotations
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
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\'\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001f\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u0019\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019R\u0017\u0010\u0006\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR\u001c\u0010!\u001a\n \u001f*\u0004\u0018\u00010\u001e0\u001e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010 \u00a8\u0006\""
    }
    d2 = {
        "Lteam/opay/pay/payment/CommonTopBannerViewHolder;",
        "Ltzf;",
        "Lteam/opay/odialog/net/AdDataItem;",
        "Landroid/content/Context;",
        "context",
        "",
        "from",
        "<init>",
        "(Landroid/content/Context;Ljava/lang/String;)V",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "holder",
        "data",
        "",
        "position",
        "",
        "f",
        "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lteam/opay/odialog/net/AdDataItem;I)V",
        "Landroid/view/ViewGroup;",
        "container",
        "viewType",
        "c",
        "(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "a",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "b",
        "Ljava/lang/String;",
        "getFrom",
        "()Ljava/lang/String;",
        "Landroid/view/LayoutInflater;",
        "kotlin.jvm.PlatformType",
        "Landroid/view/LayoutInflater;",
        "layoutInflater",
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
.field public final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "from"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lteam/opay/pay/payment/CommonTopBannerViewHolder;->a:Landroid/content/Context;

    .line 10
    .line 11
    iput-object p2, p0, Lteam/opay/pay/payment/CommonTopBannerViewHolder;->b:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lteam/opay/pay/payment/CommonTopBannerViewHolder;->c:Landroid/view/LayoutInflater;

    .line 18
    .line 19
    return-void
.end method

.method public static synthetic d(Lteam/opay/pay/payment/CommonTopBannerViewHolder;Lteam/opay/odialog/net/AdDataItem;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/CommonTopBannerViewHolder;->g(Lteam/opay/pay/payment/CommonTopBannerViewHolder;Lteam/opay/odialog/net/AdDataItem;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final g(Lteam/opay/pay/payment/CommonTopBannerViewHolder;Lteam/opay/odialog/net/AdDataItem;)Lkotlin/Unit;
    .locals 3

    .line 1
    sget-object v0, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 2
    .line 3
    const-class v1, Lteam/opay/swarmfoundation/action/IActionManager;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lteam/opay/swarmfoundation/action/IActionManager;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lteam/opay/pay/payment/CommonTopBannerViewHolder;->a:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {p1}, Lteam/opay/odialog/net/AdDataItem;->getAction()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    const-string v2, ""

    .line 22
    .line 23
    :cond_0
    iget-object p0, p0, Lteam/opay/pay/payment/CommonTopBannerViewHolder;->b:Ljava/lang/String;

    .line 24
    .line 25
    invoke-interface {v0, v1, v2, p0}, Lteam/opay/swarmfoundation/action/IActionManager;->open(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    sget-object p0, Lx7b;->a:Lx7b;

    .line 29
    .line 30
    invoke-virtual {p1}, Lteam/opay/odialog/net/AdDataItem;->getAdpCode()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "Banner_ads"

    .line 35
    .line 36
    invoke-virtual {p0, p1, v1, v0}, Lx7b;->t(Lteam/opay/odialog/net/AdDataItem;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 40
    .line 41
    return-object p0
.end method


# virtual methods
.method public bridge synthetic a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p2, Lteam/opay/odialog/net/AdDataItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/pay/payment/CommonTopBannerViewHolder;->f(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lteam/opay/odialog/net/AdDataItem;I)V

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/CommonTopBannerViewHolder;->e(ILteam/opay/odialog/net/AdDataItem;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public c(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2
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
    iget-object p2, p0, Lteam/opay/pay/payment/CommonTopBannerViewHolder;->c:Landroid/view/LayoutInflater;

    .line 7
    .line 8
    sget v0, Lteam/opay/pay/R$layout;->osdk_common_pay_banner_item:I

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance p2, Lteam/opay/pay/payment/CommonTopBannerViewHolder$a;

    .line 16
    .line 17
    invoke-direct {p2, p1}, Lteam/opay/pay/payment/CommonTopBannerViewHolder$a;-><init>(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    return-object p2
.end method

.method public e(ILteam/opay/odialog/net/AdDataItem;)I
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

.method public f(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lteam/opay/odialog/net/AdDataItem;I)V
    .locals 10
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
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 12
    .line 13
    const-string p3, "itemView"

    .line 14
    .line 15
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p3, p0, Lteam/opay/pay/payment/CommonTopBannerViewHolder;->a:Landroid/content/Context;

    .line 19
    .line 20
    if-nez p3, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    sget p3, Lteam/opay/pay/R$id;->adImage:I

    .line 24
    .line 25
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    move-object v1, v0

    .line 30
    check-cast v1, Lcom/opay/team/newhome/home/ImageLottieView;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p2}, Lteam/opay/odialog/net/AdDataItem;->getImageIconUrl()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    sget v3, Lteam/opay/pay/R$mipmap;->bg_banner_default:I

    .line 39
    .line 40
    const/16 v0, 0x8

    .line 41
    .line 42
    invoke-static {v0}, Ljmf;->d(I)I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    const/16 v8, 0x38

    .line 47
    .line 48
    const/4 v9, 0x0

    .line 49
    const/4 v5, 0x0

    .line 50
    const/4 v6, 0x0

    .line 51
    const/4 v7, 0x0

    .line 52
    invoke-static/range {v1 .. v9}, Lcom/opay/team/newhome/home/ImageLottieView;->n(Lcom/opay/team/newhome/home/ImageLottieView;Ljava/lang/String;IIZZZILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const-string p3, "findViewById(...)"

    .line 60
    .line 61
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    new-instance p3, Ljj2;

    .line 65
    .line 66
    invoke-direct {p3, p0, p2}, Ljj2;-><init>(Lteam/opay/pay/payment/CommonTopBannerViewHolder;Lteam/opay/odialog/net/AdDataItem;)V

    .line 67
    .line 68
    .line 69
    invoke-static {p1, p3}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method
