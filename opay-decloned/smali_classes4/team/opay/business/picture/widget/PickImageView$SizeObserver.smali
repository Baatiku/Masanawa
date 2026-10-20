.class final Lteam/opay/business/picture/widget/PickImageView$SizeObserver;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "PickImageView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/business/picture/widget/PickImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SizeObserver"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "Lteam/opay/business/picture/widget/PickImageView$SizeObserver;",
        "Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;",
        "<init>",
        "(Lteam/opay/business/picture/widget/PickImageView;)V",
        "onChanged",
        "",
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
.field public final synthetic a:Lteam/opay/business/picture/widget/PickImageView;


# direct methods
.method public constructor <init>(Lteam/opay/business/picture/widget/PickImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/picture/widget/PickImageView$SizeObserver;->a:Lteam/opay/business/picture/widget/PickImageView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lteam/opay/business/picture/widget/PickImageView$SizeObserver;->a:Lteam/opay/business/picture/widget/PickImageView;

    .line 5
    .line 6
    invoke-static {v0}, Lteam/opay/business/picture/widget/PickImageView;->w(Lteam/opay/business/picture/widget/PickImageView;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lteam/opay/business/picture/widget/PickImageView$SizeObserver;->a:Lteam/opay/business/picture/widget/PickImageView;

    .line 13
    .line 14
    invoke-static {v0}, Lteam/opay/business/picture/widget/PickImageView;->u(Lteam/opay/business/picture/widget/PickImageView;)Lteam/opay/business/picture/adapter/ImageAdapter;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lteam/opay/business/picture/adapter/ImageAdapter;->getItemCount()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v1, p0, Lteam/opay/business/picture/widget/PickImageView$SizeObserver;->a:Lteam/opay/business/picture/widget/PickImageView;

    .line 23
    .line 24
    invoke-virtual {v1}, Lteam/opay/business/picture/widget/PickImageView;->getMaxnum()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-lt v0, v1, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lteam/opay/business/picture/widget/PickImageView$SizeObserver;->a:Lteam/opay/business/picture/widget/PickImageView;

    .line 31
    .line 32
    invoke-static {v0}, Lteam/opay/business/picture/widget/PickImageView;->v(Lteam/opay/business/picture/widget/PickImageView;)Landroidx/recyclerview/widget/ConcatAdapter;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v1, p0, Lteam/opay/business/picture/widget/PickImageView$SizeObserver;->a:Lteam/opay/business/picture/widget/PickImageView;

    .line 37
    .line 38
    invoke-static {v1}, Lteam/opay/business/picture/widget/PickImageView;->t(Lteam/opay/business/picture/widget/PickImageView;)Lteam/opay/business/picture/adapter/AddAdapter;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/ConcatAdapter;->n(Landroidx/recyclerview/widget/RecyclerView$Adapter;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Lteam/opay/business/picture/widget/PickImageView$SizeObserver;->a:Lteam/opay/business/picture/widget/PickImageView;

    .line 47
    .line 48
    invoke-static {v0}, Lteam/opay/business/picture/widget/PickImageView;->v(Lteam/opay/business/picture/widget/PickImageView;)Landroidx/recyclerview/widget/ConcatAdapter;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v1, p0, Lteam/opay/business/picture/widget/PickImageView$SizeObserver;->a:Lteam/opay/business/picture/widget/PickImageView;

    .line 53
    .line 54
    invoke-static {v1}, Lteam/opay/business/picture/widget/PickImageView;->t(Lteam/opay/business/picture/widget/PickImageView;)Lteam/opay/business/picture/adapter/AddAdapter;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const/4 v2, 0x1

    .line 59
    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/ConcatAdapter;->k(ILandroidx/recyclerview/widget/RecyclerView$Adapter;)Z

    .line 60
    .line 61
    .line 62
    :cond_1
    :goto_0
    return-void
.end method
