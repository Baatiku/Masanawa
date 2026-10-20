.class public final Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;
.super Landroid/widget/FrameLayout;
.source "FlowDetailView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J1\u0010\r\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00062\u0010\u0010\u000c\u001a\u000c\u0012\u0004\u0012\u00020\n0\tj\u0002`\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eJ!\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001f\u0010\u0019\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u001f\u0010\u001e\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fR\u001b\u0010\u0018\u001a\u00020\u00178BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#\u00a8\u0006$"
    }
    d2 = {
        "Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;",
        "Landroid/widget/FrameLayout;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Lteam/opay/business/transfer/flow/api/TransactionEntity;",
        "info",
        "commission",
        "Lkotlin/Function0;",
        "",
        "Lteam/opay/core/common/android/Block;",
        "callback",
        "g",
        "(Lteam/opay/business/transfer/flow/api/TransactionEntity;Lteam/opay/business/transfer/flow/api/TransactionEntity;Lkotlin/jvm/functions/Function0;)V",
        "Landroid/widget/TextView;",
        "view",
        "",
        "value",
        "f",
        "(Landroid/widget/TextView;Ljava/lang/String;)V",
        "",
        "isAmount",
        "Lj86;",
        "binding",
        "m",
        "(ZLj86;)V",
        "Landroidx/appcompat/widget/AppCompatTextView;",
        "deleteValue",
        "delete",
        "l",
        "(Landroidx/appcompat/widget/AppCompatTextView;Z)V",
        "a",
        "Lcom/hi/dhl/binding/viewbind/ViewGroupViewBinding;",
        "getBinding",
        "()Lj86;",
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


# static fields
.field public static final synthetic b:[Lzo7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lzo7<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/hi/dhl/binding/viewbind/ViewGroupViewBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    .line 2
    .line 3
    const-string v1, "getBinding()Lteam/opay/business/transfer/flow/databinding/FlowItemTransactionDetailBodyBinding;"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-class v3, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;

    .line 7
    .line 8
    const-string v4, "binding"

    .line 9
    .line 10
    invoke-direct {v0, v3, v4, v1, v2}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->i(Lkotlin/jvm/internal/PropertyReference1;)Lbp7;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x1

    .line 18
    new-array v1, v1, [Lzo7;

    .line 19
    .line 20
    aput-object v0, v1, v2

    .line 21
    .line 22
    sput-object v1, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;->b:[Lzo7;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
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
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Lcom/hi/dhl/binding/viewbind/ViewGroupViewBinding;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const-string v0, "from(getContext())"

    .line 20
    .line 21
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 v5, 0x4

    .line 25
    const/4 v6, 0x0

    .line 26
    const-class v2, Lj86;

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    move-object v1, p1

    .line 30
    invoke-direct/range {v1 .. v6}, Lcom/hi/dhl/binding/viewbind/ViewGroupViewBinding;-><init>(Ljava/lang/Class;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;->a:Lcom/hi/dhl/binding/viewbind/ViewGroupViewBinding;

    .line 34
    .line 35
    return-void
.end method

.method public static synthetic a(Lteam/opay/business/transfer/flow/api/TransactionEntity;Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;->j(Lteam/opay/business/transfer/flow/api/TransactionEntity;Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;->h(Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;Lteam/opay/business/transfer/flow/api/TransactionEntity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;->k(Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;Lteam/opay/business/transfer/flow/api/TransactionEntity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;->i(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Lj86;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;->n(Lj86;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final getBinding()Lj86;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;->a:Lcom/hi/dhl/binding/viewbind/ViewGroupViewBinding;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;->b:[Lzo7;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aget-object v1, v1, v2

    .line 7
    .line 8
    invoke-virtual {v0, p0, v1}, Lcom/hi/dhl/binding/viewbind/ViewGroupViewBinding;->f(Landroid/view/ViewGroup;Lzo7;)Lxyf;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lj86;

    .line 13
    .line 14
    return-object v0
.end method

.method public static final h(Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;->getBinding()Lj86;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lj86;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    .line 8
    .line 9
    .line 10
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method

.method public static final i(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final j(Lteam/opay/business/transfer/flow/api/TransactionEntity;Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;)Lkotlin/Unit;
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

.method public static final k(Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;Lteam/opay/business/transfer/flow/api/TransactionEntity;)Lkotlin/Unit;
    .locals 7

    .line 1
    new-instance v6, Lteam/opay/business/widget/TipPopuWindow;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v0, "getContext(...)"

    .line 8
    .line 9
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/api/TransactionEntity;->getTip()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    const-string p1, ""

    .line 19
    .line 20
    :cond_0
    move-object v2, p1

    .line 21
    const/4 v4, 0x4

    .line 22
    const/4 v5, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    move-object v0, v6

    .line 25
    invoke-direct/range {v0 .. v5}, Lteam/opay/business/widget/TipPopuWindow;-><init>(Landroid/content/Context;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;->getBinding()Lj86;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    iget-object p0, p0, Lj86;->j:Landroidx/appcompat/widget/AppCompatImageView;

    .line 33
    .line 34
    invoke-virtual {v6, p0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 35
    .line 36
    .line 37
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 38
    .line 39
    return-object p0
.end method

.method public static final n(Lj86;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;)Lkotlin/Unit;
    .locals 4

    .line 1
    iget-object v0, p0, Lj86;->i:Landroidx/appcompat/widget/AppCompatImageView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isActivated()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    xor-int/2addr v1, v2

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lj86;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 13
    .line 14
    iget-object v1, p0, Lj86;->i:Landroidx/appcompat/widget/AppCompatImageView;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/view/View;->isActivated()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const-string v3, ""

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    move-object p1, v3

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-object p1, p2

    .line 29
    :cond_1
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lj86;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 33
    .line 34
    iget-object p0, p0, Lj86;->i:Landroidx/appcompat/widget/AppCompatImageView;

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->isActivated()Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_3

    .line 41
    .line 42
    if-nez p3, :cond_2

    .line 43
    .line 44
    move-object p3, v3

    .line 45
    :cond_2
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p4, p1, v2}, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;->l(Landroidx/appcompat/widget/AppCompatTextView;Z)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    const/4 p0, 0x0

    .line 62
    invoke-virtual {p4, p1, p0}, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;->l(Landroidx/appcompat/widget/AppCompatTextView;Z)V

    .line 63
    .line 64
    .line 65
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 66
    .line 67
    return-object p0
.end method


# virtual methods
.method public final f(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 8

    .line 1
    sget-object v0, Lgwa;->v:Lgwa$a;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Lgwa$a;->a(Ljava/lang/String;)Lteam/opay/business/transfer/flow/internal/StatusBean;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 16
    .line 17
    const/16 v1, 0xa

    .line 18
    .line 19
    int-to-float v1, v1

    .line 20
    mul-float v0, v0, v1

    .line 21
    .line 22
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-class v1, Ljava/lang/Integer;

    .line 27
    .line 28
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 33
    .line 34
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    const-string v5, "return number type not support"

    .line 43
    .line 44
    if-eqz v4, :cond_0

    .line 45
    .line 46
    check-cast v0, Ljava/lang/Integer;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 50
    .line 51
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_1

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 71
    .line 72
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-eqz v4, :cond_2

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    .line 83
    .line 84
    .line 85
    move-result-wide v6

    .line 86
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Ljava/lang/Integer;

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 94
    .line 95
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_f

    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 106
    .line 107
    .line 108
    move-result-wide v6

    .line 109
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    check-cast v0, Ljava/lang/Integer;

    .line 114
    .line 115
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 128
    .line 129
    const/4 v4, 0x3

    .line 130
    int-to-float v4, v4

    .line 131
    mul-float v2, v2, v4

    .line 132
    .line 133
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    if-eqz v4, :cond_3

    .line 150
    .line 151
    check-cast v2, Ljava/lang/Integer;

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_3
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 155
    .line 156
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    if-eqz v4, :cond_4

    .line 165
    .line 166
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    goto :goto_1

    .line 175
    :cond_4
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 176
    .line 177
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v4

    .line 185
    if-eqz v4, :cond_5

    .line 186
    .line 187
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    .line 188
    .line 189
    .line 190
    move-result-wide v1

    .line 191
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    move-object v2, v1

    .line 196
    check-cast v2, Ljava/lang/Integer;

    .line 197
    .line 198
    goto :goto_1

    .line 199
    :cond_5
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 200
    .line 201
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    if-eqz v1, :cond_e

    .line 210
    .line 211
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 212
    .line 213
    .line 214
    move-result-wide v1

    .line 215
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    move-object v2, v1

    .line 220
    check-cast v2, Ljava/lang/Integer;

    .line 221
    .line 222
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/internal/StatusBean;->d()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1, v0, v1, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/internal/StatusBean;->c()I

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    invoke-static {v0, v1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 249
    .line 250
    .line 251
    new-instance v0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 252
    .line 253
    invoke-direct {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;-><init>()V

    .line 254
    .line 255
    .line 256
    const/high16 v1, 0x41a00000    # 20.0f

    .line 257
    .line 258
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 271
    .line 272
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    mul-float v2, v2, v1

    .line 277
    .line 278
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    const-class v2, Ljava/lang/Float;

    .line 283
    .line 284
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 285
    .line 286
    .line 287
    move-result-object v4

    .line 288
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 289
    .line 290
    .line 291
    move-result-object v6

    .line 292
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result v6

    .line 296
    if-eqz v6, :cond_6

    .line 297
    .line 298
    goto :goto_2

    .line 299
    :cond_6
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 300
    .line 301
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 302
    .line 303
    .line 304
    move-result-object v6

    .line 305
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result v6

    .line 309
    if-eqz v6, :cond_7

    .line 310
    .line 311
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 312
    .line 313
    .line 314
    move-result v1

    .line 315
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    check-cast v1, Ljava/lang/Float;

    .line 320
    .line 321
    goto :goto_2

    .line 322
    :cond_7
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 323
    .line 324
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 325
    .line 326
    .line 327
    move-result-object v6

    .line 328
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    move-result v6

    .line 332
    if-eqz v6, :cond_8

    .line 333
    .line 334
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    .line 335
    .line 336
    .line 337
    move-result-wide v6

    .line 338
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 339
    .line 340
    .line 341
    move-result-object v1

    .line 342
    check-cast v1, Ljava/lang/Float;

    .line 343
    .line 344
    goto :goto_2

    .line 345
    :cond_8
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 346
    .line 347
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 348
    .line 349
    .line 350
    move-result-object v6

    .line 351
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    move-result v4

    .line 355
    if-eqz v4, :cond_d

    .line 356
    .line 357
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 358
    .line 359
    .line 360
    move-result-wide v6

    .line 361
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    check-cast v1, Ljava/lang/Float;

    .line 366
    .line 367
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 368
    .line 369
    .line 370
    move-result v1

    .line 371
    const/4 v4, 0x0

    .line 372
    invoke-virtual {v0, v4, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setAllCorners(IF)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    const-string v1, "build(...)"

    .line 381
    .line 382
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    new-instance v1, Lteam/opay/core/common/android/ShapeConfig$Builder;

    .line 386
    .line 387
    invoke-direct {v1}, Lteam/opay/core/common/android/ShapeConfig$Builder;-><init>()V

    .line 388
    .line 389
    .line 390
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 391
    .line 392
    .line 393
    move-result-object v4

    .line 394
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/internal/StatusBean;->a()I

    .line 395
    .line 396
    .line 397
    move-result v6

    .line 398
    invoke-static {v4, v6}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 399
    .line 400
    .line 401
    move-result v4

    .line 402
    invoke-virtual {v1, v4}, Lteam/opay/core/common/android/ShapeConfig$Builder;->k(I)Lteam/opay/core/common/android/ShapeConfig$Builder;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 407
    .line 408
    .line 409
    move-result-object v4

    .line 410
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 411
    .line 412
    .line 413
    move-result-object v4

    .line 414
    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    .line 415
    .line 416
    const/4 v6, 0x1

    .line 417
    int-to-float v6, v6

    .line 418
    mul-float v4, v4, v6

    .line 419
    .line 420
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 421
    .line 422
    .line 423
    move-result-object v4

    .line 424
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 425
    .line 426
    .line 427
    move-result-object v2

    .line 428
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 429
    .line 430
    .line 431
    move-result-object v3

    .line 432
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 433
    .line 434
    .line 435
    move-result v3

    .line 436
    if-eqz v3, :cond_9

    .line 437
    .line 438
    goto :goto_3

    .line 439
    :cond_9
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 440
    .line 441
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 442
    .line 443
    .line 444
    move-result-object v3

    .line 445
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 446
    .line 447
    .line 448
    move-result v3

    .line 449
    if-eqz v3, :cond_a

    .line 450
    .line 451
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 452
    .line 453
    .line 454
    move-result v2

    .line 455
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 456
    .line 457
    .line 458
    move-result-object v2

    .line 459
    move-object v4, v2

    .line 460
    check-cast v4, Ljava/lang/Float;

    .line 461
    .line 462
    goto :goto_3

    .line 463
    :cond_a
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 464
    .line 465
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 466
    .line 467
    .line 468
    move-result-object v3

    .line 469
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 470
    .line 471
    .line 472
    move-result v3

    .line 473
    if-eqz v3, :cond_b

    .line 474
    .line 475
    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    .line 476
    .line 477
    .line 478
    move-result-wide v2

    .line 479
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 480
    .line 481
    .line 482
    move-result-object v2

    .line 483
    move-object v4, v2

    .line 484
    check-cast v4, Ljava/lang/Float;

    .line 485
    .line 486
    goto :goto_3

    .line 487
    :cond_b
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 488
    .line 489
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 490
    .line 491
    .line 492
    move-result-object v3

    .line 493
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 494
    .line 495
    .line 496
    move-result v2

    .line 497
    if-eqz v2, :cond_c

    .line 498
    .line 499
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    .line 500
    .line 501
    .line 502
    move-result-wide v2

    .line 503
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 504
    .line 505
    .line 506
    move-result-object v2

    .line 507
    move-object v4, v2

    .line 508
    check-cast v4, Ljava/lang/Float;

    .line 509
    .line 510
    :goto_3
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 511
    .line 512
    .line 513
    move-result v2

    .line 514
    invoke-virtual {v1, v2}, Lteam/opay/core/common/android/ShapeConfig$Builder;->j(F)Lteam/opay/core/common/android/ShapeConfig$Builder;

    .line 515
    .line 516
    .line 517
    move-result-object v1

    .line 518
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/internal/StatusBean;->b()I

    .line 519
    .line 520
    .line 521
    move-result p2

    .line 522
    invoke-virtual {v1, p2}, Lteam/opay/core/common/android/ShapeConfig$Builder;->i(I)Lteam/opay/core/common/android/ShapeConfig$Builder;

    .line 523
    .line 524
    .line 525
    move-result-object p2

    .line 526
    invoke-virtual {p2}, Lteam/opay/core/common/android/ShapeConfig$Builder;->a()Lteam/opay/core/common/android/ShapeConfig;

    .line 527
    .line 528
    .line 529
    move-result-object p2

    .line 530
    invoke-static {p1, v0, p2}, Ls0g;->a(Landroid/view/View;Lcom/google/android/material/shape/ShapeAppearanceModel;Lteam/opay/core/common/android/ShapeConfig;)V

    .line 531
    .line 532
    .line 533
    return-void

    .line 534
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 535
    .line 536
    invoke-direct {p1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 537
    .line 538
    .line 539
    throw p1

    .line 540
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 541
    .line 542
    invoke-direct {p1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 543
    .line 544
    .line 545
    throw p1

    .line 546
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 547
    .line 548
    invoke-direct {p1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 549
    .line 550
    .line 551
    throw p1

    .line 552
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 553
    .line 554
    invoke-direct {p1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    throw p1
.end method

.method public final g(Lteam/opay/business/transfer/flow/api/TransactionEntity;Lteam/opay/business/transfer/flow/api/TransactionEntity;Lkotlin/jvm/functions/Function0;)V
    .locals 17
    .param p1    # Lteam/opay/business/transfer/flow/api/TransactionEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/business/transfer/flow/api/TransactionEntity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/transfer/flow/api/TransactionEntity;",
            "Lteam/opay/business/transfer/flow/api/TransactionEntity;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    const-string v3, "info"

    .line 8
    .line 9
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v3, "callback"

    .line 13
    .line 14
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-direct/range {p0 .. p0}, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;->getBinding()Lj86;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    iget-object v3, v3, Lj86;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 22
    .line 23
    invoke-virtual/range {p1 .. p1}, Lteam/opay/business/transfer/flow/api/TransactionEntity;->getKey()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    const-string v5, ""

    .line 28
    .line 29
    if-nez v4, :cond_0

    .line 30
    .line 31
    move-object v4, v5

    .line 32
    :cond_0
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual/range {p1 .. p1}, Lteam/opay/business/transfer/flow/api/TransactionEntity;->getColor()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const/4 v4, 0x0

    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    invoke-static {v3}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    if-eqz v6, :cond_1

    .line 47
    .line 48
    move-object v3, v4

    .line 49
    :cond_1
    if-eqz v3, :cond_2

    .line 50
    .line 51
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    invoke-direct/range {p0 .. p0}, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;->getBinding()Lj86;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    iget-object v6, v6, Lj86;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 60
    .line 61
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    .line 63
    .line 64
    invoke-direct/range {p0 .. p0}, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;->getBinding()Lj86;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    iget-object v6, v6, Lj86;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 69
    .line 70
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lteam/opay/business/transfer/flow/api/TransactionEntity;->getLink()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    const/4 v6, 0x0

    .line 82
    const/4 v7, 0x1

    .line 83
    if-eqz v3, :cond_3

    .line 84
    .line 85
    invoke-static {v3}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-eqz v3, :cond_4

    .line 90
    .line 91
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lteam/opay/business/transfer/flow/api/TransactionEntity;->getCode()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    const-string v8, "combinationReversedFlow"

    .line 96
    .line 97
    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-eqz v3, :cond_5

    .line 102
    .line 103
    :cond_4
    const/4 v3, 0x1

    .line 104
    goto :goto_0

    .line 105
    :cond_5
    const/4 v3, 0x0

    .line 106
    :goto_0
    invoke-direct/range {p0 .. p0}, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;->getBinding()Lj86;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    iget-object v8, v8, Lj86;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 111
    .line 112
    invoke-virtual {v8, v3}, Landroid/view/View;->setActivated(Z)V

    .line 113
    .line 114
    .line 115
    invoke-direct/range {p0 .. p0}, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;->getBinding()Lj86;

    .line 116
    .line 117
    .line 118
    move-result-object v8

    .line 119
    iget-object v8, v8, Lj86;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 120
    .line 121
    const-string v9, "arrowRight"

    .line 122
    .line 123
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-static {v8, v3}, Lg0g;->j(Landroid/view/View;Z)V

    .line 127
    .line 128
    .line 129
    invoke-direct/range {p0 .. p0}, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;->getBinding()Lj86;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    iget-object v3, v3, Lj86;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 134
    .line 135
    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    new-instance v8, Lg66;

    .line 139
    .line 140
    invoke-direct {v8, v0}, Lg66;-><init>(Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;)V

    .line 141
    .line 142
    .line 143
    invoke-static {v3, v8}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 144
    .line 145
    .line 146
    invoke-direct/range {p0 .. p0}, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;->getBinding()Lj86;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    iget-object v3, v3, Lj86;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 151
    .line 152
    const-string v8, "detailsValue"

    .line 153
    .line 154
    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    new-instance v9, Lh66;

    .line 158
    .line 159
    invoke-direct {v9, v2}, Lh66;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 160
    .line 161
    .line 162
    invoke-static {v3, v9}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual/range {p1 .. p1}, Lteam/opay/business/transfer/flow/api/TransactionEntity;->getCopyFlag()Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    if-nez v2, :cond_6

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    if-ne v2, v7, :cond_7

    .line 177
    .line 178
    const/4 v2, 0x1

    .line 179
    goto :goto_2

    .line 180
    :cond_7
    :goto_1
    const/4 v2, 0x0

    .line 181
    :goto_2
    invoke-direct/range {p0 .. p0}, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;->getBinding()Lj86;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    iget-object v3, v3, Lj86;->h:Landroidx/appcompat/widget/AppCompatImageView;

    .line 186
    .line 187
    const-string v9, "ivCopy"

    .line 188
    .line 189
    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-static {v3, v2}, Lg0g;->j(Landroid/view/View;Z)V

    .line 193
    .line 194
    .line 195
    invoke-direct/range {p0 .. p0}, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;->getBinding()Lj86;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    iget-object v2, v2, Lj86;->h:Landroidx/appcompat/widget/AppCompatImageView;

    .line 200
    .line 201
    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    new-instance v3, Li66;

    .line 205
    .line 206
    invoke-direct {v3, v1, v0}, Li66;-><init>(Lteam/opay/business/transfer/flow/api/TransactionEntity;Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;)V

    .line 207
    .line 208
    .line 209
    invoke-static {v2, v3}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual/range {p1 .. p1}, Lteam/opay/business/transfer/flow/api/TransactionEntity;->getAmountType()Z

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    if-eqz v2, :cond_e

    .line 217
    .line 218
    new-instance v3, Lteam/opay/core/common/amount/MoneyAmount;

    .line 219
    .line 220
    invoke-virtual/range {p1 .. p1}, Lteam/opay/business/transfer/flow/api/TransactionEntity;->getValue()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v8

    .line 224
    invoke-virtual/range {p1 .. p1}, Lteam/opay/business/transfer/flow/api/TransactionEntity;->getCurrency()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v9

    .line 228
    if-nez v9, :cond_8

    .line 229
    .line 230
    move-object v9, v5

    .line 231
    :cond_8
    invoke-direct {v3, v8, v9}, Lteam/opay/core/common/amount/MoneyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-direct/range {p0 .. p0}, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;->getBinding()Lj86;

    .line 235
    .line 236
    .line 237
    move-result-object v8

    .line 238
    iget-object v8, v8, Lj86;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 239
    .line 240
    invoke-virtual {v3, v5}, Lteam/opay/core/common/amount/MoneyAmount;->toText(Ljava/lang/String;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v9

    .line 244
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual/range {p1 .. p1}, Lteam/opay/business/transfer/flow/api/TransactionEntity;->getCode()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v8

    .line 251
    const-string v9, "fee"

    .line 252
    .line 253
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v8

    .line 257
    if-eqz v8, :cond_17

    .line 258
    .line 259
    if-eqz p2, :cond_9

    .line 260
    .line 261
    invoke-virtual/range {p2 .. p2}, Lteam/opay/business/transfer/flow/api/TransactionEntity;->getValue()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v8

    .line 265
    goto :goto_3

    .line 266
    :cond_9
    move-object v8, v4

    .line 267
    :goto_3
    if-eqz v8, :cond_17

    .line 268
    .line 269
    invoke-static {v8}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 270
    .line 271
    .line 272
    move-result v8

    .line 273
    if-eqz v8, :cond_a

    .line 274
    .line 275
    goto/16 :goto_a

    .line 276
    .line 277
    :cond_a
    new-instance v8, Lteam/opay/core/common/amount/MoneyAmount;

    .line 278
    .line 279
    if-eqz p2, :cond_b

    .line 280
    .line 281
    invoke-virtual/range {p2 .. p2}, Lteam/opay/business/transfer/flow/api/TransactionEntity;->getValue()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v9

    .line 285
    goto :goto_4

    .line 286
    :cond_b
    move-object v9, v4

    .line 287
    :goto_4
    if-eqz p2, :cond_c

    .line 288
    .line 289
    invoke-virtual/range {p2 .. p2}, Lteam/opay/business/transfer/flow/api/TransactionEntity;->getCurrency()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    :cond_c
    if-nez v4, :cond_d

    .line 294
    .line 295
    move-object v4, v5

    .line 296
    :cond_d
    invoke-direct {v8, v9, v4}, Lteam/opay/core/common/amount/MoneyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    sget-object v4, Lteam/opay/core/common/amount/MoneyAmount;->Companion:Lteam/opay/core/common/amount/MoneyAmount$Companion;

    .line 300
    .line 301
    invoke-virtual {v4}, Lteam/opay/core/common/amount/MoneyAmount$Companion;->a()Lteam/opay/core/common/amount/MoneyAmount;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    invoke-virtual {v8, v4}, Lteam/opay/core/common/amount/MoneyAmount;->compareTo(Lteam/opay/core/common/amount/MoneyAmount;)I

    .line 306
    .line 307
    .line 308
    move-result v4

    .line 309
    if-lez v4, :cond_17

    .line 310
    .line 311
    invoke-direct/range {p0 .. p0}, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;->getBinding()Lj86;

    .line 312
    .line 313
    .line 314
    move-result-object v4

    .line 315
    iget-object v4, v4, Lj86;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 316
    .line 317
    invoke-virtual {v3, v5}, Lteam/opay/core/common/amount/MoneyAmount;->toText(Ljava/lang/String;)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v9

    .line 321
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    .line 323
    .line 324
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v0, v4, v7}, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;->l(Landroidx/appcompat/widget/AppCompatTextView;Z)V

    .line 328
    .line 329
    .line 330
    invoke-static {v4}, Lg0g;->h(Landroid/view/View;)V

    .line 331
    .line 332
    .line 333
    invoke-direct/range {p0 .. p0}, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;->getBinding()Lj86;

    .line 334
    .line 335
    .line 336
    move-result-object v4

    .line 337
    iget-object v4, v4, Lj86;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 338
    .line 339
    invoke-virtual {v3, v8}, Lteam/opay/core/common/amount/MoneyAmount;->minus(Lteam/opay/core/common/amount/MoneyAmount;)Lteam/opay/core/common/amount/MoneyAmount;

    .line 340
    .line 341
    .line 342
    move-result-object v3

    .line 343
    invoke-virtual {v3, v5}, Lteam/opay/core/common/amount/MoneyAmount;->toText(Ljava/lang/String;)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v3

    .line 347
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    .line 349
    .line 350
    goto/16 :goto_a

    .line 351
    .line 352
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lteam/opay/business/transfer/flow/api/TransactionEntity;->getCode()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v3

    .line 356
    const-string v9, "E-PIN"

    .line 357
    .line 358
    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    move-result v9

    .line 362
    if-eqz v9, :cond_14

    .line 363
    .line 364
    invoke-virtual/range {p1 .. p1}, Lteam/opay/business/transfer/flow/api/TransactionEntity;->getValue()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v3

    .line 368
    if-eqz v3, :cond_12

    .line 369
    .line 370
    new-instance v8, Ljava/util/ArrayList;

    .line 371
    .line 372
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 373
    .line 374
    .line 375
    move-result v4

    .line 376
    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 377
    .line 378
    .line 379
    const/4 v4, 0x0

    .line 380
    const/4 v9, 0x0

    .line 381
    :goto_5
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 382
    .line 383
    .line 384
    move-result v10

    .line 385
    if-ge v4, v10, :cond_11

    .line 386
    .line 387
    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 388
    .line 389
    .line 390
    move-result v10

    .line 391
    add-int/lit8 v11, v9, 0x1

    .line 392
    .line 393
    const/4 v12, 0x3

    .line 394
    if-lt v9, v12, :cond_10

    .line 395
    .line 396
    invoke-static {v3}, Lkotlin/text/StringsKt;->k0(Ljava/lang/CharSequence;)I

    .line 397
    .line 398
    .line 399
    move-result v12

    .line 400
    add-int/lit8 v12, v12, -0x2

    .line 401
    .line 402
    if-le v9, v12, :cond_f

    .line 403
    .line 404
    goto :goto_6

    .line 405
    :cond_f
    const-string v9, "*"

    .line 406
    .line 407
    goto :goto_7

    .line 408
    :cond_10
    :goto_6
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 409
    .line 410
    .line 411
    move-result-object v9

    .line 412
    :goto_7
    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 413
    .line 414
    .line 415
    add-int/lit8 v4, v4, 0x1

    .line 416
    .line 417
    move v9, v11

    .line 418
    goto :goto_5

    .line 419
    :cond_11
    const/16 v15, 0x3e

    .line 420
    .line 421
    const/16 v16, 0x0

    .line 422
    .line 423
    const-string v9, ""

    .line 424
    .line 425
    const/4 v10, 0x0

    .line 426
    const/4 v11, 0x0

    .line 427
    const/4 v12, 0x0

    .line 428
    const/4 v13, 0x0

    .line 429
    const/4 v14, 0x0

    .line 430
    invoke-static/range {v8 .. v16}, Lkotlin/collections/CollectionsKt;->r0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v4

    .line 434
    :cond_12
    if-nez v4, :cond_13

    .line 435
    .line 436
    goto :goto_8

    .line 437
    :cond_13
    move-object v5, v4

    .line 438
    :goto_8
    invoke-direct/range {p0 .. p0}, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;->getBinding()Lj86;

    .line 439
    .line 440
    .line 441
    move-result-object v3

    .line 442
    iget-object v3, v3, Lj86;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 443
    .line 444
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    .line 446
    .line 447
    goto :goto_a

    .line 448
    :cond_14
    const-string v4, "status"

    .line 449
    .line 450
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 451
    .line 452
    .line 453
    move-result v3

    .line 454
    if-eqz v3, :cond_15

    .line 455
    .line 456
    invoke-direct/range {p0 .. p0}, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;->getBinding()Lj86;

    .line 457
    .line 458
    .line 459
    move-result-object v3

    .line 460
    iget-object v3, v3, Lj86;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 461
    .line 462
    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    invoke-virtual/range {p1 .. p1}, Lteam/opay/business/transfer/flow/api/TransactionEntity;->getValue()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v4

    .line 469
    invoke-virtual {v0, v3, v4}, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;->f(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    goto :goto_a

    .line 473
    :cond_15
    invoke-direct/range {p0 .. p0}, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;->getBinding()Lj86;

    .line 474
    .line 475
    .line 476
    move-result-object v3

    .line 477
    iget-object v3, v3, Lj86;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 478
    .line 479
    invoke-virtual/range {p1 .. p1}, Lteam/opay/business/transfer/flow/api/TransactionEntity;->getValue()Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v4

    .line 483
    if-nez v4, :cond_16

    .line 484
    .line 485
    goto :goto_9

    .line 486
    :cond_16
    move-object v5, v4

    .line 487
    :goto_9
    invoke-static {v5, v6}, Lf47;->a(Ljava/lang/String;I)Landroid/text/Spanned;

    .line 488
    .line 489
    .line 490
    move-result-object v4

    .line 491
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    .line 493
    .line 494
    :cond_17
    :goto_a
    invoke-virtual/range {p1 .. p1}, Lteam/opay/business/transfer/flow/api/TransactionEntity;->getHideFlag()Ljava/lang/Integer;

    .line 495
    .line 496
    .line 497
    move-result-object v3

    .line 498
    if-nez v3, :cond_18

    .line 499
    .line 500
    goto :goto_b

    .line 501
    :cond_18
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 502
    .line 503
    .line 504
    move-result v3

    .line 505
    if-ne v3, v7, :cond_19

    .line 506
    .line 507
    const/4 v3, 0x1

    .line 508
    goto :goto_c

    .line 509
    :cond_19
    :goto_b
    const/4 v3, 0x0

    .line 510
    :goto_c
    invoke-direct/range {p0 .. p0}, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;->getBinding()Lj86;

    .line 511
    .line 512
    .line 513
    move-result-object v4

    .line 514
    iget-object v4, v4, Lj86;->i:Landroidx/appcompat/widget/AppCompatImageView;

    .line 515
    .line 516
    const-string v5, "ivHide"

    .line 517
    .line 518
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    invoke-static {v4, v3}, Lg0g;->j(Landroid/view/View;Z)V

    .line 522
    .line 523
    .line 524
    if-eqz v3, :cond_1a

    .line 525
    .line 526
    invoke-direct/range {p0 .. p0}, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;->getBinding()Lj86;

    .line 527
    .line 528
    .line 529
    move-result-object v3

    .line 530
    iget-object v3, v3, Lj86;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 531
    .line 532
    invoke-direct/range {p0 .. p0}, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;->getBinding()Lj86;

    .line 533
    .line 534
    .line 535
    move-result-object v4

    .line 536
    iget-object v4, v4, Lj86;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 537
    .line 538
    invoke-virtual {v4}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 539
    .line 540
    .line 541
    move-result-object v4

    .line 542
    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 543
    .line 544
    .line 545
    invoke-direct/range {p0 .. p0}, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;->getBinding()Lj86;

    .line 546
    .line 547
    .line 548
    move-result-object v3

    .line 549
    iget-object v3, v3, Lj86;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 550
    .line 551
    invoke-direct/range {p0 .. p0}, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;->getBinding()Lj86;

    .line 552
    .line 553
    .line 554
    move-result-object v4

    .line 555
    iget-object v4, v4, Lj86;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 556
    .line 557
    invoke-virtual {v4}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 558
    .line 559
    .line 560
    move-result-object v4

    .line 561
    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 562
    .line 563
    .line 564
    invoke-direct/range {p0 .. p0}, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;->getBinding()Lj86;

    .line 565
    .line 566
    .line 567
    move-result-object v3

    .line 568
    invoke-virtual {v0, v2, v3}, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;->m(ZLj86;)V

    .line 569
    .line 570
    .line 571
    :cond_1a
    invoke-direct/range {p0 .. p0}, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;->getBinding()Lj86;

    .line 572
    .line 573
    .line 574
    move-result-object v2

    .line 575
    iget-object v2, v2, Lj86;->j:Landroidx/appcompat/widget/AppCompatImageView;

    .line 576
    .line 577
    const-string v3, "ivTip"

    .line 578
    .line 579
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 580
    .line 581
    .line 582
    invoke-virtual/range {p1 .. p1}, Lteam/opay/business/transfer/flow/api/TransactionEntity;->getTip()Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object v4

    .line 586
    if-eqz v4, :cond_1b

    .line 587
    .line 588
    invoke-static {v4}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 589
    .line 590
    .line 591
    move-result v4

    .line 592
    if-eqz v4, :cond_1c

    .line 593
    .line 594
    :cond_1b
    const/4 v6, 0x1

    .line 595
    :cond_1c
    xor-int/lit8 v4, v6, 0x1

    .line 596
    .line 597
    invoke-static {v2, v4}, Lg0g;->j(Landroid/view/View;Z)V

    .line 598
    .line 599
    .line 600
    invoke-direct/range {p0 .. p0}, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;->getBinding()Lj86;

    .line 601
    .line 602
    .line 603
    move-result-object v2

    .line 604
    iget-object v2, v2, Lj86;->j:Landroidx/appcompat/widget/AppCompatImageView;

    .line 605
    .line 606
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 607
    .line 608
    .line 609
    new-instance v3, Lj66;

    .line 610
    .line 611
    invoke-direct {v3, v0, v1}, Lj66;-><init>(Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;Lteam/opay/business/transfer/flow/api/TransactionEntity;)V

    .line 612
    .line 613
    .line 614
    invoke-static {v2, v3}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 615
    .line 616
    .line 617
    return-void
.end method

.method public final l(Landroidx/appcompat/widget/AppCompatTextView;Z)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaintFlags()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    or-int/lit8 p1, p1, 0x10

    .line 12
    .line 13
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaintFlags()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    and-int/lit8 p1, p1, -0x11

    .line 26
    .line 27
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method

.method public final m(ZLj86;)V
    .locals 7

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget v0, Lteam/opay/business/transfer/flow/R$string;->flow_money_place_holder:I

    .line 8
    .line 9
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    move-object v3, p1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    sget v0, Lteam/opay/business/transfer/flow/R$string;->flow_place_holder:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :goto_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p2, Lj86;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 26
    .line 27
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p2, Lj86;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 31
    .line 32
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p2, Lj86;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 36
    .line 37
    const-string v0, "deleteValue"

    .line 38
    .line 39
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, p1, v0}, Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;->l(Landroidx/appcompat/widget/AppCompatTextView;Z)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p2, Lj86;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    instance-of v0, p1, Ljava/lang/String;

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    check-cast p1, Ljava/lang/String;

    .line 58
    .line 59
    move-object v2, p1

    .line 60
    goto :goto_2

    .line 61
    :cond_1
    move-object v2, v1

    .line 62
    :goto_2
    iget-object p1, p2, Lj86;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    instance-of v0, p1, Ljava/lang/String;

    .line 69
    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    check-cast p1, Ljava/lang/String;

    .line 73
    .line 74
    move-object v4, p1

    .line 75
    goto :goto_3

    .line 76
    :cond_2
    move-object v4, v1

    .line 77
    :goto_3
    iget-object p1, p2, Lj86;->i:Landroidx/appcompat/widget/AppCompatImageView;

    .line 78
    .line 79
    const-string v0, "ivHide"

    .line 80
    .line 81
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    new-instance v6, Lk66;

    .line 85
    .line 86
    move-object v0, v6

    .line 87
    move-object v1, p2

    .line 88
    move-object v5, p0

    .line 89
    invoke-direct/range {v0 .. v5}, Lk66;-><init>(Lj86;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/business/transfer/flow/widget/FlowDetailBodyView;)V

    .line 90
    .line 91
    .line 92
    invoke-static {p1, v6}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method
