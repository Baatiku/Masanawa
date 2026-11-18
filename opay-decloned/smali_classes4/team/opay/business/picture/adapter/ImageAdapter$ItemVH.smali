.class public final Lteam/opay/business/picture/adapter/ImageAdapter$ItemVH;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ImageAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/business/picture/adapter/ImageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ItemVH"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001d\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\u0011\u001a\n \u000e*\u0004\u0018\u00010\r0\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0012\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u0010R\u0016\u0010\u0016\u001a\u0004\u0018\u00010\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0017"
    }
    d2 = {
        "Lteam/opay/business/picture/adapter/ImageAdapter$ItemVH;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Landroid/view/View;",
        "view",
        "<init>",
        "(Lteam/opay/business/picture/adapter/ImageAdapter;Landroid/view/View;)V",
        "",
        "model",
        "",
        "position",
        "",
        "b",
        "(Ljava/lang/Object;I)V",
        "Landroid/widget/ImageView;",
        "kotlin.jvm.PlatformType",
        "a",
        "Landroid/widget/ImageView;",
        "imageView",
        "delete",
        "Lteam/opay/core/widget/LoaderView;",
        "c",
        "Lteam/opay/core/widget/LoaderView;",
        "loadingView",
        "business-picture_release"
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
.field public final a:Landroid/widget/ImageView;

.field public final b:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lteam/opay/core/widget/LoaderView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final synthetic d:Lteam/opay/business/picture/adapter/ImageAdapter;


# direct methods
.method public constructor <init>(Lteam/opay/business/picture/adapter/ImageAdapter;Landroid/view/View;)V
    .locals 1
    .param p1    # Lteam/opay/business/picture/adapter/ImageAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/business/picture/adapter/ImageAdapter$ItemVH;->d:Lteam/opay/business/picture/adapter/ImageAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    sget p1, Lteam/opay/business/picture/R$id;->picture_imageview:I

    .line 12
    .line 13
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroid/widget/ImageView;

    .line 18
    .line 19
    iput-object p1, p0, Lteam/opay/business/picture/adapter/ImageAdapter$ItemVH;->a:Landroid/widget/ImageView;

    .line 20
    .line 21
    sget p1, Lteam/opay/business/picture/R$id;->picture_delete:I

    .line 22
    .line 23
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v0, "findViewById(...)"

    .line 28
    .line 29
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    check-cast p1, Landroid/widget/ImageView;

    .line 33
    .line 34
    iput-object p1, p0, Lteam/opay/business/picture/adapter/ImageAdapter$ItemVH;->b:Landroid/widget/ImageView;

    .line 35
    .line 36
    sget p1, Lteam/opay/business/picture/R$id;->picture_loading_view:I

    .line 37
    .line 38
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Lteam/opay/core/widget/LoaderView;

    .line 43
    .line 44
    iput-object p1, p0, Lteam/opay/business/picture/adapter/ImageAdapter$ItemVH;->c:Lteam/opay/core/widget/LoaderView;

    .line 45
    .line 46
    return-void
.end method

.method public static synthetic a(Lteam/opay/business/picture/adapter/ImageAdapter;Ljava/lang/Object;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/business/picture/adapter/ImageAdapter$ItemVH;->c(Lteam/opay/business/picture/adapter/ImageAdapter;Ljava/lang/Object;ILandroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final c(Lteam/opay/business/picture/adapter/ImageAdapter;Ljava/lang/Object;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/picture/adapter/ImageAdapter;->n()Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;I)V
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "model"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/bumptech/glide/a;->u(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->t(Ljava/lang/Object;)Ljpc;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Lcom/bumptech/glide/request/RequestOptions;

    .line 21
    .line 22
    invoke-direct {v1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v2, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    .line 26
    .line 27
    invoke-direct {v2}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>()V

    .line 28
    .line 29
    .line 30
    new-instance v3, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;

    .line 31
    .line 32
    iget-object v4, p0, Lteam/opay/business/picture/adapter/ImageAdapter$ItemVH;->d:Lteam/opay/business/picture/adapter/ImageAdapter;

    .line 33
    .line 34
    invoke-static {v4}, Lteam/opay/business/picture/adapter/ImageAdapter;->l(Lteam/opay/business/picture/adapter/ImageAdapter;)I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    invoke-direct {v3, v4}, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;-><init>(I)V

    .line 39
    .line 40
    .line 41
    const/4 v4, 0x2

    .line 42
    new-array v4, v4, [Locf;

    .line 43
    .line 44
    const/4 v5, 0x0

    .line 45
    aput-object v2, v4, v5

    .line 46
    .line 47
    const/4 v2, 0x1

    .line 48
    aput-object v3, v4, v2

    .line 49
    .line 50
    invoke-virtual {v1, v4}, Lcom/bumptech/glide/request/BaseRequestOptions;->q0([Locf;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Ljpc;->t0(Lcom/bumptech/glide/request/BaseRequestOptions;)Ljpc;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-object v1, p0, Lteam/opay/business/picture/adapter/ImageAdapter$ItemVH;->a:Landroid/widget/ImageView;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljpc;->F0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lteam/opay/business/picture/adapter/ImageAdapter$ItemVH;->b:Landroid/widget/ImageView;

    .line 64
    .line 65
    iget-object v1, p0, Lteam/opay/business/picture/adapter/ImageAdapter$ItemVH;->d:Lteam/opay/business/picture/adapter/ImageAdapter;

    .line 66
    .line 67
    invoke-virtual {v1}, Lteam/opay/business/picture/adapter/ImageAdapter;->m()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    invoke-static {v0, v1}, Lg0g;->j(Landroid/view/View;Z)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lteam/opay/business/picture/adapter/ImageAdapter$ItemVH;->b:Landroid/widget/ImageView;

    .line 75
    .line 76
    iget-object v1, p0, Lteam/opay/business/picture/adapter/ImageAdapter$ItemVH;->d:Lteam/opay/business/picture/adapter/ImageAdapter;

    .line 77
    .line 78
    new-instance v2, Lyb7;

    .line 79
    .line 80
    invoke-direct {v2, v1, p1, p2}, Lyb7;-><init>(Lteam/opay/business/picture/adapter/ImageAdapter;Ljava/lang/Object;I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lteam/opay/business/picture/adapter/ImageAdapter$ItemVH;->c:Lteam/opay/core/widget/LoaderView;

    .line 87
    .line 88
    if-eqz p1, :cond_1

    .line 89
    .line 90
    iget-object v0, p0, Lteam/opay/business/picture/adapter/ImageAdapter$ItemVH;->d:Lteam/opay/business/picture/adapter/ImageAdapter;

    .line 91
    .line 92
    invoke-virtual {v0}, Lteam/opay/business/picture/adapter/ImageAdapter;->o()Lteam/opay/business/picture/adapter/SourceData;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    if-eqz v0, :cond_0

    .line 97
    .line 98
    invoke-virtual {v0, p2}, Lteam/opay/business/picture/adapter/SourceData;->f(I)Z

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    goto :goto_0

    .line 107
    :cond_0
    const/4 p2, 0x0

    .line 108
    :goto_0
    invoke-static {p1, p2}, Lg0g;->i(Landroid/view/View;Ljava/lang/Boolean;)V

    .line 109
    .line 110
    .line 111
    :cond_1
    return-void
.end method
