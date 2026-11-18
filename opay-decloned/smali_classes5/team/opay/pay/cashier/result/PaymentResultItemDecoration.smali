.class public final Lteam/opay/pay/cashier/result/PaymentResultItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "PaymentResultItemDecoration.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J/\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\u0015\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0016"
    }
    d2 = {
        "Lteam/opay/pay/cashier/result/PaymentResultItemDecoration;",
        "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;",
        "<init>",
        "()V",
        "Landroid/graphics/Rect;",
        "outRect",
        "Landroid/view/View;",
        "view",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "parent",
        "Landroidx/recyclerview/widget/RecyclerView$State;",
        "state",
        "",
        "getItemOffsets",
        "(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V",
        "",
        "a",
        "Ljava/lang/Integer;",
        "preItemType",
        "b",
        "I",
        "curTypeIndex",
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
.field public a:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "outRect"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "view"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "parent"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "state"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 26
    .line 27
    .line 28
    move-result-object p4

    .line 29
    if-eqz p4, :cond_8

    .line 30
    .line 31
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    if-eqz p3, :cond_0

    .line 39
    .line 40
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    .line 41
    .line 42
    .line 43
    move-result p3

    .line 44
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 p3, 0x0

    .line 50
    :goto_0
    iget-object p4, p0, Lteam/opay/pay/cashier/result/PaymentResultItemDecoration;->a:Ljava/lang/Integer;

    .line 51
    .line 52
    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p4

    .line 56
    if-nez p4, :cond_1

    .line 57
    .line 58
    iput-object p3, p0, Lteam/opay/pay/cashier/result/PaymentResultItemDecoration;->a:Ljava/lang/Integer;

    .line 59
    .line 60
    iput p2, p0, Lteam/opay/pay/cashier/result/PaymentResultItemDecoration;->b:I

    .line 61
    .line 62
    :cond_1
    const/16 p4, 0x8

    .line 63
    .line 64
    if-nez p3, :cond_2

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    const/4 v1, 0x6

    .line 72
    if-ne v0, v1, :cond_4

    .line 73
    .line 74
    iget v0, p0, Lteam/opay/pay/cashier/result/PaymentResultItemDecoration;->b:I

    .line 75
    .line 76
    sub-int v0, p2, v0

    .line 77
    .line 78
    rem-int/lit8 v0, v0, 0x2

    .line 79
    .line 80
    if-nez v0, :cond_3

    .line 81
    .line 82
    invoke-static {p4}, Ljmf;->d(I)I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    invoke-static {p4}, Ljmf;->d(I)I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 94
    .line 95
    :cond_4
    :goto_1
    if-nez p3, :cond_5

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_5
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 99
    .line 100
    .line 101
    move-result p3

    .line 102
    const/16 v0, 0x9

    .line 103
    .line 104
    if-ne p3, v0, :cond_8

    .line 105
    .line 106
    iget p3, p0, Lteam/opay/pay/cashier/result/PaymentResultItemDecoration;->b:I

    .line 107
    .line 108
    sub-int v0, p2, p3

    .line 109
    .line 110
    rem-int/lit8 v0, v0, 0x3

    .line 111
    .line 112
    if-nez v0, :cond_6

    .line 113
    .line 114
    invoke-static {p4}, Ljmf;->d(I)I

    .line 115
    .line 116
    .line 117
    move-result p2

    .line 118
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_6
    sub-int/2addr p2, p3

    .line 122
    rem-int/lit8 p2, p2, 0x3

    .line 123
    .line 124
    const/4 p3, 0x1

    .line 125
    if-ne p2, p3, :cond_7

    .line 126
    .line 127
    const/4 p2, 0x4

    .line 128
    invoke-static {p2}, Ljmf;->d(I)I

    .line 129
    .line 130
    .line 131
    move-result p3

    .line 132
    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 133
    .line 134
    invoke-static {p2}, Ljmf;->d(I)I

    .line 135
    .line 136
    .line 137
    move-result p2

    .line 138
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_7
    invoke-static {p4}, Ljmf;->d(I)I

    .line 142
    .line 143
    .line 144
    move-result p2

    .line 145
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 146
    .line 147
    :cond_8
    :goto_2
    return-void
.end method
