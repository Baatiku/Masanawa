.class public final Lteam/opay/business/transfer/flow/widget/PinnedLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "PinnedLayoutManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0010\u0008\u0000\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ/\u0010\u0013\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u00042\u000c\u0010\u0010\u001a\u0008\u0018\u00010\u000eR\u00020\u000f2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J%\u0010\u0018\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u00170\u00162\u0006\u0010\u0015\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u001aR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR \u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\t0\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0016\u0010!\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0016\u0010#\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010\u001aR$\u0010&\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u00170\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010%\u00a8\u0006\'"
    }
    d2 = {
        "Lteam/opay/business/transfer/flow/widget/PinnedLayoutManager;",
        "Landroidx/recyclerview/widget/LinearLayoutManager;",
        "Landroid/content/Context;",
        "context",
        "",
        "headerViewType",
        "Landroid/view/View;",
        "headerView",
        "Lkotlin/Function1;",
        "",
        "updateHeader",
        "<init>",
        "(Landroid/content/Context;ILandroid/view/View;Lkotlin/jvm/functions/Function1;)V",
        "dy",
        "Landroidx/recyclerview/widget/RecyclerView$Recycler;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "recycler",
        "Landroidx/recyclerview/widget/RecyclerView$State;",
        "state",
        "scrollVerticallyBy",
        "(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I",
        "fromPosition",
        "Lkotlin/Pair;",
        "",
        "a",
        "(I)Lkotlin/Pair;",
        "I",
        "b",
        "Landroid/view/View;",
        "c",
        "Lkotlin/jvm/functions/Function1;",
        "d",
        "Z",
        "moveHeader",
        "e",
        "lastFirstVisPos",
        "f",
        "Lkotlin/Pair;",
        "nextHeader",
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
.field public final a:I

.field public final b:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Z

.field public e:I

.field public f:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "+",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/view/View;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "headerView"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "updateHeader"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    iput p2, p0, Lteam/opay/business/transfer/flow/widget/PinnedLayoutManager;->a:I

    .line 20
    .line 21
    iput-object p3, p0, Lteam/opay/business/transfer/flow/widget/PinnedLayoutManager;->b:Landroid/view/View;

    .line 22
    .line 23
    iput-object p4, p0, Lteam/opay/business/transfer/flow/widget/PinnedLayoutManager;->c:Lkotlin/jvm/functions/Function1;

    .line 24
    .line 25
    const/4 p1, -0x1

    .line 26
    iput p1, p0, Lteam/opay/business/transfer/flow/widget/PinnedLayoutManager;->e:I

    .line 27
    .line 28
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 29
    .line 30
    const/4 p2, 0x0

    .line 31
    invoke-static {p2, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lteam/opay/business/transfer/flow/widget/PinnedLayoutManager;->f:Lkotlin/Pair;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final a(I)Lkotlin/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlin/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :goto_0
    if-ge p1, v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemViewType(Landroid/view/View;)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    iget v3, p0, Lteam/opay/business/transfer/flow/widget/PinnedLayoutManager;->a:I

    .line 18
    .line 19
    if-ne v2, v3, :cond_0

    .line 20
    .line 21
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-static {v1, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-static {v0, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    return-object p1
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 6
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_8

    .line 6
    .line 7
    iget-object p3, p0, Lteam/opay/business/transfer/flow/widget/PinnedLayoutManager;->b:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    int-to-float p3, p3

    .line 14
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-gez v0, :cond_0

    .line 19
    .line 20
    return p2

    .line 21
    :cond_0
    iget v1, p0, Lteam/opay/business/transfer/flow/widget/PinnedLayoutManager;->e:I

    .line 22
    .line 23
    if-eq v0, v1, :cond_1

    .line 24
    .line 25
    add-int/lit8 v1, v0, 0x1

    .line 26
    .line 27
    invoke-virtual {p0, v1}, Lteam/opay/business/transfer/flow/widget/PinnedLayoutManager;->a(I)Lkotlin/Pair;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iput-object v1, p0, Lteam/opay/business/transfer/flow/widget/PinnedLayoutManager;->f:Lkotlin/Pair;

    .line 32
    .line 33
    iput v0, p0, Lteam/opay/business/transfer/flow/widget/PinnedLayoutManager;->e:I

    .line 34
    .line 35
    :cond_1
    iget-object v1, p0, Lteam/opay/business/transfer/flow/widget/PinnedLayoutManager;->f:Lkotlin/Pair;

    .line 36
    .line 37
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Landroid/view/View;

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/4 v1, 0x0

    .line 52
    :goto_0
    iget-object v3, p0, Lteam/opay/business/transfer/flow/widget/PinnedLayoutManager;->f:Lkotlin/Pair;

    .line 53
    .line 54
    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Ljava/lang/Boolean;

    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    const/4 v4, 0x0

    .line 65
    const/4 v5, 0x1

    .line 66
    if-eqz v3, :cond_4

    .line 67
    .line 68
    int-to-float v1, v1

    .line 69
    cmpg-float v3, v1, p3

    .line 70
    .line 71
    if-gtz v3, :cond_3

    .line 72
    .line 73
    iget-object v3, p0, Lteam/opay/business/transfer/flow/widget/PinnedLayoutManager;->b:Landroid/view/View;

    .line 74
    .line 75
    sub-float/2addr p3, v1

    .line 76
    neg-float p3, p3

    .line 77
    invoke-virtual {v3, p3}, Landroid/view/View;->setY(F)V

    .line 78
    .line 79
    .line 80
    iput-boolean v5, p0, Lteam/opay/business/transfer/flow/widget/PinnedLayoutManager;->d:Z

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    iget-object p3, p0, Lteam/opay/business/transfer/flow/widget/PinnedLayoutManager;->b:Landroid/view/View;

    .line 84
    .line 85
    invoke-virtual {p3, v4}, Landroid/view/View;->setY(F)V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_4
    iget-object p3, p0, Lteam/opay/business/transfer/flow/widget/PinnedLayoutManager;->b:Landroid/view/View;

    .line 90
    .line 91
    invoke-virtual {p3, v4}, Landroid/view/View;->setY(F)V

    .line 92
    .line 93
    .line 94
    :goto_1
    if-lez p1, :cond_6

    .line 95
    .line 96
    iget-object p1, p0, Lteam/opay/business/transfer/flow/widget/PinnedLayoutManager;->b:Landroid/view/View;

    .line 97
    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    cmpg-float p1, p1, v4

    .line 103
    .line 104
    if-nez p1, :cond_5

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_5
    :goto_2
    const/4 v5, 0x0

    .line 108
    goto :goto_3

    .line 109
    :cond_6
    iget-object p1, p0, Lteam/opay/business/transfer/flow/widget/PinnedLayoutManager;->b:Landroid/view/View;

    .line 110
    .line 111
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    cmpg-float p1, p1, v4

    .line 116
    .line 117
    if-nez p1, :cond_7

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_7
    :goto_3
    iget-boolean p1, p0, Lteam/opay/business/transfer/flow/widget/PinnedLayoutManager;->d:Z

    .line 121
    .line 122
    if-eqz p1, :cond_8

    .line 123
    .line 124
    if-eqz v5, :cond_8

    .line 125
    .line 126
    iget-object p1, p0, Lteam/opay/business/transfer/flow/widget/PinnedLayoutManager;->c:Lkotlin/jvm/functions/Function1;

    .line 127
    .line 128
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object p3

    .line 132
    invoke-interface {p1, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    iput-boolean v2, p0, Lteam/opay/business/transfer/flow/widget/PinnedLayoutManager;->d:Z

    .line 136
    .line 137
    new-instance p1, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    const-string p3, "updateHeader="

    .line 143
    .line 144
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    :cond_8
    return p2
.end method
