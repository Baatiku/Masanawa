.class public final Lteam/opay/sme/store/branch/BranchBalanceAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BranchAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lteam/opay/core/common/internal/BindingViewHolder<",
        "Lsvd;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0000\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u001d\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ%\u0010\u000e\u001a\u00020\r2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u000c\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ*\u0010\u0014\u001a\r\u0012\t\u0012\u00070\u0003\u00a2\u0006\u0002\u0008\u00130\u00022\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u0008\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001c"
    }
    d2 = {
        "Lteam/opay/sme/store/branch/BranchBalanceAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lteam/opay/core/common/internal/BindingViewHolder;",
        "Lsvd;",
        "",
        "Lteam/opay/sme/store/api/BranchBalanceInfo;",
        "dataList",
        "",
        "itemMarginTop",
        "<init>",
        "(Ljava/util/List;I)V",
        "holder",
        "position",
        "",
        "k",
        "(Lteam/opay/core/common/internal/BindingViewHolder;I)V",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "Lkotlin/jvm/internal/EnhancedNullability;",
        "l",
        "(Landroid/view/ViewGroup;I)Lteam/opay/core/common/internal/BindingViewHolder;",
        "getItemCount",
        "()I",
        "a",
        "Ljava/util/List;",
        "b",
        "I",
        "business-sme-store_release"
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
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/sme/store/api/BranchBalanceInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:I


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/sme/store/api/BranchBalanceInfo;",
            ">;I)V"
        }
    .end annotation

    .line 1
    const-string v0, "dataList"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lteam/opay/sme/store/branch/BranchBalanceAdapter;->a:Ljava/util/List;

    .line 10
    .line 11
    iput p2, p0, Lteam/opay/sme/store/branch/BranchBalanceAdapter;->b:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/branch/BranchBalanceAdapter;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public k(Lteam/opay/core/common/internal/BindingViewHolder;I)V
    .locals 6
    .param p1    # Lteam/opay/core/common/internal/BindingViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/common/internal/BindingViewHolder<",
            "Lsvd;",
            ">;I)V"
        }
    .end annotation

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/sme/store/branch/BranchBalanceAdapter;->a:Ljava/util/List;

    .line 7
    .line 8
    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    check-cast p2, Lteam/opay/sme/store/api/BranchBalanceInfo;

    .line 13
    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {p1}, Lteam/opay/core/common/internal/BindingViewHolder;->a()Lxyf;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lsvd;

    .line 22
    .line 23
    iget-object v0, v0, Lsvd;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 24
    .line 25
    invoke-virtual {p2}, Lteam/opay/sme/store/api/BranchBalanceInfo;->getTitle()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, ""

    .line 30
    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    move-object v1, v2

    .line 34
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lteam/opay/core/common/internal/BindingViewHolder;->a()Lxyf;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lsvd;

    .line 42
    .line 43
    iget-object v0, v0, Lsvd;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 44
    .line 45
    invoke-virtual {p2}, Lteam/opay/sme/store/api/BranchBalanceInfo;->getAmount()Lteam/opay/core/common/amount/MoneyAmount;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    const/4 v1, 0x0

    .line 50
    if-eqz p2, :cond_2

    .line 51
    .line 52
    invoke-virtual {p2, v2}, Lteam/opay/core/common/amount/MoneyAmount;->toText(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    move-object p2, v1

    .line 58
    :goto_0
    if-nez p2, :cond_3

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    move-object v2, p2

    .line 62
    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 66
    .line 67
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    instance-of v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 75
    .line 76
    const/4 v2, 0x0

    .line 77
    if-eqz v0, :cond_4

    .line 78
    .line 79
    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 80
    .line 81
    invoke-virtual {p2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    goto :goto_2

    .line 86
    :cond_4
    const/4 p2, 0x0

    .line 87
    :goto_2
    iget v0, p0, Lteam/opay/sme/store/branch/BranchBalanceAdapter;->b:I

    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    instance-of v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 94
    .line 95
    if-eqz v4, :cond_5

    .line 96
    .line 97
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 98
    .line 99
    invoke-virtual {v3}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    goto :goto_3

    .line 104
    :cond_5
    const/4 v3, 0x0

    .line 105
    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    instance-of v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 110
    .line 111
    if-eqz v5, :cond_6

    .line 112
    .line 113
    move-object v1, v4

    .line 114
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 115
    .line 116
    :cond_6
    if-eqz v1, :cond_7

    .line 117
    .line 118
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 119
    .line 120
    :cond_7
    invoke-static {p1, p2, v0, v3, v2}, Lg0g;->g(Landroid/view/View;IIII)V

    .line 121
    .line 122
    .line 123
    return-void
.end method

.method public l(Landroid/view/ViewGroup;I)Lteam/opay/core/common/internal/BindingViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lteam/opay/core/common/internal/BindingViewHolder<",
            "Lsvd;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p2, "parent"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Lteam/opay/core/common/internal/BindingViewHolder;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-static {v0, p1, v1}, Lsvd;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lsvd;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v0, "inflate(...)"

    .line 22
    .line 23
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p2, p1}, Lteam/opay/core/common/internal/BindingViewHolder;-><init>(Lxyf;)V

    .line 27
    .line 28
    .line 29
    return-object p2
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/core/common/internal/BindingViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/branch/BranchBalanceAdapter;->k(Lteam/opay/core/common/internal/BindingViewHolder;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/branch/BranchBalanceAdapter;->l(Landroid/view/ViewGroup;I)Lteam/opay/core/common/internal/BindingViewHolder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
