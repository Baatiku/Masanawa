.class public final Lteam/opay/pay/transfer/TransferActCenter;
.super Ljava/lang/Object;
.source "TransferActCenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/transfer/TransferActCenter$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\n\u0018\u0000 \'2\u00020\u0001:\u0001(B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J;\u0010\r\u001a\u00020\u000c2\n\u0010\u0005\u001a\u0006\u0012\u0002\u0008\u00030\u00042\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u000f\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J1\u0010\u0015\u001a\u00020\u000c2\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00132\n\u0010\u0005\u001a\u0006\u0012\u0002\u0008\u00030\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R$\u0010\u001e\u001a\u0004\u0018\u00010\u00178\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR$\u0010&\u001a\u0004\u0018\u00010\u001f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%\u00a8\u0006)"
    }
    d2 = {
        "Lteam/opay/pay/transfer/TransferActCenter;",
        "",
        "<init>",
        "()V",
        "Lteam/opay/pay/wallet/view/MarqueeView;",
        "marqueeView",
        "Landroid/view/View;",
        "parentView",
        "",
        "marketTips",
        "",
        "from",
        "",
        "e",
        "(Lteam/opay/pay/wallet/view/MarqueeView;Landroid/view/View;Ljava/lang/String;I)V",
        "view",
        "Landroid/text/SpannableString;",
        "h",
        "(Landroid/view/View;)Landroid/text/SpannableString;",
        "",
        "message",
        "i",
        "(Ljava/util/List;Lteam/opay/pay/wallet/view/MarqueeView;I)V",
        "Lteam/opay/pay/api/AATransferTrial;",
        "a",
        "Lteam/opay/pay/api/AATransferTrial;",
        "g",
        "()Lteam/opay/pay/api/AATransferTrial;",
        "k",
        "(Lteam/opay/pay/api/AATransferTrial;)V",
        "aaTransferTrail",
        "",
        "b",
        "Ljava/lang/Boolean;",
        "j",
        "()Ljava/lang/Boolean;",
        "l",
        "(Ljava/lang/Boolean;)V",
        "isRegister",
        "c",
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
.field public static final c:Lteam/opay/pay/transfer/TransferActCenter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:Lid8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lid8<",
            "Lteam/opay/pay/transfer/TransferActCenter;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:Lteam/opay/pay/api/AATransferTrial;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/transfer/TransferActCenter$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/transfer/TransferActCenter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/transfer/TransferActCenter;->c:Lteam/opay/pay/transfer/TransferActCenter$Companion;

    .line 8
    .line 9
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 10
    .line 11
    new-instance v1, Ls1f;

    .line 12
    .line 13
    invoke-direct {v1}, Ls1f;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/c;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lteam/opay/pay/transfer/TransferActCenter;->d:Lid8;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a()Lteam/opay/pay/transfer/TransferActCenter;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/transfer/TransferActCenter;->b()Lteam/opay/pay/transfer/TransferActCenter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final b()Lteam/opay/pay/transfer/TransferActCenter;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/pay/transfer/TransferActCenter;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/transfer/TransferActCenter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final synthetic c()Lid8;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/transfer/TransferActCenter;->d:Lid8;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic d(Lteam/opay/pay/transfer/TransferActCenter;Ljava/util/List;Lteam/opay/pay/wallet/view/MarqueeView;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/pay/transfer/TransferActCenter;->i(Ljava/util/List;Lteam/opay/pay/wallet/view/MarqueeView;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Lteam/opay/pay/transfer/TransferActCenter;Lteam/opay/pay/wallet/view/MarqueeView;Landroid/view/View;Ljava/lang/String;IILjava/lang/Object;)V
    .locals 1

    .line 1
    and-int/lit8 p6, p5, 0x2

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p6, :cond_0

    .line 5
    .line 6
    move-object p2, v0

    .line 7
    :cond_0
    and-int/lit8 p6, p5, 0x4

    .line 8
    .line 9
    if-eqz p6, :cond_1

    .line 10
    .line 11
    move-object p3, v0

    .line 12
    :cond_1
    and-int/lit8 p5, p5, 0x8

    .line 13
    .line 14
    if-eqz p5, :cond_2

    .line 15
    .line 16
    const/4 p4, -0x1

    .line 17
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lteam/opay/pay/transfer/TransferActCenter;->e(Lteam/opay/pay/wallet/view/MarqueeView;Landroid/view/View;Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final e(Lteam/opay/pay/wallet/view/MarqueeView;Landroid/view/View;Ljava/lang/String;I)V
    .locals 9
    .param p1    # Lteam/opay/pay/wallet/view/MarqueeView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/wallet/view/MarqueeView<",
            "*>;",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    const-string v0, "marqueeView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/transfer/TransferActCenter;->a:Lteam/opay/pay/api/AATransferTrial;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lteam/opay/pay/api/AATransferTrial;->a()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v0, v1

    .line 17
    :goto_0
    iget-object v2, p0, Lteam/opay/pay/transfer/TransferActCenter;->a:Lteam/opay/pay/api/AATransferTrial;

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {v2}, Lteam/opay/pay/api/AATransferTrial;->e()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move-object v2, v1

    .line 27
    :goto_1
    new-instance v6, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    if-nez p3, :cond_8

    .line 33
    .line 34
    const-string p3, ""

    .line 35
    .line 36
    if-eqz v0, :cond_5

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    iget-object v0, p0, Lteam/opay/pay/transfer/TransferActCenter;->a:Lteam/opay/pay/api/AATransferTrial;

    .line 46
    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    invoke-virtual {v0}, Lteam/opay/pay/api/AATransferTrial;->a()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    :cond_3
    if-nez v1, :cond_4

    .line 54
    .line 55
    move-object v1, p3

    .line 56
    :cond_4
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    :cond_5
    :goto_2
    if-eqz v2, :cond_9

    .line 60
    .line 61
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_6

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_6
    iget-object v0, p0, Lteam/opay/pay/transfer/TransferActCenter;->b:Ljava/lang/Boolean;

    .line 69
    .line 70
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 71
    .line 72
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_9

    .line 77
    .line 78
    invoke-virtual {p0, p1}, Lteam/opay/pay/transfer/TransferActCenter;->h(Landroid/view/View;)Landroid/text/SpannableString;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    if-eqz v0, :cond_7

    .line 83
    .line 84
    move-object p3, v0

    .line 85
    :cond_7
    invoke-interface {v6, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_8
    invoke-interface {v6, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    :cond_9
    :goto_3
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 93
    .line 94
    .line 95
    move-result p3

    .line 96
    if-eqz p3, :cond_b

    .line 97
    .line 98
    if-eqz p2, :cond_a

    .line 99
    .line 100
    invoke-static {p2}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 101
    .line 102
    .line 103
    :cond_a
    return-void

    .line 104
    :cond_b
    if-eqz p2, :cond_c

    .line 105
    .line 106
    invoke-static {p2}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 107
    .line 108
    .line 109
    :cond_c
    new-instance p2, Lteam/opay/pay/transfer/TransferActCenter$buildMarqueeView$$inlined$doOnPreDraw$1;

    .line 110
    .line 111
    move-object v3, p2

    .line 112
    move-object v4, p1

    .line 113
    move-object v5, p0

    .line 114
    move-object v7, p1

    .line 115
    move v8, p4

    .line 116
    invoke-direct/range {v3 .. v8}, Lteam/opay/pay/transfer/TransferActCenter$buildMarqueeView$$inlined$doOnPreDraw$1;-><init>(Landroid/view/View;Lteam/opay/pay/transfer/TransferActCenter;Ljava/util/List;Lteam/opay/pay/wallet/view/MarqueeView;I)V

    .line 117
    .line 118
    .line 119
    invoke-static {p1, p2}, Lona;->a(Landroid/view/View;Ljava/lang/Runnable;)Lona;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    const-string p2, "OneShotPreDrawListener.add(this) { action(this) }"

    .line 124
    .line 125
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    return-void
.end method

.method public final g()Lteam/opay/pay/api/AATransferTrial;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/TransferActCenter;->a:Lteam/opay/pay/api/AATransferTrial;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h(Landroid/view/View;)Landroid/text/SpannableString;
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget v1, Lteam/opay/pay/R$color;->color_00B876:I

    .line 11
    .line 12
    invoke-static {v0, v1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    new-instance v1, Landroid/text/TextPaint;

    .line 17
    .line 18
    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    .line 19
    .line 20
    .line 21
    const/high16 v2, 0x41400000    # 12.0f

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lteam/opay/pay/transfer/TransferActCenter;->a:Lteam/opay/pay/api/AATransferTrial;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    invoke-virtual {v2}, Lteam/opay/pay/api/AATransferTrial;->e()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move-object v2, v3

    .line 37
    :goto_0
    const-string v4, ""

    .line 38
    .line 39
    if-nez v2, :cond_1

    .line 40
    .line 41
    move-object v2, v4

    .line 42
    :cond_1
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-static {v2}, Ljmf;->c(F)F

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    iget-object v5, p0, Lteam/opay/pay/transfer/TransferActCenter;->a:Lteam/opay/pay/api/AATransferTrial;

    .line 51
    .line 52
    if-eqz v5, :cond_2

    .line 53
    .line 54
    invoke-virtual {v5}, Lteam/opay/pay/api/AATransferTrial;->d()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    move-object v5, v3

    .line 60
    :goto_1
    if-nez v5, :cond_3

    .line 61
    .line 62
    move-object v5, v4

    .line 63
    :cond_3
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    invoke-static {v5}, Ljmf;->c(F)F

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    const-string v6, "..."

    .line 72
    .line 73
    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-nez p1, :cond_4

    .line 82
    .line 83
    const/16 p1, 0x12c

    .line 84
    .line 85
    invoke-static {p1}, Ljmf;->d(I)I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    :cond_4
    add-float/2addr v2, v5

    .line 90
    int-to-float p1, p1

    .line 91
    div-float/2addr v2, p1

    .line 92
    const/high16 v5, 0x40400000    # 3.0f

    .line 93
    .line 94
    cmpl-float v2, v2, v5

    .line 95
    .line 96
    if-lez v2, :cond_8

    .line 97
    .line 98
    iget-object v2, p0, Lteam/opay/pay/transfer/TransferActCenter;->a:Lteam/opay/pay/api/AATransferTrial;

    .line 99
    .line 100
    if-eqz v2, :cond_5

    .line 101
    .line 102
    invoke-virtual {v2}, Lteam/opay/pay/api/AATransferTrial;->e()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    goto :goto_2

    .line 107
    :cond_5
    move-object v2, v3

    .line 108
    :goto_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    .line 117
    .line 118
    div-float/2addr p1, v5

    .line 119
    const/4 v5, 0x3

    .line 120
    int-to-float v5, v5

    .line 121
    mul-float p1, p1, v5

    .line 122
    .line 123
    const/4 v5, 0x2

    .line 124
    int-to-float v5, v5

    .line 125
    mul-float v6, v6, v5

    .line 126
    .line 127
    sub-float/2addr p1, v6

    .line 128
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 129
    .line 130
    invoke-static {v2, v1, p1, v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    iget-object v1, p0, Lteam/opay/pay/transfer/TransferActCenter;->a:Lteam/opay/pay/api/AATransferTrial;

    .line 135
    .line 136
    if-eqz v1, :cond_6

    .line 137
    .line 138
    invoke-virtual {v1}, Lteam/opay/pay/api/AATransferTrial;->d()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    goto :goto_3

    .line 143
    :cond_6
    move-object v1, v3

    .line 144
    :goto_3
    if-nez v1, :cond_7

    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_7
    move-object v4, v1

    .line 148
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string p1, "\n"

    .line 157
    .line 158
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    goto :goto_8

    .line 169
    :cond_8
    iget-object p1, p0, Lteam/opay/pay/transfer/TransferActCenter;->a:Lteam/opay/pay/api/AATransferTrial;

    .line 170
    .line 171
    if-eqz p1, :cond_9

    .line 172
    .line 173
    invoke-virtual {p1}, Lteam/opay/pay/api/AATransferTrial;->e()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    goto :goto_5

    .line 178
    :cond_9
    move-object p1, v3

    .line 179
    :goto_5
    iget-object v1, p0, Lteam/opay/pay/transfer/TransferActCenter;->a:Lteam/opay/pay/api/AATransferTrial;

    .line 180
    .line 181
    if-eqz v1, :cond_a

    .line 182
    .line 183
    invoke-virtual {v1}, Lteam/opay/pay/api/AATransferTrial;->d()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    goto :goto_6

    .line 188
    :cond_a
    move-object v1, v3

    .line 189
    :goto_6
    if-nez v1, :cond_b

    .line 190
    .line 191
    goto :goto_7

    .line 192
    :cond_b
    move-object v4, v1

    .line 193
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string p1, " "

    .line 202
    .line 203
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    :goto_8
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    if-nez v1, :cond_c

    .line 218
    .line 219
    return-object v3

    .line 220
    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    iget-object v2, p0, Lteam/opay/pay/transfer/TransferActCenter;->a:Lteam/opay/pay/api/AATransferTrial;

    .line 225
    .line 226
    if-eqz v2, :cond_d

    .line 227
    .line 228
    invoke-virtual {v2}, Lteam/opay/pay/api/AATransferTrial;->d()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    if-eqz v2, :cond_d

    .line 233
    .line 234
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    goto :goto_9

    .line 239
    :cond_d
    const/4 v2, 0x0

    .line 240
    :goto_9
    sub-int/2addr v1, v2

    .line 241
    new-instance v2, Landroid/text/SpannableString;

    .line 242
    .line 243
    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 244
    .line 245
    .line 246
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    .line 247
    .line 248
    invoke-direct {v3, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 252
    .line 253
    .line 254
    move-result p1

    .line 255
    const/16 v0, 0x21

    .line 256
    .line 257
    invoke-virtual {v2, v3, v1, p1, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 258
    .line 259
    .line 260
    return-object v2
.end method

.method public final i(Ljava/util/List;Lteam/opay/pay/wallet/view/MarqueeView;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lteam/opay/pay/wallet/view/MarqueeView<",
            "*>;I)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget v1, Lteam/opay/pay/R$color;->color_00B876:I

    .line 13
    .line 14
    invoke-static {v0, v1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {p2, v0}, Lteam/opay/pay/wallet/view/MarqueeView;->setTextColor(I)V

    .line 19
    .line 20
    .line 21
    const/4 v6, 0x6

    .line 22
    const/4 v7, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    const/4 v4, 0x0

    .line 25
    const/4 v5, 0x0

    .line 26
    move-object v1, p2

    .line 27
    move-object v2, p1

    .line 28
    invoke-static/range {v1 .. v7}, Lteam/opay/pay/wallet/view/MarqueeView;->r(Lteam/opay/pay/wallet/view/MarqueeView;Ljava/util/List;IIZILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Lteam/opay/pay/transfer/TransferActCenter$a;

    .line 32
    .line 33
    invoke-direct {v0, p3, p1, p0}, Lteam/opay/pay/transfer/TransferActCenter$a;-><init>(ILjava/util/List;Lteam/opay/pay/transfer/TransferActCenter;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, v0}, Lteam/opay/pay/wallet/view/MarqueeView;->setOnItemClickListener(Lteam/opay/pay/wallet/view/MarqueeView$a;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final j()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/TransferActCenter;->b:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k(Lteam/opay/pay/api/AATransferTrial;)V
    .locals 0
    .param p1    # Lteam/opay/pay/api/AATransferTrial;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/transfer/TransferActCenter;->a:Lteam/opay/pay/api/AATransferTrial;

    .line 2
    .line 3
    return-void
.end method

.method public final l(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/transfer/TransferActCenter;->b:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method
