.class public final Lteam/opay/business/provider/active/ListBannerView;
.super Lteam/opay/business/widget/LifecycleRecyclerView;
.source "ListBannerView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/business/provider/active/ListBannerView$ListBannerAdapter;,
        Lteam/opay/business/provider/active/ListBannerView$PayResultBannerAdapter;,
        Lteam/opay/business/provider/active/ListBannerView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0002IJB\u001d\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0014\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0008H\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\nJ\u0017\u0010\u000e\u001a\u00020\u00082\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJA\u0010\u0016\u001a\u00020\u000822\u0010\u0015\u001a.\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u00110\u0010j\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u0011`\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u001f\u0010\u001a\u001a\u00020\u00082\u000e\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u0018H\u0007\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0019\u0010\u001d\u001a\u00020\u00082\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0012H\u0007\u00a2\u0006\u0004\u0008\u001d\u0010\u001eR\u001b\u0010$\u001a\u00020\u001f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#R\u0018\u0010\'\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0016\u0010+\u001a\u00020(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008)\u0010*RG\u0010/\u001a.\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u00110\u0010j\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u0011`\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008,\u0010!\u001a\u0004\u0008-\u0010.R\u0018\u0010\r\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00080\u00101R*\u0010:\u001a\n\u0012\u0004\u0012\u000203\u0018\u0001028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00084\u00105\u001a\u0004\u00086\u00107\"\u0004\u00088\u00109R\u001f\u0010?\u001a\u00060;R\u00020\u00008BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008<\u0010!\u001a\u0004\u0008=\u0010>R\u001b\u0010C\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008@\u0010!\u001a\u0004\u0008A\u0010BR\u001f\u0010H\u001a\u00060DR\u00020\u00008BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008E\u0010!\u001a\u0004\u0008F\u0010G\u00a8\u0006K"
    }
    d2 = {
        "Lteam/opay/business/provider/active/ListBannerView;",
        "Lteam/opay/business/widget/LifecycleRecyclerView;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "onAttachedToWindow",
        "()V",
        "onDetachedFromWindow",
        "Lteam/opay/business/provider/active/AdInfo;",
        "adInfo",
        "setBannerData",
        "(Lteam/opay/business/provider/active/AdInfo;)V",
        "Ljava/util/ArrayList;",
        "Lkotlin/Pair;",
        "",
        "",
        "Lkotlin/collections/ArrayList;",
        "list",
        "setTrackCode",
        "(Ljava/util/ArrayList;)V",
        "",
        "Lteam/opay/business/provider/active/BannerEntity;",
        "setData",
        "(Ljava/util/List;)V",
        "serviceType",
        "q",
        "(Ljava/lang/String;)V",
        "Lteam/opay/business/provider/active/ActiveViewModel;",
        "d",
        "Lid8;",
        "getViewModel",
        "()Lteam/opay/business/provider/active/ActiveViewModel;",
        "viewModel",
        "e",
        "Ljava/lang/String;",
        "ratio",
        "",
        "f",
        "I",
        "indicatorHeight",
        "g",
        "getArrayValue",
        "()Ljava/util/ArrayList;",
        "arrayValue",
        "h",
        "Lteam/opay/business/provider/active/AdInfo;",
        "Lteam/opay/core/common/android/event/CallbackWrapper;",
        "Lteam/opay/business/provider/active/AdItem;",
        "i",
        "Lteam/opay/core/common/android/event/CallbackWrapper;",
        "getOnItemClickCallback",
        "()Lteam/opay/core/common/android/event/CallbackWrapper;",
        "setOnItemClickCallback",
        "(Lteam/opay/core/common/android/event/CallbackWrapper;)V",
        "onItemClickCallback",
        "Lteam/opay/business/provider/active/ListBannerView$ListBannerAdapter;",
        "j",
        "getBannerAdapter",
        "()Lteam/opay/business/provider/active/ListBannerView$ListBannerAdapter;",
        "bannerAdapter",
        "k",
        "getPreviewData",
        "()Lteam/opay/business/provider/active/AdInfo;",
        "previewData",
        "Lteam/opay/business/provider/active/ListBannerView$PayResultBannerAdapter;",
        "l",
        "getResultBannerAdapter",
        "()Lteam/opay/business/provider/active/ListBannerView$PayResultBannerAdapter;",
        "resultBannerAdapter",
        "ListBannerAdapter",
        "PayResultBannerAdapter",
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
.field public final d:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public f:I

.field public final g:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Lteam/opay/business/provider/active/AdInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public i:Lteam/opay/core/common/android/event/CallbackWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/core/common/android/event/CallbackWrapper<",
            "Lteam/opay/business/provider/active/AdItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final j:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
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

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lteam/opay/business/provider/active/ListBannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
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
    invoke-direct {p0, p1, p2}, Lteam/opay/business/widget/LifecycleRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const-class v0, Lteam/opay/business/provider/active/ActiveViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v0

    new-instance v1, Lteam/opay/business/provider/active/ListBannerView$special$$inlined$activityViewModels$default$1;

    invoke-direct {v1, p0}, Lteam/opay/business/provider/active/ListBannerView$special$$inlined$activityViewModels$default$1;-><init>(Landroid/view/ViewGroup;)V

    new-instance v2, Lteam/opay/business/provider/active/ListBannerView$special$$inlined$activityViewModels$default$2;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Lteam/opay/business/provider/active/ListBannerView$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroid/view/ViewGroup;)V

    new-instance v3, Lteam/opay/business/provider/active/ListBannerView$special$$inlined$activityViewModels$default$3;

    invoke-direct {v3, p0}, Lteam/opay/business/provider/active/ListBannerView$special$$inlined$activityViewModels$default$3;-><init>(Landroid/view/ViewGroup;)V

    invoke-static {p0, v0, v1, v2, v3}, Ln0g;->b(Landroid/view/ViewGroup;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lteam/opay/business/provider/active/ListBannerView;->d:Lid8;

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lteam/opay/business/provider/active/ListBannerView;->f:I

    .line 7
    new-instance v0, Lwg8;

    invoke-direct {v0}, Lwg8;-><init>()V

    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object v0

    iput-object v0, p0, Lteam/opay/business/provider/active/ListBannerView;->g:Lid8;

    .line 8
    new-instance v0, Lxg8;

    invoke-direct {v0, p0, p1}, Lxg8;-><init>(Lteam/opay/business/provider/active/ListBannerView;Landroid/content/Context;)V

    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object v0

    iput-object v0, p0, Lteam/opay/business/provider/active/ListBannerView;->j:Lid8;

    .line 9
    new-instance v0, Lyg8;

    invoke-direct {v0}, Lyg8;-><init>()V

    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object v0

    iput-object v0, p0, Lteam/opay/business/provider/active/ListBannerView;->k:Lid8;

    .line 10
    sget-object v0, Lteam/opay/business/provider/R$styleable;->ListBannerView:[I

    const-string v1, "ListBannerView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 11
    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 12
    sget v0, Lteam/opay/business/provider/R$styleable;->ListBannerView_lbv_dimensionRatio:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lteam/opay/business/provider/active/ListBannerView;->e:Ljava/lang/String;

    .line 13
    sget v0, Lteam/opay/business/provider/R$styleable;->ListBannerView_lbv_indicatorHeight:I

    .line 14
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/16 v2, 0x8

    int-to-float v2, v2

    mul-float v1, v1, v2

    .line 15
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 16
    const-class v2, Ljava/lang/Integer;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v2

    .line 17
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    check-cast v1, Ljava/lang/Integer;

    goto :goto_0

    .line 18
    :cond_0
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 19
    :cond_1
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    goto :goto_0

    .line 20
    :cond_2
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 21
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 22
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lteam/opay/business/provider/active/ListBannerView;->f:I

    .line 23
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_3

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 26
    invoke-direct {p0}, Lteam/opay/business/provider/active/ListBannerView;->getPreviewData()Lteam/opay/business/provider/active/AdInfo;

    move-result-object p2

    invoke-virtual {p0, p2}, Lteam/opay/business/provider/active/ListBannerView;->setBannerData(Lteam/opay/business/provider/active/AdInfo;)V

    goto :goto_1

    .line 27
    :cond_3
    invoke-static {p0}, Lg0g;->d(Landroid/view/View;)V

    .line 28
    :goto_1
    new-instance p2, Lzg8;

    invoke-direct {p2, p0, p1}, Lzg8;-><init>(Lteam/opay/business/provider/active/ListBannerView;Landroid/content/Context;)V

    invoke-static {p2}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object p1

    iput-object p1, p0, Lteam/opay/business/provider/active/ListBannerView;->l:Lid8;

    return-void

    .line 29
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "return number type not support"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lteam/opay/business/provider/active/ListBannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic c(Landroid/content/Context;Lteam/opay/business/provider/active/ListBannerView;Lteam/opay/business/provider/active/BannerEntity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/business/provider/active/ListBannerView;->u(Landroid/content/Context;Lteam/opay/business/provider/active/ListBannerView;Lteam/opay/business/provider/active/BannerEntity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lteam/opay/business/provider/active/ListBannerView;Landroid/content/Context;)Lteam/opay/business/provider/active/ListBannerView$ListBannerAdapter;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/provider/active/ListBannerView;->n(Lteam/opay/business/provider/active/ListBannerView;Landroid/content/Context;)Lteam/opay/business/provider/active/ListBannerView$ListBannerAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/business/provider/active/ListBannerView;->p()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic g(Lteam/opay/business/provider/active/ListBannerView;Lteam/opay/core/http/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/provider/active/ListBannerView;->r(Lteam/opay/business/provider/active/ListBannerView;Lteam/opay/core/http/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final getArrayValue()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/provider/active/ListBannerView;->g:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getBannerAdapter()Lteam/opay/business/provider/active/ListBannerView$ListBannerAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/provider/active/ListBannerView;->j:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/business/provider/active/ListBannerView$ListBannerAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getPreviewData()Lteam/opay/business/provider/active/AdInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/provider/active/ListBannerView;->k:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/business/provider/active/AdInfo;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getResultBannerAdapter()Lteam/opay/business/provider/active/ListBannerView$PayResultBannerAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/provider/active/ListBannerView;->l:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/business/provider/active/ListBannerView$PayResultBannerAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getViewModel()Lteam/opay/business/provider/active/ActiveViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/provider/active/ListBannerView;->d:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/business/provider/active/ActiveViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic h(Lteam/opay/business/provider/active/ListBannerView;Landroid/content/Context;ZLteam/opay/business/provider/active/AdItem;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/business/provider/active/ListBannerView;->o(Lteam/opay/business/provider/active/ListBannerView;Landroid/content/Context;ZLteam/opay/business/provider/active/AdItem;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i()Ljava/util/ArrayList;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/business/provider/active/ListBannerView;->l()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic j()Lteam/opay/business/provider/active/AdInfo;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/business/provider/active/ListBannerView;->s()Lteam/opay/business/provider/active/AdInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic k(Lteam/opay/business/provider/active/ListBannerView;Landroid/content/Context;)Lteam/opay/business/provider/active/ListBannerView$PayResultBannerAdapter;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/provider/active/ListBannerView;->t(Lteam/opay/business/provider/active/ListBannerView;Landroid/content/Context;)Lteam/opay/business/provider/active/ListBannerView$PayResultBannerAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final l()Ljava/util/ArrayList;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final n(Lteam/opay/business/provider/active/ListBannerView;Landroid/content/Context;)Lteam/opay/business/provider/active/ListBannerView$ListBannerAdapter;
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/business/provider/active/ListBannerView$ListBannerAdapter;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lteam/opay/business/provider/active/ListBannerView$ListBannerAdapter;-><init>(Lteam/opay/business/provider/active/ListBannerView;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lah8;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lah8;-><init>(Lteam/opay/business/provider/active/ListBannerView;Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lteam/opay/business/provider/active/ListBannerView$ListBannerAdapter;->q(Lkotlin/jvm/functions/Function2;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static final o(Lteam/opay/business/provider/active/ListBannerView;Landroid/content/Context;ZLteam/opay/business/provider/active/AdItem;)Lkotlin/Unit;
    .locals 7

    .line 1
    const-string v0, "info"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-eqz p2, :cond_3

    .line 8
    .line 9
    iget-object p2, p0, Lteam/opay/business/provider/active/ListBannerView;->i:Lteam/opay/core/common/android/event/CallbackWrapper;

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2, p3}, Lteam/opay/core/common/android/event/CallbackWrapper;->a(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget-object p2, Lud;->a:Lud;

    .line 18
    .line 19
    invoke-virtual {p3}, Lteam/opay/business/provider/active/AdItem;->getAction()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    const-string v1, ""

    .line 26
    .line 27
    :cond_1
    new-instance v2, Ldh8;

    .line 28
    .line 29
    invoke-direct {v2}, Ldh8;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p1, v1, v2}, Lud;->g(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    sget-object p1, Lteam/opay/business/provider/active/AdpApi;->i:Lteam/opay/business/provider/active/AdpApi$Companion;

    .line 36
    .line 37
    invoke-virtual {p1}, Lteam/opay/business/provider/active/AdpApi$Companion;->a()Lteam/opay/business/provider/active/AdpApi;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-object p0, p0, Lteam/opay/business/provider/active/ListBannerView;->h:Lteam/opay/business/provider/active/AdInfo;

    .line 42
    .line 43
    if-eqz p0, :cond_2

    .line 44
    .line 45
    invoke-virtual {p0}, Lteam/opay/business/provider/active/AdInfo;->b()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    :cond_2
    move-object v2, v0

    .line 50
    const/4 v5, 0x4

    .line 51
    const/4 v6, 0x0

    .line 52
    const/4 v4, 0x0

    .line 53
    move-object v3, p3

    .line 54
    invoke-static/range {v1 .. v6}, Lteam/opay/business/provider/active/AdpApi;->y(Lteam/opay/business/provider/active/AdpApi;Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;Ljava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    sget-object p1, Lteam/opay/business/provider/active/AdpApi;->i:Lteam/opay/business/provider/active/AdpApi$Companion;

    .line 59
    .line 60
    invoke-virtual {p1}, Lteam/opay/business/provider/active/AdpApi$Companion;->a()Lteam/opay/business/provider/active/AdpApi;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iget-object p0, p0, Lteam/opay/business/provider/active/ListBannerView;->h:Lteam/opay/business/provider/active/AdInfo;

    .line 65
    .line 66
    if-eqz p0, :cond_4

    .line 67
    .line 68
    invoke-virtual {p0}, Lteam/opay/business/provider/active/AdInfo;->b()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    :cond_4
    invoke-virtual {p1, v0, p3}, Lteam/opay/business/provider/active/AdpApi;->z(Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;)Lkotlinx/coroutines/l;

    .line 73
    .line 74
    .line 75
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 76
    .line 77
    return-object p0
.end method

.method public static final p()Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final r(Lteam/opay/business/provider/active/ListBannerView;Lteam/opay/core/http/arch/Resource;)Lkotlin/Unit;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/core/http/arch/Resource;->c()Lteam/opay/core/http/arch/Status;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    if-nez v0, :cond_1

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    goto :goto_1

    .line 13
    :cond_1
    sget-object v1, Lteam/opay/business/provider/active/ListBannerView$a;->a:[I

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    aget v0, v1, v0

    .line 20
    .line 21
    :goto_1
    const/4 v1, 0x1

    .line 22
    if-ne v0, v1, :cond_2

    .line 23
    .line 24
    invoke-virtual {p1}, Lteam/opay/core/http/arch/Resource;->a()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Ljava/util/List;

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lteam/opay/business/provider/active/ListBannerView;->setData(Ljava/util/List;)V

    .line 31
    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_2
    invoke-static {}, Let;->l()Lkotlin/jvm/functions/Function0;

    .line 35
    .line 36
    .line 37
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 38
    .line 39
    return-object p0
.end method

.method public static final s()Lteam/opay/business/provider/active/AdInfo;
    .locals 29

    .line 1
    new-instance v0, Lteam/opay/business/provider/active/AdInfo;

    .line 2
    .line 3
    new-instance v28, Lteam/opay/business/provider/active/AdItem;

    .line 4
    .line 5
    move-object/from16 v1, v28

    .line 6
    .line 7
    const/high16 v26, 0xc00000

    .line 8
    .line 9
    const/16 v27, 0x0

    .line 10
    .line 11
    const/4 v2, -0x1

    .line 12
    const-string v3, ""

    .line 13
    .line 14
    const-string v4, ""

    .line 15
    .line 16
    const-string v5, ""

    .line 17
    .line 18
    const-string v6, ""

    .line 19
    .line 20
    const-string v7, ""

    .line 21
    .line 22
    const-string v8, ""

    .line 23
    .line 24
    const-string v9, ""

    .line 25
    .line 26
    const-string v10, ""

    .line 27
    .line 28
    const-string v11, ""

    .line 29
    .line 30
    const-string v12, ""

    .line 31
    .line 32
    const-string v13, ""

    .line 33
    .line 34
    const-string v14, ""

    .line 35
    .line 36
    const-string v15, ""

    .line 37
    .line 38
    const-string v16, ""

    .line 39
    .line 40
    const-string v17, ""

    .line 41
    .line 42
    const/16 v18, 0x0

    .line 43
    .line 44
    const/16 v19, 0x0

    .line 45
    .line 46
    const-string v20, ""

    .line 47
    .line 48
    const-string v21, ""

    .line 49
    .line 50
    const-string v22, ""

    .line 51
    .line 52
    const-string v23, ""

    .line 53
    .line 54
    const/16 v24, 0x0

    .line 55
    .line 56
    const/16 v25, 0x0

    .line 57
    .line 58
    invoke-direct/range {v1 .. v27}, Lteam/opay/business/provider/active/AdItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 59
    .line 60
    .line 61
    invoke-static/range {v28 .. v28}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const-string v2, "preview"

    .line 66
    .line 67
    invoke-direct {v0, v2, v1}, Lteam/opay/business/provider/active/AdInfo;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 68
    .line 69
    .line 70
    return-object v0
.end method

.method public static final t(Lteam/opay/business/provider/active/ListBannerView;Landroid/content/Context;)Lteam/opay/business/provider/active/ListBannerView$PayResultBannerAdapter;
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/business/provider/active/ListBannerView$PayResultBannerAdapter;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lteam/opay/business/provider/active/ListBannerView$PayResultBannerAdapter;-><init>(Lteam/opay/business/provider/active/ListBannerView;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lbh8;

    .line 7
    .line 8
    invoke-direct {v1, p1, p0}, Lbh8;-><init>(Landroid/content/Context;Lteam/opay/business/provider/active/ListBannerView;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lteam/opay/business/provider/active/ListBannerView$PayResultBannerAdapter;->q(Lkotlin/jvm/functions/Function1;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static final u(Landroid/content/Context;Lteam/opay/business/provider/active/ListBannerView;Lteam/opay/business/provider/active/BannerEntity;)Lkotlin/Unit;
    .locals 3

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lyqe;->a:Lyqe;

    .line 7
    .line 8
    invoke-virtual {p2}, Lteam/opay/business/provider/active/BannerEntity;->b()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "list_banner_click_"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-direct {p1}, Lteam/opay/business/provider/active/ListBannerView;->getArrayValue()Ljava/util/ArrayList;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/4 v1, 0x0

    .line 34
    new-array v1, v1, [Lkotlin/Pair;

    .line 35
    .line 36
    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, [Lkotlin/Pair;

    .line 41
    .line 42
    array-length v1, p1

    .line 43
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, [Lkotlin/Pair;

    .line 48
    .line 49
    invoke-virtual {v0, p0, p2, p1}, Lyqe;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 50
    .line 51
    .line 52
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 53
    .line 54
    return-object p0
.end method


# virtual methods
.method public final getOnItemClickCallback()Lteam/opay/core/common/android/event/CallbackWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/core/common/android/event/CallbackWrapper<",
            "Lteam/opay/business/provider/active/AdItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/provider/active/ListBannerView;->i:Lteam/opay/core/common/android/event/CallbackWrapper;

    .line 2
    .line 3
    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Lteam/opay/business/widget/LifecycleRecyclerView;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lteam/opay/business/provider/active/ListBannerView;->getBannerAdapter()Lteam/opay/business/provider/active/ListBannerView$ListBannerAdapter;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lteam/opay/business/provider/active/ListBannerView;->e:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lteam/opay/business/provider/active/ListBannerView$ListBannerAdapter;->r(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Lteam/opay/business/provider/active/SpaceItemDecoration;

    .line 31
    .line 32
    iget v1, p0, Lteam/opay/business/provider/active/ListBannerView;->f:I

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/business/provider/active/SpaceItemDecoration;-><init>(III)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Lteam/opay/business/widget/LifecycleRecyclerView;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-void
.end method

.method public final q(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lteam/opay/business/provider/active/ListBannerView;->getViewModel()Lteam/opay/business/provider/active/ActiveViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lteam/opay/business/provider/active/BannerRequest;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const-string p1, ""

    .line 10
    .line 11
    :cond_0
    invoke-direct {v1, p1}, Lteam/opay/business/provider/active/BannerRequest;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lteam/opay/business/provider/active/ActiveViewModel;->b(Lteam/opay/business/provider/active/BannerRequest;)Landroidx/lifecycle/LiveData;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    new-instance v0, Lch8;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lch8;-><init>(Lteam/opay/business/provider/active/ListBannerView;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1, p0, v0}, Lpna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final setBannerData(Lteam/opay/business/provider/active/AdInfo;)V
    .locals 2
    .param p1    # Lteam/opay/business/provider/active/AdInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-static {p0}, Lg0g;->d(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iput-object p1, p0, Lteam/opay/business/provider/active/ListBannerView;->h:Lteam/opay/business/provider/active/AdInfo;

    .line 8
    .line 9
    invoke-virtual {p1}, Lteam/opay/business/provider/active/AdInfo;->a()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    goto :goto_1

    .line 25
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 26
    :goto_1
    xor-int/2addr v0, v1

    .line 27
    invoke-static {p0, v0}, Lg0g;->j(Landroid/view/View;Z)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lteam/opay/business/provider/active/ListBannerView;->getBannerAdapter()Lteam/opay/business/provider/active/ListBannerView$ListBannerAdapter;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p1}, Lteam/opay/business/provider/active/AdInfo;->a()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-nez p1, :cond_3

    .line 39
    .line 40
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    :cond_3
    invoke-virtual {v0, p1}, Lteam/opay/business/provider/active/ListBannerView$ListBannerAdapter;->setDataList(Ljava/util/List;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final setData(Ljava/util/List;)V
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/business/provider/active/BannerEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v2, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 15
    :goto_1
    xor-int/2addr v0, v2

    .line 16
    invoke-static {p0, v0}, Lg0g;->j(Landroid/view/View;Z)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lteam/opay/business/provider/active/ListBannerView;->getResultBannerAdapter()Lteam/opay/business/provider/active/ListBannerView$PayResultBannerAdapter;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v2, p0, Lteam/opay/business/provider/active/ListBannerView;->e:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Lteam/opay/business/provider/active/ListBannerView$PayResultBannerAdapter;->r(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lteam/opay/business/provider/active/ListBannerView;->getResultBannerAdapter()Lteam/opay/business/provider/active/ListBannerView$PayResultBannerAdapter;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-nez p1, :cond_2

    .line 36
    .line 37
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    move-object v2, p1

    .line 43
    :goto_2
    invoke-virtual {v0, v2}, Lteam/opay/business/provider/active/ListBannerView$PayResultBannerAdapter;->setDataList(Ljava/util/List;)V

    .line 44
    .line 45
    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Lteam/opay/business/provider/active/BannerEntity;

    .line 63
    .line 64
    sget-object v2, Lyqe;->a:Lyqe;

    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    const-string v4, "getContext(...)"

    .line 71
    .line 72
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Lteam/opay/business/provider/active/BannerEntity;->b()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    new-instance v4, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v5, "list_banner_show_"

    .line 85
    .line 86
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-direct {p0}, Lteam/opay/business/provider/active/ListBannerView;->getArrayValue()Ljava/util/ArrayList;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    new-array v5, v1, [Lkotlin/Pair;

    .line 101
    .line 102
    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    check-cast v4, [Lkotlin/Pair;

    .line 107
    .line 108
    array-length v5, v4

    .line 109
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    check-cast v4, [Lkotlin/Pair;

    .line 114
    .line 115
    invoke-virtual {v2, v3, v0, v4}, Lyqe;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 116
    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_3
    return-void
.end method

.method public final setOnItemClickCallback(Lteam/opay/core/common/android/event/CallbackWrapper;)V
    .locals 0
    .param p1    # Lteam/opay/core/common/android/event/CallbackWrapper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/common/android/event/CallbackWrapper<",
            "Lteam/opay/business/provider/active/AdItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/provider/active/ListBannerView;->i:Lteam/opay/core/common/android/event/CallbackWrapper;

    .line 2
    .line 3
    return-void
.end method

.method public final setTrackCode(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "list"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lteam/opay/business/provider/active/ListBannerView;->getArrayValue()Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lteam/opay/business/provider/active/ListBannerView;->getArrayValue()Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method
