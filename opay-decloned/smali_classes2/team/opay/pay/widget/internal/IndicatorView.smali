.class public final Lteam/opay/pay/widget/internal/IndicatorView;
.super Lteam/opay/pay/widget/BaseIndicatorView;
.source "IndicatorView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/widget/internal/IndicatorView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0019\u0008\u0000\u0018\u0000 Q2\u00020\u0001:\u0001RB\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B#\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u000eJ/\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\tH\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u0017H\u0014\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\r\u0010\u001b\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u001b\u0010\u000eJ!\u0010\u001e\u001a\u00020\u00142\u0008\u0008\u0001\u0010\u001c\u001a\u00020\t2\u0008\u0008\u0001\u0010\u001d\u001a\u00020\t\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u001d\u0010\"\u001a\u00020\u00142\u0006\u0010 \u001a\u00020\u000c2\u0006\u0010!\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\"\u0010#J\u0015\u0010%\u001a\u00020\u00142\u0006\u0010$\u001a\u00020\t\u00a2\u0006\u0004\u0008%\u0010&J\u0019\u0010*\u001a\u00020)2\u0008\u0010(\u001a\u0004\u0018\u00010\'H\u0016\u00a2\u0006\u0004\u0008*\u0010+R\u0014\u0010.\u001a\u00020,8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010-R\u0016\u0010$\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010/R\u0016\u00102\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00080\u00101R\u0016\u00104\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00083\u00101R\u001c\u00109\u001a\u0008\u0012\u0004\u0012\u000206058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00087\u00108R0\u0010@\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0014\u0018\u00010:8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010;\u001a\u0004\u0008<\u0010=\"\u0004\u0008>\u0010?R*\u0010F\u001a\u00020\t2\u0006\u0010A\u001a\u00020\t8\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008B\u0010/\u001a\u0004\u0008C\u0010D\"\u0004\u0008E\u0010&R\u0016\u0010H\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008G\u00101R\u0016\u0010J\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008I\u00101R\u0016\u0010\u0010\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008K\u0010/R\u0016\u0010\u0011\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008L\u0010/R\u0016\u0010N\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008M\u0010/R\u0016\u0010P\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008O\u0010/\u00a8\u0006S"
    }
    d2 = {
        "Lteam/opay/pay/widget/internal/IndicatorView;",
        "Lteam/opay/pay/widget/BaseIndicatorView;",
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
        "getStartX",
        "()F",
        "getStartY",
        "w",
        "h",
        "oldw",
        "oldh",
        "",
        "onSizeChanged",
        "(IIII)V",
        "Landroid/graphics/Canvas;",
        "canvas",
        "onDraw",
        "(Landroid/graphics/Canvas;)V",
        "getIndicatorWidth",
        "norColor",
        "selectedColor",
        "c",
        "(II)V",
        "r",
        "p",
        "d",
        "(FF)V",
        "style",
        "setStyle",
        "(I)V",
        "Landroid/view/MotionEvent;",
        "event",
        "",
        "onTouchEvent",
        "(Landroid/view/MotionEvent;)Z",
        "Landroid/graphics/Paint;",
        "Landroid/graphics/Paint;",
        "paint",
        "I",
        "e",
        "F",
        "indicatorHeight",
        "f",
        "indicatorRadius",
        "",
        "Landroid/graphics/Region;",
        "g",
        "Ljava/util/List;",
        "regionLists",
        "Lkotlin/Function1;",
        "Lkotlin/jvm/functions/Function1;",
        "getOnIndicatorItemClick",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnIndicatorItemClick",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onIndicatorItemClick",
        "value",
        "i",
        "getIndicatorCount",
        "()I",
        "setIndicatorCount",
        "indicatorCount",
        "j",
        "cx",
        "k",
        "cy",
        "l",
        "m",
        "n",
        "normalColor",
        "o",
        "selectColor",
        "q",
        "Companion",
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


# static fields
.field public static final q:Lteam/opay/pay/widget/internal/IndicatorView$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static r:F

.field public static s:F


# instance fields
.field public final c:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:I

.field public e:F

.field public f:F

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Region;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public i:I

.field public j:F

.field public k:F

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:Ljava/util/Map;
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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/widget/internal/IndicatorView$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/widget/internal/IndicatorView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/widget/internal/IndicatorView;->q:Lteam/opay/pay/widget/internal/IndicatorView$Companion;

    .line 8
    .line 9
    const/high16 v0, 0x40800000    # 4.0f

    .line 10
    .line 11
    invoke-static {v0}, Lxme;->a(F)F

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    sput v1, Lteam/opay/pay/widget/internal/IndicatorView;->r:F

    .line 16
    .line 17
    invoke-static {v0}, Lxme;->a(F)F

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    sput v0, Lteam/opay/pay/widget/internal/IndicatorView;->s:F

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lteam/opay/pay/widget/internal/IndicatorView;->p:Ljava/util/Map;

    invoke-direct {p0, p1}, Lteam/opay/pay/widget/BaseIndicatorView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lteam/opay/pay/widget/internal/IndicatorView;->c:Landroid/graphics/Paint;

    const/high16 v0, 0x40000000    # 2.0f

    .line 3
    invoke-static {v0}, Lxme;->a(F)F

    move-result v0

    iput v0, p0, Lteam/opay/pay/widget/internal/IndicatorView;->e:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    invoke-static {v0}, Lxme;->a(F)F

    move-result v0

    iput v0, p0, Lteam/opay/pay/widget/internal/IndicatorView;->f:F

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iput-object v0, p0, Lteam/opay/pay/widget/internal/IndicatorView;->g:Ljava/util/List;

    .line 8
    const-string v0, "#FFEEEEEE"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lteam/opay/pay/widget/internal/IndicatorView;->n:I

    .line 9
    const-string v0, "#FFABABAB"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lteam/opay/pay/widget/internal/IndicatorView;->o:I

    const/4 v0, 0x1

    .line 10
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

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

    .line 11
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lteam/opay/pay/widget/internal/IndicatorView;->p:Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Lteam/opay/pay/widget/BaseIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lteam/opay/pay/widget/internal/IndicatorView;->c:Landroid/graphics/Paint;

    const/high16 p2, 0x40000000    # 2.0f

    .line 13
    invoke-static {p2}, Lxme;->a(F)F

    move-result p2

    iput p2, p0, Lteam/opay/pay/widget/internal/IndicatorView;->e:F

    const/high16 p2, 0x3f800000    # 1.0f

    .line 14
    invoke-static {p2}, Lxme;->a(F)F

    move-result p2

    iput p2, p0, Lteam/opay/pay/widget/internal/IndicatorView;->f:F

    .line 15
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 16
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    iput-object p2, p0, Lteam/opay/pay/widget/internal/IndicatorView;->g:Ljava/util/List;

    .line 18
    const-string p2, "#FFEEEEEE"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lteam/opay/pay/widget/internal/IndicatorView;->n:I

    .line 19
    const-string p2, "#FFABABAB"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lteam/opay/pay/widget/internal/IndicatorView;->o:I

    const/4 p2, 0x1

    .line 20
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

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

    .line 21
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lteam/opay/pay/widget/internal/IndicatorView;->p:Ljava/util/Map;

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/pay/widget/BaseIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lteam/opay/pay/widget/internal/IndicatorView;->c:Landroid/graphics/Paint;

    const/high16 p2, 0x40000000    # 2.0f

    .line 24
    invoke-static {p2}, Lxme;->a(F)F

    move-result p2

    iput p2, p0, Lteam/opay/pay/widget/internal/IndicatorView;->e:F

    const/high16 p2, 0x3f800000    # 1.0f

    .line 25
    invoke-static {p2}, Lxme;->a(F)F

    move-result p2

    iput p2, p0, Lteam/opay/pay/widget/internal/IndicatorView;->f:F

    .line 26
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 27
    new-instance p3, Landroid/graphics/Region;

    invoke-direct {p3}, Landroid/graphics/Region;-><init>()V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    iput-object p2, p0, Lteam/opay/pay/widget/internal/IndicatorView;->g:Ljava/util/List;

    .line 29
    const-string p2, "#FFEEEEEE"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lteam/opay/pay/widget/internal/IndicatorView;->n:I

    .line 30
    const-string p2, "#FFABABAB"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lteam/opay/pay/widget/internal/IndicatorView;->o:I

    const/4 p2, 0x1

    .line 31
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public static final synthetic a()F
    .locals 1

    .line 1
    sget v0, Lteam/opay/pay/widget/internal/IndicatorView;->s:F

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic b()F
    .locals 1

    .line 1
    sget v0, Lteam/opay/pay/widget/internal/IndicatorView;->r:F

    .line 2
    .line 3
    return v0
.end method

.method private final getStartX()F
    .locals 2

    .line 1
    iget v0, p0, Lteam/opay/pay/widget/internal/IndicatorView;->l:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    invoke-virtual {p0}, Lteam/opay/pay/widget/internal/IndicatorView;->getIndicatorWidth()F

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    sub-float/2addr v0, v1

    .line 9
    const/4 v1, 0x2

    .line 10
    int-to-float v1, v1

    .line 11
    div-float/2addr v0, v1

    .line 12
    return v0
.end method

.method private final getStartY()F
    .locals 2

    .line 1
    iget v0, p0, Lteam/opay/pay/widget/internal/IndicatorView;->m:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    iget v1, p0, Lteam/opay/pay/widget/internal/IndicatorView;->e:F

    .line 5
    .line 6
    sub-float/2addr v0, v1

    .line 7
    const/4 v1, 0x2

    .line 8
    int-to-float v1, v1

    .line 9
    div-float/2addr v0, v1

    .line 10
    return v0
.end method


# virtual methods
.method public final c(II)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/pay/widget/internal/IndicatorView;->n:I

    .line 2
    .line 3
    iput p2, p0, Lteam/opay/pay/widget/internal/IndicatorView;->o:I

    .line 4
    .line 5
    return-void
.end method

.method public final d(FF)V
    .locals 0

    .line 1
    sput p1, Lteam/opay/pay/widget/internal/IndicatorView;->r:F

    .line 2
    .line 3
    sput p2, Lteam/opay/pay/widget/internal/IndicatorView;->s:F

    .line 4
    .line 5
    return-void
.end method

.method public final getIndicatorCount()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/widget/internal/IndicatorView;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public final getIndicatorWidth()F
    .locals 3

    .line 1
    iget v0, p0, Lteam/opay/pay/widget/internal/IndicatorView;->d:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    int-to-float v0, v0

    .line 7
    sget v1, Lteam/opay/pay/widget/internal/IndicatorView;->r:F

    .line 8
    .line 9
    mul-float v0, v0, v1

    .line 10
    .line 11
    iget v1, p0, Lteam/opay/pay/widget/internal/IndicatorView;->i:I

    .line 12
    .line 13
    int-to-float v2, v1

    .line 14
    mul-float v0, v0, v2

    .line 15
    .line 16
    sget v2, Lteam/opay/pay/widget/internal/IndicatorView;->s:F

    .line 17
    .line 18
    :goto_0
    add-int/lit8 v1, v1, -0x1

    .line 19
    .line 20
    int-to-float v1, v1

    .line 21
    mul-float v2, v2, v1

    .line 22
    .line 23
    add-float/2addr v0, v2

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    sget v0, Lteam/opay/pay/widget/internal/IndicatorView;->r:F

    .line 26
    .line 27
    iget v1, p0, Lteam/opay/pay/widget/internal/IndicatorView;->i:I

    .line 28
    .line 29
    add-int/lit8 v2, v1, 0x2

    .line 30
    .line 31
    int-to-float v2, v2

    .line 32
    mul-float v0, v0, v2

    .line 33
    .line 34
    sget v2, Lteam/opay/pay/widget/internal/IndicatorView;->s:F

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :goto_1
    return v0
.end method

.method public final getOnIndicatorItemClick()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/widget/internal/IndicatorView;->h:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "canvas"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    iget v0, p0, Lteam/opay/pay/widget/internal/IndicatorView;->j:F

    .line 12
    .line 13
    invoke-direct {p0}, Lteam/opay/pay/widget/internal/IndicatorView;->getStartX()F

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-float/2addr v0, v1

    .line 18
    iput v0, p0, Lteam/opay/pay/widget/internal/IndicatorView;->j:F

    .line 19
    .line 20
    iget v0, p0, Lteam/opay/pay/widget/internal/IndicatorView;->d:I

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    iget v0, p0, Lteam/opay/pay/widget/internal/IndicatorView;->i:I

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    :goto_0
    if-ge v2, v0, :cond_3

    .line 29
    .line 30
    iget v3, p0, Lteam/opay/pay/widget/internal/IndicatorView;->j:F

    .line 31
    .line 32
    sget v4, Lteam/opay/pay/widget/internal/IndicatorView;->r:F

    .line 33
    .line 34
    add-float/2addr v3, v4

    .line 35
    iput v3, p0, Lteam/opay/pay/widget/internal/IndicatorView;->j:F

    .line 36
    .line 37
    invoke-virtual {p0}, Lteam/opay/pay/widget/BaseIndicatorView;->getSelectPosition()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-ne v3, v2, :cond_0

    .line 42
    .line 43
    iget-object v3, p0, Lteam/opay/pay/widget/internal/IndicatorView;->c:Landroid/graphics/Paint;

    .line 44
    .line 45
    iget v4, p0, Lteam/opay/pay/widget/internal/IndicatorView;->o:I

    .line 46
    .line 47
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    .line 49
    .line 50
    iget v3, p0, Lteam/opay/pay/widget/internal/IndicatorView;->j:F

    .line 51
    .line 52
    iget v4, p0, Lteam/opay/pay/widget/internal/IndicatorView;->k:F

    .line 53
    .line 54
    sget v5, Lteam/opay/pay/widget/internal/IndicatorView;->r:F

    .line 55
    .line 56
    iget-object v6, p0, Lteam/opay/pay/widget/internal/IndicatorView;->c:Landroid/graphics/Paint;

    .line 57
    .line 58
    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_0
    iget-object v3, p0, Lteam/opay/pay/widget/internal/IndicatorView;->c:Landroid/graphics/Paint;

    .line 63
    .line 64
    iget v4, p0, Lteam/opay/pay/widget/internal/IndicatorView;->n:I

    .line 65
    .line 66
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    .line 68
    .line 69
    iget v3, p0, Lteam/opay/pay/widget/internal/IndicatorView;->j:F

    .line 70
    .line 71
    iget v4, p0, Lteam/opay/pay/widget/internal/IndicatorView;->k:F

    .line 72
    .line 73
    const v5, 0x3f4ccccd    # 0.8f

    .line 74
    .line 75
    .line 76
    sget v6, Lteam/opay/pay/widget/internal/IndicatorView;->r:F

    .line 77
    .line 78
    mul-float v6, v6, v5

    .line 79
    .line 80
    iget-object v5, p0, Lteam/opay/pay/widget/internal/IndicatorView;->c:Landroid/graphics/Paint;

    .line 81
    .line 82
    invoke-virtual {p1, v3, v4, v6, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 83
    .line 84
    .line 85
    :goto_1
    iget-object v3, p0, Lteam/opay/pay/widget/internal/IndicatorView;->g:Ljava/util/List;

    .line 86
    .line 87
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    check-cast v3, Landroid/graphics/Region;

    .line 92
    .line 93
    iget v4, p0, Lteam/opay/pay/widget/internal/IndicatorView;->j:F

    .line 94
    .line 95
    float-to-int v5, v4

    .line 96
    sget v6, Lteam/opay/pay/widget/internal/IndicatorView;->r:F

    .line 97
    .line 98
    add-float/2addr v4, v6

    .line 99
    float-to-int v4, v4

    .line 100
    iget v6, p0, Lteam/opay/pay/widget/internal/IndicatorView;->m:I

    .line 101
    .line 102
    invoke-virtual {v3, v5, v1, v4, v6}, Landroid/graphics/Region;->set(IIII)Z

    .line 103
    .line 104
    .line 105
    iget v3, p0, Lteam/opay/pay/widget/internal/IndicatorView;->j:F

    .line 106
    .line 107
    sget v4, Lteam/opay/pay/widget/internal/IndicatorView;->r:F

    .line 108
    .line 109
    sget v5, Lteam/opay/pay/widget/internal/IndicatorView;->s:F

    .line 110
    .line 111
    add-float/2addr v4, v5

    .line 112
    add-float/2addr v3, v4

    .line 113
    iput v3, p0, Lteam/opay/pay/widget/internal/IndicatorView;->j:F

    .line 114
    .line 115
    add-int/lit8 v2, v2, 0x1

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_1
    invoke-direct {p0}, Lteam/opay/pay/widget/internal/IndicatorView;->getStartY()F

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    sget v2, Lteam/opay/pay/widget/internal/IndicatorView;->r:F

    .line 123
    .line 124
    const/4 v3, 0x3

    .line 125
    int-to-float v3, v3

    .line 126
    mul-float v2, v2, v3

    .line 127
    .line 128
    iget v11, p0, Lteam/opay/pay/widget/internal/IndicatorView;->i:I

    .line 129
    .line 130
    const/4 v12, 0x0

    .line 131
    :goto_2
    if-ge v12, v11, :cond_3

    .line 132
    .line 133
    invoke-virtual {p0}, Lteam/opay/pay/widget/BaseIndicatorView;->getSelectPosition()I

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    if-ne v3, v12, :cond_2

    .line 138
    .line 139
    iget-object v3, p0, Lteam/opay/pay/widget/internal/IndicatorView;->c:Landroid/graphics/Paint;

    .line 140
    .line 141
    iget v4, p0, Lteam/opay/pay/widget/internal/IndicatorView;->o:I

    .line 142
    .line 143
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 144
    .line 145
    .line 146
    iget v4, p0, Lteam/opay/pay/widget/internal/IndicatorView;->j:F

    .line 147
    .line 148
    add-float v6, v4, v2

    .line 149
    .line 150
    iget v3, p0, Lteam/opay/pay/widget/internal/IndicatorView;->e:F

    .line 151
    .line 152
    add-float v7, v0, v3

    .line 153
    .line 154
    iget v9, p0, Lteam/opay/pay/widget/internal/IndicatorView;->f:F

    .line 155
    .line 156
    iget-object v10, p0, Lteam/opay/pay/widget/internal/IndicatorView;->c:Landroid/graphics/Paint;

    .line 157
    .line 158
    move-object v3, p1

    .line 159
    move v5, v0

    .line 160
    move v8, v9

    .line 161
    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 162
    .line 163
    .line 164
    iget-object v3, p0, Lteam/opay/pay/widget/internal/IndicatorView;->g:Ljava/util/List;

    .line 165
    .line 166
    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    check-cast v3, Landroid/graphics/Region;

    .line 171
    .line 172
    iget v4, p0, Lteam/opay/pay/widget/internal/IndicatorView;->j:F

    .line 173
    .line 174
    float-to-int v5, v4

    .line 175
    add-float/2addr v4, v2

    .line 176
    float-to-int v4, v4

    .line 177
    iget v6, p0, Lteam/opay/pay/widget/internal/IndicatorView;->m:I

    .line 178
    .line 179
    invoke-virtual {v3, v5, v1, v4, v6}, Landroid/graphics/Region;->set(IIII)Z

    .line 180
    .line 181
    .line 182
    iget v3, p0, Lteam/opay/pay/widget/internal/IndicatorView;->j:F

    .line 183
    .line 184
    sget v4, Lteam/opay/pay/widget/internal/IndicatorView;->s:F

    .line 185
    .line 186
    add-float/2addr v4, v2

    .line 187
    add-float/2addr v3, v4

    .line 188
    iput v3, p0, Lteam/opay/pay/widget/internal/IndicatorView;->j:F

    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_2
    iget-object v3, p0, Lteam/opay/pay/widget/internal/IndicatorView;->c:Landroid/graphics/Paint;

    .line 192
    .line 193
    iget v4, p0, Lteam/opay/pay/widget/internal/IndicatorView;->n:I

    .line 194
    .line 195
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 196
    .line 197
    .line 198
    iget v4, p0, Lteam/opay/pay/widget/internal/IndicatorView;->j:F

    .line 199
    .line 200
    sget v3, Lteam/opay/pay/widget/internal/IndicatorView;->r:F

    .line 201
    .line 202
    add-float v6, v4, v3

    .line 203
    .line 204
    iget v3, p0, Lteam/opay/pay/widget/internal/IndicatorView;->e:F

    .line 205
    .line 206
    add-float v7, v0, v3

    .line 207
    .line 208
    iget v9, p0, Lteam/opay/pay/widget/internal/IndicatorView;->f:F

    .line 209
    .line 210
    iget-object v10, p0, Lteam/opay/pay/widget/internal/IndicatorView;->c:Landroid/graphics/Paint;

    .line 211
    .line 212
    move-object v3, p1

    .line 213
    move v5, v0

    .line 214
    move v8, v9

    .line 215
    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 216
    .line 217
    .line 218
    iget-object v3, p0, Lteam/opay/pay/widget/internal/IndicatorView;->g:Ljava/util/List;

    .line 219
    .line 220
    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    check-cast v3, Landroid/graphics/Region;

    .line 225
    .line 226
    iget v4, p0, Lteam/opay/pay/widget/internal/IndicatorView;->j:F

    .line 227
    .line 228
    float-to-int v5, v4

    .line 229
    sget v6, Lteam/opay/pay/widget/internal/IndicatorView;->r:F

    .line 230
    .line 231
    add-float/2addr v4, v6

    .line 232
    float-to-int v4, v4

    .line 233
    iget v6, p0, Lteam/opay/pay/widget/internal/IndicatorView;->m:I

    .line 234
    .line 235
    invoke-virtual {v3, v5, v1, v4, v6}, Landroid/graphics/Region;->set(IIII)Z

    .line 236
    .line 237
    .line 238
    iget v3, p0, Lteam/opay/pay/widget/internal/IndicatorView;->j:F

    .line 239
    .line 240
    sget v4, Lteam/opay/pay/widget/internal/IndicatorView;->r:F

    .line 241
    .line 242
    sget v5, Lteam/opay/pay/widget/internal/IndicatorView;->s:F

    .line 243
    .line 244
    add-float/2addr v4, v5

    .line 245
    add-float/2addr v3, v4

    .line 246
    iput v3, p0, Lteam/opay/pay/widget/internal/IndicatorView;->j:F

    .line 247
    .line 248
    :goto_3
    add-int/lit8 v12, v12, 0x1

    .line 249
    .line 250
    goto :goto_2

    .line 251
    :cond_3
    const/4 p1, 0x0

    .line 252
    iput p1, p0, Lteam/opay/pay/widget/internal/IndicatorView;->j:F

    .line 253
    .line 254
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lteam/opay/pay/widget/internal/IndicatorView;->l:I

    .line 5
    .line 6
    iput p2, p0, Lteam/opay/pay/widget/internal/IndicatorView;->m:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    int-to-float p1, p1

    .line 13
    const/high16 p2, 0x40000000    # 2.0f

    .line 14
    .line 15
    div-float/2addr p1, p2

    .line 16
    iput p1, p0, Lteam/opay/pay/widget/internal/IndicatorView;->k:F

    .line 17
    .line 18
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lteam/opay/pay/widget/internal/IndicatorView;->g:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_3

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    add-int/lit8 v3, v1, 0x1

    .line 27
    .line 28
    if-gez v1, :cond_0

    .line 29
    .line 30
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 31
    .line 32
    .line 33
    :cond_0
    check-cast v2, Landroid/graphics/Region;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    float-to-int v4, v4

    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    float-to-int v5, v5

    .line 45
    invoke-virtual {v2, v4, v5}, Landroid/graphics/Region;->contains(II)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    iget-object p1, p0, Lteam/opay/pay/widget/internal/IndicatorView;->h:Lkotlin/jvm/functions/Function1;

    .line 52
    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    :cond_1
    const/4 p1, 0x1

    .line 63
    return p1

    .line 64
    :cond_2
    move v1, v3

    .line 65
    goto :goto_0

    .line 66
    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    return p1
.end method

.method public final setIndicatorCount(I)V
    .locals 3

    .line 1
    iput p1, p0, Lteam/opay/pay/widget/internal/IndicatorView;->i:I

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/widget/internal/IndicatorView;->g:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    :goto_0
    if-ge v0, p1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lteam/opay/pay/widget/internal/IndicatorView;->g:Ljava/util/List;

    .line 12
    .line 13
    new-instance v2, Landroid/graphics/Region;

    .line 14
    .line 15
    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final setOnIndicatorItemClick(Lkotlin/jvm/functions/Function1;)V
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
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/widget/internal/IndicatorView;->h:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public final setStyle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/pay/widget/internal/IndicatorView;->d:I

    .line 2
    .line 3
    return-void
.end method
