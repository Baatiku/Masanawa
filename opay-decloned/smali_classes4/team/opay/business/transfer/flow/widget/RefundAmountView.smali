.class public final Lteam/opay/business/transfer/flow/widget/RefundAmountView;
.super Landroid/widget/FrameLayout;
.source "RefundAmountView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/business/transfer/flow/widget/RefundAmountView$KeyboardListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0000\u0018\u00002\u00020\u0001:\u00012B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B#\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008\r\u0010\u000eJ)\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000f2\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000c0\u0011\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0015\u0010\u0017\u001a\u00020\u000c2\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\u001b\u0010\u001e\u001a\u00020\u00198BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR\"\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000c0\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0016\u0010\u0010\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0016\u0010\'\u001a\u00020$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0014\u0010+\u001a\u00020(8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010*R\u0014\u0010.\u001a\u00020\u000f8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010-R\u0014\u00101\u001a\u00020\u00158BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008/\u00100\u00a8\u00063"
    }
    d2 = {
        "Lteam/opay/business/transfer/flow/widget/RefundAmountView;",
        "Landroid/widget/FrameLayout;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "onFinishInflate",
        "()V",
        "",
        "unRefundAmount",
        "Lkotlin/Function1;",
        "block",
        "g",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V",
        "",
        "displayKeyboard",
        "h",
        "(Z)V",
        "Lc96;",
        "a",
        "Lcom/hi/dhl/binding/viewbind/ViewGroupViewBinding;",
        "getBinding",
        "()Lc96;",
        "binding",
        "b",
        "Lkotlin/jvm/functions/Function1;",
        "onAmountUpdate",
        "c",
        "Ljava/lang/String;",
        "Lteam/opay/business/transfer/flow/api/ServiceResp;",
        "d",
        "Lteam/opay/business/transfer/flow/api/ServiceResp;",
        "service",
        "Landroid/widget/EditText;",
        "getInputEditText",
        "()Landroid/widget/EditText;",
        "inputEditText",
        "getInputAmount",
        "()Ljava/lang/String;",
        "inputAmount",
        "getVerifyAmount",
        "()Z",
        "verifyAmount",
        "KeyboardListener",
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
.field public static final synthetic e:[Lzo7;
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

.field public b:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Lteam/opay/business/transfer/flow/api/ServiceResp;
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
    const-string v1, "getBinding()Lteam/opay/business/transfer/flow/databinding/FlowLayoutRefundAmountBinding;"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-class v3, Lteam/opay/business/transfer/flow/widget/RefundAmountView;

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
    sput-object v1, Lteam/opay/business/transfer/flow/widget/RefundAmountView;->e:[Lzo7;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lteam/opay/business/transfer/flow/widget/RefundAmountView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lteam/opay/business/transfer/flow/widget/RefundAmountView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Lcom/hi/dhl/binding/viewbind/ViewGroupViewBinding;

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const-string p2, "from(getContext())"

    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 6
    const-class v2, Lc96;

    const/4 v4, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/hi/dhl/binding/viewbind/ViewGroupViewBinding;-><init>(Ljava/lang/Class;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 7
    iput-object p1, p0, Lteam/opay/business/transfer/flow/widget/RefundAmountView;->a:Lcom/hi/dhl/binding/viewbind/ViewGroupViewBinding;

    .line 8
    new-instance p1, Liic;

    invoke-direct {p1}, Liic;-><init>()V

    iput-object p1, p0, Lteam/opay/business/transfer/flow/widget/RefundAmountView;->b:Lkotlin/jvm/functions/Function1;

    .line 9
    const-string p1, ""

    iput-object p1, p0, Lteam/opay/business/transfer/flow/widget/RefundAmountView;->c:Ljava/lang/String;

    .line 10
    sget-object p1, Lteam/opay/business/transfer/flow/api/ServiceResp;->h:Lteam/opay/business/transfer/flow/api/ServiceResp$Companion;

    const-string p2, "0"

    const-string p3, "1000000"

    invoke-virtual {p1, p2, p3}, Lteam/opay/business/transfer/flow/api/ServiceResp$Companion;->a(Ljava/lang/String;Ljava/lang/String;)Lteam/opay/business/transfer/flow/api/ServiceResp;

    move-result-object p1

    iput-object p1, p0, Lteam/opay/business/transfer/flow/widget/RefundAmountView;->d:Lteam/opay/business/transfer/flow/api/ServiceResp;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/transfer/flow/widget/RefundAmountView;->e(Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lteam/opay/business/transfer/flow/widget/RefundAmountView;Landroid/text/Editable;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/transfer/flow/widget/RefundAmountView;->f(Lteam/opay/business/transfer/flow/widget/RefundAmountView;Landroid/text/Editable;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic c(Lteam/opay/business/transfer/flow/widget/RefundAmountView;)Landroid/widget/EditText;
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/widget/RefundAmountView;->getInputEditText()Landroid/widget/EditText;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d(Lteam/opay/business/transfer/flow/widget/RefundAmountView;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/widget/RefundAmountView;->getVerifyAmount()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final e(Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method public static final f(Lteam/opay/business/transfer/flow/widget/RefundAmountView;Landroid/text/Editable;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/widget/RefundAmountView;->getVerifyAmount()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lkk8;->c:Lkk8;

    .line 8
    .line 9
    const-string p1, "don\'t delete this logic"

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {p0, p1, v1, v0, v1}, Lteam/opay/core/common/GenericLogger;->m(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0
.end method

.method private final getBinding()Lc96;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/widget/RefundAmountView;->a:Lcom/hi/dhl/binding/viewbind/ViewGroupViewBinding;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/business/transfer/flow/widget/RefundAmountView;->e:[Lzo7;

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
    check-cast v0, Lc96;

    .line 13
    .line 14
    return-object v0
.end method

.method private final getInputAmount()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/widget/RefundAmountView;->getBinding()Lc96;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lc96;->b:Lteam/opay/core/widget/TextInputView;

    .line 6
    .line 7
    invoke-virtual {v0}, Lteam/opay/core/widget/TextInputView;->getInputText()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private final getInputEditText()Landroid/widget/EditText;
    .locals 1

    .line 1
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/widget/RefundAmountView;->getBinding()Lc96;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lc96;->b:Lteam/opay/core/widget/TextInputView;

    .line 6
    .line 7
    invoke-virtual {v0}, Lteam/opay/core/widget/TextInputView;->getEditText()Landroidx/appcompat/widget/AppCompatEditText;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private final getVerifyAmount()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/widget/RefundAmountView;->d:Lteam/opay/business/transfer/flow/api/ServiceResp;

    .line 2
    .line 3
    new-instance v1, Lteam/opay/core/common/amount/MoneyAmount;

    .line 4
    .line 5
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/widget/RefundAmountView;->getInputAmount()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x2

    .line 11
    invoke-direct {v1, v2, v3, v4, v3}, Lteam/opay/core/common/amount/MoneyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lteam/opay/business/transfer/flow/api/ServiceResp;->b(Lteam/opay/core/common/amount/MoneyAmount;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/widget/RefundAmountView;->getBinding()Lc96;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v1, v1, Lc96;->b:Lteam/opay/core/widget/TextInputView;

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Lteam/opay/core/widget/TextInputView;->setActivated(Z)V

    .line 25
    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/widget/RefundAmountView;->getBinding()Lc96;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object v1, v1, Lc96;->b:Lteam/opay/core/widget/TextInputView;

    .line 34
    .line 35
    iget-object v2, p0, Lteam/opay/business/transfer/flow/widget/RefundAmountView;->d:Lteam/opay/business/transfer/flow/api/ServiceResp;

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const-string v4, "getContext(...)"

    .line 42
    .line 43
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v3}, Lteam/opay/business/transfer/flow/api/ServiceResp;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v1, v2}, Lteam/opay/core/widget/TextInputView;->setErrorText(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/widget/RefundAmountView;->getBinding()Lc96;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iget-object v1, v1, Lc96;->b:Lteam/opay/core/widget/TextInputView;

    .line 59
    .line 60
    const-string v2, ""

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Lteam/opay/core/widget/TextInputView;->setErrorText(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    xor-int/lit8 v0, v0, 0x1

    .line 66
    .line 67
    return v0
.end method


# virtual methods
.method public final g(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "unRefundAmount"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "block"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lteam/opay/business/transfer/flow/api/ServiceResp;->h:Lteam/opay/business/transfer/flow/api/ServiceResp$Companion;

    .line 12
    .line 13
    const-string v1, "0"

    .line 14
    .line 15
    invoke-virtual {v0, v1, p1}, Lteam/opay/business/transfer/flow/api/ServiceResp$Companion;->a(Ljava/lang/String;Ljava/lang/String;)Lteam/opay/business/transfer/flow/api/ServiceResp;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lteam/opay/business/transfer/flow/widget/RefundAmountView;->d:Lteam/opay/business/transfer/flow/api/ServiceResp;

    .line 20
    .line 21
    iput-object p1, p0, Lteam/opay/business/transfer/flow/widget/RefundAmountView;->c:Ljava/lang/String;

    .line 22
    .line 23
    iput-object p2, p0, Lteam/opay/business/transfer/flow/widget/RefundAmountView;->b:Lkotlin/jvm/functions/Function1;

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    invoke-virtual {p0, p1}, Lteam/opay/business/transfer/flow/widget/RefundAmountView;->h(Z)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final h(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/widget/RefundAmountView;->getBinding()Lc96;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lc96;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "getRoot(...)"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0, p1}, Lg0g;->j(Landroid/view/View;Z)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/widget/RefundAmountView;->getBinding()Lc96;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object p1, p1, Lc96;->b:Lteam/opay/core/widget/TextInputView;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/widget/RefundAmountView;->getInputAmount()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-object p1, p0, Lteam/opay/business/transfer/flow/widget/RefundAmountView;->c:Ljava/lang/String;

    .line 37
    .line 38
    :cond_0
    iget-object v0, p0, Lteam/opay/business/transfer/flow/widget/RefundAmountView;->b:Lkotlin/jvm/functions/Function1;

    .line 39
    .line 40
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/widget/RefundAmountView;->getBinding()Lc96;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v0, v0, Lc96;->b:Lteam/opay/core/widget/TextInputView;

    .line 11
    .line 12
    new-instance v1, Ljic;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Ljic;-><init>(Lteam/opay/business/transfer/flow/widget/RefundAmountView;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lteam/opay/core/widget/TextInputView;->g(Lkotlin/jvm/functions/Function1;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/widget/RefundAmountView;->getBinding()Lc96;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v0, v0, Lc96;->d:Lteam/opay/core/widget/PosKeyboardView;

    .line 25
    .line 26
    new-instance v1, Lteam/opay/business/transfer/flow/widget/RefundAmountView$KeyboardListener;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lteam/opay/business/transfer/flow/widget/RefundAmountView$KeyboardListener;-><init>(Lteam/opay/business/transfer/flow/widget/RefundAmountView;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lteam/opay/core/widget/keyboard/PosKeyboardView;->setOnInputCallback(Lteam/opay/core/widget/internal/OnInputCallback;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
