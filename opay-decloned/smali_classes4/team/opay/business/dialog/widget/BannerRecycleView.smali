.class public final Lteam/opay/business/dialog/widget/BannerRecycleView;
.super Lteam/opay/business/widget/looper/BaseRecycleView;
.source "BannerRecycleView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/business/dialog/widget/BannerRecycleView$ViewPagerAdapter;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\t\u0008\u0000\u0018\u00002\u00020\u0001:\u0001#B\u001d\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007JG\u0010\u0011\u001a\u00020\u000f2\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00082\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u001c\u0008\u0002\u0010\u0010\u001a\u0016\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u000f\u0018\u00010\r\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\"\u0010\u001a\u001a\u00020\u00138\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\"\u0010\"\u001a\u00020\u001b8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!\u00a8\u0006$"
    }
    d2 = {
        "Lteam/opay/business/dialog/widget/BannerRecycleView;",
        "Lteam/opay/business/widget/looper/BaseRecycleView;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "Lteam/opay/business/dialog/api/DialogEntity;",
        "list",
        "Lteam/opay/business/widget/looper/ViewPagerIndicator;",
        "indicator",
        "Lkotlin/Function2;",
        "",
        "",
        "itemClick",
        "q",
        "(Ljava/util/List;Lteam/opay/business/widget/looper/ViewPagerIndicator;Lkotlin/jvm/functions/Function2;)V",
        "",
        "j",
        "Z",
        "getDisableLoop",
        "()Z",
        "setDisableLoop",
        "(Z)V",
        "disableLoop",
        "",
        "k",
        "J",
        "getDELAYED_TIME",
        "()J",
        "setDELAYED_TIME",
        "(J)V",
        "DELAYED_TIME",
        "ViewPagerAdapter",
        "business-dialog_release"
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
.field public j:Z

.field public k:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lteam/opay/business/dialog/widget/BannerRecycleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2}, Lteam/opay/business/widget/looper/BaseRecycleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 p1, 0xbb8

    .line 4
    iput-wide p1, p0, Lteam/opay/business/dialog/widget/BannerRecycleView;->k:J

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lteam/opay/business/dialog/widget/BannerRecycleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic r(Lteam/opay/business/dialog/widget/BannerRecycleView;Ljava/util/List;Lteam/opay/business/widget/looper/ViewPagerIndicator;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 1

    .line 1
    and-int/lit8 p5, p4, 0x2

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p5, :cond_0

    .line 5
    .line 6
    move-object p2, v0

    .line 7
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    move-object p3, v0

    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/business/dialog/widget/BannerRecycleView;->q(Ljava/util/List;Lteam/opay/business/widget/looper/ViewPagerIndicator;Lkotlin/jvm/functions/Function2;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public getDELAYED_TIME()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lteam/opay/business/dialog/widget/BannerRecycleView;->k:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getDisableLoop()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/business/dialog/widget/BannerRecycleView;->j:Z

    .line 2
    .line 3
    return v0
.end method

.method public final q(Ljava/util/List;Lteam/opay/business/widget/looper/ViewPagerIndicator;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lteam/opay/business/widget/looper/ViewPagerIndicator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/business/dialog/api/DialogEntity;",
            ">;",
            "Lteam/opay/business/widget/looper/ViewPagerIndicator;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lteam/opay/business/dialog/api/DialogEntity;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    new-instance v0, Lteam/opay/business/dialog/widget/BannerRecycleView$ViewPagerAdapter;

    .line 11
    .line 12
    invoke-direct {v0, p0, p1}, Lteam/opay/business/dialog/widget/BannerRecycleView$ViewPagerAdapter;-><init>(Lteam/opay/business/dialog/widget/BannerRecycleView;Ljava/util/List;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p3}, Lteam/opay/business/dialog/widget/BannerRecycleView$ViewPagerAdapter;->o(Lkotlin/jvm/functions/Function2;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 19
    .line 20
    .line 21
    if-eqz p2, :cond_2

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    const/4 v0, 0x1

    .line 28
    if-le p3, v0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    :goto_0
    invoke-static {p2, v0}, Lg0g;->j(Landroid/view/View;Z)V

    .line 33
    .line 34
    .line 35
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-virtual {p0, p2, p1}, Lteam/opay/business/widget/looper/BaseRecycleView;->p(Lteam/opay/business/widget/looper/ViewPagerIndicator;I)V

    .line 40
    .line 41
    .line 42
    new-instance p1, Lteam/opay/business/widget/looper/ScalePageTransformer;

    .line 43
    .line 44
    invoke-direct {p1}, Lteam/opay/business/widget/looper/ScalePageTransformer;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1}, Lteam/opay/business/widget/looper/BaseRecycleView;->setPageTransformer(Lfa7;)V

    .line 48
    .line 49
    .line 50
    :cond_3
    :goto_1
    return-void
.end method

.method public setDELAYED_TIME(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lteam/opay/business/dialog/widget/BannerRecycleView;->k:J

    .line 2
    .line 3
    return-void
.end method

.method public setDisableLoop(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/business/dialog/widget/BannerRecycleView;->j:Z

    .line 2
    .line 3
    return-void
.end method
