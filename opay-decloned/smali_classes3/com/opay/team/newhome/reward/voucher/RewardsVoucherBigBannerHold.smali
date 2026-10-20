.class public final Lcom/opay/team/newhome/reward/voucher/RewardsVoucherBigBannerHold;
.super Ljava/lang/Object;
.source "RewardsVoucherBigBannerHold.kt"

# interfaces
.implements Ltzf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ltzf<",
        "Lcom/opay/team/newhome/reward/GetVoucherBanner;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\'\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001f\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001f\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u0017\u0010\u0004\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019R\u001c\u0010\u001e\u001a\n \u001b*\u0004\u0018\u00010\u001a0\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/opay/team/newhome/reward/voucher/RewardsVoucherBigBannerHold;",
        "Ltzf;",
        "Lcom/opay/team/newhome/reward/GetVoucherBanner;",
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
        "f",
        "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/opay/team/newhome/reward/GetVoucherBanner;I)V",
        "Landroid/view/ViewGroup;",
        "container",
        "viewType",
        "c",
        "(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "g",
        "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/opay/team/newhome/reward/GetVoucherBanner;)V",
        "a",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "Landroid/view/LayoutInflater;",
        "kotlin.jvm.PlatformType",
        "b",
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
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/opay/team/newhome/reward/voucher/RewardsVoucherBigBannerHold;->a:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/opay/team/newhome/reward/voucher/RewardsVoucherBigBannerHold;->b:Landroid/view/LayoutInflater;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic d(Lcom/opay/team/newhome/home/ImageLottieView;Lcom/opay/team/newhome/reward/GetVoucherBanner;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/reward/voucher/RewardsVoucherBigBannerHold;->h(Lcom/opay/team/newhome/home/ImageLottieView;Lcom/opay/team/newhome/reward/GetVoucherBanner;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final h(Lcom/opay/team/newhome/home/ImageLottieView;Lcom/opay/team/newhome/reward/GetVoucherBanner;)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "getContext(...)"

    .line 6
    .line 7
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/GetVoucherBanner;->getBigBannerJumpUrl()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const-string v0, ""

    .line 17
    .line 18
    :cond_0
    invoke-static {p0, v0}, Lkmf;->E(Landroid/content/Context;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    sget-object p0, Lx7b;->a:Lx7b;

    .line 22
    .line 23
    const-string v0, "AD_ID"

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/GetVoucherBanner;->getBannerId()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v0, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "Material_Type"

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/GetVoucherBanner;->getBigBannerUrl()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {v1, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const/4 v1, 0x2

    .line 44
    new-array v1, v1, [Lkotlin/Pair;

    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    aput-object v0, v1, v2

    .line 48
    .line 49
    const/4 v0, 0x1

    .line 50
    aput-object p1, v1, v0

    .line 51
    .line 52
    const-string p1, "rewards_native_page_Voucher_Collection_Ad_click"

    .line 53
    .line 54
    invoke-virtual {p0, p1, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 55
    .line 56
    .line 57
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 58
    .line 59
    return-object p0
.end method


# virtual methods
.method public bridge synthetic a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/opay/team/newhome/reward/GetVoucherBanner;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/opay/team/newhome/reward/voucher/RewardsVoucherBigBannerHold;->f(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/opay/team/newhome/reward/GetVoucherBanner;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic b(ILjava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p2, Lcom/opay/team/newhome/reward/GetVoucherBanner;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/reward/voucher/RewardsVoucherBigBannerHold;->e(ILcom/opay/team/newhome/reward/GetVoucherBanner;)I

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
    iget-object p2, p0, Lcom/opay/team/newhome/reward/voucher/RewardsVoucherBigBannerHold;->b:Landroid/view/LayoutInflater;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-static {p2, p1, v0}, Lx0b;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lx0b;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string p2, "inflate(...)"

    .line 14
    .line 15
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lx0b;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance p2, Lcom/opay/team/newhome/reward/voucher/RewardsVoucherBigBannerHold$a;

    .line 23
    .line 24
    invoke-direct {p2, p1}, Lcom/opay/team/newhome/reward/voucher/RewardsVoucherBigBannerHold$a;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 25
    .line 26
    .line 27
    return-object p2
.end method

.method public e(ILcom/opay/team/newhome/reward/GetVoucherBanner;)I
    .locals 0
    .param p2    # Lcom/opay/team/newhome/reward/GetVoucherBanner;
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

.method public f(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/opay/team/newhome/reward/GetVoucherBanner;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/opay/team/newhome/reward/GetVoucherBanner;
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
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/reward/voucher/RewardsVoucherBigBannerHold;->g(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/opay/team/newhome/reward/GetVoucherBanner;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final g(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/opay/team/newhome/reward/GetVoucherBanner;)V
    .locals 10

    .line 1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2
    .line 3
    invoke-static {p1}, Lx0b;->bind(Landroid/view/View;)Lx0b;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "bind(...)"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p1, Lx0b;->b:Lcom/opay/team/newhome/home/ImageLottieView;

    .line 13
    .line 14
    new-instance v0, Lcom/opay/team/newhome/reward/voucher/RoundOutlineProvider;

    .line 15
    .line 16
    const/16 v1, 0xc

    .line 17
    .line 18
    invoke-static {v1}, Ljmf;->d(I)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-direct {v0, v1}, Lcom/opay/team/newhome/reward/voucher/RoundOutlineProvider;-><init>(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/GetVoucherBanner;->getBigBannerUrl()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    const-string v0, ""

    .line 39
    .line 40
    :cond_0
    move-object v2, v0

    .line 41
    sget v3, Lteam/opay/pay/R$mipmap;->bg_banner_default:I

    .line 42
    .line 43
    const/16 v8, 0x2c

    .line 44
    .line 45
    const/4 v9, 0x0

    .line 46
    const/4 v4, 0x0

    .line 47
    const/4 v5, 0x0

    .line 48
    const/4 v6, 0x1

    .line 49
    const/4 v7, 0x0

    .line 50
    move-object v1, p1

    .line 51
    invoke-static/range {v1 .. v9}, Lcom/opay/team/newhome/home/ImageLottieView;->n(Lcom/opay/team/newhome/home/ImageLottieView;Ljava/lang/String;IIZZZILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    new-instance v0, Loyc;

    .line 58
    .line 59
    invoke-direct {v0, p1, p2}, Loyc;-><init>(Lcom/opay/team/newhome/home/ImageLottieView;Lcom/opay/team/newhome/reward/GetVoucherBanner;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p1, v0}, Lee1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method
