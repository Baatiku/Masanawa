.class public final Lteam/opay/pay/android/views/SideBar;
.super Landroid/view/View;
.source "SlideBar.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/android/views/SideBar$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 .2\u00020\u0001:\u0001/B%\u0008\u0016\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tB\u001d\u0008\u0016\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0008\u0010\nB\u0013\u0008\u0016\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u000bJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R0\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u0016\u0010!\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0014\u0010%\u001a\u00020\"8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R$\u0010-\u001a\u0004\u0018\u00010&8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\'\u0010(\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,\u00a8\u00060"
    }
    d2 = {
        "Lteam/opay/pay/android/views/SideBar;",
        "Landroid/view/View;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "(Landroid/content/Context;)V",
        "Landroid/graphics/Canvas;",
        "canvas",
        "",
        "onDraw",
        "(Landroid/graphics/Canvas;)V",
        "Landroid/view/MotionEvent;",
        "event",
        "",
        "dispatchTouchEvent",
        "(Landroid/view/MotionEvent;)Z",
        "Lkotlin/Function1;",
        "",
        "a",
        "Lkotlin/jvm/functions/Function1;",
        "getOnTouchingLetterChangedListener",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnTouchingLetterChangedListener",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onTouchingLetterChangedListener",
        "b",
        "I",
        "choose",
        "Landroid/graphics/Paint;",
        "c",
        "Landroid/graphics/Paint;",
        "paint",
        "Landroid/widget/TextView;",
        "d",
        "Landroid/widget/TextView;",
        "getMTextDialog",
        "()Landroid/widget/TextView;",
        "setMTextDialog",
        "(Landroid/widget/TextView;)V",
        "mTextDialog",
        "e",
        "Companion",
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


# static fields
.field public static final e:Lteam/opay/pay/android/views/SideBar$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final f:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:I

.field public final c:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 29

    .line 1
    new-instance v0, Lteam/opay/pay/android/views/SideBar$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/android/views/SideBar$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/android/views/SideBar;->e:Lteam/opay/pay/android/views/SideBar$Companion;

    .line 8
    .line 9
    const-string v27, "Z"

    .line 10
    .line 11
    const-string v28, "#"

    .line 12
    .line 13
    const-string v2, "A"

    .line 14
    .line 15
    const-string v3, "B"

    .line 16
    .line 17
    const-string v4, "C"

    .line 18
    .line 19
    const-string v5, "D"

    .line 20
    .line 21
    const-string v6, "E"

    .line 22
    .line 23
    const-string v7, "F"

    .line 24
    .line 25
    const-string v8, "G"

    .line 26
    .line 27
    const-string v9, "H"

    .line 28
    .line 29
    const-string v10, "I"

    .line 30
    .line 31
    const-string v11, "J"

    .line 32
    .line 33
    const-string v12, "K"

    .line 34
    .line 35
    const-string v13, "L"

    .line 36
    .line 37
    const-string v14, "M"

    .line 38
    .line 39
    const-string v15, "N"

    .line 40
    .line 41
    const-string v16, "O"

    .line 42
    .line 43
    const-string v17, "P"

    .line 44
    .line 45
    const-string v18, "Q"

    .line 46
    .line 47
    const-string v19, "R"

    .line 48
    .line 49
    const-string v20, "S"

    .line 50
    .line 51
    const-string v21, "T"

    .line 52
    .line 53
    const-string v22, "U"

    .line 54
    .line 55
    const-string v23, "V"

    .line 56
    .line 57
    const-string v24, "W"

    .line 58
    .line 59
    const-string v25, "X"

    .line 60
    .line 61
    const-string v26, "Y"

    .line 62
    .line 63
    filled-new-array/range {v2 .. v28}, [Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    sput-object v0, Lteam/opay/pay/android/views/SideBar;->f:[Ljava/lang/String;

    .line 68
    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 8
    iput p1, p0, Lteam/opay/pay/android/views/SideBar;->b:I

    .line 9
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lteam/opay/pay/android/views/SideBar;->c:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lteam/opay/pay/android/views/SideBar;->b:I

    .line 6
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lteam/opay/pay/android/views/SideBar;->c:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lteam/opay/pay/android/views/SideBar;->b:I

    .line 3
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lteam/opay/pay/android/views/SideBar;->c:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iget v1, p0, Lteam/opay/pay/android/views/SideBar;->b:I

    .line 15
    .line 16
    iget-object v2, p0, Lteam/opay/pay/android/views/SideBar;->a:Lkotlin/jvm/functions/Function1;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    int-to-float v3, v3

    .line 23
    div-float/2addr p1, v3

    .line 24
    sget-object v3, Lteam/opay/pay/android/views/SideBar;->f:[Ljava/lang/String;

    .line 25
    .line 26
    array-length v4, v3

    .line 27
    int-to-float v4, v4

    .line 28
    mul-float p1, p1, v4

    .line 29
    .line 30
    float-to-int p1, p1

    .line 31
    const/4 v4, 0x0

    .line 32
    const/4 v5, 0x1

    .line 33
    if-ne v0, v5, :cond_0

    .line 34
    .line 35
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    .line 36
    .line 37
    invoke-direct {p1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 41
    .line 42
    .line 43
    const/4 p1, -0x1

    .line 44
    iput p1, p0, Lteam/opay/pay/android/views/SideBar;->b:I

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lteam/opay/pay/android/views/SideBar;->d:Landroid/widget/TextView;

    .line 50
    .line 51
    if-eqz p1, :cond_4

    .line 52
    .line 53
    const/4 v0, 0x4

    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    sget v0, Lteam/opay/pay/R$drawable;->gray_24_radius_bg:I

    .line 59
    .line 60
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 61
    .line 62
    .line 63
    if-eq v1, p1, :cond_4

    .line 64
    .line 65
    if-ltz p1, :cond_4

    .line 66
    .line 67
    array-length v0, v3

    .line 68
    if-ge p1, v0, :cond_4

    .line 69
    .line 70
    if-eqz v2, :cond_1

    .line 71
    .line 72
    aget-object v0, v3, p1

    .line 73
    .line 74
    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    :cond_1
    iget-object v0, p0, Lteam/opay/pay/android/views/SideBar;->d:Landroid/widget/TextView;

    .line 78
    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    aget-object v1, v3, p1

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    :cond_2
    iget-object v0, p0, Lteam/opay/pay/android/views/SideBar;->d:Landroid/widget/TextView;

    .line 87
    .line 88
    if-eqz v0, :cond_3

    .line 89
    .line 90
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 91
    .line 92
    .line 93
    :cond_3
    iput p1, p0, Lteam/opay/pay/android/views/SideBar;->b:I

    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 96
    .line 97
    .line 98
    :cond_4
    :goto_0
    return v5
.end method

.method public final getMTextDialog()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/android/views/SideBar;->d:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOnTouchingLetterChangedListener()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/android/views/SideBar;->a:Lkotlin/jvm/functions/Function1;

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
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    sget-object v2, Lteam/opay/pay/android/views/SideBar;->f:[Ljava/lang/String;

    .line 18
    .line 19
    array-length v3, v2

    .line 20
    div-int/2addr v0, v3

    .line 21
    array-length v2, v2

    .line 22
    const/4 v3, 0x0

    .line 23
    :goto_0
    if-ge v3, v2, :cond_1

    .line 24
    .line 25
    iget-object v4, p0, Lteam/opay/pay/android/views/SideBar;->c:Landroid/graphics/Paint;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    sget v6, Lteam/opay/pay/R$color;->osdk_color_C1CBD1:I

    .line 32
    .line 33
    invoke-static {v5, v6}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    .line 39
    .line 40
    iget-object v4, p0, Lteam/opay/pay/android/views/SideBar;->c:Landroid/graphics/Paint;

    .line 41
    .line 42
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 43
    .line 44
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 45
    .line 46
    .line 47
    iget-object v4, p0, Lteam/opay/pay/android/views/SideBar;->c:Landroid/graphics/Paint;

    .line 48
    .line 49
    const/4 v5, 0x1

    .line 50
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 51
    .line 52
    .line 53
    iget-object v4, p0, Lteam/opay/pay/android/views/SideBar;->c:Landroid/graphics/Paint;

    .line 54
    .line 55
    const/16 v6, 0x8

    .line 56
    .line 57
    invoke-static {v6}, Lkmf;->P(I)I

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    int-to-float v6, v6

    .line 62
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 63
    .line 64
    .line 65
    iget v4, p0, Lteam/opay/pay/android/views/SideBar;->b:I

    .line 66
    .line 67
    if-ne v3, v4, :cond_0

    .line 68
    .line 69
    iget-object v4, p0, Lteam/opay/pay/android/views/SideBar;->c:Landroid/graphics/Paint;

    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    sget v7, Lteam/opay/pay/R$color;->mint:I

    .line 76
    .line 77
    invoke-static {v6, v7}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    .line 83
    .line 84
    iget-object v4, p0, Lteam/opay/pay/android/views/SideBar;->c:Landroid/graphics/Paint;

    .line 85
    .line 86
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 87
    .line 88
    .line 89
    :cond_0
    div-int/lit8 v4, v1, 0x2

    .line 90
    .line 91
    int-to-float v4, v4

    .line 92
    iget-object v5, p0, Lteam/opay/pay/android/views/SideBar;->c:Landroid/graphics/Paint;

    .line 93
    .line 94
    sget-object v6, Lteam/opay/pay/android/views/SideBar;->f:[Ljava/lang/String;

    .line 95
    .line 96
    aget-object v7, v6, v3

    .line 97
    .line 98
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    const/high16 v7, 0x40000000    # 2.0f

    .line 103
    .line 104
    div-float/2addr v5, v7

    .line 105
    sub-float/2addr v4, v5

    .line 106
    mul-int v5, v0, v3

    .line 107
    .line 108
    int-to-double v7, v5

    .line 109
    int-to-double v9, v0

    .line 110
    const-wide v11, 0x3ff3333333333333L    # 1.2

    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    mul-double v9, v9, v11

    .line 116
    .line 117
    add-double/2addr v7, v9

    .line 118
    double-to-float v5, v7

    .line 119
    aget-object v6, v6, v3

    .line 120
    .line 121
    iget-object v7, p0, Lteam/opay/pay/android/views/SideBar;->c:Landroid/graphics/Paint;

    .line 122
    .line 123
    invoke-virtual {p1, v6, v4, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 124
    .line 125
    .line 126
    iget-object v4, p0, Lteam/opay/pay/android/views/SideBar;->c:Landroid/graphics/Paint;

    .line 127
    .line 128
    invoke-virtual {v4}, Landroid/graphics/Paint;->reset()V

    .line 129
    .line 130
    .line 131
    add-int/lit8 v3, v3, 0x1

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_1
    return-void
.end method

.method public final setMTextDialog(Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/android/views/SideBar;->d:Landroid/widget/TextView;

    .line 2
    .line 3
    return-void
.end method

.method public final setOnTouchingLetterChangedListener(Lkotlin/jvm/functions/Function1;)V
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
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/android/views/SideBar;->a:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method
