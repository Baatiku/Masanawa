.class public final Lteam/opay/business/transfer/flow/widget/FlowDetailBodyListView$BodyListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FlowDetailView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/business/transfer/flow/widget/FlowDetailBodyListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BodyListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lteam/opay/core/common/internal/BindingViewHolder<",
        "Ll86;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0008\u0086\u0004\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B)\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ*\u0010\u0011\u001a\r\u0012\t\u0012\u00070\u0003\u00a2\u0006\u0002\u0008\u00100\u00022\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J%\u0010\u0015\u001a\u00020\u00082\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0014\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0017\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR \u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00080\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001f\u00a8\u0006 "
    }
    d2 = {
        "Lteam/opay/business/transfer/flow/widget/FlowDetailBodyListView$BodyListAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lteam/opay/core/common/internal/BindingViewHolder;",
        "Ll86;",
        "",
        "Lteam/opay/business/transfer/flow/api/TransactionEntity;",
        "dataList",
        "Lkotlin/Function1;",
        "",
        "onItemClick",
        "<init>",
        "(Lteam/opay/business/transfer/flow/widget/FlowDetailBodyListView;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "Lkotlin/jvm/internal/EnhancedNullability;",
        "s",
        "(Landroid/view/ViewGroup;I)Lteam/opay/core/common/internal/BindingViewHolder;",
        "holder",
        "position",
        "o",
        "(Lteam/opay/core/common/internal/BindingViewHolder;I)V",
        "getItemCount",
        "()I",
        "binding",
        "t",
        "(Ll86;)V",
        "a",
        "Ljava/util/List;",
        "b",
        "Lkotlin/jvm/functions/Function1;",
        "business-transfer-flow_release"
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
            "Lteam/opay/business/transfer/flow/api/TransactionEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lteam/opay/business/transfer/flow/api/TransactionEntity;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final synthetic c:Lteam/opay/business/transfer/flow/widget/FlowDetailBodyListView;


# direct methods
.method public constructor <init>(Lteam/opay/business/transfer/flow/widget/FlowDetailBodyListView;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lteam/opay/business/transfer/flow/widget/FlowDetailBodyListView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/business/transfer/flow/api/TransactionEntity;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/business/transfer/flow/api/TransactionEntity;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "dataList"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "onItemClick"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyListView$BodyListAdapter;->c:Lteam/opay/business/transfer/flow/widget/FlowDetailBodyListView;

    .line 12
    .line 13
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyListView$BodyListAdapter;->a:Ljava/util/List;

    .line 17
    .line 18
    iput-object p3, p0, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyListView$BodyListAdapter;->b:Lkotlin/jvm/functions/Function1;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic k(Lteam/opay/business/transfer/flow/api/TransactionEntity;Lteam/opay/business/transfer/flow/widget/FlowDetailBodyListView;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyListView$BodyListAdapter;->r(Lteam/opay/business/transfer/flow/api/TransactionEntity;Lteam/opay/business/transfer/flow/widget/FlowDetailBodyListView;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l(Ll86;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyListView$BodyListAdapter;->u(Ll86;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic m(Ll86;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyListView$BodyListAdapter;->p(Ll86;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic n(Lteam/opay/business/transfer/flow/widget/FlowDetailBodyListView$BodyListAdapter;Lteam/opay/business/transfer/flow/api/TransactionEntity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyListView$BodyListAdapter;->q(Lteam/opay/business/transfer/flow/widget/FlowDetailBodyListView$BodyListAdapter;Lteam/opay/business/transfer/flow/api/TransactionEntity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final p(Ll86;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Ll86;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method public static final q(Lteam/opay/business/transfer/flow/widget/FlowDetailBodyListView$BodyListAdapter;Lteam/opay/business/transfer/flow/api/TransactionEntity;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyListView$BodyListAdapter;->b:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method public static final r(Lteam/opay/business/transfer/flow/api/TransactionEntity;Lteam/opay/business/transfer/flow/widget/FlowDetailBodyListView;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/api/TransactionEntity;->getValue()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const-string p0, ""

    .line 8
    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "getContext(...)"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0, p0, p0}, Let;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sget p1, Lteam/opay/business/transfer/flow/R$string;->flow_copy_success:I

    .line 29
    .line 30
    invoke-static {p0, p1}, Let;->u(Landroid/content/Context;I)V

    .line 31
    .line 32
    .line 33
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 34
    .line 35
    return-object p0
.end method

.method public static final u(Ll86;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2

    .line 1
    iget-object v0, p0, Ll86;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isActivated()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    xor-int/lit8 v1, v1, 0x1

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Ll86;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 13
    .line 14
    iget-object p0, p0, Ll86;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->isActivated()Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    const-string p1, ""

    .line 25
    .line 26
    :cond_0
    move-object p2, p1

    .line 27
    :cond_1
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 31
    .line 32
    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyListView$BodyListAdapter;->a:Ljava/util/List;

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

.method public o(Lteam/opay/core/common/internal/BindingViewHolder;I)V
    .locals 6
    .param p1    # Lteam/opay/core/common/internal/BindingViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/common/internal/BindingViewHolder<",
            "Ll86;",
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
    iget-object v0, p0, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyListView$BodyListAdapter;->a:Ljava/util/List;

    .line 7
    .line 8
    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    check-cast p2, Lteam/opay/business/transfer/flow/api/TransactionEntity;

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
    move-result-object p1

    .line 21
    iget-object v0, p0, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyListView$BodyListAdapter;->c:Lteam/opay/business/transfer/flow/widget/FlowDetailBodyListView;

    .line 22
    .line 23
    check-cast p1, Ll86;

    .line 24
    .line 25
    iget-object v1, p1, Ll86;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 26
    .line 27
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/api/TransactionEntity;->getValue()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    const-string v2, ""

    .line 34
    .line 35
    :cond_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/api/TransactionEntity;->getColor()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    invoke-static {v1}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    :cond_2
    if-eqz v1, :cond_3

    .line 52
    .line 53
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    iget-object v2, p1, Ll86;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 58
    .line 59
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    .line 61
    .line 62
    iget-object v2, p1, Ll86;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 63
    .line 64
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 69
    .line 70
    .line 71
    :cond_3
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/api/TransactionEntity;->getLink()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    const/4 v2, 0x0

    .line 76
    const/4 v3, 0x1

    .line 77
    if-eqz v1, :cond_4

    .line 78
    .line 79
    invoke-static {v1}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_5

    .line 84
    .line 85
    :cond_4
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/api/TransactionEntity;->getCode()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    const-string v4, "combinationReversedFlow"

    .line 90
    .line 91
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_6

    .line 96
    .line 97
    :cond_5
    const/4 v1, 0x1

    .line 98
    goto :goto_0

    .line 99
    :cond_6
    const/4 v1, 0x0

    .line 100
    :goto_0
    iget-object v4, p1, Ll86;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 101
    .line 102
    invoke-virtual {v4, v1}, Landroid/view/View;->setActivated(Z)V

    .line 103
    .line 104
    .line 105
    iget-object v4, p1, Ll86;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 106
    .line 107
    const-string v5, "itemArrowRight"

    .line 108
    .line 109
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-static {v4, v1}, Lg0g;->j(Landroid/view/View;Z)V

    .line 113
    .line 114
    .line 115
    iget-object v1, p1, Ll86;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 116
    .line 117
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    new-instance v4, Lc66;

    .line 121
    .line 122
    invoke-direct {v4, p1}, Lc66;-><init>(Ll86;)V

    .line 123
    .line 124
    .line 125
    invoke-static {v1, v4}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 126
    .line 127
    .line 128
    iget-object v1, p1, Ll86;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 129
    .line 130
    const-string v4, "itemValue"

    .line 131
    .line 132
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    new-instance v4, Ld66;

    .line 136
    .line 137
    invoke-direct {v4, p0, p2}, Ld66;-><init>(Lteam/opay/business/transfer/flow/widget/FlowDetailBodyListView$BodyListAdapter;Lteam/opay/business/transfer/flow/api/TransactionEntity;)V

    .line 138
    .line 139
    .line 140
    invoke-static {v1, v4}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/api/TransactionEntity;->getCopyFlag()Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    if-nez v1, :cond_7

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-ne v1, v3, :cond_8

    .line 155
    .line 156
    const/4 v1, 0x1

    .line 157
    goto :goto_2

    .line 158
    :cond_8
    :goto_1
    const/4 v1, 0x0

    .line 159
    :goto_2
    iget-object v4, p1, Ll86;->e:Landroidx/appcompat/widget/AppCompatImageView;

    .line 160
    .line 161
    const-string v5, "ivCopy"

    .line 162
    .line 163
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-static {v4, v1}, Lg0g;->j(Landroid/view/View;Z)V

    .line 167
    .line 168
    .line 169
    iget-object v1, p1, Ll86;->e:Landroidx/appcompat/widget/AppCompatImageView;

    .line 170
    .line 171
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    new-instance v4, Le66;

    .line 175
    .line 176
    invoke-direct {v4, p2, v0}, Le66;-><init>(Lteam/opay/business/transfer/flow/api/TransactionEntity;Lteam/opay/business/transfer/flow/widget/FlowDetailBodyListView;)V

    .line 177
    .line 178
    .line 179
    invoke-static {v1, v4}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/api/TransactionEntity;->getHideFlag()Ljava/lang/Integer;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    if-nez p2, :cond_9

    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_9
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 190
    .line 191
    .line 192
    move-result p2

    .line 193
    if-ne p2, v3, :cond_a

    .line 194
    .line 195
    const/4 v2, 0x1

    .line 196
    :cond_a
    :goto_3
    iget-object p2, p1, Ll86;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 197
    .line 198
    const-string v0, "itemIvHide"

    .line 199
    .line 200
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-static {p2, v2}, Lg0g;->j(Landroid/view/View;Z)V

    .line 204
    .line 205
    .line 206
    if-eqz v2, :cond_b

    .line 207
    .line 208
    iget-object p2, p1, Ll86;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 209
    .line 210
    invoke-virtual {p2}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0, p1}, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyListView$BodyListAdapter;->t(Ll86;)V

    .line 218
    .line 219
    .line 220
    :cond_b
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/core/common/internal/BindingViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyListView$BodyListAdapter;->o(Lteam/opay/core/common/internal/BindingViewHolder;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyListView$BodyListAdapter;->s(Landroid/view/ViewGroup;I)Lteam/opay/core/common/internal/BindingViewHolder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public s(Landroid/view/ViewGroup;I)Lteam/opay/core/common/internal/BindingViewHolder;
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
            "Ll86;",
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
    invoke-static {v0, p1, v1}, Ll86;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ll86;

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

.method public final t(Ll86;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyListView$BodyListAdapter;->c:Lteam/opay/business/transfer/flow/widget/FlowDetailBodyListView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget v1, Lteam/opay/business/transfer/flow/R$string;->flow_place_holder:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "getString(...)"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p1, Ll86;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p1, Ll86;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    instance-of v2, v1, Ljava/lang/String;

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    check-cast v1, Ljava/lang/String;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v1, 0x0

    .line 37
    :goto_0
    iget-object v2, p1, Ll86;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 38
    .line 39
    const-string v3, "itemIvHide"

    .line 40
    .line 41
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    new-instance v3, Lf66;

    .line 45
    .line 46
    invoke-direct {v3, p1, v1, v0}, Lf66;-><init>(Ll86;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-static {v2, v3}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method
