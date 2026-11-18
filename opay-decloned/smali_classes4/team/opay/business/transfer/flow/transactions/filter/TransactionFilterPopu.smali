.class public final Lteam/opay/business/transfer/flow/transactions/filter/TransactionFilterPopu;
.super Landroid/widget/PopupWindow;
.source "TransactionFilterPopu.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\'\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0019\u0010\u0011\u001a\u00020\u000c2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001f\u0010\u0018\u001a\u00020\u000c2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR0\u0010#\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u001c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u0018\u0010&\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010%\u00a8\u0006\'"
    }
    d2 = {
        "Lteam/opay/business/transfer/flow/transactions/filter/TransactionFilterPopu;",
        "Landroid/widget/PopupWindow;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Lw86;",
        "binding",
        "Lteam/opay/business/transfer/flow/api/FilterInfo;",
        "info",
        "Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;",
        "filter",
        "",
        "g",
        "(Lw86;Lteam/opay/business/transfer/flow/api/FilterInfo;Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;)V",
        "Landroid/view/View;",
        "anchor",
        "showAsDropDown",
        "(Landroid/view/View;)V",
        "dismiss",
        "()V",
        "",
        "position",
        "item",
        "e",
        "(ILteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;)V",
        "a",
        "Landroid/content/Context;",
        "Lkotlin/Function1;",
        "b",
        "Lkotlin/jvm/functions/Function1;",
        "getCallback",
        "()Lkotlin/jvm/functions/Function1;",
        "f",
        "(Lkotlin/jvm/functions/Function1;)V",
        "callback",
        "c",
        "Lw86;",
        "filterViewBinding",
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
.field public final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Lw86;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransactionFilterPopu;->a:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    sget v0, Lteam/opay/business/transfer/flow/R$layout;->flow_popu_filter_category:I

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    const/4 p1, -0x1

    .line 26
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 27
    .line 28
    .line 29
    const/4 p1, -0x2

    .line 30
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 41
    .line 42
    .line 43
    const/4 p1, 0x2

    .line 44
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    sget v0, Lteam/opay/business/transfer/flow/R$id;->categoryBg:I

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const-string v0, "findViewById(...)"

    .line 58
    .line 59
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    new-instance v0, Lkxe;

    .line 63
    .line 64
    invoke-direct {v0, p0}, Lkxe;-><init>(Lteam/opay/business/transfer/flow/transactions/filter/TransactionFilterPopu;)V

    .line 65
    .line 66
    .line 67
    invoke-static {p1, v0}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public static synthetic a(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/transfer/flow/transactions/filter/TransactionFilterPopu;->h(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lteam/opay/business/transfer/flow/transactions/filter/TransactionFilterPopu;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/transfer/flow/transactions/filter/TransactionFilterPopu;->c(Lteam/opay/business/transfer/flow/transactions/filter/TransactionFilterPopu;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final c(Lteam/opay/business/transfer/flow/transactions/filter/TransactionFilterPopu;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/filter/TransactionFilterPopu;->dismiss()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final synthetic d(Lteam/opay/business/transfer/flow/transactions/filter/TransactionFilterPopu;ILteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/transfer/flow/transactions/filter/TransactionFilterPopu;->e(ILteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final h(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-le v0, p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransactionFilterPopu;->c:Lw86;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, v0, Lw86;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 15
    .line 16
    .line 17
    iget-object v1, v0, Lw86;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 18
    .line 19
    iget-object v3, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransactionFilterPopu;->a:Landroid/content/Context;

    .line 20
    .line 21
    sget v4, Lteam/opay/core/common/R$font;->roboto_400:I

    .line 22
    .line 23
    invoke-static {v3, v4, v2}, Lwie;->n(Landroid/content/Context;II)Landroid/graphics/Typeface;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, v0, Lw86;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 31
    .line 32
    sget v2, Lteam/opay/core/common/R$drawable;->common_svg_drop_down:I

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, v0, Lw86;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 38
    .line 39
    const-string v1, "arrowFilter"

    .line 40
    .line 41
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sget v1, Lteam/opay/core/common/R$color;->black_75:I

    .line 45
    .line 46
    invoke-static {v0, v1}, Lwie;->t(Landroidx/appcompat/widget/AppCompatImageView;I)V

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void
.end method

.method public final e(ILteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;)V
    .locals 3

    .line 1
    sget-object v0, Lkk8;->c:Lkk8;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "position = "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p1, ", item = "

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/4 v1, 0x0

    .line 29
    const/4 v2, 0x2

    .line 30
    invoke-static {v0, p1, v1, v2, v1}, Lteam/opay/core/common/GenericLogger;->m(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransactionFilterPopu;->b:Lkotlin/jvm/functions/Function1;

    .line 34
    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/filter/TransactionFilterPopu;->dismiss()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final f(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransactionFilterPopu;->b:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public final g(Lw86;Lteam/opay/business/transfer/flow/api/FilterInfo;Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;)V
    .locals 18
    .param p1    # Lw86;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/business/transfer/flow/api/FilterInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "binding"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v2, "info"

    .line 11
    .line 12
    move-object/from16 v3, p2

    .line 13
    .line 14
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {p2 .. p2}, Lteam/opay/business/transfer/flow/api/FilterInfo;->getType()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const-string v4, "flow"

    .line 22
    .line 23
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-virtual/range {p2 .. p2}, Lteam/opay/business/transfer/flow/api/FilterInfo;->getFlowList()Ljava/util/ArrayList;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lteam/opay/business/transfer/flow/transactions/filter/TransactionFilterPopu;->dismiss()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lteam/opay/business/transfer/flow/api/FilterInfo;->getType()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_3

    .line 54
    .line 55
    invoke-virtual/range {p2 .. p2}, Lteam/opay/business/transfer/flow/api/FilterInfo;->getList()Ljava/util/ArrayList;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    if-eqz v2, :cond_2

    .line 60
    .line 61
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_3

    .line 66
    .line 67
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lteam/opay/business/transfer/flow/transactions/filter/TransactionFilterPopu;->dismiss()V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    sget v5, Lteam/opay/business/transfer/flow/R$id;->category_list:I

    .line 76
    .line 77
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 82
    .line 83
    if-eqz v2, :cond_20

    .line 84
    .line 85
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    const-string v6, "getContext(...)"

    .line 90
    .line 91
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v5}, Let;->o(Landroid/content/Context;)I

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    int-to-float v5, v5

    .line 99
    const v7, 0x3f19999a    # 0.6f

    .line 100
    .line 101
    .line 102
    mul-float v5, v5, v7

    .line 103
    .line 104
    float-to-int v5, v5

    .line 105
    new-instance v7, Llxe;

    .line 106
    .line 107
    invoke-direct {v7, v2, v5}, Llxe;-><init>(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 111
    .line 112
    .line 113
    invoke-virtual/range {p2 .. p2}, Lteam/opay/business/transfer/flow/api/FilterInfo;->getType()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    const-string v5, ""

    .line 122
    .line 123
    const/4 v7, 0x1

    .line 124
    const-string v8, "return number type not support"

    .line 125
    .line 126
    const-class v9, Ljava/lang/Integer;

    .line 127
    .line 128
    if-eqz v4, :cond_7

    .line 129
    .line 130
    new-instance v4, Lteam/opay/business/transfer/flow/transactions/filter/CategoryAdapter;

    .line 131
    .line 132
    if-nez p3, :cond_4

    .line 133
    .line 134
    new-instance v17, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;

    .line 135
    .line 136
    const/16 v15, 0xf

    .line 137
    .line 138
    const/16 v16, 0x0

    .line 139
    .line 140
    const/4 v11, 0x0

    .line 141
    const/4 v12, 0x0

    .line 142
    const/4 v13, 0x0

    .line 143
    const/4 v14, 0x0

    .line 144
    move-object/from16 v10, v17

    .line 145
    .line 146
    invoke-direct/range {v10 .. v16}, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;-><init>(Lteam/opay/business/transfer/flow/internal/Period;Ljava/util/Date;Ljava/util/Date;Ljava/util/HashMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_4
    move-object/from16 v10, p3

    .line 151
    .line 152
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lteam/opay/business/transfer/flow/api/FilterInfo;->getFilterCode()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v11

    .line 156
    if-nez v11, :cond_5

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_5
    move-object v5, v11

    .line 160
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lteam/opay/business/transfer/flow/api/FilterInfo;->getFlowList()Ljava/util/ArrayList;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    if-nez v3, :cond_6

    .line 165
    .line 166
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    :cond_6
    invoke-direct {v4, v10, v5, v3}, Lteam/opay/business/transfer/flow/transactions/filter/CategoryAdapter;-><init>(Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;Ljava/lang/String;Ljava/util/List;)V

    .line 171
    .line 172
    .line 173
    new-instance v3, Lteam/opay/business/transfer/flow/transactions/filter/TransactionFilterPopu$setDataAndShow$1$2$1;

    .line 174
    .line 175
    invoke-direct {v3, v0}, Lteam/opay/business/transfer/flow/transactions/filter/TransactionFilterPopu$setDataAndShow$1$2$1;-><init>(Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v4, v3}, Lteam/opay/business/transfer/flow/transactions/filter/CategoryAdapter;->q(Lkotlin/jvm/functions/Function2;)V

    .line 179
    .line 180
    .line 181
    goto/16 :goto_9

    .line 182
    .line 183
    :cond_7
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    .line 192
    .line 193
    const/16 v10, 0xa

    .line 194
    .line 195
    int-to-float v10, v10

    .line 196
    mul-float v4, v4, v10

    .line 197
    .line 198
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 203
    .line 204
    .line 205
    move-result-object v11

    .line 206
    sget-object v12, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 207
    .line 208
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 209
    .line 210
    .line 211
    move-result-object v13

    .line 212
    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v13

    .line 216
    if-eqz v13, :cond_8

    .line 217
    .line 218
    check-cast v4, Ljava/lang/Integer;

    .line 219
    .line 220
    goto :goto_2

    .line 221
    :cond_8
    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 222
    .line 223
    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 224
    .line 225
    .line 226
    move-result-object v13

    .line 227
    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v13

    .line 231
    if-eqz v13, :cond_9

    .line 232
    .line 233
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 234
    .line 235
    .line 236
    move-result v4

    .line 237
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 238
    .line 239
    .line 240
    move-result-object v4

    .line 241
    goto :goto_2

    .line 242
    :cond_9
    sget-object v13, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 243
    .line 244
    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 245
    .line 246
    .line 247
    move-result-object v13

    .line 248
    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v13

    .line 252
    if-eqz v13, :cond_a

    .line 253
    .line 254
    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    .line 255
    .line 256
    .line 257
    move-result-wide v13

    .line 258
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 259
    .line 260
    .line 261
    move-result-object v4

    .line 262
    check-cast v4, Ljava/lang/Integer;

    .line 263
    .line 264
    goto :goto_2

    .line 265
    :cond_a
    sget-object v13, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 266
    .line 267
    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 268
    .line 269
    .line 270
    move-result-object v13

    .line 271
    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v11

    .line 275
    if-eqz v11, :cond_1f

    .line 276
    .line 277
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    .line 278
    .line 279
    .line 280
    move-result-wide v13

    .line 281
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 282
    .line 283
    .line 284
    move-result-object v4

    .line 285
    check-cast v4, Ljava/lang/Integer;

    .line 286
    .line 287
    :goto_2
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 288
    .line 289
    .line 290
    move-result v4

    .line 291
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 292
    .line 293
    .line 294
    move-result-object v11

    .line 295
    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 296
    .line 297
    .line 298
    move-result-object v11

    .line 299
    iget v11, v11, Landroid/util/DisplayMetrics;->density:F

    .line 300
    .line 301
    const/4 v13, 0x6

    .line 302
    int-to-float v13, v13

    .line 303
    mul-float v11, v11, v13

    .line 304
    .line 305
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 306
    .line 307
    .line 308
    move-result-object v11

    .line 309
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 310
    .line 311
    .line 312
    move-result-object v13

    .line 313
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 314
    .line 315
    .line 316
    move-result-object v14

    .line 317
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    move-result v14

    .line 321
    if-eqz v14, :cond_b

    .line 322
    .line 323
    check-cast v11, Ljava/lang/Integer;

    .line 324
    .line 325
    goto :goto_3

    .line 326
    :cond_b
    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 327
    .line 328
    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 329
    .line 330
    .line 331
    move-result-object v14

    .line 332
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    move-result v14

    .line 336
    if-eqz v14, :cond_c

    .line 337
    .line 338
    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    .line 339
    .line 340
    .line 341
    move-result v11

    .line 342
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 343
    .line 344
    .line 345
    move-result-object v11

    .line 346
    goto :goto_3

    .line 347
    :cond_c
    sget-object v14, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 348
    .line 349
    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 350
    .line 351
    .line 352
    move-result-object v14

    .line 353
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result v14

    .line 357
    if-eqz v14, :cond_d

    .line 358
    .line 359
    invoke-virtual {v11}, Ljava/lang/Number;->doubleValue()D

    .line 360
    .line 361
    .line 362
    move-result-wide v13

    .line 363
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 364
    .line 365
    .line 366
    move-result-object v11

    .line 367
    check-cast v11, Ljava/lang/Integer;

    .line 368
    .line 369
    goto :goto_3

    .line 370
    :cond_d
    sget-object v14, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 371
    .line 372
    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 373
    .line 374
    .line 375
    move-result-object v14

    .line 376
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    move-result v13

    .line 380
    if-eqz v13, :cond_1e

    .line 381
    .line 382
    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    .line 383
    .line 384
    .line 385
    move-result-wide v13

    .line 386
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 387
    .line 388
    .line 389
    move-result-object v11

    .line 390
    check-cast v11, Ljava/lang/Integer;

    .line 391
    .line 392
    :goto_3
    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    .line 393
    .line 394
    .line 395
    move-result v11

    .line 396
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 397
    .line 398
    .line 399
    move-result-object v13

    .line 400
    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 401
    .line 402
    .line 403
    move-result-object v13

    .line 404
    iget v13, v13, Landroid/util/DisplayMetrics;->density:F

    .line 405
    .line 406
    mul-float v13, v13, v10

    .line 407
    .line 408
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 409
    .line 410
    .line 411
    move-result-object v10

    .line 412
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 413
    .line 414
    .line 415
    move-result-object v13

    .line 416
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 417
    .line 418
    .line 419
    move-result-object v14

    .line 420
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 421
    .line 422
    .line 423
    move-result v14

    .line 424
    if-eqz v14, :cond_e

    .line 425
    .line 426
    check-cast v10, Ljava/lang/Integer;

    .line 427
    .line 428
    goto :goto_4

    .line 429
    :cond_e
    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 430
    .line 431
    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 432
    .line 433
    .line 434
    move-result-object v14

    .line 435
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 436
    .line 437
    .line 438
    move-result v14

    .line 439
    if-eqz v14, :cond_f

    .line 440
    .line 441
    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    .line 442
    .line 443
    .line 444
    move-result v10

    .line 445
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 446
    .line 447
    .line 448
    move-result-object v10

    .line 449
    goto :goto_4

    .line 450
    :cond_f
    sget-object v14, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 451
    .line 452
    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 453
    .line 454
    .line 455
    move-result-object v14

    .line 456
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 457
    .line 458
    .line 459
    move-result v14

    .line 460
    if-eqz v14, :cond_10

    .line 461
    .line 462
    invoke-virtual {v10}, Ljava/lang/Number;->doubleValue()D

    .line 463
    .line 464
    .line 465
    move-result-wide v13

    .line 466
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 467
    .line 468
    .line 469
    move-result-object v10

    .line 470
    check-cast v10, Ljava/lang/Integer;

    .line 471
    .line 472
    goto :goto_4

    .line 473
    :cond_10
    sget-object v14, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 474
    .line 475
    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 476
    .line 477
    .line 478
    move-result-object v14

    .line 479
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 480
    .line 481
    .line 482
    move-result v13

    .line 483
    if-eqz v13, :cond_1d

    .line 484
    .line 485
    invoke-virtual {v10}, Ljava/lang/Number;->longValue()J

    .line 486
    .line 487
    .line 488
    move-result-wide v13

    .line 489
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 490
    .line 491
    .line 492
    move-result-object v10

    .line 493
    check-cast v10, Ljava/lang/Integer;

    .line 494
    .line 495
    :goto_4
    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    .line 496
    .line 497
    .line 498
    move-result v10

    .line 499
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 500
    .line 501
    .line 502
    move-result-object v13

    .line 503
    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 504
    .line 505
    .line 506
    move-result-object v13

    .line 507
    iget v13, v13, Landroid/util/DisplayMetrics;->density:F

    .line 508
    .line 509
    const/16 v14, 0x10

    .line 510
    .line 511
    int-to-float v14, v14

    .line 512
    mul-float v13, v13, v14

    .line 513
    .line 514
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 515
    .line 516
    .line 517
    move-result-object v13

    .line 518
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 519
    .line 520
    .line 521
    move-result-object v14

    .line 522
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 523
    .line 524
    .line 525
    move-result-object v12

    .line 526
    invoke-static {v14, v12}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 527
    .line 528
    .line 529
    move-result v12

    .line 530
    if-eqz v12, :cond_11

    .line 531
    .line 532
    check-cast v13, Ljava/lang/Integer;

    .line 533
    .line 534
    goto :goto_5

    .line 535
    :cond_11
    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 536
    .line 537
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 538
    .line 539
    .line 540
    move-result-object v12

    .line 541
    invoke-static {v14, v12}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 542
    .line 543
    .line 544
    move-result v12

    .line 545
    if-eqz v12, :cond_12

    .line 546
    .line 547
    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    .line 548
    .line 549
    .line 550
    move-result v12

    .line 551
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 552
    .line 553
    .line 554
    move-result-object v13

    .line 555
    goto :goto_5

    .line 556
    :cond_12
    sget-object v12, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 557
    .line 558
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 559
    .line 560
    .line 561
    move-result-object v12

    .line 562
    invoke-static {v14, v12}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 563
    .line 564
    .line 565
    move-result v12

    .line 566
    if-eqz v12, :cond_13

    .line 567
    .line 568
    invoke-virtual {v13}, Ljava/lang/Number;->doubleValue()D

    .line 569
    .line 570
    .line 571
    move-result-wide v12

    .line 572
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 573
    .line 574
    .line 575
    move-result-object v12

    .line 576
    move-object v13, v12

    .line 577
    check-cast v13, Ljava/lang/Integer;

    .line 578
    .line 579
    goto :goto_5

    .line 580
    :cond_13
    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 581
    .line 582
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 583
    .line 584
    .line 585
    move-result-object v12

    .line 586
    invoke-static {v14, v12}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 587
    .line 588
    .line 589
    move-result v12

    .line 590
    if-eqz v12, :cond_1c

    .line 591
    .line 592
    invoke-virtual {v13}, Ljava/lang/Number;->longValue()J

    .line 593
    .line 594
    .line 595
    move-result-wide v12

    .line 596
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 597
    .line 598
    .line 599
    move-result-object v12

    .line 600
    move-object v13, v12

    .line 601
    check-cast v13, Ljava/lang/Integer;

    .line 602
    .line 603
    :goto_5
    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    .line 604
    .line 605
    .line 606
    move-result v12

    .line 607
    invoke-static {v2, v4, v11, v10, v12}, Lg0g;->g(Landroid/view/View;IIII)V

    .line 608
    .line 609
    .line 610
    sget-object v4, Ljz5;->t:Ljz5$a;

    .line 611
    .line 612
    invoke-virtual/range {p2 .. p2}, Lteam/opay/business/transfer/flow/api/FilterInfo;->getFilterCode()Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object v10

    .line 616
    invoke-virtual {v4, v10}, Ljz5$a;->c(Ljava/lang/String;)Z

    .line 617
    .line 618
    .line 619
    move-result v4

    .line 620
    if-eqz v4, :cond_14

    .line 621
    .line 622
    const/4 v4, 0x1

    .line 623
    goto :goto_6

    .line 624
    :cond_14
    const/4 v4, 0x3

    .line 625
    :goto_6
    new-instance v10, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 626
    .line 627
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 628
    .line 629
    .line 630
    move-result-object v11

    .line 631
    invoke-direct {v10, v11, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 632
    .line 633
    .line 634
    invoke-virtual {v2, v10}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 635
    .line 636
    .line 637
    new-instance v4, Lteam/opay/business/transfer/flow/transactions/filter/CategoryItemAdapter;

    .line 638
    .line 639
    if-nez p3, :cond_15

    .line 640
    .line 641
    new-instance v17, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;

    .line 642
    .line 643
    const/16 v15, 0xf

    .line 644
    .line 645
    const/16 v16, 0x0

    .line 646
    .line 647
    const/4 v11, 0x0

    .line 648
    const/4 v12, 0x0

    .line 649
    const/4 v13, 0x0

    .line 650
    const/4 v14, 0x0

    .line 651
    move-object/from16 v10, v17

    .line 652
    .line 653
    invoke-direct/range {v10 .. v16}, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;-><init>(Lteam/opay/business/transfer/flow/internal/Period;Ljava/util/Date;Ljava/util/Date;Ljava/util/HashMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 654
    .line 655
    .line 656
    goto :goto_7

    .line 657
    :cond_15
    move-object/from16 v10, p3

    .line 658
    .line 659
    :goto_7
    invoke-virtual/range {p2 .. p2}, Lteam/opay/business/transfer/flow/api/FilterInfo;->getFilterCode()Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v11

    .line 663
    if-nez v11, :cond_16

    .line 664
    .line 665
    goto :goto_8

    .line 666
    :cond_16
    move-object v5, v11

    .line 667
    :goto_8
    invoke-virtual/range {p2 .. p2}, Lteam/opay/business/transfer/flow/api/FilterInfo;->getList()Ljava/util/ArrayList;

    .line 668
    .line 669
    .line 670
    move-result-object v3

    .line 671
    if-nez v3, :cond_17

    .line 672
    .line 673
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 674
    .line 675
    .line 676
    move-result-object v3

    .line 677
    :cond_17
    const-string v11, "list"

    .line 678
    .line 679
    invoke-direct {v4, v10, v5, v3, v11}, Lteam/opay/business/transfer/flow/transactions/filter/CategoryItemAdapter;-><init>(Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 680
    .line 681
    .line 682
    new-instance v3, Lteam/opay/business/transfer/flow/transactions/filter/TransactionFilterPopu$setDataAndShow$1$3$1;

    .line 683
    .line 684
    invoke-direct {v3, v0}, Lteam/opay/business/transfer/flow/transactions/filter/TransactionFilterPopu$setDataAndShow$1$3$1;-><init>(Ljava/lang/Object;)V

    .line 685
    .line 686
    .line 687
    invoke-virtual {v4, v3}, Lteam/opay/business/transfer/flow/transactions/filter/CategoryItemAdapter;->A(Lkotlin/jvm/functions/Function2;)V

    .line 688
    .line 689
    .line 690
    :goto_9
    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 691
    .line 692
    .line 693
    iput-object v1, v0, Lteam/opay/business/transfer/flow/transactions/filter/TransactionFilterPopu;->c:Lw86;

    .line 694
    .line 695
    iget-object v3, v1, Lw86;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 696
    .line 697
    invoke-virtual {v3, v7}, Landroid/view/View;->setSelected(Z)V

    .line 698
    .line 699
    .line 700
    iget-object v3, v1, Lw86;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 701
    .line 702
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 703
    .line 704
    .line 705
    move-result-object v2

    .line 706
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 707
    .line 708
    .line 709
    sget v4, Lteam/opay/core/common/R$font;->roboto_500:I

    .line 710
    .line 711
    invoke-static {v2, v4, v7}, Lwie;->n(Landroid/content/Context;II)Landroid/graphics/Typeface;

    .line 712
    .line 713
    .line 714
    move-result-object v2

    .line 715
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 716
    .line 717
    .line 718
    iget-object v2, v1, Lw86;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 719
    .line 720
    sget v3, Lteam/opay/core/common/R$drawable;->common_svg_drop_up:I

    .line 721
    .line 722
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 723
    .line 724
    .line 725
    iget-object v2, v1, Lw86;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 726
    .line 727
    const-string v3, "arrowFilter"

    .line 728
    .line 729
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 730
    .line 731
    .line 732
    sget v3, Lteam/opay/core/common/R$color;->mint:I

    .line 733
    .line 734
    invoke-static {v2, v3}, Lwie;->t(Landroidx/appcompat/widget/AppCompatImageView;I)V

    .line 735
    .line 736
    .line 737
    invoke-virtual/range {p1 .. p1}, Lw86;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 738
    .line 739
    .line 740
    move-result-object v1

    .line 741
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 742
    .line 743
    .line 744
    move-result-object v2

    .line 745
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 746
    .line 747
    .line 748
    move-result-object v2

    .line 749
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 750
    .line 751
    const/16 v3, 0xc

    .line 752
    .line 753
    int-to-float v3, v3

    .line 754
    mul-float v2, v2, v3

    .line 755
    .line 756
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 757
    .line 758
    .line 759
    move-result-object v2

    .line 760
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 761
    .line 762
    .line 763
    move-result-object v3

    .line 764
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 765
    .line 766
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 767
    .line 768
    .line 769
    move-result-object v4

    .line 770
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 771
    .line 772
    .line 773
    move-result v4

    .line 774
    if-eqz v4, :cond_18

    .line 775
    .line 776
    check-cast v2, Ljava/lang/Integer;

    .line 777
    .line 778
    goto :goto_a

    .line 779
    :cond_18
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 780
    .line 781
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 782
    .line 783
    .line 784
    move-result-object v4

    .line 785
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 786
    .line 787
    .line 788
    move-result v4

    .line 789
    if-eqz v4, :cond_19

    .line 790
    .line 791
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 792
    .line 793
    .line 794
    move-result v2

    .line 795
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 796
    .line 797
    .line 798
    move-result-object v2

    .line 799
    goto :goto_a

    .line 800
    :cond_19
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 801
    .line 802
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 803
    .line 804
    .line 805
    move-result-object v4

    .line 806
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 807
    .line 808
    .line 809
    move-result v4

    .line 810
    if-eqz v4, :cond_1a

    .line 811
    .line 812
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    .line 813
    .line 814
    .line 815
    move-result-wide v2

    .line 816
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 817
    .line 818
    .line 819
    move-result-object v2

    .line 820
    check-cast v2, Ljava/lang/Integer;

    .line 821
    .line 822
    goto :goto_a

    .line 823
    :cond_1a
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 824
    .line 825
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 826
    .line 827
    .line 828
    move-result-object v4

    .line 829
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 830
    .line 831
    .line 832
    move-result v3

    .line 833
    if-eqz v3, :cond_1b

    .line 834
    .line 835
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 836
    .line 837
    .line 838
    move-result-wide v2

    .line 839
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 840
    .line 841
    .line 842
    move-result-object v2

    .line 843
    check-cast v2, Ljava/lang/Integer;

    .line 844
    .line 845
    :goto_a
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 846
    .line 847
    .line 848
    move-result v2

    .line 849
    const/4 v3, 0x0

    .line 850
    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 851
    .line 852
    .line 853
    goto :goto_b

    .line 854
    :cond_1b
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 855
    .line 856
    invoke-direct {v1, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 857
    .line 858
    .line 859
    throw v1

    .line 860
    :cond_1c
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 861
    .line 862
    invoke-direct {v1, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 863
    .line 864
    .line 865
    throw v1

    .line 866
    :cond_1d
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 867
    .line 868
    invoke-direct {v1, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 869
    .line 870
    .line 871
    throw v1

    .line 872
    :cond_1e
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 873
    .line 874
    invoke-direct {v1, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 875
    .line 876
    .line 877
    throw v1

    .line 878
    :cond_1f
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 879
    .line 880
    invoke-direct {v1, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 881
    .line 882
    .line 883
    throw v1

    .line 884
    :cond_20
    :goto_b
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
