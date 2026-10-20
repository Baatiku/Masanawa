.class public final Lteam/opay/core/card/CardGuideHolder;
.super Ljava/lang/Object;
.source "CardGuideHolder.kt"

# interfaces
.implements Ltzf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ltzf<",
        "Lteam/opay/core/card/GuideDto;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\'\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001f\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001f\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u0017\u0010\u0004\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001aR\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001f"
    }
    d2 = {
        "Lteam/opay/core/card/CardGuideHolder;",
        "Ltzf;",
        "Lteam/opay/core/card/GuideDto;",
        "Landroid/content/Context;",
        "ctx",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "holder",
        "data",
        "",
        "position",
        "",
        "g",
        "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lteam/opay/core/card/GuideDto;I)V",
        "Landroid/view/ViewGroup;",
        "container",
        "viewType",
        "c",
        "(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "context",
        "h",
        "(Landroid/content/Context;Lteam/opay/core/card/GuideDto;)V",
        "a",
        "Landroid/content/Context;",
        "getCtx",
        "()Landroid/content/Context;",
        "Lxwa;",
        "b",
        "Lxwa;",
        "binding",
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

.field public b:Lxwa;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "ctx"

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
    iput-object p1, p0, Lteam/opay/core/card/CardGuideHolder;->a:Landroid/content/Context;

    .line 10
    .line 11
    return-void
.end method

.method public static final synthetic d(Lteam/opay/core/card/CardGuideHolder;)Lxwa;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/core/card/CardGuideHolder;->b:Lxwa;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic e(Lteam/opay/core/card/CardGuideHolder;Landroid/content/Context;Lteam/opay/core/card/GuideDto;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/card/CardGuideHolder;->h(Landroid/content/Context;Lteam/opay/core/card/GuideDto;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p2, Lteam/opay/core/card/GuideDto;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/core/card/CardGuideHolder;->g(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lteam/opay/core/card/GuideDto;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic b(ILjava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p2, Lteam/opay/core/card/GuideDto;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/card/CardGuideHolder;->f(ILteam/opay/core/card/GuideDto;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public c(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
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
    iget-object p1, p0, Lteam/opay/core/card/CardGuideHolder;->a:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Lxwa;->inflate(Landroid/view/LayoutInflater;)Lxwa;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string p2, "inflate(...)"

    .line 17
    .line 18
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lteam/opay/core/card/CardGuideHolder;->b:Lxwa;

    .line 22
    .line 23
    invoke-virtual {p1}, Lxwa;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    new-instance p2, Lteam/opay/core/card/CardGuideHolder$b;

    .line 28
    .line 29
    invoke-direct {p2, p1}, Lteam/opay/core/card/CardGuideHolder$b;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 30
    .line 31
    .line 32
    return-object p2
.end method

.method public f(ILteam/opay/core/card/GuideDto;)I
    .locals 0
    .param p2    # Lteam/opay/core/card/GuideDto;
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

.method public g(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lteam/opay/core/card/GuideDto;I)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/card/GuideDto;
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
    invoke-virtual {p2}, Lteam/opay/core/card/GuideDto;->getAdpScale()D

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Lteam/opay/core/card/GuideDto;->getAdpScale()D

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    const-wide/16 v2, 0x0

    .line 26
    .line 27
    cmpl-double p3, v0, v2

    .line 28
    .line 29
    if-lez p3, :cond_1

    .line 30
    .line 31
    iget-object p3, p0, Lteam/opay/core/card/CardGuideHolder;->b:Lxwa;

    .line 32
    .line 33
    if-eqz p3, :cond_0

    .line 34
    .line 35
    iget-object p3, p3, Lxwa;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 36
    .line 37
    if-eqz p3, :cond_0

    .line 38
    .line 39
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 p3, 0x0

    .line 45
    :goto_0
    const-string v0, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    .line 46
    .line 47
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    check-cast p3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 51
    .line 52
    invoke-virtual {p2}, Lteam/opay/core/card/GuideDto;->getAdpScale()D

    .line 53
    .line 54
    .line 55
    move-result-wide v0

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v0, ":1"

    .line 65
    .line 66
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iput-object v0, p3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->H:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    const-string p3, "getContext(...)"

    .line 80
    .line 81
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/card/CardGuideHolder;->h(Landroid/content/Context;Lteam/opay/core/card/GuideDto;)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    invoke-static {p3}, Lcom/bumptech/glide/a;->u(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 93
    .line 94
    .line 95
    move-result-object p3

    .line 96
    invoke-virtual {p3}, Lcom/bumptech/glide/RequestManager;->c()Ljpc;

    .line 97
    .line 98
    .line 99
    move-result-object p3

    .line 100
    invoke-virtual {p2}, Lteam/opay/core/card/GuideDto;->getImageUrl()Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {p3, v0}, Ljpc;->K0(Ljava/lang/Integer;)Ljpc;

    .line 105
    .line 106
    .line 107
    move-result-object p3

    .line 108
    new-instance v0, Lteam/opay/core/card/CardGuideHolder$a;

    .line 109
    .line 110
    invoke-direct {v0, p0, p1, p2}, Lteam/opay/core/card/CardGuideHolder$a;-><init>(Lteam/opay/core/card/CardGuideHolder;Landroid/view/View;Lteam/opay/core/card/GuideDto;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p3, v0}, Ljpc;->C0(Llfe;)Llfe;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    :goto_1
    return-void
.end method

.method public final h(Landroid/content/Context;Lteam/opay/core/card/GuideDto;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/CardGuideHolder;->b:Lxwa;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, v0, Lxwa;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-static {p1}, Lcom/bumptech/glide/a;->u(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p2}, Lteam/opay/core/card/GuideDto;->getImageUrl()Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    const-string p2, ""

    .line 20
    .line 21
    :cond_0
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestManager;->t(Ljava/lang/Object;)Ljpc;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    sget p2, Lteam/opay/pay/R$mipmap;->bg_banner_default:I

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->n(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Ljpc;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ljpc;->F0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method
