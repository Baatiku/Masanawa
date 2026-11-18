.class public final Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder;
.super Ljava/lang/Object;
.source "NewHomeBannerViewHolder.kt"

# interfaces
.implements Ltzf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$LargeImageBannerViewHolder;,
        Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$NormalBannerViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ltzf<",
        "Lcom/opay/team/newhome/bean/HomeAdData;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0002$%B\u0019\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001f\u0010\u000b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001f\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\'\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019R\u0019\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u001c\u0010#\u001a\n !*\u0004\u0018\u00010 0 8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\"\u00a8\u0006&"
    }
    d2 = {
        "Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder;",
        "Ltzf;",
        "Lcom/opay/team/newhome/bean/HomeAdData;",
        "Landroid/content/Context;",
        "context",
        "",
        "adType",
        "<init>",
        "(Landroid/content/Context;I)V",
        "position",
        "data",
        "e",
        "(ILcom/opay/team/newhome/bean/HomeAdData;)I",
        "Landroid/view/ViewGroup;",
        "container",
        "viewType",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "c",
        "(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "holder",
        "",
        "g",
        "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/opay/team/newhome/bean/HomeAdData;I)V",
        "",
        "f",
        "()Z",
        "a",
        "Landroid/content/Context;",
        "d",
        "()Landroid/content/Context;",
        "b",
        "I",
        "Landroid/view/LayoutInflater;",
        "kotlin.jvm.PlatformType",
        "Landroid/view/LayoutInflater;",
        "layoutInflater",
        "LargeImageBannerViewHolder",
        "NormalBannerViewHolder",
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

.field public final b:I

.field public final c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
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
    iput-object p1, p0, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput p2, p0, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder;->b:I

    .line 7
    .line 8
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder;->c:Landroid/view/LayoutInflater;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/opay/team/newhome/bean/HomeAdData;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder;->g(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/opay/team/newhome/bean/HomeAdData;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic b(ILjava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p2, Lcom/opay/team/newhome/bean/HomeAdData;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder;->e(ILcom/opay/team/newhome/bean/HomeAdData;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public c(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "container"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "inflate(...)"

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    new-instance p2, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$LargeImageBannerViewHolder;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder;->c:Landroid/view/LayoutInflater;

    .line 14
    .line 15
    invoke-static {v2, p1, v1}, Lcj2;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcj2;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p2, p0, p1}, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$LargeImageBannerViewHolder;-><init>(Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder;Lcj2;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance p2, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$NormalBannerViewHolder;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder;->c:Landroid/view/LayoutInflater;

    .line 29
    .line 30
    invoke-static {v2, p1, v1}, Lcka;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcka;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p2, p0, p1}, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$NormalBannerViewHolder;-><init>(Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder;Lcka;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    return-object p2
.end method

.method public final d()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public e(ILcom/opay/team/newhome/bean/HomeAdData;)I
    .locals 0
    .param p2    # Lcom/opay/team/newhome/bean/HomeAdData;
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
    invoke-virtual {p0}, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder;->f()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p2}, Lcom/opay/team/newhome/bean/HomeAdData;->a()Lcom/opay/team/newhome/bean/NewBusinessData;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/opay/team/newhome/bean/NewBusinessData;->getBannerType()Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p1, -0x3

    .line 30
    :goto_0
    return p1
.end method

.method public final f()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder;->b:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
.end method

.method public g(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/opay/team/newhome/bean/HomeAdData;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/opay/team/newhome/bean/HomeAdData;
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
    iget-object p3, p0, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder;->a:Landroid/content/Context;

    .line 12
    .line 13
    if-nez p3, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder;->f()Z

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    if-eqz p3, :cond_1

    .line 21
    .line 22
    check-cast p1, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$LargeImageBannerViewHolder;

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$LargeImageBannerViewHolder;->c(Lcom/opay/team/newhome/bean/HomeAdData;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    check-cast p1, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$NormalBannerViewHolder;

    .line 29
    .line 30
    invoke-virtual {p2}, Lcom/opay/team/newhome/bean/HomeAdData;->a()Lcom/opay/team/newhome/bean/NewBusinessData;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p1, p2}, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$NormalBannerViewHolder;->c(Lcom/opay/team/newhome/bean/NewBusinessData;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method
