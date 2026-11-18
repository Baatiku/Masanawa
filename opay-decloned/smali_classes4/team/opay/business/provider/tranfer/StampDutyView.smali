.class public final Lteam/opay/business/provider/tranfer/StampDutyView;
.super Lteam/opay/business/widget/LifecycleFrameLayout;
.source "StampDutyView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0015\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\nH\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u000cR\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u001b\u0010\u001b\u001a\u00020\u00168BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001aR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001e\u00a8\u0006 "
    }
    d2 = {
        "Lteam/opay/business/provider/tranfer/StampDutyView;",
        "Lteam/opay/business/widget/LifecycleFrameLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "onAttachedToWindow",
        "()V",
        "Lteam/opay/core/common/amount/MoneyAmount;",
        "inputAmount",
        "h",
        "(Lteam/opay/core/common/amount/MoneyAmount;)V",
        "onDetachedFromWindow",
        "Lu3c;",
        "d",
        "Lu3c;",
        "binding",
        "Lteam/opay/business/provider/tranfer/TransferViewModel;",
        "e",
        "Lid8;",
        "getViewModel",
        "()Lteam/opay/business/provider/tranfer/TransferViewModel;",
        "viewModel",
        "Lteam/opay/business/provider/tranfer/StampDutyResponse;",
        "f",
        "Lteam/opay/business/provider/tranfer/StampDutyResponse;",
        "stampDuty",
        "business-provider_release"
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
.field public d:Lu3c;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final e:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Lteam/opay/business/provider/tranfer/StampDutyResponse;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lteam/opay/business/provider/tranfer/StampDutyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lteam/opay/business/provider/tranfer/StampDutyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/business/widget/LifecycleFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    const-class p1, Lteam/opay/business/provider/tranfer/TransferViewModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object p1

    new-instance p2, Lteam/opay/business/provider/tranfer/StampDutyView$special$$inlined$activityViewModels$default$1;

    invoke-direct {p2, p0}, Lteam/opay/business/provider/tranfer/StampDutyView$special$$inlined$activityViewModels$default$1;-><init>(Landroid/view/ViewGroup;)V

    new-instance p3, Lteam/opay/business/provider/tranfer/StampDutyView$special$$inlined$activityViewModels$default$2;

    const/4 v0, 0x0

    invoke-direct {p3, v0, p0}, Lteam/opay/business/provider/tranfer/StampDutyView$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroid/view/ViewGroup;)V

    new-instance v0, Lteam/opay/business/provider/tranfer/StampDutyView$special$$inlined$activityViewModels$default$3;

    invoke-direct {v0, p0}, Lteam/opay/business/provider/tranfer/StampDutyView$special$$inlined$activityViewModels$default$3;-><init>(Landroid/view/ViewGroup;)V

    invoke-static {p0, p1, p2, p3, v0}, Ln0g;->b(Landroid/view/ViewGroup;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object p1

    .line 6
    iput-object p1, p0, Lteam/opay/business/provider/tranfer/StampDutyView;->e:Lid8;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/business/provider/tranfer/StampDutyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic c(Lteam/opay/business/provider/tranfer/StampDutyView;)Lu3c;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/business/provider/tranfer/StampDutyView;->d:Lu3c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic d(Lteam/opay/business/provider/tranfer/StampDutyView;)Lteam/opay/business/provider/tranfer/StampDutyResponse;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/business/provider/tranfer/StampDutyView;->f:Lteam/opay/business/provider/tranfer/StampDutyResponse;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic f(Lteam/opay/business/provider/tranfer/StampDutyView;)Lteam/opay/business/provider/tranfer/TransferViewModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/business/provider/tranfer/StampDutyView;->getViewModel()Lteam/opay/business/provider/tranfer/TransferViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic g(Lteam/opay/business/provider/tranfer/StampDutyView;Lteam/opay/business/provider/tranfer/StampDutyResponse;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/business/provider/tranfer/StampDutyView;->f:Lteam/opay/business/provider/tranfer/StampDutyResponse;

    .line 2
    .line 3
    return-void
.end method

.method private final getViewModel()Lteam/opay/business/provider/tranfer/TransferViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/provider/tranfer/StampDutyView;->e:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/business/provider/tranfer/TransferViewModel;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final h(Lteam/opay/core/common/amount/MoneyAmount;)V
    .locals 2
    .param p1    # Lteam/opay/core/common/amount/MoneyAmount;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "inputAmount"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/business/provider/tranfer/StampDutyView;->f:Lteam/opay/business/provider/tranfer/StampDutyResponse;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Lteam/opay/business/provider/tranfer/StampDutyResponse;->c()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Lteam/opay/business/provider/tranfer/StampDutyResponse;->a()Lteam/opay/core/common/amount/MoneyAmount;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lteam/opay/business/provider/tranfer/StampDutyResponse;->a()Lteam/opay/core/common/amount/MoneyAmount;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Lteam/opay/core/common/amount/MoneyAmount;->compareTo(Lteam/opay/core/common/amount/MoneyAmount;)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-ltz p1, :cond_0

    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p1, 0x0

    .line 35
    :goto_0
    invoke-static {p0, p1}, Lg0g;->j(Landroid/view/View;Z)V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-static {v0, p0, v1}, Lu3c;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lu3c;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lteam/opay/business/provider/tranfer/StampDutyView;->d:Lu3c;

    .line 15
    .line 16
    invoke-static {p0}, Lg0g;->d(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    sget-object v0, Lhk8;->c:Lhk8;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    const/4 v2, 0x2

    .line 23
    const-string v3, "------StampDutyView -> onAttachedToWindow"

    .line 24
    .line 25
    invoke-static {v0, v3, v1, v2, v1}, Lteam/opay/core/common/GenericLogger;->j(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-super {p0}, Lteam/opay/business/widget/LifecycleFrameLayout;->onAttachedToWindow()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Lteam/opay/business/widget/LifecycleFrameLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lteam/opay/business/provider/tranfer/StampDutyView;->d:Lu3c;

    .line 8
    .line 9
    return-void
.end method
