.class public final Lteam/opay/sme/va/receive/staticAccount/home/VALoopNoticeView;
.super Lteam/opay/business/widget/LifecycleFrameLayout;
.source "VALoopNoticeView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/sme/va/receive/staticAccount/home/VALoopNoticeView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B#\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\u000bJ\r\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u001b\u0010\u0014\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\u001b\u0010\u001a\u001a\u00020\u00158BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001b"
    }
    d2 = {
        "Lteam/opay/sme/va/receive/staticAccount/home/VALoopNoticeView;",
        "Lteam/opay/business/widget/LifecycleFrameLayout;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "getTopNotice",
        "()V",
        "Lnzd;",
        "d",
        "Lcom/hi/dhl/binding/viewbind/ViewGroupViewBinding;",
        "getBinding",
        "()Lnzd;",
        "binding",
        "Lteam/opay/sme/va/receive/ReceiveViewModel;",
        "e",
        "Lid8;",
        "getViewModel",
        "()Lteam/opay/sme/va/receive/ReceiveViewModel;",
        "viewModel",
        "sme-va_release"
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
.field public static final synthetic f:[Lzo7;
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
.field public final d:Lcom/hi/dhl/binding/viewbind/ViewGroupViewBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lid8;
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
    const-string v1, "getBinding()Lteam/opay/sme/va/databinding/SmeVaLayoutVaNoticeViewBinding;"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-class v3, Lteam/opay/sme/va/receive/staticAccount/home/VALoopNoticeView;

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
    sput-object v1, Lteam/opay/sme/va/receive/staticAccount/home/VALoopNoticeView;->f:[Lzo7;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 13
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 1
    invoke-direct/range {v1 .. v6}, Lteam/opay/business/widget/LifecycleFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2
    new-instance p1, Lcom/hi/dhl/binding/viewbind/ViewGroupViewBinding;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const-string v0, "from(getContext())"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x4

    const/4 v12, 0x0

    .line 4
    const-class v8, Lnzd;

    const/4 v10, 0x0

    move-object v7, p1

    invoke-direct/range {v7 .. v12}, Lcom/hi/dhl/binding/viewbind/ViewGroupViewBinding;-><init>(Ljava/lang/Class;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    iput-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/home/VALoopNoticeView;->d:Lcom/hi/dhl/binding/viewbind/ViewGroupViewBinding;

    .line 6
    const-class p1, Lteam/opay/sme/va/receive/ReceiveViewModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object p1

    new-instance v0, Lteam/opay/sme/va/receive/staticAccount/home/VALoopNoticeView$special$$inlined$activityViewModels$default$1;

    invoke-direct {v0, p0}, Lteam/opay/sme/va/receive/staticAccount/home/VALoopNoticeView$special$$inlined$activityViewModels$default$1;-><init>(Landroid/view/ViewGroup;)V

    new-instance v1, Lteam/opay/sme/va/receive/staticAccount/home/VALoopNoticeView$special$$inlined$activityViewModels$default$2;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lteam/opay/sme/va/receive/staticAccount/home/VALoopNoticeView$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroid/view/ViewGroup;)V

    new-instance v2, Lteam/opay/sme/va/receive/staticAccount/home/VALoopNoticeView$special$$inlined$activityViewModels$default$3;

    invoke-direct {v2, p0}, Lteam/opay/sme/va/receive/staticAccount/home/VALoopNoticeView$special$$inlined$activityViewModels$default$3;-><init>(Landroid/view/ViewGroup;)V

    invoke-static {p0, p1, v0, v1, v2}, Ln0g;->b(Landroid/view/ViewGroup;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object p1

    .line 7
    iput-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/home/VALoopNoticeView;->e:Lid8;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13
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

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 8
    invoke-direct/range {v1 .. v6}, Lteam/opay/business/widget/LifecycleFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    new-instance p1, Lcom/hi/dhl/binding/viewbind/ViewGroupViewBinding;

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const-string p2, "from(getContext())"

    invoke-static {v9, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x4

    const/4 v12, 0x0

    .line 11
    const-class v8, Lnzd;

    const/4 v10, 0x0

    move-object v7, p1

    invoke-direct/range {v7 .. v12}, Lcom/hi/dhl/binding/viewbind/ViewGroupViewBinding;-><init>(Ljava/lang/Class;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 12
    iput-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/home/VALoopNoticeView;->d:Lcom/hi/dhl/binding/viewbind/ViewGroupViewBinding;

    .line 13
    const-class p1, Lteam/opay/sme/va/receive/ReceiveViewModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object p1

    new-instance p2, Lteam/opay/sme/va/receive/staticAccount/home/VALoopNoticeView$special$$inlined$activityViewModels$default$4;

    invoke-direct {p2, p0}, Lteam/opay/sme/va/receive/staticAccount/home/VALoopNoticeView$special$$inlined$activityViewModels$default$4;-><init>(Landroid/view/ViewGroup;)V

    new-instance v0, Lteam/opay/sme/va/receive/staticAccount/home/VALoopNoticeView$special$$inlined$activityViewModels$default$5;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lteam/opay/sme/va/receive/staticAccount/home/VALoopNoticeView$special$$inlined$activityViewModels$default$5;-><init>(Lkotlin/jvm/functions/Function0;Landroid/view/ViewGroup;)V

    new-instance v1, Lteam/opay/sme/va/receive/staticAccount/home/VALoopNoticeView$special$$inlined$activityViewModels$default$6;

    invoke-direct {v1, p0}, Lteam/opay/sme/va/receive/staticAccount/home/VALoopNoticeView$special$$inlined$activityViewModels$default$6;-><init>(Landroid/view/ViewGroup;)V

    invoke-static {p0, p1, p2, v0, v1}, Ln0g;->b(Landroid/view/ViewGroup;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object p1

    .line 14
    iput-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/home/VALoopNoticeView;->e:Lid8;

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

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/business/widget/LifecycleFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    new-instance p1, Lcom/hi/dhl/binding/viewbind/ViewGroupViewBinding;

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const-string p2, "from(getContext())"

    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 18
    const-class v2, Lnzd;

    const/4 v4, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/hi/dhl/binding/viewbind/ViewGroupViewBinding;-><init>(Ljava/lang/Class;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 19
    iput-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/home/VALoopNoticeView;->d:Lcom/hi/dhl/binding/viewbind/ViewGroupViewBinding;

    .line 20
    const-class p1, Lteam/opay/sme/va/receive/ReceiveViewModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object p1

    new-instance p2, Lteam/opay/sme/va/receive/staticAccount/home/VALoopNoticeView$special$$inlined$activityViewModels$default$7;

    invoke-direct {p2, p0}, Lteam/opay/sme/va/receive/staticAccount/home/VALoopNoticeView$special$$inlined$activityViewModels$default$7;-><init>(Landroid/view/ViewGroup;)V

    new-instance p3, Lteam/opay/sme/va/receive/staticAccount/home/VALoopNoticeView$special$$inlined$activityViewModels$default$8;

    const/4 v0, 0x0

    invoke-direct {p3, v0, p0}, Lteam/opay/sme/va/receive/staticAccount/home/VALoopNoticeView$special$$inlined$activityViewModels$default$8;-><init>(Lkotlin/jvm/functions/Function0;Landroid/view/ViewGroup;)V

    new-instance v0, Lteam/opay/sme/va/receive/staticAccount/home/VALoopNoticeView$special$$inlined$activityViewModels$default$9;

    invoke-direct {v0, p0}, Lteam/opay/sme/va/receive/staticAccount/home/VALoopNoticeView$special$$inlined$activityViewModels$default$9;-><init>(Landroid/view/ViewGroup;)V

    invoke-static {p0, p1, p2, p3, v0}, Ln0g;->b(Landroid/view/ViewGroup;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object p1

    .line 21
    iput-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/home/VALoopNoticeView;->e:Lid8;

    return-void
.end method

.method public static synthetic c(Lteam/opay/sme/va/receive/staticAccount/home/VALoopNoticeView;Lteam/opay/core/http/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/sme/va/receive/staticAccount/home/VALoopNoticeView;->d(Lteam/opay/sme/va/receive/staticAccount/home/VALoopNoticeView;Lteam/opay/core/http/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final d(Lteam/opay/sme/va/receive/staticAccount/home/VALoopNoticeView;Lteam/opay/core/http/arch/Resource;)Lkotlin/Unit;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lteam/opay/core/http/arch/Resource;->c()Lteam/opay/core/http/arch/Status;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-nez v1, :cond_1

    .line 11
    .line 12
    const/4 v1, -0x1

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    sget-object v2, Lteam/opay/sme/va/receive/staticAccount/home/VALoopNoticeView$a;->a:[I

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    aget v1, v2, v1

    .line 21
    .line 22
    :goto_1
    const-string v2, "_VAHomePage"

    .line 23
    .line 24
    if-eq v1, v0, :cond_3

    .line 25
    .line 26
    const/4 p1, 0x2

    .line 27
    if-eq v1, p1, :cond_2

    .line 28
    .line 29
    invoke-static {}, Let;->l()Lkotlin/jvm/functions/Function0;

    .line 30
    .line 31
    .line 32
    goto :goto_3

    .line 33
    :cond_2
    invoke-direct {p0}, Lteam/opay/sme/va/receive/staticAccount/home/VALoopNoticeView;->getBinding()Lnzd;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    iget-object p0, p0, Lnzd;->b:Lteam/opay/business/provider/active/LoopNoticeView;

    .line 38
    .line 39
    invoke-virtual {p0, v2}, Lteam/opay/business/provider/active/LoopNoticeView;->n(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_3
    invoke-virtual {p1}, Lteam/opay/core/http/arch/Resource;->a()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lteam/opay/business/provider/active/NoticeEntity;

    .line 48
    .line 49
    if-eqz p1, :cond_6

    .line 50
    .line 51
    invoke-virtual {p1}, Lteam/opay/business/provider/active/NoticeEntity;->getJumpUrl()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    if-eqz v1, :cond_6

    .line 56
    .line 57
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_4

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_4
    invoke-virtual {p1}, Lteam/opay/business/provider/active/NoticeEntity;->getName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    if-eqz v1, :cond_6

    .line 69
    .line 70
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-nez v1, :cond_5

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_5
    invoke-direct {p0}, Lteam/opay/sme/va/receive/staticAccount/home/VALoopNoticeView;->getBinding()Lnzd;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    iget-object p0, p0, Lnzd;->b:Lteam/opay/business/provider/active/LoopNoticeView;

    .line 82
    .line 83
    new-array v0, v0, [Lteam/opay/business/provider/active/NoticeEntity;

    .line 84
    .line 85
    const/4 v1, 0x0

    .line 86
    aput-object p1, v0, v1

    .line 87
    .line 88
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->g([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p0, p1}, Lteam/opay/business/provider/active/LoopNoticeView;->setupData(Ljava/util/List;)V

    .line 93
    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_6
    :goto_2
    invoke-direct {p0}, Lteam/opay/sme/va/receive/staticAccount/home/VALoopNoticeView;->getBinding()Lnzd;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    iget-object p0, p0, Lnzd;->b:Lteam/opay/business/provider/active/LoopNoticeView;

    .line 101
    .line 102
    invoke-virtual {p0, v2}, Lteam/opay/business/provider/active/LoopNoticeView;->n(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 106
    .line 107
    return-object p0
.end method

.method private final getBinding()Lnzd;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/home/VALoopNoticeView;->d:Lcom/hi/dhl/binding/viewbind/ViewGroupViewBinding;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/sme/va/receive/staticAccount/home/VALoopNoticeView;->f:[Lzo7;

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
    check-cast v0, Lnzd;

    .line 13
    .line 14
    return-object v0
.end method

.method private final getViewModel()Lteam/opay/sme/va/receive/ReceiveViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/home/VALoopNoticeView;->e:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/sme/va/receive/ReceiveViewModel;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getTopNotice()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lteam/opay/sme/va/receive/staticAccount/home/VALoopNoticeView;->getViewModel()Lteam/opay/sme/va/receive/ReceiveViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/sme/va/receive/ReceiveViewModel;->M()Landroidx/lifecycle/LiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lomf;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lomf;-><init>(Lteam/opay/sme/va/receive/staticAccount/home/VALoopNoticeView;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0, p0, v1}, Lpna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
