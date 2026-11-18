.class public Lteam/opay/business/widget/ticker/TickerView$e;
.super Ljava/lang/Object;
.source "TickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/business/widget/ticker/TickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:F

.field public d:F

.field public e:F

.field public f:Ljava/lang/String;

.field public g:I

.field public h:F

.field public i:I

.field public final synthetic j:Lteam/opay/business/widget/ticker/TickerView;


# direct methods
.method public constructor <init>(Lteam/opay/business/widget/ticker/TickerView;Landroid/content/res/Resources;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lteam/opay/business/widget/ticker/TickerView$e;->j:Lteam/opay/business/widget/ticker/TickerView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/high16 p1, -0x1000000

    .line 7
    .line 8
    iput p1, p0, Lteam/opay/business/widget/ticker/TickerView$e;->g:I

    .line 9
    .line 10
    const/high16 p1, 0x41400000    # 12.0f

    .line 11
    .line 12
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    const/4 v0, 0x2

    .line 17
    invoke-static {v0, p1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iput p1, p0, Lteam/opay/business/widget/ticker/TickerView$e;->h:F

    .line 22
    .line 23
    const p1, 0x800003

    .line 24
    .line 25
    .line 26
    iput p1, p0, Lteam/opay/business/widget/ticker/TickerView$e;->a:I

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 1
    sget v0, Lteam/opay/business/widget/R$styleable;->TickerView_android_gravity:I

    .line 2
    .line 3
    iget v1, p0, Lteam/opay/business/widget/ticker/TickerView$e;->a:I

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput v0, p0, Lteam/opay/business/widget/ticker/TickerView$e;->a:I

    .line 10
    .line 11
    sget v0, Lteam/opay/business/widget/R$styleable;->TickerView_android_shadowColor:I

    .line 12
    .line 13
    iget v1, p0, Lteam/opay/business/widget/ticker/TickerView$e;->b:I

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p0, Lteam/opay/business/widget/ticker/TickerView$e;->b:I

    .line 20
    .line 21
    sget v0, Lteam/opay/business/widget/R$styleable;->TickerView_android_shadowDx:I

    .line 22
    .line 23
    iget v1, p0, Lteam/opay/business/widget/ticker/TickerView$e;->c:F

    .line 24
    .line 25
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iput v0, p0, Lteam/opay/business/widget/ticker/TickerView$e;->c:F

    .line 30
    .line 31
    sget v0, Lteam/opay/business/widget/R$styleable;->TickerView_android_shadowDy:I

    .line 32
    .line 33
    iget v1, p0, Lteam/opay/business/widget/ticker/TickerView$e;->d:F

    .line 34
    .line 35
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iput v0, p0, Lteam/opay/business/widget/ticker/TickerView$e;->d:F

    .line 40
    .line 41
    sget v0, Lteam/opay/business/widget/R$styleable;->TickerView_android_shadowRadius:I

    .line 42
    .line 43
    iget v1, p0, Lteam/opay/business/widget/ticker/TickerView$e;->e:F

    .line 44
    .line 45
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iput v0, p0, Lteam/opay/business/widget/ticker/TickerView$e;->e:F

    .line 50
    .line 51
    sget v0, Lteam/opay/business/widget/R$styleable;->TickerView_android_text:I

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Lteam/opay/business/widget/ticker/TickerView$e;->f:Ljava/lang/String;

    .line 58
    .line 59
    sget v0, Lteam/opay/business/widget/R$styleable;->TickerView_android_textColor:I

    .line 60
    .line 61
    iget v1, p0, Lteam/opay/business/widget/ticker/TickerView$e;->g:I

    .line 62
    .line 63
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    iput v0, p0, Lteam/opay/business/widget/ticker/TickerView$e;->g:I

    .line 68
    .line 69
    sget v0, Lteam/opay/business/widget/R$styleable;->TickerView_android_textSize:I

    .line 70
    .line 71
    iget v1, p0, Lteam/opay/business/widget/ticker/TickerView$e;->h:F

    .line 72
    .line 73
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    iput v0, p0, Lteam/opay/business/widget/ticker/TickerView$e;->h:F

    .line 78
    .line 79
    sget v0, Lteam/opay/business/widget/R$styleable;->TickerView_android_textStyle:I

    .line 80
    .line 81
    iget v1, p0, Lteam/opay/business/widget/ticker/TickerView$e;->i:I

    .line 82
    .line 83
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    iput p1, p0, Lteam/opay/business/widget/ticker/TickerView$e;->i:I

    .line 88
    .line 89
    return-void
.end method
