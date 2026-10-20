.class public final Lteam/opay/business/picture/adapter/AddAdapter$AddVH;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AddAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/business/picture/adapter/AddAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AddVH"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\r\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\u000c\u001a\n \n*\u0004\u0018\u00010\t0\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lteam/opay/business/picture/adapter/AddAdapter$AddVH;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Landroid/view/View;",
        "view",
        "<init>",
        "(Lteam/opay/business/picture/adapter/AddAdapter;Landroid/view/View;)V",
        "",
        "a",
        "()V",
        "Landroid/widget/ImageView;",
        "kotlin.jvm.PlatformType",
        "Landroid/widget/ImageView;",
        "imageView",
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

.field public final synthetic b:Lteam/opay/business/picture/adapter/AddAdapter;


# direct methods
.method public constructor <init>(Lteam/opay/business/picture/adapter/AddAdapter;Landroid/view/View;)V
    .locals 1
    .param p1    # Lteam/opay/business/picture/adapter/AddAdapter;
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
    iput-object p1, p0, Lteam/opay/business/picture/adapter/AddAdapter$AddVH;->b:Lteam/opay/business/picture/adapter/AddAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    sget p1, Lteam/opay/business/picture/R$id;->picture_sample_imageview:I

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
    iput-object p1, p0, Lteam/opay/business/picture/adapter/AddAdapter$AddVH;->a:Landroid/widget/ImageView;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/business/picture/adapter/AddAdapter$AddVH;->b:Lteam/opay/business/picture/adapter/AddAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/business/picture/adapter/AddAdapter;->l(Lteam/opay/business/picture/adapter/AddAdapter;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/bumptech/glide/a;->u(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lteam/opay/business/picture/adapter/AddAdapter$AddVH;->b:Lteam/opay/business/picture/adapter/AddAdapter;

    .line 20
    .line 21
    invoke-static {v1}, Lteam/opay/business/picture/adapter/AddAdapter;->l(Lteam/opay/business/picture/adapter/AddAdapter;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->t(Ljava/lang/Object;)Ljpc;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v1, Lcom/bumptech/glide/request/RequestOptions;

    .line 30
    .line 31
    invoke-direct {v1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 32
    .line 33
    .line 34
    sget v2, Lteam/opay/business/picture/R$drawable;->picture_shape_f4f7fa_4:I

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->Z(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Ljpc;->t0(Lcom/bumptech/glide/request/BaseRequestOptions;)Ljpc;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->e:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->k(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Ljpc;

    .line 51
    .line 52
    iget-object v1, p0, Lteam/opay/business/picture/adapter/AddAdapter$AddVH;->a:Landroid/widget/ImageView;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljpc;->F0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 55
    .line 56
    .line 57
    :cond_0
    return-void
.end method
