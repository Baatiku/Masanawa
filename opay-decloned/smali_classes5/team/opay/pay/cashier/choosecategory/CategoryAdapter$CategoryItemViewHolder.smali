.class public final Lteam/opay/pay/cashier/choosecategory/CategoryAdapter$CategoryItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CategoryAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/cashier/choosecategory/CategoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CategoryItemViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lteam/opay/pay/cashier/choosecategory/CategoryAdapter$CategoryItemViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lrc2;",
        "binding",
        "<init>",
        "(Lteam/opay/pay/cashier/choosecategory/CategoryAdapter;Lrc2;)V",
        "Lteam/opay/pay/cashier/choosecategory/CategoryItem;",
        "item",
        "",
        "b",
        "(Lteam/opay/pay/cashier/choosecategory/CategoryItem;)V",
        "a",
        "Lrc2;",
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
.field public final a:Lrc2;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final synthetic b:Lteam/opay/pay/cashier/choosecategory/CategoryAdapter;


# direct methods
.method public constructor <init>(Lteam/opay/pay/cashier/choosecategory/CategoryAdapter;Lrc2;)V
    .locals 1
    .param p1    # Lteam/opay/pay/cashier/choosecategory/CategoryAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrc2;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/cashier/choosecategory/CategoryAdapter$CategoryItemViewHolder;->b:Lteam/opay/pay/cashier/choosecategory/CategoryAdapter;

    .line 7
    .line 8
    invoke-virtual {p2}, Lrc2;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Lteam/opay/pay/cashier/choosecategory/CategoryAdapter$CategoryItemViewHolder;->a:Lrc2;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic a(Lteam/opay/pay/cashier/choosecategory/CategoryAdapter;Lteam/opay/pay/cashier/choosecategory/CategoryItem;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/cashier/choosecategory/CategoryAdapter$CategoryItemViewHolder;->c(Lteam/opay/pay/cashier/choosecategory/CategoryAdapter;Lteam/opay/pay/cashier/choosecategory/CategoryItem;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final c(Lteam/opay/pay/cashier/choosecategory/CategoryAdapter;Lteam/opay/pay/cashier/choosecategory/CategoryItem;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/cashier/choosecategory/CategoryAdapter;->l()Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method


# virtual methods
.method public final b(Lteam/opay/pay/cashier/choosecategory/CategoryItem;)V
    .locals 4
    .param p1    # Lteam/opay/pay/cashier/choosecategory/CategoryItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/cashier/choosecategory/CategoryAdapter$CategoryItemViewHolder;->a:Lrc2;

    .line 7
    .line 8
    iget-object v0, v0, Lrc2;->d:Landroidx/appcompat/widget/AppCompatImageView;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/bumptech/glide/a;->v(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p1}, Lteam/opay/pay/cashier/choosecategory/CategoryItem;->b()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->u(Ljava/lang/String;)Ljpc;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Lcom/bumptech/glide/request/RequestOptions;

    .line 23
    .line 24
    invoke-direct {v1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance v2, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;

    .line 28
    .line 29
    const/4 v3, 0x4

    .line 30
    invoke-static {v3}, Ljmf;->d(I)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;-><init>(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->l0(Locf;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lcom/bumptech/glide/request/RequestOptions;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->c()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lcom/bumptech/glide/request/RequestOptions;

    .line 48
    .line 49
    sget v2, Lteam/opay/pay/R$drawable;->ic_opay_logo_support:I

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->Z(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Ljpc;->t0(Lcom/bumptech/glide/request/BaseRequestOptions;)Ljpc;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-object v1, p0, Lteam/opay/pay/cashier/choosecategory/CategoryAdapter$CategoryItemViewHolder;->a:Lrc2;

    .line 60
    .line 61
    iget-object v1, v1, Lrc2;->d:Landroidx/appcompat/widget/AppCompatImageView;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljpc;->F0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lteam/opay/pay/cashier/choosecategory/CategoryAdapter$CategoryItemViewHolder;->a:Lrc2;

    .line 67
    .line 68
    iget-object v0, v0, Lrc2;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 69
    .line 70
    invoke-virtual {p1}, Lteam/opay/pay/cashier/choosecategory/CategoryItem;->c()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lteam/opay/pay/cashier/choosecategory/CategoryAdapter$CategoryItemViewHolder;->a:Lrc2;

    .line 78
    .line 79
    iget-object v0, v0, Lrc2;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 80
    .line 81
    const-string v1, "choose"

    .line 82
    .line 83
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Lteam/opay/pay/cashier/choosecategory/CategoryItem;->a()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    iget-object v2, p0, Lteam/opay/pay/cashier/choosecategory/CategoryAdapter$CategoryItemViewHolder;->b:Lteam/opay/pay/cashier/choosecategory/CategoryAdapter;

    .line 91
    .line 92
    invoke-static {v2}, Lteam/opay/pay/cashier/choosecategory/CategoryAdapter;->k(Lteam/opay/pay/cashier/choosecategory/CategoryAdapter;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    invoke-static {v0, v1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lteam/opay/pay/cashier/choosecategory/CategoryAdapter$CategoryItemViewHolder;->a:Lrc2;

    .line 104
    .line 105
    invoke-virtual {v0}, Lrc2;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iget-object v1, p0, Lteam/opay/pay/cashier/choosecategory/CategoryAdapter$CategoryItemViewHolder;->b:Lteam/opay/pay/cashier/choosecategory/CategoryAdapter;

    .line 110
    .line 111
    new-instance v2, Lf62;

    .line 112
    .line 113
    invoke-direct {v2, v1, p1}, Lf62;-><init>(Lteam/opay/pay/cashier/choosecategory/CategoryAdapter;Lteam/opay/pay/cashier/choosecategory/CategoryItem;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    .line 118
    .line 119
    return-void
.end method
