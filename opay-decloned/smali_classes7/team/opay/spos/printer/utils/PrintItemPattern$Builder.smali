.class public Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;
.super Ljava/lang/Object;
.source "PrintItemPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/spos/printer/utils/PrintItemPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Landroid/graphics/Bitmap;

.field public f:Z

.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;->a:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "normal"

    .line 9
    .line 10
    iput-object v0, p0, Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;->b:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "left"

    .line 13
    .line 14
    iput-object v0, p0, Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;->d:Ljava/lang/String;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;->e:Landroid/graphics/Bitmap;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;->f:Z

    .line 21
    .line 22
    iput v0, p0, Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;->g:I

    .line 23
    .line 24
    return-void
.end method

.method public static synthetic a(Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic b(Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic c(Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;->c:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic d(Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic e(Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;->e:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic f(Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;->g:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic g(Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;->f:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public h()Lteam/opay/spos/printer/utils/PrintItemPattern;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;->e:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput v0, p0, Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;->g:I

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    iget-object v0, p0, Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;->a:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_5

    .line 19
    .line 20
    iget-boolean v0, p0, Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;->f:Z

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    iget-object v0, p0, Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;->a:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    rem-int/lit8 v0, v0, 0x1f

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;->a:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    div-int/lit8 v0, v0, 0x1f

    .line 42
    .line 43
    :goto_0
    move v1, v0

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    iget-object v0, p0, Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;->a:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    div-int/lit8 v0, v0, 0x1f

    .line 52
    .line 53
    add-int/2addr v0, v1

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    :goto_1
    iget-object v0, p0, Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;->b:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 58
    .line 59
    .line 60
    const-string v2, "large"

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-nez v2, :cond_4

    .line 67
    .line 68
    const-string v2, "small"

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_3

    .line 75
    .line 76
    mul-int/lit8 v1, v1, 0x1a

    .line 77
    .line 78
    iput v1, p0, Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;->g:I

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_3
    mul-int/lit8 v1, v1, 0x15

    .line 82
    .line 83
    iput v1, p0, Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;->g:I

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_4
    mul-int/lit8 v1, v1, 0x24

    .line 87
    .line 88
    iput v1, p0, Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;->g:I

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_5
    iget v0, p0, Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;->c:I

    .line 92
    .line 93
    if-lez v0, :cond_6

    .line 94
    .line 95
    mul-int/lit8 v0, v0, 0x1a

    .line 96
    .line 97
    iput v0, p0, Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;->g:I

    .line 98
    .line 99
    :cond_6
    :goto_2
    new-instance v0, Lteam/opay/spos/printer/utils/PrintItemPattern;

    .line 100
    .line 101
    const/4 v1, 0x0

    .line 102
    invoke-direct {v0, p0, v1}, Lteam/opay/spos/printer/utils/PrintItemPattern;-><init>(Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;Lteam/opay/spos/printer/utils/PrintItemPattern$a;)V

    .line 103
    .line 104
    .line 105
    return-object v0
.end method

.method public i(Landroid/graphics/Bitmap;)Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;->e:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iput p1, p0, Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;->g:I

    .line 8
    .line 9
    return-object p0
.end method

.method public j(I)Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;->c:I

    .line 2
    .line 3
    return-object p0
.end method
