.class public abstract Lteam/opay/opb/common/base/EdgeActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "EdgeActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008&\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0019\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0014\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0004J\u000f\u0010\u000b\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0004J\u000f\u0010\u000c\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u0004R\u001a\u0010\u0012\u001a\u00020\r8\u0016X\u0096D\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0015\u001a\u00020\r8\u0016X\u0096D\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u000f\u001a\u0004\u0008\u0014\u0010\u0011R\u001a\u0010\u001b\u001a\u00020\u00168\u0016X\u0097\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u001e\u001a\u00020\u00168\u0016X\u0097\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u0018\u001a\u0004\u0008\u001d\u0010\u001aR\u0014\u0010 \u001a\u00020\u00168eX\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010\u001a\u00a8\u0006!"
    }
    d2 = {
        "Lteam/opay/opb/common/base/EdgeActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "A",
        "w",
        "y",
        "",
        "a",
        "Z",
        "C",
        "()Z",
        "insetTop",
        "b",
        "B",
        "insetBottom",
        "",
        "c",
        "I",
        "getNavColor",
        "()I",
        "navColor",
        "d",
        "E",
        "scrimColor",
        "D",
        "layoutId",
        "common-base_release"
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
.field public final a:Z

.field public final b:Z

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lteam/opay/opb/common/base/EdgeActivity;->b:Z

    .line 6
    .line 7
    sget v0, Lteam/opay/core/common/R$color;->opb_white:I

    .line 8
    .line 9
    iput v0, p0, Lteam/opay/opb/common/base/EdgeActivity;->c:I

    .line 10
    .line 11
    sget v0, Lteam/opay/core/common/R$color;->opb_scrim:I

    .line 12
    .line 13
    iput v0, p0, Lteam/opay/opb/common/base/EdgeActivity;->d:I

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic u(Lteam/opay/opb/common/base/EdgeActivity;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/opb/common/base/EdgeActivity;->z(Lteam/opay/opb/common/base/EdgeActivity;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final z(Lteam/opay/opb/common/base/EdgeActivity;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 6

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "insets"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$l;->f()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p2, v0}, Landroidx/core/view/WindowInsetsCompat;->f(I)Lpg7;

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
    invoke-virtual {p2, v2}, Landroidx/core/view/WindowInsetsCompat;->f(I)Lpg7;

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
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeActivity;->C()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    const/4 v3, 0x0

    .line 72
    if-eqz v1, :cond_0

    .line 73
    .line 74
    iget v1, v0, Lpg7;->b:I

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    const/4 v1, 0x0

    .line 78
    :goto_0
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeActivity;->B()Z

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    if-eqz p0, :cond_1

    .line 83
    .line 84
    iget p0, v0, Lpg7;->d:I

    .line 85
    .line 86
    iget v0, v2, Lpg7;->d:I

    .line 87
    .line 88
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    invoke-virtual {p1, p0, v1, v0, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 101
    .line 102
    .line 103
    return-object p2
.end method


# virtual methods
.method public final A()V
    .locals 2

    .line 1
    sget-object v0, Lq50;->b:Lq50;

    .line 2
    .line 3
    invoke-virtual {v0}, Lq50;->d()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Lq50;->c()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->M(I)V

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    return-void
.end method

.method public B()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/opb/common/base/EdgeActivity;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public C()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/opb/common/base/EdgeActivity;->a:Z

    .line 2
    .line 3
    return v0
.end method

.method public abstract D()I
.end method

.method public E()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/opb/common/base/EdgeActivity;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeActivity;->A()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeActivity;->w()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeActivity;->D()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeActivity;->D()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeActivity;->y()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final w()V
    .locals 14

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeActivity;->E()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p0, v0}, Ldr2;->e(Landroid/content/Context;I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeActivity;->E()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {p0, v1}, Ldr2;->c(Landroid/content/Context;I)I

    .line 14
    .line 15
    .line 16
    move-result v7

    .line 17
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeActivity;->C()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    sget-object v1, Landroidx/activity/SystemBarStyle;->e:Landroidx/activity/SystemBarStyle$Companion;

    .line 24
    .line 25
    const/4 v5, 0x4

    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v4, 0x0

    .line 28
    move v2, v0

    .line 29
    move v3, v7

    .line 30
    invoke-static/range {v1 .. v6}, Landroidx/activity/SystemBarStyle$Companion;->b(Landroidx/activity/SystemBarStyle$Companion;IILkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/activity/SystemBarStyle;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    :goto_0
    move-object v8, v1

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    sget-object v8, Landroidx/activity/SystemBarStyle;->e:Landroidx/activity/SystemBarStyle$Companion;

    .line 37
    .line 38
    const/4 v12, 0x4

    .line 39
    const/4 v13, 0x0

    .line 40
    const/4 v9, 0x0

    .line 41
    const/4 v10, 0x0

    .line 42
    const/4 v11, 0x0

    .line 43
    invoke-static/range {v8 .. v13}, Landroidx/activity/SystemBarStyle$Companion;->b(Landroidx/activity/SystemBarStyle$Companion;IILkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/activity/SystemBarStyle;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    goto :goto_0

    .line 48
    :goto_1
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeActivity;->B()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    sget-object v1, Landroidx/activity/SystemBarStyle;->e:Landroidx/activity/SystemBarStyle$Companion;

    .line 55
    .line 56
    const/4 v5, 0x4

    .line 57
    const/4 v6, 0x0

    .line 58
    const/4 v4, 0x0

    .line 59
    move v2, v0

    .line 60
    move v3, v7

    .line 61
    invoke-static/range {v1 .. v6}, Landroidx/activity/SystemBarStyle$Companion;->b(Landroidx/activity/SystemBarStyle$Companion;IILkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/activity/SystemBarStyle;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    goto :goto_2

    .line 66
    :cond_1
    sget-object v1, Landroidx/activity/SystemBarStyle;->e:Landroidx/activity/SystemBarStyle$Companion;

    .line 67
    .line 68
    const/4 v5, 0x4

    .line 69
    const/4 v6, 0x0

    .line 70
    const v2, 0x14ffffff

    .line 71
    .line 72
    .line 73
    const/high16 v3, 0x14000000

    .line 74
    .line 75
    const/4 v4, 0x0

    .line 76
    invoke-static/range {v1 .. v6}, Landroidx/activity/SystemBarStyle$Companion;->b(Landroidx/activity/SystemBarStyle$Companion;IILkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/activity/SystemBarStyle;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    :goto_2
    invoke-static {p0, v8, v0}, Landroidx/activity/a;->a(Landroidx/activity/ComponentActivity;Landroidx/activity/SystemBarStyle;Landroidx/activity/SystemBarStyle;)V

    .line 81
    .line 82
    .line 83
    sget-object v0, Lteam/opay/core/common/spi/c;->a:Lteam/opay/core/common/spi/c;

    .line 84
    .line 85
    invoke-virtual {v0}, Lteam/opay/core/common/spi/c;->a()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_2

    .line 90
    .line 91
    sget-object v0, Lhf5;->a:Lhf5;

    .line 92
    .line 93
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    const-string v2, "getWindow(...)"

    .line 98
    .line 99
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeActivity;->E()I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    invoke-static {p0, v2}, Ldr2;->b(Landroid/content/Context;I)I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    invoke-virtual {v0, v1, v2}, Lhf5;->a(Landroid/view/Window;I)V

    .line 111
    .line 112
    .line 113
    :cond_2
    return-void
.end method

.method public final y()V
    .locals 2

    .line 1
    const v0, 0x1020002

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/FrameLayout;

    .line 9
    .line 10
    new-instance v1, Laf5;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Laf5;-><init>(Lteam/opay/opb/common/base/EdgeActivity;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Landroidx/core/view/a;->G0(Landroid/view/View;Lhka;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
