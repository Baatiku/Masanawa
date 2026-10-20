.class public Lteam/opay/pay/widget/LoopViewPager;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "LoopViewPager.kt"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ClickableViewAccessibility"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Landroid/view/View$OnAttachStateChangeListener;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00be\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u001c\n\u0002\u0010\t\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u000f\n\u0002\u0008\t*\u0002\u009d\u0001\u0008\u0017\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u00022\u00020\u0003B\u0011\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007B\u001b\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\u0006\u0010\nB#\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0006\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0011\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J!\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\nJ\u000f\u0010\u0016\u001a\u00020\u0014H\u0003\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0014H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0017J\u0017\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\'\u0010 \u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008 \u0010!J\u0017\u0010\"\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\"\u0010\u001bJ\u0017\u0010%\u001a\u00020\u000e2\u0006\u0010$\u001a\u00020#H\u0002\u00a2\u0006\u0004\u0008%\u0010&J\r\u0010(\u001a\u00020\'\u00a2\u0006\u0004\u0008(\u0010)J\u0015\u0010+\u001a\u00020\u00142\u0006\u0010*\u001a\u00020\u000b\u00a2\u0006\u0004\u0008+\u0010\u001bJ\u001d\u0010.\u001a\u00020\u00142\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00028\u00000,H\u0007\u00a2\u0006\u0004\u0008.\u0010/J\u0017\u00102\u001a\u00020\u000e2\u0006\u00101\u001a\u000200H\u0016\u00a2\u0006\u0004\u00082\u00103J\u0019\u00104\u001a\u00020\u000e2\u0008\u00101\u001a\u0004\u0018\u000100H\u0016\u00a2\u0006\u0004\u00084\u00103J\u0019\u00106\u001a\u00020\u000e2\u0008\u00105\u001a\u0004\u0018\u000100H\u0016\u00a2\u0006\u0004\u00086\u00103J\r\u00107\u001a\u00020\u0014\u00a2\u0006\u0004\u00087\u0010\u0017J\r\u00108\u001a\u00020\u0014\u00a2\u0006\u0004\u00088\u0010\u0017J\r\u00109\u001a\u00020\u0014\u00a2\u0006\u0004\u00089\u0010\u0017J\u0015\u0010<\u001a\u00020\u00142\u0006\u0010;\u001a\u00020:\u00a2\u0006\u0004\u0008<\u0010=J\u0015\u0010?\u001a\u00020\u00142\u0006\u0010>\u001a\u00020\u000b\u00a2\u0006\u0004\u0008?\u0010\u001bJ\u0015\u0010@\u001a\u00020\u000b2\u0006\u0010$\u001a\u00020#\u00a2\u0006\u0004\u0008@\u0010AJ\u0017\u0010D\u001a\u00020\u00142\u0006\u0010C\u001a\u00020BH\u0016\u00a2\u0006\u0004\u0008D\u0010EJ\u0017\u0010F\u001a\u00020\u00142\u0006\u0010C\u001a\u00020BH\u0016\u00a2\u0006\u0004\u0008F\u0010ER\u001e\u0010J\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010G8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008H\u0010IR\u0016\u0010M\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008K\u0010LR*\u0010S\u001a\u00020\u000e2\u0006\u0010N\u001a\u00020\u000e8F@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008O\u0010L\u001a\u0004\u0008P\u0010\u0010\"\u0004\u0008Q\u0010RR\"\u0010Y\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008T\u0010U\u001a\u0004\u0008V\u0010W\"\u0004\u0008X\u0010\u001bR\"\u0010]\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008Z\u0010U\u001a\u0004\u0008[\u0010W\"\u0004\u0008\\\u0010\u001bR\"\u0010`\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008%\u0010U\u001a\u0004\u0008^\u0010W\"\u0004\u0008_\u0010\u001bR\"\u0010c\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008.\u0010U\u001a\u0004\u0008a\u0010W\"\u0004\u0008b\u0010\u001bR\"\u0010j\u001a\u00020d8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008@\u0010e\u001a\u0004\u0008f\u0010g\"\u0004\u0008h\u0010iR\"\u0010m\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00087\u0010U\u001a\u0004\u0008k\u0010W\"\u0004\u0008l\u0010\u001bR\"\u0010p\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008P\u0010U\u001a\u0004\u0008n\u0010W\"\u0004\u0008o\u0010\u001bR*\u0010w\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010q8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010r\u001a\u0004\u0008s\u0010t\"\u0004\u0008u\u0010vR$\u0010~\u001a\u0004\u0018\u00010x8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008 \u0010y\u001a\u0004\u0008z\u0010{\"\u0004\u0008|\u0010}R\u001a\u0010\u0081\u0001\u001a\u0004\u0018\u00010\u007f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\"\u0010\u0080\u0001R\u0017\u0010\u0082\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008?\u0010LR\u0018\u0010\u0086\u0001\u001a\u00030\u0083\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0084\u0001\u0010\u0085\u0001R\u0017\u0010\u0087\u0001\u001a\u00030\u0083\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u0015\u0010\u0085\u0001R\u0018\u0010\u0089\u0001\u001a\u00020\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0018\u0010\u0088\u0001R\u0017\u0010\u008c\u0001\u001a\u00030\u008a\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u0016\u0010\u008b\u0001R\u001d\u0010\u008f\u0001\u001a\t\u0012\u0004\u0012\u00028\u00000\u008d\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u00088\u0010\u008e\u0001R\u001a\u0010\u0091\u0001\u001a\u0004\u0018\u00010:8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u00089\u0010\u0090\u0001R\u0017\u0010\u0092\u0001\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010UR\u0017\u0010\u0093\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008C\u0010LR\u0018\u0010\u0095\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0094\u0001\u0010LR&\u0010\u0099\u0001\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u0096\u0001\u0010L\u001a\u0005\u0008\u0097\u0001\u0010\u0010\"\u0005\u0008\u0098\u0001\u0010RR\u001f\u0010\u009c\u0001\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u000e\n\u0005\u0008\u009a\u0001\u0010U\u0012\u0005\u0008\u009b\u0001\u0010\u0017R\'\u0010\u00a2\u0001\u001a\t\u0012\u0004\u0012\u00028\u00000\u009d\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u009e\u0001\u0010\u009f\u0001\u001a\u0006\u0008\u00a0\u0001\u0010\u00a1\u0001R\u0016\u0010\u00a4\u0001\u001a\u00020\u000b8BX\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00a3\u0001\u0010W\u00a8\u0006\u00a5\u0001"
    }
    d2 = {
        "Lteam/opay/pay/widget/LoopViewPager;",
        "T",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Landroid/view/View$OnAttachStateChangeListener;",
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
        "u",
        "()Z",
        "Lag8;",
        "getOwner",
        "()Lag8;",
        "",
        "p",
        "r",
        "()V",
        "q",
        "state",
        "k",
        "(I)V",
        "position",
        "",
        "positionOffset",
        "positionOffsetPixels",
        "l",
        "(IFI)V",
        "m",
        "Landroid/app/Activity;",
        "activity",
        "f",
        "(Landroid/app/Activity;)Z",
        "Landroidx/viewpager2/widget/ViewPager2;",
        "getViewPager",
        "()Landroidx/viewpager2/widget/ViewPager2;",
        "style",
        "setupWithIndicatorStyle",
        "",
        "list",
        "g",
        "(Ljava/util/List;)V",
        "Landroid/view/MotionEvent;",
        "ev",
        "dispatchTouchEvent",
        "(Landroid/view/MotionEvent;)Z",
        "onInterceptTouchEvent",
        "event",
        "onTouchEvent",
        "i",
        "s",
        "t",
        "",
        "ratio",
        "setDimensionRatio",
        "(Ljava/lang/String;)V",
        "height",
        "n",
        "h",
        "(Landroid/app/Activity;)I",
        "Landroid/view/View;",
        "v",
        "onViewAttachedToWindow",
        "(Landroid/view/View;)V",
        "onViewDetachedFromWindow",
        "Lteam/opay/pay/widget/internal/ViewPager2Adapter;",
        "a",
        "Lteam/opay/pay/widget/internal/ViewPager2Adapter;",
        "adapter",
        "b",
        "Z",
        "hasScroll",
        "value",
        "c",
        "j",
        "setAutoLoop",
        "(Z)V",
        "isAutoLoop",
        "d",
        "I",
        "getIndicatorStyle",
        "()I",
        "setIndicatorStyle",
        "indicatorStyle",
        "e",
        "getScrollDuration",
        "setScrollDuration",
        "scrollDuration",
        "getFullScreenHeightMinus",
        "setFullScreenHeightMinus",
        "fullScreenHeightMinus",
        "getFullScreenWidthMinus",
        "setFullScreenWidthMinus",
        "fullScreenWidthMinus",
        "",
        "J",
        "getScrollInterval",
        "()J",
        "setScrollInterval",
        "(J)V",
        "scrollInterval",
        "getPageMargin",
        "setPageMargin",
        "pageMargin",
        "getCurrentItem",
        "setCurrentItem",
        "currentItem",
        "Ltzf;",
        "Ltzf;",
        "getViewHolder",
        "()Ltzf;",
        "setViewHolder",
        "(Ltzf;)V",
        "viewHolder",
        "Landroidx/viewpager/widget/ViewPager$i;",
        "Landroidx/viewpager/widget/ViewPager$i;",
        "getOnPageChangeListener",
        "()Landroidx/viewpager/widget/ViewPager$i;",
        "setOnPageChangeListener",
        "(Landroidx/viewpager/widget/ViewPager$i;)V",
        "onPageChangeListener",
        "Lteam/opay/pay/widget/internal/ViewPager2Helper;",
        "Lteam/opay/pay/widget/internal/ViewPager2Helper;",
        "helper",
        "xmlWH",
        "Ljava/lang/Runnable;",
        "o",
        "Ljava/lang/Runnable;",
        "scrollTask",
        "task",
        "Landroidx/viewpager2/widget/ViewPager2;",
        "mViewPager",
        "Lteam/opay/pay/widget/internal/IndicatorView;",
        "Lteam/opay/pay/widget/internal/IndicatorView;",
        "mIndicatorView",
        "",
        "Ljava/util/List;",
        "mDataList",
        "Ljava/lang/String;",
        "dimensionRatio",
        "indicatorPosition",
        "indicatorVisible",
        "w",
        "fullScreen",
        "x",
        "getInterceptTouch",
        "setInterceptTouch",
        "interceptTouch",
        "y",
        "getLoopType$annotations",
        "loopType",
        "team/opay/pay/widget/LoopViewPager$pageListener$2$a",
        "z",
        "Lid8;",
        "getPageListener",
        "()Lteam/opay/pay/widget/LoopViewPager$pageListener$2$a;",
        "pageListener",
        "getSize",
        "size",
        "loop-viewpager_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public A:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public a:Lteam/opay/pay/widget/internal/ViewPager2Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/widget/internal/ViewPager2Adapter<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Z

.field public c:Z

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:J

.field public i:I

.field public j:I

.field public k:Ltzf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltzf<",
            "-TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public l:Landroidx/viewpager/widget/ViewPager$i;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public m:Lteam/opay/pay/widget/internal/ViewPager2Helper;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public n:Z

.field public final o:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final p:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public q:Landroidx/viewpager2/widget/ViewPager2;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final r:Lteam/opay/pay/widget/internal/IndicatorView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public t:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public u:I

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:I

.field public final z:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
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
    invoke-direct {p0, p1, v0}, Lteam/opay/pay/widget/LoopViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lteam/opay/pay/widget/LoopViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
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
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lteam/opay/pay/widget/LoopViewPager;->A:Ljava/util/Map;

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0x320

    .line 5
    iput p3, p0, Lteam/opay/pay/widget/LoopViewPager;->e:I

    const-wide/16 v0, 0xfa0

    .line 6
    iput-wide v0, p0, Lteam/opay/pay/widget/LoopViewPager;->h:J

    .line 7
    new-instance p3, Lpo8;

    invoke-direct {p3, p0}, Lpo8;-><init>(Lteam/opay/pay/widget/LoopViewPager;)V

    iput-object p3, p0, Lteam/opay/pay/widget/LoopViewPager;->o:Ljava/lang/Runnable;

    .line 8
    new-instance p3, Lqo8;

    invoke-direct {p3, p0}, Lqo8;-><init>(Lteam/opay/pay/widget/LoopViewPager;)V

    iput-object p3, p0, Lteam/opay/pay/widget/LoopViewPager;->p:Ljava/lang/Runnable;

    .line 9
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lteam/opay/pay/widget/LoopViewPager;->s:Ljava/util/List;

    const/4 p3, 0x1

    .line 10
    iput p3, p0, Lteam/opay/pay/widget/LoopViewPager;->u:I

    .line 11
    iput-boolean p3, p0, Lteam/opay/pay/widget/LoopViewPager;->v:Z

    .line 12
    new-instance p3, Lteam/opay/pay/widget/LoopViewPager$pageListener$2;

    invoke-direct {p3, p0}, Lteam/opay/pay/widget/LoopViewPager$pageListener$2;-><init>(Lteam/opay/pay/widget/LoopViewPager;)V

    invoke-static {p3}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object p3

    iput-object p3, p0, Lteam/opay/pay/widget/LoopViewPager;->z:Lid8;

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lteam/opay/pay/widget/R$layout;->loop_banner_layout:I

    invoke-static {p3, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 14
    sget p3, Lteam/opay/pay/widget/R$id;->loop_viewPager:I

    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const-string v0, "findViewById(R.id.loop_viewPager)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroidx/viewpager2/widget/ViewPager2;

    iput-object p3, p0, Lteam/opay/pay/widget/LoopViewPager;->q:Landroidx/viewpager2/widget/ViewPager2;

    .line 15
    sget p3, Lteam/opay/pay/widget/R$id;->loop_indicator:I

    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const-string v0, "findViewById(R.id.loop_indicator)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lteam/opay/pay/widget/internal/IndicatorView;

    iput-object p3, p0, Lteam/opay/pay/widget/LoopViewPager;->r:Lteam/opay/pay/widget/internal/IndicatorView;

    .line 16
    invoke-direct {p0, p1, p2}, Lteam/opay/pay/widget/LoopViewPager;->p(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Lteam/opay/pay/widget/LoopViewPager;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/widget/LoopViewPager;->o(Lteam/opay/pay/widget/LoopViewPager;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lteam/opay/pay/widget/LoopViewPager;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/widget/LoopViewPager;->v(Lteam/opay/pay/widget/LoopViewPager;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic c(Lteam/opay/pay/widget/LoopViewPager;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lteam/opay/pay/widget/LoopViewPager;->k(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic d(Lteam/opay/pay/widget/LoopViewPager;IFI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/pay/widget/LoopViewPager;->l(IFI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic e(Lteam/opay/pay/widget/LoopViewPager;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lteam/opay/pay/widget/LoopViewPager;->m(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic getLoopType$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private final getOwner()Lag8;
    .locals 2

    .line 1
    invoke-static {p0}, Le0g;->a(Landroid/view/View;)Lag8;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v1, v0, Lag8;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    check-cast v0, Lag8;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :cond_1
    :goto_0
    return-object v0
.end method

.method private final getPageListener()Lteam/opay/pay/widget/LoopViewPager$pageListener$2$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/widget/LoopViewPager;->z:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/widget/LoopViewPager$pageListener$2$a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/widget/LoopViewPager;->s:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private final k(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/widget/LoopViewPager;->r:Lteam/opay/pay/widget/internal/IndicatorView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/pay/widget/BaseIndicatorView;->onPageScrollStateChanged(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/widget/LoopViewPager;->l:Landroidx/viewpager/widget/ViewPager$i;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$i;->onPageScrollStateChanged(I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private final l(IFI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/widget/LoopViewPager;->r:Lteam/opay/pay/widget/internal/IndicatorView;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lteam/opay/pay/widget/BaseIndicatorView;->onPageScrolled(IFI)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/widget/LoopViewPager;->l:Landroidx/viewpager/widget/ViewPager$i;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$i;->onPageScrolled(IFI)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private final m(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/widget/LoopViewPager;->getSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    rem-int v0, p1, v0

    .line 6
    .line 7
    iget-object v1, p0, Lteam/opay/pay/widget/LoopViewPager;->r:Lteam/opay/pay/widget/internal/IndicatorView;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lteam/opay/pay/widget/BaseIndicatorView;->onPageSelected(I)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lteam/opay/pay/widget/LoopViewPager;->l:Landroidx/viewpager/widget/ViewPager$i;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {v1, v0}, Landroidx/viewpager/widget/ViewPager$i;->onPageSelected(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iput p1, p0, Lteam/opay/pay/widget/LoopViewPager;->j:I

    .line 20
    .line 21
    return-void
.end method

.method public static final o(Lteam/opay/pay/widget/LoopViewPager;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lteam/opay/pay/widget/LoopViewPager;->b:Z

    .line 8
    .line 9
    return-void
.end method

.method private final p(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    sget-object v2, Lteam/opay/pay/widget/R$styleable;->LoopViewPager:[I

    .line 6
    .line 7
    move-object/from16 v3, p2

    .line 8
    .line 9
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const-string v3, "context.obtainStyledAttr\u2026.styleable.LoopViewPager)"

    .line 14
    .line 15
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget v3, Lteam/opay/pay/widget/R$styleable;->LoopViewPager_loop_dimension_ratio:I

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    const-string v3, "H,3:1"

    .line 27
    .line 28
    :cond_0
    iput-object v3, v0, Lteam/opay/pay/widget/LoopViewPager;->t:Ljava/lang/String;

    .line 29
    .line 30
    sget v3, Lteam/opay/pay/widget/R$styleable;->LoopViewPager_loop_full_screen:I

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    iput-boolean v3, v0, Lteam/opay/pay/widget/LoopViewPager;->w:Z

    .line 38
    .line 39
    sget v3, Lteam/opay/pay/widget/R$styleable;->LoopViewPager_loop_full_screen_height_minus:I

    .line 40
    .line 41
    const/4 v5, 0x0

    .line 42
    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    float-to-int v3, v3

    .line 47
    iput v3, v0, Lteam/opay/pay/widget/LoopViewPager;->f:I

    .line 48
    .line 49
    sget v3, Lteam/opay/pay/widget/R$styleable;->LoopViewPager_loop_full_screen_width_minus:I

    .line 50
    .line 51
    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    float-to-int v3, v3

    .line 56
    iput v3, v0, Lteam/opay/pay/widget/LoopViewPager;->g:I

    .line 57
    .line 58
    sget v3, Lteam/opay/pay/widget/R$styleable;->LoopViewPager_loop_xml_w_h:I

    .line 59
    .line 60
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    iput-boolean v3, v0, Lteam/opay/pay/widget/LoopViewPager;->n:Z

    .line 65
    .line 66
    sget v3, Lteam/opay/pay/widget/R$styleable;->LoopViewPager_loop_clip_children:I

    .line 67
    .line 68
    const/4 v6, 0x1

    .line 69
    invoke-virtual {v2, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    iget-object v7, v0, Lteam/opay/pay/widget/LoopViewPager;->q:Landroidx/viewpager2/widget/ViewPager2;

    .line 74
    .line 75
    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 79
    .line 80
    .line 81
    sget v3, Lteam/opay/pay/widget/R$styleable;->LoopViewPager_loop_indicator_visible:I

    .line 82
    .line 83
    invoke-virtual {v2, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    iput-boolean v3, v0, Lteam/opay/pay/widget/LoopViewPager;->v:Z

    .line 88
    .line 89
    sget v3, Lteam/opay/pay/widget/R$styleable;->LoopViewPager_loop_indicator_position:I

    .line 90
    .line 91
    invoke-virtual {v2, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    iput v3, v0, Lteam/opay/pay/widget/LoopViewPager;->u:I

    .line 96
    .line 97
    sget v3, Lteam/opay/pay/widget/R$styleable;->LoopViewPager_loop_type:I

    .line 98
    .line 99
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    iput v3, v0, Lteam/opay/pay/widget/LoopViewPager;->y:I

    .line 104
    .line 105
    sget v3, Lteam/opay/pay/widget/R$styleable;->LoopViewPager_loop_indicator_style:I

    .line 106
    .line 107
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    iput v3, v0, Lteam/opay/pay/widget/LoopViewPager;->d:I

    .line 112
    .line 113
    iget-object v3, v0, Lteam/opay/pay/widget/LoopViewPager;->r:Lteam/opay/pay/widget/internal/IndicatorView;

    .line 114
    .line 115
    sget v7, Lteam/opay/pay/widget/R$styleable;->LoopViewPager_loop_indicator_color_normal:I

    .line 116
    .line 117
    const-string v8, "#FFEEEEEE"

    .line 118
    .line 119
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    move-result v8

    .line 123
    invoke-virtual {v2, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    sget v8, Lteam/opay/pay/widget/R$styleable;->LoopViewPager_loop_indicator_color_select:I

    .line 128
    .line 129
    const-string v9, "#FFABABAB"

    .line 130
    .line 131
    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    move-result v9

    .line 135
    invoke-virtual {v2, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 136
    .line 137
    .line 138
    move-result v8

    .line 139
    invoke-virtual {v3, v7, v8}, Lteam/opay/pay/widget/internal/IndicatorView;->c(II)V

    .line 140
    .line 141
    .line 142
    sget v7, Lteam/opay/pay/widget/R$styleable;->LoopViewPager_loop_indicator_radius:I

    .line 143
    .line 144
    sget-object v8, Lteam/opay/pay/widget/internal/IndicatorView;->q:Lteam/opay/pay/widget/internal/IndicatorView$Companion;

    .line 145
    .line 146
    invoke-virtual {v8}, Lteam/opay/pay/widget/internal/IndicatorView$Companion;->b()F

    .line 147
    .line 148
    .line 149
    move-result v9

    .line 150
    invoke-virtual {v2, v7, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 151
    .line 152
    .line 153
    move-result v7

    .line 154
    sget v9, Lteam/opay/pay/widget/R$styleable;->LoopViewPager_loop_indicator_padding:I

    .line 155
    .line 156
    invoke-virtual {v8}, Lteam/opay/pay/widget/internal/IndicatorView$Companion;->a()F

    .line 157
    .line 158
    .line 159
    move-result v8

    .line 160
    invoke-virtual {v2, v9, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 161
    .line 162
    .line 163
    move-result v8

    .line 164
    invoke-virtual {v3, v7, v8}, Lteam/opay/pay/widget/internal/IndicatorView;->d(FF)V

    .line 165
    .line 166
    .line 167
    iget v7, v0, Lteam/opay/pay/widget/LoopViewPager;->d:I

    .line 168
    .line 169
    invoke-virtual {v3, v7}, Lteam/opay/pay/widget/internal/IndicatorView;->setStyle(I)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3}, Landroid/view/View;->postInvalidate()V

    .line 173
    .line 174
    .line 175
    sget v3, Lteam/opay/pay/widget/R$styleable;->LoopViewPager_loop_indicator_margin_start:I

    .line 176
    .line 177
    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    float-to-int v12, v3

    .line 182
    sget v3, Lteam/opay/pay/widget/R$styleable;->LoopViewPager_loop_indicator_margin_top:I

    .line 183
    .line 184
    const/high16 v7, 0x41000000    # 8.0f

    .line 185
    .line 186
    invoke-static {v7}, Lxme;->a(F)F

    .line 187
    .line 188
    .line 189
    move-result v7

    .line 190
    invoke-virtual {v2, v3, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    float-to-int v3, v3

    .line 195
    sget v7, Lteam/opay/pay/widget/R$styleable;->LoopViewPager_loop_indicator_margin_end:I

    .line 196
    .line 197
    invoke-virtual {v2, v7, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 198
    .line 199
    .line 200
    move-result v7

    .line 201
    float-to-int v11, v7

    .line 202
    sget v7, Lteam/opay/pay/widget/R$styleable;->LoopViewPager_loop_indicator_margin_bottom:I

    .line 203
    .line 204
    const/high16 v8, 0x40800000    # 4.0f

    .line 205
    .line 206
    invoke-static {v8}, Lxme;->a(F)F

    .line 207
    .line 208
    .line 209
    move-result v8

    .line 210
    invoke-virtual {v2, v7, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 211
    .line 212
    .line 213
    move-result v7

    .line 214
    float-to-int v10, v7

    .line 215
    sget v7, Lteam/opay/pay/widget/R$styleable;->LoopViewPager_loop_pager_margin_start:I

    .line 216
    .line 217
    invoke-virtual {v2, v7, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 218
    .line 219
    .line 220
    move-result v7

    .line 221
    float-to-int v7, v7

    .line 222
    sget v8, Lteam/opay/pay/widget/R$styleable;->LoopViewPager_loop_pager_margin_end:I

    .line 223
    .line 224
    invoke-virtual {v2, v8, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 225
    .line 226
    .line 227
    move-result v5

    .line 228
    float-to-int v5, v5

    .line 229
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 230
    .line 231
    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    .line 236
    .line 237
    const-string v8, "dimensionRatio = "

    .line 238
    .line 239
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    iget-object v8, v0, Lteam/opay/pay/widget/LoopViewPager;->t:Ljava/lang/String;

    .line 243
    .line 244
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    const-string v8, ", indicatorPosition = "

    .line 248
    .line 249
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    iget v8, v0, Lteam/opay/pay/widget/LoopViewPager;->u:I

    .line 253
    .line 254
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    const-string v8, ", clipChildren = "

    .line 258
    .line 259
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getClipChildren()Z

    .line 263
    .line 264
    .line 265
    move-result v8

    .line 266
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    sget v2, Lteam/opay/pay/widget/R$id;->loop_indicator:I

    .line 270
    .line 271
    sget v9, Lteam/opay/pay/widget/R$id;->loop_viewPager:I

    .line 272
    .line 273
    iget-boolean v8, v0, Lteam/opay/pay/widget/LoopViewPager;->w:Z

    .line 274
    .line 275
    if-eqz v8, :cond_1

    .line 276
    .line 277
    new-instance v8, Ljava/lang/StringBuilder;

    .line 278
    .line 279
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .line 281
    .line 282
    const-string v13, "H,"

    .line 283
    .line 284
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-static/range {p1 .. p1}, Lxme;->d(Landroid/content/Context;)I

    .line 288
    .line 289
    .line 290
    move-result v13

    .line 291
    iget v14, v0, Lteam/opay/pay/widget/LoopViewPager;->g:I

    .line 292
    .line 293
    invoke-static {v14}, Lxme;->b(I)I

    .line 294
    .line 295
    .line 296
    move-result v14

    .line 297
    sub-int/2addr v13, v14

    .line 298
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    const/16 v13, 0x3a

    .line 302
    .line 303
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-static/range {p1 .. p1}, Lxme;->c(Landroid/content/Context;)I

    .line 307
    .line 308
    .line 309
    move-result v13

    .line 310
    const-string v14, "null cannot be cast to non-null type android.app.Activity"

    .line 311
    .line 312
    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    check-cast v1, Landroid/app/Activity;

    .line 316
    .line 317
    invoke-virtual {v0, v1}, Lteam/opay/pay/widget/LoopViewPager;->h(Landroid/app/Activity;)I

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    sub-int/2addr v13, v1

    .line 322
    iget v1, v0, Lteam/opay/pay/widget/LoopViewPager;->f:I

    .line 323
    .line 324
    invoke-static {v1}, Lxme;->b(I)I

    .line 325
    .line 326
    .line 327
    move-result v1

    .line 328
    sub-int/2addr v13, v1

    .line 329
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    iput-object v1, v0, Lteam/opay/pay/widget/LoopViewPager;->t:Ljava/lang/String;

    .line 337
    .line 338
    :cond_1
    iget-boolean v1, v0, Lteam/opay/pay/widget/LoopViewPager;->n:Z

    .line 339
    .line 340
    const/4 v8, 0x6

    .line 341
    const/4 v13, 0x4

    .line 342
    if-nez v1, :cond_2

    .line 343
    .line 344
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintSet;

    .line 345
    .line 346
    invoke-direct {v1}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->q(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 350
    .line 351
    .line 352
    iget-object v4, v0, Lteam/opay/pay/widget/LoopViewPager;->t:Ljava/lang/String;

    .line 353
    .line 354
    invoke-virtual {v1, v9, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->W(ILjava/lang/String;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v1, v9, v8, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->a0(III)V

    .line 358
    .line 359
    .line 360
    const/4 v4, 0x7

    .line 361
    invoke-virtual {v1, v9, v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->a0(III)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->i(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 365
    .line 366
    .line 367
    goto :goto_0

    .line 368
    :cond_2
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintSet;

    .line 369
    .line 370
    invoke-direct {v1}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->q(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v1, v9, v13, v4, v13}, Landroidx/constraintlayout/widget/ConstraintSet;->t(IIII)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->i(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 380
    .line 381
    .line 382
    :goto_0
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintSet;

    .line 383
    .line 384
    invoke-direct {v1}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->q(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v1, v2, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->o(II)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v1, v2, v13}, Landroidx/constraintlayout/widget/ConstraintSet;->o(II)V

    .line 394
    .line 395
    .line 396
    iget v4, v0, Lteam/opay/pay/widget/LoopViewPager;->u:I

    .line 397
    .line 398
    if-eqz v4, :cond_8

    .line 399
    .line 400
    if-eq v4, v6, :cond_7

    .line 401
    .line 402
    const/4 v5, 0x2

    .line 403
    if-eq v4, v5, :cond_6

    .line 404
    .line 405
    const/4 v3, 0x3

    .line 406
    if-eq v4, v3, :cond_5

    .line 407
    .line 408
    if-eq v4, v13, :cond_4

    .line 409
    .line 410
    const/4 v3, 0x5

    .line 411
    if-eq v4, v3, :cond_3

    .line 412
    .line 413
    goto/16 :goto_1

    .line 414
    .line 415
    :cond_3
    const/4 v15, 0x7

    .line 416
    const/16 v17, 0x7

    .line 417
    .line 418
    move-object v13, v1

    .line 419
    move v14, v2

    .line 420
    move/from16 v16, v9

    .line 421
    .line 422
    move/from16 v18, v11

    .line 423
    .line 424
    invoke-virtual/range {v13 .. v18}, Landroidx/constraintlayout/widget/ConstraintSet;->u(IIIII)V

    .line 425
    .line 426
    .line 427
    const/4 v15, 0x4

    .line 428
    const/16 v17, 0x4

    .line 429
    .line 430
    move/from16 v18, v10

    .line 431
    .line 432
    invoke-virtual/range {v13 .. v18}, Landroidx/constraintlayout/widget/ConstraintSet;->u(IIIII)V

    .line 433
    .line 434
    .line 435
    goto/16 :goto_1

    .line 436
    .line 437
    :cond_4
    const/4 v3, 0x6

    .line 438
    const/4 v4, 0x6

    .line 439
    move-object v7, v1

    .line 440
    move v8, v2

    .line 441
    move v5, v9

    .line 442
    move v9, v3

    .line 443
    move v3, v10

    .line 444
    move v10, v5

    .line 445
    move v6, v11

    .line 446
    move v11, v4

    .line 447
    invoke-virtual/range {v7 .. v12}, Landroidx/constraintlayout/widget/ConstraintSet;->u(IIIII)V

    .line 448
    .line 449
    .line 450
    const/4 v15, 0x7

    .line 451
    const/16 v17, 0x7

    .line 452
    .line 453
    move-object v13, v1

    .line 454
    move v14, v2

    .line 455
    move/from16 v16, v5

    .line 456
    .line 457
    move/from16 v18, v6

    .line 458
    .line 459
    invoke-virtual/range {v13 .. v18}, Landroidx/constraintlayout/widget/ConstraintSet;->u(IIIII)V

    .line 460
    .line 461
    .line 462
    const/4 v15, 0x4

    .line 463
    const/16 v17, 0x4

    .line 464
    .line 465
    move/from16 v18, v3

    .line 466
    .line 467
    invoke-virtual/range {v13 .. v18}, Landroidx/constraintlayout/widget/ConstraintSet;->u(IIIII)V

    .line 468
    .line 469
    .line 470
    goto/16 :goto_1

    .line 471
    .line 472
    :cond_5
    move v5, v9

    .line 473
    move v3, v10

    .line 474
    const/4 v9, 0x6

    .line 475
    const/4 v11, 0x6

    .line 476
    move-object v7, v1

    .line 477
    move v8, v2

    .line 478
    move v10, v5

    .line 479
    invoke-virtual/range {v7 .. v12}, Landroidx/constraintlayout/widget/ConstraintSet;->u(IIIII)V

    .line 480
    .line 481
    .line 482
    const/4 v15, 0x4

    .line 483
    const/16 v17, 0x4

    .line 484
    .line 485
    move-object v13, v1

    .line 486
    move v14, v2

    .line 487
    move/from16 v16, v5

    .line 488
    .line 489
    move/from16 v18, v3

    .line 490
    .line 491
    invoke-virtual/range {v13 .. v18}, Landroidx/constraintlayout/widget/ConstraintSet;->u(IIIII)V

    .line 492
    .line 493
    .line 494
    goto :goto_1

    .line 495
    :cond_6
    move v6, v11

    .line 496
    const/16 v16, 0x0

    .line 497
    .line 498
    const/16 v17, 0x7

    .line 499
    .line 500
    const/4 v15, 0x7

    .line 501
    move-object v13, v1

    .line 502
    move v14, v2

    .line 503
    move/from16 v18, v6

    .line 504
    .line 505
    invoke-virtual/range {v13 .. v18}, Landroidx/constraintlayout/widget/ConstraintSet;->u(IIIII)V

    .line 506
    .line 507
    .line 508
    const/16 v17, 0x4

    .line 509
    .line 510
    const/4 v15, 0x3

    .line 511
    move/from16 v18, v3

    .line 512
    .line 513
    invoke-virtual/range {v13 .. v18}, Landroidx/constraintlayout/widget/ConstraintSet;->u(IIIII)V

    .line 514
    .line 515
    .line 516
    goto :goto_1

    .line 517
    :cond_7
    move v6, v11

    .line 518
    const/4 v10, 0x0

    .line 519
    const/4 v11, 0x6

    .line 520
    const/4 v9, 0x6

    .line 521
    move-object v7, v1

    .line 522
    move v8, v2

    .line 523
    invoke-virtual/range {v7 .. v12}, Landroidx/constraintlayout/widget/ConstraintSet;->u(IIIII)V

    .line 524
    .line 525
    .line 526
    const/16 v16, 0x0

    .line 527
    .line 528
    const/16 v17, 0x7

    .line 529
    .line 530
    const/4 v15, 0x7

    .line 531
    move-object v13, v1

    .line 532
    move v14, v2

    .line 533
    move/from16 v18, v6

    .line 534
    .line 535
    invoke-virtual/range {v13 .. v18}, Landroidx/constraintlayout/widget/ConstraintSet;->u(IIIII)V

    .line 536
    .line 537
    .line 538
    const/16 v17, 0x4

    .line 539
    .line 540
    const/4 v15, 0x3

    .line 541
    move/from16 v18, v3

    .line 542
    .line 543
    invoke-virtual/range {v13 .. v18}, Landroidx/constraintlayout/widget/ConstraintSet;->u(IIIII)V

    .line 544
    .line 545
    .line 546
    goto :goto_1

    .line 547
    :cond_8
    const/4 v10, 0x0

    .line 548
    const/4 v11, 0x6

    .line 549
    const/4 v9, 0x6

    .line 550
    move-object v7, v1

    .line 551
    move v8, v2

    .line 552
    invoke-virtual/range {v7 .. v12}, Landroidx/constraintlayout/widget/ConstraintSet;->u(IIIII)V

    .line 553
    .line 554
    .line 555
    const/16 v16, 0x0

    .line 556
    .line 557
    const/16 v17, 0x4

    .line 558
    .line 559
    const/4 v15, 0x3

    .line 560
    move-object v13, v1

    .line 561
    move v14, v2

    .line 562
    move/from16 v18, v3

    .line 563
    .line 564
    invoke-virtual/range {v13 .. v18}, Landroidx/constraintlayout/widget/ConstraintSet;->u(IIIII)V

    .line 565
    .line 566
    .line 567
    :goto_1
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->i(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 568
    .line 569
    .line 570
    return-void
.end method

.method public static final v(Lteam/opay/pay/widget/LoopViewPager;)V
    .locals 7

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lteam/opay/pay/widget/LoopViewPager;->m:Lteam/opay/pay/widget/internal/ViewPager2Helper;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Lteam/opay/pay/widget/LoopViewPager;->getOwner()Lag8;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    iget-object v3, p0, Lteam/opay/pay/widget/LoopViewPager;->q:Landroidx/viewpager2/widget/ViewPager2;

    .line 15
    .line 16
    iget v0, p0, Lteam/opay/pay/widget/LoopViewPager;->j:I

    .line 17
    .line 18
    add-int/lit8 v4, v0, 0x1

    .line 19
    .line 20
    iget v0, p0, Lteam/opay/pay/widget/LoopViewPager;->e:I

    .line 21
    .line 22
    int-to-long v5, v0

    .line 23
    invoke-virtual/range {v1 .. v6}, Lteam/opay/pay/widget/internal/ViewPager2Helper;->b(Lag8;Landroidx/viewpager2/widget/ViewPager2;IJ)V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/widget/LoopViewPager;->s()V

    .line 27
    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "ev"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/widget/LoopViewPager;->s()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/widget/LoopViewPager;->s()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    invoke-virtual {p0}, Lteam/opay/pay/widget/LoopViewPager;->t()V

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    return p1
.end method

.method public final f(Landroid/app/Activity;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 15
    .line 16
    .line 17
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 18
    .line 19
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 20
    .line 21
    new-instance v2, Landroid/util/DisplayMetrics;

    .line 22
    .line 23
    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 27
    .line 28
    .line 29
    iget p1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 30
    .line 31
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 32
    .line 33
    sub-int/2addr v0, v2

    .line 34
    if-gtz v0, :cond_1

    .line 35
    .line 36
    sub-int/2addr v1, p1

    .line 37
    if-lez v1, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 p1, 0x0

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 43
    :goto_1
    return p1
.end method

.method public final g(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)V"
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
    iget-object v0, p0, Lteam/opay/pay/widget/LoopViewPager;->s:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/pay/widget/LoopViewPager;->s:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lteam/opay/pay/widget/LoopViewPager;->t()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lteam/opay/pay/widget/LoopViewPager;->r()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lteam/opay/pay/widget/LoopViewPager;->q()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final getCurrentItem()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/widget/LoopViewPager;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public final getFullScreenHeightMinus()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/widget/LoopViewPager;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public final getFullScreenWidthMinus()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/widget/LoopViewPager;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public final getIndicatorStyle()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/widget/LoopViewPager;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public final getInterceptTouch()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/widget/LoopViewPager;->x:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getOnPageChangeListener()Landroidx/viewpager/widget/ViewPager$i;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/widget/LoopViewPager;->l:Landroidx/viewpager/widget/ViewPager$i;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPageMargin()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/widget/LoopViewPager;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public final getScrollDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/widget/LoopViewPager;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public final getScrollInterval()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lteam/opay/pay/widget/LoopViewPager;->h:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getViewHolder()Ltzf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltzf<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/widget/LoopViewPager;->k:Ltzf;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getViewPager()Landroidx/viewpager2/widget/ViewPager2;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/widget/LoopViewPager;->q:Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h(Landroid/app/Activity;)I
    .locals 5
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lteam/opay/pay/widget/LoopViewPager;->f(Landroid/app/Activity;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v2, "activity.resources"

    .line 19
    .line 20
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v2, "dimen"

    .line 24
    .line 25
    const-string v3, "android"

    .line 26
    .line 27
    const-string v4, "navigation_bar_height"

    .line 28
    .line 29
    invoke-virtual {v0, v4, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-lez v2, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lteam/opay/pay/widget/LoopViewPager;->f(Landroid/app/Activity;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    :cond_1
    return v1
.end method

.method public final i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/widget/LoopViewPager;->r:Lteam/opay/pay/widget/internal/IndicatorView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lxme;->e(Landroid/view/View;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final j()Z
    .locals 2

    .line 1
    iget v0, p0, Lteam/opay/pay/widget/LoopViewPager;->y:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Lteam/opay/pay/widget/LoopViewPager;->getSize()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-le v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    return v1
.end method

.method public final n(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/widget/LoopViewPager;->q:Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 8
    .line 9
    iget-object p1, p0, Lteam/opay/pay/widget/LoopViewPager;->q:Landroidx/viewpager2/widget/ViewPager2;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/widget/LoopViewPager;->x:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

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
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x2

    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    :goto_0
    const/4 v0, 0x1

    .line 24
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 30
    .line 31
    .line 32
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/widget/LoopViewPager;->s()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/widget/LoopViewPager;->t()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final q()V
    .locals 4

    .line 1
    iget-object v0, p0, Lteam/opay/pay/widget/LoopViewPager;->r:Lteam/opay/pay/widget/internal/IndicatorView;

    .line 2
    .line 3
    iget-boolean v1, p0, Lteam/opay/pay/widget/LoopViewPager;->v:Z

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Lteam/opay/pay/widget/LoopViewPager;->getSize()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-le v1, v2, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    :goto_0
    invoke-static {v0, v1}, Lxme;->e(Landroid/view/View;Z)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lteam/opay/pay/widget/LoopViewPager;->r:Lteam/opay/pay/widget/internal/IndicatorView;

    .line 21
    .line 22
    invoke-direct {p0}, Lteam/opay/pay/widget/LoopViewPager;->getSize()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {v0, v1}, Lteam/opay/pay/widget/internal/IndicatorView;->setIndicatorCount(I)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    .line 30
    .line 31
    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->q(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 35
    .line 36
    .line 37
    sget v1, Lteam/opay/pay/widget/R$id;->loop_indicator:I

    .line 38
    .line 39
    iget-object v3, p0, Lteam/opay/pay/widget/LoopViewPager;->r:Lteam/opay/pay/widget/internal/IndicatorView;

    .line 40
    .line 41
    invoke-virtual {v3}, Lteam/opay/pay/widget/internal/IndicatorView;->getIndicatorWidth()F

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    float-to-int v3, v3

    .line 46
    invoke-virtual {v0, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->x(II)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->i(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 50
    .line 51
    .line 52
    iget-boolean v0, p0, Lteam/opay/pay/widget/LoopViewPager;->v:Z

    .line 53
    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    invoke-direct {p0}, Lteam/opay/pay/widget/LoopViewPager;->getSize()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-le v0, v2, :cond_1

    .line 61
    .line 62
    iget v0, p0, Lteam/opay/pay/widget/LoopViewPager;->j:I

    .line 63
    .line 64
    invoke-direct {p0}, Lteam/opay/pay/widget/LoopViewPager;->getSize()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    rem-int/2addr v0, v1

    .line 69
    iget-object v1, p0, Lteam/opay/pay/widget/LoopViewPager;->r:Lteam/opay/pay/widget/internal/IndicatorView;

    .line 70
    .line 71
    invoke-virtual {v1, v0}, Lteam/opay/pay/widget/BaseIndicatorView;->onPageSelected(I)V

    .line 72
    .line 73
    .line 74
    :cond_1
    return-void
.end method

.method public final r()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/widget/LoopViewPager;->k:Ltzf;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Lteam/opay/pay/widget/internal/ViewPager2Adapter;

    .line 8
    .line 9
    iget-object v2, p0, Lteam/opay/pay/widget/LoopViewPager;->s:Ljava/util/List;

    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/pay/widget/LoopViewPager;->u()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-direct {v1, v2, v3, v0}, Lteam/opay/pay/widget/internal/ViewPager2Adapter;-><init>(Ljava/util/List;ZLtzf;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :goto_0
    iput-object v1, p0, Lteam/opay/pay/widget/LoopViewPager;->a:Lteam/opay/pay/widget/internal/ViewPager2Adapter;

    .line 21
    .line 22
    iget-object v0, p0, Lteam/opay/pay/widget/LoopViewPager;->q:Landroidx/viewpager2/widget/ViewPager2;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 29
    .line 30
    .line 31
    new-instance v1, Landroidx/viewpager2/widget/MarginPageTransformer;

    .line 32
    .line 33
    iget v2, p0, Lteam/opay/pay/widget/LoopViewPager;->i:I

    .line 34
    .line 35
    invoke-direct {v1, v2}, Landroidx/viewpager2/widget/MarginPageTransformer;-><init>(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$j;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0}, Lteam/opay/pay/widget/LoopViewPager;->getPageListener()Lteam/opay/pay/widget/LoopViewPager$pageListener$2$a;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->r(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0}, Lteam/opay/pay/widget/LoopViewPager;->getPageListener()Lteam/opay/pay/widget/LoopViewPager$pageListener$2$a;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->j(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lteam/opay/pay/widget/LoopViewPager;->u()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    iget-object v0, p0, Lteam/opay/pay/widget/LoopViewPager;->a:Lteam/opay/pay/widget/internal/ViewPager2Adapter;

    .line 68
    .line 69
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Lteam/opay/pay/widget/internal/ViewPager2Adapter;->k()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    goto :goto_1

    .line 77
    :cond_1
    const/4 v0, 0x0

    .line 78
    :goto_1
    iput v0, p0, Lteam/opay/pay/widget/LoopViewPager;->j:I

    .line 79
    .line 80
    new-instance v0, Lteam/opay/pay/widget/internal/ViewPager2Helper;

    .line 81
    .line 82
    invoke-direct {v0}, Lteam/opay/pay/widget/internal/ViewPager2Helper;-><init>()V

    .line 83
    .line 84
    .line 85
    iput-object v0, p0, Lteam/opay/pay/widget/LoopViewPager;->m:Lteam/opay/pay/widget/internal/ViewPager2Helper;

    .line 86
    .line 87
    invoke-direct {p0}, Lteam/opay/pay/widget/LoopViewPager;->getOwner()Lag8;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    iget-object v2, p0, Lteam/opay/pay/widget/LoopViewPager;->q:Landroidx/viewpager2/widget/ViewPager2;

    .line 92
    .line 93
    iget v3, p0, Lteam/opay/pay/widget/LoopViewPager;->j:I

    .line 94
    .line 95
    invoke-virtual {v0, v1, v2, v3}, Lteam/opay/pay/widget/internal/ViewPager2Helper;->d(Lag8;Landroidx/viewpager2/widget/ViewPager2;I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Lteam/opay/pay/widget/LoopViewPager;->s()V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    .line 103
    .line 104
    const-string v1, "You must set ViewHolder for LoopViewPager"

    .line 105
    .line 106
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw v0
.end method

.method public final s()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/widget/LoopViewPager;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lteam/opay/pay/widget/LoopViewPager;->q:Landroidx/viewpager2/widget/ViewPager2;

    .line 8
    .line 9
    iget-object v1, p0, Lteam/opay/pay/widget/LoopViewPager;->p:Ljava/lang/Runnable;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lteam/opay/pay/widget/LoopViewPager;->q:Landroidx/viewpager2/widget/ViewPager2;

    .line 15
    .line 16
    iget-object v1, p0, Lteam/opay/pay/widget/LoopViewPager;->p:Ljava/lang/Runnable;

    .line 17
    .line 18
    iget-wide v2, p0, Lteam/opay/pay/widget/LoopViewPager;->h:J

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 21
    .line 22
    .line 23
    iget-boolean v0, p0, Lteam/opay/pay/widget/LoopViewPager;->b:Z

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lteam/opay/pay/widget/LoopViewPager;->q:Landroidx/viewpager2/widget/ViewPager2;

    .line 28
    .line 29
    iget-object v1, p0, Lteam/opay/pay/widget/LoopViewPager;->o:Ljava/lang/Runnable;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lteam/opay/pay/widget/LoopViewPager;->q:Landroidx/viewpager2/widget/ViewPager2;

    .line 35
    .line 36
    iget-object v1, p0, Lteam/opay/pay/widget/LoopViewPager;->o:Ljava/lang/Runnable;

    .line 37
    .line 38
    iget-wide v2, p0, Lteam/opay/pay/widget/LoopViewPager;->h:J

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method public final setAutoLoop(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    iput v0, p0, Lteam/opay/pay/widget/LoopViewPager;->y:I

    .line 5
    .line 6
    :cond_0
    iput-boolean p1, p0, Lteam/opay/pay/widget/LoopViewPager;->c:Z

    .line 7
    .line 8
    return-void
.end method

.method public final setCurrentItem(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/pay/widget/LoopViewPager;->j:I

    .line 2
    .line 3
    return-void
.end method

.method public final setDimensionRatio(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "ratio"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    .line 7
    .line 8
    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    const-string v1, "0"

    .line 18
    .line 19
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->q(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 27
    .line 28
    .line 29
    sget v1, Lteam/opay/pay/widget/R$id;->loop_viewPager:I

    .line 30
    .line 31
    invoke-virtual {v0, v1, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->W(ILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->i(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    iget-object p1, p0, Lteam/opay/pay/widget/LoopViewPager;->q:Landroidx/viewpager2/widget/ViewPager2;

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const/4 v0, -0x2

    .line 45
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 46
    .line 47
    iget-object v0, p0, Lteam/opay/pay/widget/LoopViewPager;->q:Landroidx/viewpager2/widget/ViewPager2;

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    .line 51
    .line 52
    :goto_1
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final setFullScreenHeightMinus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/pay/widget/LoopViewPager;->f:I

    .line 2
    .line 3
    return-void
.end method

.method public final setFullScreenWidthMinus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/pay/widget/LoopViewPager;->g:I

    .line 2
    .line 3
    return-void
.end method

.method public final setIndicatorStyle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/pay/widget/LoopViewPager;->d:I

    .line 2
    .line 3
    return-void
.end method

.method public final setInterceptTouch(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/widget/LoopViewPager;->x:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$i;)V
    .locals 0
    .param p1    # Landroidx/viewpager/widget/ViewPager$i;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/widget/LoopViewPager;->l:Landroidx/viewpager/widget/ViewPager$i;

    .line 2
    .line 3
    return-void
.end method

.method public final setPageMargin(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/pay/widget/LoopViewPager;->i:I

    .line 2
    .line 3
    return-void
.end method

.method public final setScrollDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/pay/widget/LoopViewPager;->e:I

    .line 2
    .line 3
    return-void
.end method

.method public final setScrollInterval(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lteam/opay/pay/widget/LoopViewPager;->h:J

    .line 2
    .line 3
    return-void
.end method

.method public final setViewHolder(Ltzf;)V
    .locals 0
    .param p1    # Ltzf;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltzf<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/widget/LoopViewPager;->k:Ltzf;

    .line 2
    .line 3
    return-void
.end method

.method public final setupWithIndicatorStyle(I)V
    .locals 1

    .line 1
    iput p1, p0, Lteam/opay/pay/widget/LoopViewPager;->d:I

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/widget/LoopViewPager;->r:Lteam/opay/pay/widget/internal/IndicatorView;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lteam/opay/pay/widget/internal/IndicatorView;->setStyle(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final t()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/widget/LoopViewPager;->q:Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/widget/LoopViewPager;->p:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lteam/opay/pay/widget/LoopViewPager;->q:Landroidx/viewpager2/widget/ViewPager2;

    .line 9
    .line 10
    iget-object v1, p0, Lteam/opay/pay/widget/LoopViewPager;->o:Ljava/lang/Runnable;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lteam/opay/pay/widget/LoopViewPager;->b:Z

    .line 17
    .line 18
    return-void
.end method

.method public final u()Z
    .locals 3

    .line 1
    iget v0, p0, Lteam/opay/pay/widget/LoopViewPager;->y:I

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    if-eq v0, v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-direct {p0}, Lteam/opay/pay/widget/LoopViewPager;->getSize()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-le v0, v1, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 20
    :goto_1
    return v1
.end method
