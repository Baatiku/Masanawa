.class public final Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;
.super Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;
.source "DetailsBodyAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter<",
        "Lteam/opay/pay/history/details/DetailsBodyItem;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\r\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0013\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J!\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00032\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001f\u0010\r\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\u001f\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001f\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J!\u0010\u001c\u001a\u00020\n2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u001b\u001a\u00020\u001aH\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u001f\u0010\u001e\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u000cJ\u0017\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 J\'\u0010$\u001a\u00020#2\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010!\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u001aH\u0002\u00a2\u0006\u0004\u0008$\u0010%J\u001f\u0010&\u001a\u00020#2\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008&\u0010\'J\u0017\u0010(\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008(\u0010 R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R6\u00102\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\n\u0018\u00010+8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008,\u0010-\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101R6\u00106\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\n\u0018\u00010+8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00083\u0010-\u001a\u0004\u00084\u0010/\"\u0004\u00085\u00101R\"\u0010:\u001a\u0002078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00088\u00109\u001a\u0004\u0008:\u0010;\"\u0004\u0008<\u0010=\u00a8\u0006>"
    }
    d2 = {
        "Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;",
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;",
        "Lteam/opay/pay/history/details/DetailsBodyItem;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "",
        "orderNo",
        "<init>",
        "(Ljava/lang/String;)V",
        "helper",
        "item",
        "",
        "B",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/history/details/DetailsBodyItem;)V",
        "u",
        "Landroid/view/View;",
        "anchorView",
        "biasParentView",
        "",
        "H",
        "(Landroid/view/View;Landroid/view/View;)F",
        "Landroid/content/Context;",
        "context",
        "value",
        "C",
        "(Landroid/content/Context;Ljava/lang/String;)V",
        "key",
        "Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;",
        "data",
        "r",
        "(Ljava/lang/String;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)V",
        "s",
        "G",
        "(Ljava/lang/String;)Ljava/lang/String;",
        "realKey",
        "entity",
        "",
        "F",
        "(Landroid/content/Context;Ljava/lang/String;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)Ljava/lang/CharSequence;",
        "D",
        "(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;",
        "E",
        "a",
        "Ljava/lang/String;",
        "Lkotlin/Function2;",
        "b",
        "Lkotlin/jvm/functions/Function2;",
        "getOnArrowClick",
        "()Lkotlin/jvm/functions/Function2;",
        "J",
        "(Lkotlin/jvm/functions/Function2;)V",
        "onArrowClick",
        "c",
        "getOnBodyClickedListener",
        "K",
        "onBodyClickedListener",
        "",
        "d",
        "Z",
        "isMerchant",
        "()Z",
        "I",
        "(Z)V",
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
.field public final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;-><init>(Ljava/util/List;)V

    .line 4
    iput-object p1, p0, Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;->a:Ljava/lang/String;

    const/4 p1, 0x1

    .line 5
    sget v0, Lteam/opay/pay/R$layout;->osdk_item_transaction_body_single:I

    invoke-virtual {p0, p1, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    const/4 p1, 0x2

    .line 6
    sget v0, Lteam/opay/pay/R$layout;->osdk_item_transaction_body_multi:I

    invoke-virtual {p0, p1, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    const/4 p1, 0x3

    .line 7
    sget v0, Lteam/opay/pay/R$layout;->osdk_item_transaction_body_dividing_lin:I

    invoke-virtual {p0, p1, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static final A(Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;Lteam/opay/pay/history/details/DetailsBodyItem;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lteam/opay/pay/history/details/DetailsBodyItem;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;->r(Ljava/lang/String;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method

.method public static synthetic k(Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;Lteam/opay/pay/history/details/DetailsBodyItem;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;->w(Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;Lteam/opay/pay/history/details/DetailsBodyItem;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l(Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;Landroid/content/Context;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;->y(Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;Landroid/content/Context;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic m(Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;Landroid/content/Context;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;->x(Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;Landroid/content/Context;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic n(Landroid/view/View;Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;Landroid/widget/ImageView;Lcom/chad/library/adapter/base/BaseViewHolder;Landroid/widget/ImageView;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;->v(Landroid/view/View;Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;Landroid/widget/ImageView;Lcom/chad/library/adapter/base/BaseViewHolder;Landroid/widget/ImageView;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic o(Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;Lteam/opay/pay/history/details/DetailsBodyItem;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;->A(Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;Lteam/opay/pay/history/details/DetailsBodyItem;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic p(Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;Lteam/opay/pay/history/details/DetailsBodyItem;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;->z(Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;Lteam/opay/pay/history/details/DetailsBodyItem;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic q(Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;Ljava/lang/String;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;->t(Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;Ljava/lang/String;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final t(Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;Ljava/lang/String;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;->b:Lkotlin/jvm/functions/Function2;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method

.method public static final v(Landroid/view/View;Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;Landroid/widget/ImageView;Lcom/chad/library/adapter/base/BaseViewHolder;Landroid/widget/ImageView;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-static {p0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 18
    .line 19
    const-string v1, "itemView"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2, v0}, Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;->H(Landroid/view/View;Landroid/view/View;)F

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iget-object p2, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 29
    .line 30
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p4}, Landroid/view/View;->getId()I

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    invoke-static {p2, p3, p1}, Le1f;->p(Landroid/view/View;IF)V

    .line 38
    .line 39
    .line 40
    invoke-static {p0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 44
    .line 45
    return-object p0
.end method

.method public static final w(Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;Lteam/opay/pay/history/details/DetailsBodyItem;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;->c:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lteam/opay/pay/history/details/DetailsBodyItem;->a()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    const-string p1, ""

    .line 13
    .line 14
    :cond_0
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p0
.end method

.method public static final x(Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;Landroid/content/Context;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;->getValue()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;->C(Landroid/content/Context;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method

.method public static final y(Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;Landroid/content/Context;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;->getValue()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;->C(Landroid/content/Context;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method

.method public static final z(Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;Lteam/opay/pay/history/details/DetailsBodyItem;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lteam/opay/pay/history/details/DetailsBodyItem;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;->r(Ljava/lang/String;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method


# virtual methods
.method public B(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/history/details/DetailsBodyItem;)V
    .locals 3
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/history/details/DetailsBodyItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "helper"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    invoke-virtual {p2}, Lteam/opay/pay/history/details/DetailsBodyItem;->getItemType()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    if-nez v0, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x1

    .line 26
    if-ne v1, v2, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;->u(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/history/details/DetailsBodyItem;)V

    .line 29
    .line 30
    .line 31
    goto :goto_3

    .line 32
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/4 v1, 0x2

    .line 40
    if-ne v0, v1, :cond_4

    .line 41
    .line 42
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;->s(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/history/details/DetailsBodyItem;)V

    .line 43
    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_4
    :goto_2
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 47
    .line 48
    .line 49
    :goto_3
    return-void
.end method

.method public final C(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lteam/opay/pay/R$string;->clipboard_copy:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getString(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1, v0}, Lkmf;->J(Landroid/content/Context;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "<[^>]*>"

    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "\n"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "replaceAll(...)"

    .line 33
    .line 34
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p1, p2, v0}, Lteam/opay/core/android/ContextKt;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final D(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "\u00b7"

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-static {p2, v2, v3, v0, v1}, Lkotlin/text/StringsKt;->X(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Landroid/text/SpannableString;

    .line 13
    .line 14
    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    .line 18
    .line 19
    sget v1, Lteam/opay/pay/R$color;->black_85:I

    .line 20
    .line 21
    invoke-static {p1, v1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-direct {p2, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    const/16 v1, 0x11

    .line 30
    .line 31
    invoke-virtual {v0, p2, v3, p1, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 32
    .line 33
    .line 34
    move-object p2, v0

    .line 35
    :cond_0
    return-object p2
.end method

.method public final E(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "@@"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->d0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-static {p1, v0, v3, v2, v3}, Lkotlin/text/StringsKt;->f1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string p1, ""

    .line 18
    .line 19
    :goto_0
    return-object p1
.end method

.method public final F(Landroid/content/Context;Ljava/lang/String;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)Ljava/lang/CharSequence;
    .locals 9

    .line 1
    invoke-virtual {p3}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;->getMark()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;->D(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    const-string v1, " "

    .line 28
    .line 29
    invoke-virtual {p2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 30
    .line 31
    .line 32
    new-instance p2, Landroid/text/SpannableString;

    .line 33
    .line 34
    invoke-virtual {p3}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;->getMark()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    invoke-direct {p2, p3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    sget p3, Lteam/opay/pay/R$drawable;->omain_shape_e2f5eb_4:I

    .line 42
    .line 43
    invoke-static {p1, p3}, Lzq2;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    sget p3, Lteam/opay/pay/R$color;->mint:I

    .line 50
    .line 51
    invoke-static {p1, p3}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    new-instance p1, Lteam/opay/pay/history/details/BackgroundImageTagSpan;

    .line 56
    .line 57
    const/16 p3, 0xa

    .line 58
    .line 59
    invoke-static {p3}, Ljmf;->d(I)I

    .line 60
    .line 61
    .line 62
    move-result p3

    .line 63
    int-to-float p3, p3

    .line 64
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    const/4 p3, 0x4

    .line 69
    invoke-static {p3}, Ljmf;->d(I)I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    invoke-static {p3}, Ljmf;->d(I)I

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    const/4 p3, 0x2

    .line 78
    invoke-static {p3}, Ljmf;->d(I)I

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    invoke-static {p3}, Ljmf;->d(I)I

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    move-object v1, p1

    .line 87
    invoke-direct/range {v1 .. v8}, Lteam/opay/pay/history/details/BackgroundImageTagSpan;-><init>(Landroid/graphics/drawable/Drawable;ILjava/lang/Float;IIII)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2}, Landroid/text/SpannableString;->length()I

    .line 91
    .line 92
    .line 93
    move-result p3

    .line 94
    const/16 v1, 0x11

    .line 95
    .line 96
    const/4 v2, 0x0

    .line 97
    invoke-virtual {p2, p1, v2, p3, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 98
    .line 99
    .line 100
    :cond_1
    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;->D(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    :goto_1
    return-object v0
.end method

.method public final G(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "@@"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->d0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v4

    .line 10
    if-eqz v4, :cond_0

    .line 11
    .line 12
    invoke-static {p1, v0, v3, v2, v3}, Lkotlin/text/StringsKt;->n1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v0, "##"

    .line 18
    .line 19
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->d0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-static {p1, v0, v3, v2, v3}, Lkotlin/text/StringsKt;->n1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    :cond_1
    :goto_0
    return-object p1
.end method

.method public final H(Landroid/view/View;Landroid/view/View;)F
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    int-to-float p1, p1

    .line 10
    const/high16 v1, 0x40000000    # 2.0f

    .line 11
    .line 12
    div-float/2addr p1, v1

    .line 13
    add-float/2addr v0, p1

    .line 14
    const/high16 p1, 0x40a00000    # 5.0f

    .line 15
    .line 16
    invoke-static {p1}, Ljmf;->c(F)F

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    sub-float/2addr v0, p1

    .line 21
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    int-to-float p1, p1

    .line 26
    div-float/2addr v0, p1

    .line 27
    return v0
.end method

.method public final I(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;->d:Z

    .line 2
    .line 3
    return-void
.end method

.method public final J(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;->b:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-void
.end method

.method public final K(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;->c:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lteam/opay/pay/history/details/DetailsBodyItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;->B(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/history/details/DetailsBodyItem;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final r(Ljava/lang/String;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;->b:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    :cond_0
    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    :cond_1
    return-void
.end method

.method public final s(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/history/details/DetailsBodyItem;)V
    .locals 12

    .line 1
    invoke-virtual {p2}, Lteam/opay/pay/history/details/DetailsBodyItem;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0, v0}, Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget v1, Lteam/opay/pay/R$id;->details_key:I

    .line 14
    .line 15
    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 16
    .line 17
    .line 18
    sget v1, Lteam/opay/pay/R$id;->muti_recycler:I

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    .line 26
    new-instance v1, Lteam/opay/pay/history/details/holder/DetailsBodyMutiAdapter;

    .line 27
    .line 28
    invoke-direct {v1}, Lteam/opay/pay/history/details/holder/DetailsBodyMutiAdapter;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 41
    .line 42
    .line 43
    new-instance v2, Lc83;

    .line 44
    .line 45
    invoke-direct {v2, p0, v0}, Lc83;-><init>(Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Lteam/opay/pay/history/details/holder/DetailsBodyMutiAdapter;->v(Lkotlin/jvm/functions/Function1;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Lteam/opay/pay/history/details/DetailsBodyItem;->b()Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {v1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 59
    .line 60
    .line 61
    new-instance p2, Lteam/opay/pay/android/SpaceItemDecoration;

    .line 62
    .line 63
    const/4 v0, 0x2

    .line 64
    invoke-static {v0}, Ljmf;->d(I)I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    const/16 v10, 0x7c

    .line 69
    .line 70
    const/4 v11, 0x0

    .line 71
    const/4 v3, 0x0

    .line 72
    const/4 v5, 0x0

    .line 73
    const/4 v6, 0x0

    .line 74
    const/4 v7, 0x0

    .line 75
    const/4 v8, 0x0

    .line 76
    const/4 v9, 0x0

    .line 77
    move-object v2, p2

    .line 78
    invoke-direct/range {v2 .. v11}, Lteam/opay/pay/android/SpaceItemDecoration;-><init>(IIIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public final u(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/history/details/DetailsBodyItem;)V
    .locals 12

    .line 1
    invoke-virtual {p2}, Lteam/opay/pay/history/details/DetailsBodyItem;->b()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_10

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_4

    .line 16
    .line 17
    :cond_0
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p2}, Lteam/opay/pay/history/details/DetailsBodyItem;->a()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const-string v3, ""

    .line 28
    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    move-object v2, v3

    .line 32
    :cond_1
    invoke-virtual {p0, v2}, Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    sget v4, Lteam/opay/pay/R$id;->details_key:I

    .line 37
    .line 38
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v1, v2, v0}, Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;->F(Landroid/content/Context;Ljava/lang/String;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)Ljava/lang/CharSequence;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {p1, v4, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 46
    .line 47
    .line 48
    sget v2, Lteam/opay/pay/R$id;->details_key_tips_icon:I

    .line 49
    .line 50
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Landroid/widget/ImageView;

    .line 55
    .line 56
    invoke-virtual {p2}, Lteam/opay/pay/history/details/DetailsBodyItem;->a()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    if-nez v4, :cond_2

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    move-object v3, v4

    .line 64
    :goto_0
    invoke-virtual {p0, v3}, Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;->E(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    const/4 v10, 0x0

    .line 76
    const/4 v11, 0x1

    .line 77
    if-lez v4, :cond_3

    .line 78
    .line 79
    const/4 v4, 0x1

    .line 80
    goto :goto_1

    .line 81
    :cond_3
    const/4 v4, 0x0

    .line 82
    :goto_1
    invoke-static {v2, v4}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 83
    .line 84
    .line 85
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-lez v4, :cond_5

    .line 90
    .line 91
    sget v4, Lteam/opay/pay/R$id;->details_key_tips:I

    .line 92
    .line 93
    invoke-virtual {p1, v4, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 94
    .line 95
    .line 96
    sget v3, Lteam/opay/pay/R$id;->head_progress_tip_group:I

    .line 97
    .line 98
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    sget v3, Lteam/opay/pay/R$id;->details_key_tips_arrow:I

    .line 103
    .line 104
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    move-object v9, v3

    .line 109
    check-cast v9, Landroid/widget/ImageView;

    .line 110
    .line 111
    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    check-cast v3, Landroid/widget/TextView;

    .line 116
    .line 117
    iget-boolean v4, p0, Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;->d:Z

    .line 118
    .line 119
    if-eqz v4, :cond_4

    .line 120
    .line 121
    iget-object v4, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 122
    .line 123
    sget v6, Lteam/opay/pay/R$color;->no_dark_black_85:I

    .line 124
    .line 125
    invoke-static {v4, v6}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    .line 131
    .line 132
    iget-object v4, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 133
    .line 134
    sget v6, Lteam/opay/pay/R$color;->osdk_always_white_65:I

    .line 135
    .line 136
    invoke-static {v4, v6}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 145
    .line 146
    .line 147
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    invoke-static {v9, v4}, Lteam/opay/core/android/ViewKt;->t(Landroid/widget/ImageView;I)V

    .line 151
    .line 152
    .line 153
    :cond_4
    new-instance v3, Ld83;

    .line 154
    .line 155
    move-object v4, v3

    .line 156
    move-object v6, p0

    .line 157
    move-object v7, v2

    .line 158
    move-object v8, p1

    .line 159
    invoke-direct/range {v4 .. v9}, Ld83;-><init>(Landroid/view/View;Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;Landroid/widget/ImageView;Lcom/chad/library/adapter/base/BaseViewHolder;Landroid/widget/ImageView;)V

    .line 160
    .line 161
    .line 162
    invoke-static {v2, v3}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 163
    .line 164
    .line 165
    :cond_5
    invoke-virtual {v0}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;->getType()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    const-string v3, "date"

    .line 170
    .line 171
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    const/4 v3, 0x0

    .line 176
    if-eqz v2, :cond_7

    .line 177
    .line 178
    sget-object v2, Ld1f;->a:Ld1f;

    .line 179
    .line 180
    invoke-virtual {v0}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;->getValue()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    invoke-static {v4}, Le1f;->o(Ljava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    invoke-virtual {v2, v4}, Ld1f;->c(Ljava/lang/String;)Ljava/util/Date;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    if-eqz v2, :cond_6

    .line 193
    .line 194
    invoke-static {v2}, Lg33;->b(Ljava/util/Date;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    goto :goto_2

    .line 199
    :cond_6
    move-object v2, v3

    .line 200
    goto :goto_2

    .line 201
    :cond_7
    invoke-virtual {v0}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;->getValue()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    :goto_2
    sget v4, Lteam/opay/pay/R$id;->details_value:I

    .line 206
    .line 207
    invoke-static {v2}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    invoke-virtual {p1, v4, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    check-cast v2, Landroid/widget/TextView;

    .line 219
    .line 220
    sget v4, Lteam/opay/pay/R$id;->account_number_copy:I

    .line 221
    .line 222
    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    check-cast v4, Landroid/widget/ImageView;

    .line 227
    .line 228
    sget v5, Lteam/opay/pay/R$id;->arrow_right:I

    .line 229
    .line 230
    invoke-virtual {p1, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 231
    .line 232
    .line 233
    move-result-object v5

    .line 234
    check-cast v5, Landroid/widget/ImageView;

    .line 235
    .line 236
    invoke-virtual {v0}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;->getColor()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v6

    .line 240
    if-eqz v6, :cond_9

    .line 241
    .line 242
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 243
    .line 244
    .line 245
    move-result v6

    .line 246
    if-nez v6, :cond_8

    .line 247
    .line 248
    goto :goto_3

    .line 249
    :cond_8
    invoke-virtual {v0}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;->getColor()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v6

    .line 253
    sget-object v7, Lc03;->a:Lc03;

    .line 254
    .line 255
    const/4 v8, 0x2

    .line 256
    invoke-static {v7, v6, v3, v8, v3}, Lc03;->f(Lc03;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)I

    .line 257
    .line 258
    .line 259
    move-result v6

    .line 260
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 261
    .line 262
    .line 263
    :cond_9
    :goto_3
    invoke-virtual {v0}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;->getCanCopy()Ljava/lang/Boolean;

    .line 264
    .line 265
    .line 266
    move-result-object v6

    .line 267
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 268
    .line 269
    invoke-static {v6, v7}, Loj2;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v6

    .line 273
    check-cast v6, Ljava/lang/Boolean;

    .line 274
    .line 275
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 276
    .line 277
    .line 278
    move-result v6

    .line 279
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 280
    .line 281
    .line 282
    invoke-static {v4, v6}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v0}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;->getLink()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v7

    .line 289
    if-eqz v7, :cond_a

    .line 290
    .line 291
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 292
    .line 293
    .line 294
    move-result v7

    .line 295
    if-nez v7, :cond_b

    .line 296
    .line 297
    :cond_a
    invoke-virtual {v0}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;->getType()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v7

    .line 301
    const-string v8, "mobile"

    .line 302
    .line 303
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v7

    .line 307
    if-nez v7, :cond_b

    .line 308
    .line 309
    invoke-virtual {v0}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;->getType()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v7

    .line 313
    const-string v8, "voucherPackage"

    .line 314
    .line 315
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    move-result v7

    .line 319
    if-eqz v7, :cond_c

    .line 320
    .line 321
    :cond_b
    const/4 v10, 0x1

    .line 322
    :cond_c
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 323
    .line 324
    .line 325
    invoke-static {v5, v10}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v0}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;->getType()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v7

    .line 332
    const-string v8, "validationCheck"

    .line 333
    .line 334
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    move-result v7

    .line 338
    if-eqz v7, :cond_d

    .line 339
    .line 340
    iget-object v7, p0, Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;->c:Lkotlin/jvm/functions/Function2;

    .line 341
    .line 342
    if-eqz v7, :cond_d

    .line 343
    .line 344
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 345
    .line 346
    const-string v1, "itemView"

    .line 347
    .line 348
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    new-instance v1, Le83;

    .line 352
    .line 353
    invoke-direct {v1, p0, p2, v0}, Le83;-><init>(Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;Lteam/opay/pay/history/details/DetailsBodyItem;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)V

    .line 354
    .line 355
    .line 356
    invoke-static {p1, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 357
    .line 358
    .line 359
    goto :goto_4

    .line 360
    :cond_d
    const-string p1, "apply(...)"

    .line 361
    .line 362
    const/16 v7, 0x10

    .line 363
    .line 364
    if-eqz v6, :cond_e

    .line 365
    .line 366
    invoke-static {v7}, Ljmf;->d(I)I

    .line 367
    .line 368
    .line 369
    move-result p2

    .line 370
    invoke-static {v4, p2}, Lteam/opay/core/android/ViewKt;->c(Landroid/view/View;I)V

    .line 371
    .line 372
    .line 373
    new-instance p2, Lf83;

    .line 374
    .line 375
    invoke-direct {p2, p0, v1, v0}, Lf83;-><init>(Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;Landroid/content/Context;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)V

    .line 376
    .line 377
    .line 378
    invoke-static {v4, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 379
    .line 380
    .line 381
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 382
    .line 383
    .line 384
    invoke-static {v7}, Ljmf;->d(I)I

    .line 385
    .line 386
    .line 387
    move-result p2

    .line 388
    invoke-static {v2, p2}, Lteam/opay/core/android/ViewKt;->c(Landroid/view/View;I)V

    .line 389
    .line 390
    .line 391
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    new-instance p1, Lg83;

    .line 395
    .line 396
    invoke-direct {p1, p0, v1, v0}, Lg83;-><init>(Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;Landroid/content/Context;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)V

    .line 397
    .line 398
    .line 399
    invoke-static {v2, p1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 400
    .line 401
    .line 402
    goto :goto_4

    .line 403
    :cond_e
    if-eqz v10, :cond_f

    .line 404
    .line 405
    invoke-static {v7}, Ljmf;->d(I)I

    .line 406
    .line 407
    .line 408
    move-result v1

    .line 409
    invoke-static {v5, v1}, Lteam/opay/core/android/ViewKt;->c(Landroid/view/View;I)V

    .line 410
    .line 411
    .line 412
    new-instance v1, Lh83;

    .line 413
    .line 414
    invoke-direct {v1, p0, p2, v0}, Lh83;-><init>(Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;Lteam/opay/pay/history/details/DetailsBodyItem;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)V

    .line 415
    .line 416
    .line 417
    invoke-static {v5, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 418
    .line 419
    .line 420
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 421
    .line 422
    .line 423
    invoke-static {v7}, Ljmf;->d(I)I

    .line 424
    .line 425
    .line 426
    move-result v1

    .line 427
    invoke-static {v2, v1}, Lteam/opay/core/android/ViewKt;->c(Landroid/view/View;I)V

    .line 428
    .line 429
    .line 430
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    new-instance p1, Li83;

    .line 434
    .line 435
    invoke-direct {p1, p0, p2, v0}, Li83;-><init>(Lteam/opay/pay/history/details/holder/DetailsBodyAdapter;Lteam/opay/pay/history/details/DetailsBodyItem;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;)V

    .line 436
    .line 437
    .line 438
    invoke-static {v2, p1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 439
    .line 440
    .line 441
    goto :goto_4

    .line 442
    :cond_f
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    .line 444
    .line 445
    :cond_10
    :goto_4
    return-void
.end method
