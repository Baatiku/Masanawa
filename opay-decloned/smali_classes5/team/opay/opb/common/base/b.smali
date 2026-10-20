.class public final Lteam/opay/opb/common/base/b;
.super Ljava/lang/Object;
.source "EdgeToEdge.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u001a;\u0010\u0007\u001a\u00020\u0006*\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0001H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u001a%\u0010\u000b\u001a\u00020\u0006*\u00020\u00002\u0008\u0008\u0002\u0010\t\u001a\u00020\u00012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Landroid/view/View;",
        "",
        "leftInset",
        "topInset",
        "rightInset",
        "bottomInset",
        "",
        "c",
        "(Landroid/view/View;ZZZZ)V",
        "top",
        "bottom",
        "b",
        "(Landroid/view/View;ZZ)V",
        "common-base_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic a(Lteam/opay/opb/common/base/Insets;ZZZZLandroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lteam/opay/opb/common/base/b;->e(Lteam/opay/opb/common/base/Insets;ZZZZLandroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final b(Landroid/view/View;ZZ)V
    .locals 8
    .param p0    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v6, 0x5

    .line 7
    const/4 v7, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    move-object v1, p0

    .line 11
    move v3, p1

    .line 12
    move v5, p2

    .line 13
    invoke-static/range {v1 .. v7}, Lteam/opay/opb/common/base/b;->d(Landroid/view/View;ZZZZILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static final c(Landroid/view/View;ZZZZ)V
    .locals 7

    .line 1
    new-instance v1, Lteam/opay/opb/common/base/Insets;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    invoke-direct {v1, v0, v2, v3, v4}, Lteam/opay/opb/common/base/Insets;-><init>(IIII)V

    .line 20
    .line 21
    .line 22
    sget-object v0, Lnk8;->c:Lnk8;

    .line 23
    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v3, "padding = "

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const/4 v3, 0x0

    .line 42
    const/4 v4, 0x2

    .line 43
    invoke-static {v0, v2, v3, v4, v3}, Lteam/opay/core/common/GenericLogger;->m(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    new-instance v6, Lteam/opay/opb/common/base/a;

    .line 47
    .line 48
    move-object v0, v6

    .line 49
    move v2, p1

    .line 50
    move v3, p2

    .line 51
    move v4, p3

    .line 52
    move v5, p4

    .line 53
    invoke-direct/range {v0 .. v5}, Lteam/opay/opb/common/base/a;-><init>(Lteam/opay/opb/common/base/Insets;ZZZZ)V

    .line 54
    .line 55
    .line 56
    invoke-static {p0, v6}, Landroidx/core/view/a;->G0(Landroid/view/View;Lhka;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public static synthetic d(Landroid/view/View;ZZZZILjava/lang/Object;)V
    .locals 1

    .line 1
    and-int/lit8 p6, p5, 0x1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p6, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    :cond_0
    and-int/lit8 p6, p5, 0x2

    .line 8
    .line 9
    if-eqz p6, :cond_1

    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    :cond_1
    and-int/lit8 p6, p5, 0x4

    .line 13
    .line 14
    if-eqz p6, :cond_2

    .line 15
    .line 16
    const/4 p3, 0x0

    .line 17
    :cond_2
    and-int/lit8 p5, p5, 0x8

    .line 18
    .line 19
    if-eqz p5, :cond_3

    .line 20
    .line 21
    const/4 p4, 0x0

    .line 22
    :cond_3
    invoke-static {p0, p1, p2, p3, p4}, Lteam/opay/opb/common/base/b;->c(Landroid/view/View;ZZZZ)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public static final e(Lteam/opay/opb/common/base/Insets;ZZZZLandroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 6

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "insets"

    .line 7
    .line 8
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$l;->f()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p6, v0}, Landroidx/core/view/WindowInsetsCompat;->f(I)Lpg7;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "getInsets(...)"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$l;->a()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {p6, v2}, Landroidx/core/view/WindowInsetsCompat;->f(I)Lpg7;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sget-object v1, Lnk8;->c:Lnk8;

    .line 36
    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v4, "sys = "

    .line 43
    .line 44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v4, ", ime = "

    .line 51
    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    const/4 v4, 0x0

    .line 63
    const/4 v5, 0x2

    .line 64
    invoke-static {v1, v3, v4, v5, v4}, Lteam/opay/core/common/GenericLogger;->m(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lteam/opay/opb/common/base/Insets;->b()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    const/4 v3, 0x0

    .line 72
    if-eqz p1, :cond_0

    .line 73
    .line 74
    iget p1, v0, Lpg7;->a:I

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    const/4 p1, 0x0

    .line 78
    :goto_0
    add-int/2addr v1, p1

    .line 79
    invoke-virtual {p0}, Lteam/opay/opb/common/base/Insets;->d()I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p2, :cond_1

    .line 84
    .line 85
    iget p2, v0, Lpg7;->b:I

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    const/4 p2, 0x0

    .line 89
    :goto_1
    add-int/2addr p1, p2

    .line 90
    invoke-virtual {p0}, Lteam/opay/opb/common/base/Insets;->c()I

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    if-eqz p3, :cond_2

    .line 95
    .line 96
    iget p3, v0, Lpg7;->c:I

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_2
    const/4 p3, 0x0

    .line 100
    :goto_2
    add-int/2addr p2, p3

    .line 101
    invoke-virtual {p0}, Lteam/opay/opb/common/base/Insets;->a()I

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    if-eqz p4, :cond_3

    .line 106
    .line 107
    iget p3, v0, Lpg7;->d:I

    .line 108
    .line 109
    iget p4, v2, Lpg7;->d:I

    .line 110
    .line 111
    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    :cond_3
    add-int/2addr p0, v3

    .line 116
    invoke-virtual {p5, v1, p1, p2, p0}, Landroid/view/View;->setPadding(IIII)V

    .line 117
    .line 118
    .line 119
    return-object p6
.end method
