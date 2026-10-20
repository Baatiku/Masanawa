.class public final Lteam/opay/pay/payment/bill/BPSpaceItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "BPSpaceItemDecoration.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\u000c\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\nJ\u0017\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\nJ/\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0014\u0010\u0004\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001c\u00a8\u0006\u001e"
    }
    d2 = {
        "Lteam/opay/pay/payment/bill/BPSpaceItemDecoration;",
        "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;",
        "",
        "horizontalSpace",
        "verticalSpace",
        "<init>",
        "(II)V",
        "position",
        "",
        "d",
        "(I)Z",
        "itemCount",
        "f",
        "(II)Z",
        "c",
        "e",
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
        "a",
        "I",
        "b",
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
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lteam/opay/pay/payment/bill/BPSpaceItemDecoration;->a:I

    .line 5
    .line 6
    iput p2, p0, Lteam/opay/pay/payment/bill/BPSpaceItemDecoration;->b:I

    .line 7
    .line 8
    return-void
.end method

.method private final c(I)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x2

    .line 4
    if-ge p1, v2, :cond_0

    .line 5
    .line 6
    rem-int/2addr p1, v2

    .line 7
    if-nez p1, :cond_2

    .line 8
    .line 9
    :goto_0
    const/4 v0, 0x1

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    sget-object v3, Lteam/opay/pay/payment/bill/BillPaymentMoreAdapter;->e:Lteam/opay/pay/payment/bill/BillPaymentMoreAdapter$Companion;

    .line 12
    .line 13
    invoke-virtual {v3, p1}, Lteam/opay/pay/payment/bill/BillPaymentMoreAdapter$Companion;->a(I)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    sub-int/2addr p1, v2

    .line 20
    rem-int/lit8 p1, p1, 0x3

    .line 21
    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    add-int/lit8 p1, p1, -0x5

    .line 26
    .line 27
    rem-int/2addr p1, v2

    .line 28
    if-nez p1, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    :goto_1
    return v0
.end method

.method private final d(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ge p1, v0, :cond_0

    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    return p1
.end method

.method private final e(I)Z
    .locals 0

    .line 1
    add-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lteam/opay/pay/payment/bill/BPSpaceItemDecoration;->c(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method private final f(II)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x2

    .line 4
    if-ge p1, v2, :cond_0

    .line 5
    .line 6
    if-gt p2, v2, :cond_2

    .line 7
    .line 8
    :goto_0
    const/4 v0, 0x1

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    sget-object v2, Lteam/opay/pay/payment/bill/BillPaymentMoreAdapter;->e:Lteam/opay/pay/payment/bill/BillPaymentMoreAdapter$Companion;

    .line 11
    .line 12
    invoke-virtual {v2, p1}, Lteam/opay/pay/payment/bill/BillPaymentMoreAdapter$Companion;->a(I)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x5

    .line 19
    if-gt p2, p1, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    rem-int/lit8 v2, p2, 0x2

    .line 23
    .line 24
    add-int/2addr v2, v1

    .line 25
    sub-int/2addr p2, v1

    .line 26
    sub-int/2addr p2, v2

    .line 27
    if-le p1, p2, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    :goto_1
    return v0
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1
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
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    const/4 p4, 0x0

    .line 33
    if-eqz p3, :cond_0

    .line 34
    .line 35
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 36
    .line 37
    .line 38
    move-result p3

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 p3, 0x0

    .line 41
    :goto_0
    invoke-direct {p0, p2}, Lteam/opay/pay/payment/bill/BPSpaceItemDecoration;->c(I)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    iget v0, p0, Lteam/opay/pay/payment/bill/BPSpaceItemDecoration;->a:I

    .line 50
    .line 51
    :goto_1
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 52
    .line 53
    invoke-direct {p0, p2}, Lteam/opay/pay/payment/bill/BPSpaceItemDecoration;->e(I)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    const/4 v0, 0x0

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    iget v0, p0, Lteam/opay/pay/payment/bill/BPSpaceItemDecoration;->a:I

    .line 62
    .line 63
    :goto_2
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 64
    .line 65
    invoke-direct {p0, p2, p3}, Lteam/opay/pay/payment/bill/BPSpaceItemDecoration;->f(II)Z

    .line 66
    .line 67
    .line 68
    move-result p3

    .line 69
    if-eqz p3, :cond_3

    .line 70
    .line 71
    const/4 p3, 0x0

    .line 72
    goto :goto_3

    .line 73
    :cond_3
    iget p3, p0, Lteam/opay/pay/payment/bill/BPSpaceItemDecoration;->b:I

    .line 74
    .line 75
    :goto_3
    iput p3, p1, Landroid/graphics/Rect;->bottom:I

    .line 76
    .line 77
    invoke-direct {p0, p2}, Lteam/opay/pay/payment/bill/BPSpaceItemDecoration;->d(I)Z

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    if-eqz p2, :cond_4

    .line 82
    .line 83
    goto :goto_4

    .line 84
    :cond_4
    iget p4, p0, Lteam/opay/pay/payment/bill/BPSpaceItemDecoration;->b:I

    .line 85
    .line 86
    :goto_4
    iput p4, p1, Landroid/graphics/Rect;->top:I

    .line 87
    .line 88
    return-void
.end method
