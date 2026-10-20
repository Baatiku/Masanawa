.class public final Lteam/opay/pay/home/security/SecurityEntranceItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SecurityEntranceItemDecoration.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\'\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u0019\u001a\u0004\u0018\u00010\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u0018R\u0016\u0010\u001d\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0016\u0010 \u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u001fR\u0016\u0010$\u001a\u00020!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#\u00a8\u0006%"
    }
    d2 = {
        "Lteam/opay/pay/home/security/SecurityEntranceItemDecoration;",
        "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;",
        "Landroid/content/Context;",
        "context",
        "",
        "target",
        "<init>",
        "(Landroid/content/Context;Ljava/lang/String;)V",
        "",
        "e",
        "()V",
        "Landroid/graphics/Canvas;",
        "c",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "parent",
        "Landroidx/recyclerview/widget/RecyclerView$State;",
        "state",
        "onDrawOver",
        "(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V",
        "a",
        "Landroid/content/Context;",
        "b",
        "Ljava/lang/String;",
        "Landroid/graphics/Movie;",
        "Landroid/graphics/Movie;",
        "gifMovie",
        "",
        "d",
        "J",
        "movieStart",
        "",
        "I",
        "currentAnimTime",
        "",
        "f",
        "Z",
        "animStatus",
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


# instance fields
.field public final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final c:Landroid/graphics/Movie;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:J

.field public e:I

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lteam/opay/pay/home/security/SecurityEntranceItemDecoration;->a:Landroid/content/Context;

    .line 10
    .line 11
    iput-object p2, p0, Lteam/opay/pay/home/security/SecurityEntranceItemDecoration;->b:Ljava/lang/String;

    .line 12
    .line 13
    const/4 p2, 0x1

    .line 14
    iput-boolean p2, p0, Lteam/opay/pay/home/security/SecurityEntranceItemDecoration;->f:Z

    .line 15
    .line 16
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string p2, "omain_gif_handle.gif"

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p1}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    .line 27
    .line 28
    .line 29
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_0

    .line 31
    :catch_0
    const/4 p1, 0x0

    .line 32
    :goto_0
    iput-object p1, p0, Lteam/opay/pay/home/security/SecurityEntranceItemDecoration;->c:Landroid/graphics/Movie;

    .line 33
    .line 34
    new-instance p1, Ljbd;

    .line 35
    .line 36
    invoke-direct {p1, p0}, Ljbd;-><init>(Lteam/opay/pay/home/security/SecurityEntranceItemDecoration;)V

    .line 37
    .line 38
    .line 39
    const-wide/16 v0, 0xdac

    .line 40
    .line 41
    invoke-static {p1, v0, v1}, Lfke;->i(Ljava/lang/Runnable;J)Z

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public static synthetic c(Lteam/opay/pay/home/security/SecurityEntranceItemDecoration;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/security/SecurityEntranceItemDecoration;->d(Lteam/opay/pay/home/security/SecurityEntranceItemDecoration;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final d(Lteam/opay/pay/home/security/SecurityEntranceItemDecoration;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lteam/opay/pay/home/security/SecurityEntranceItemDecoration;->f:Z

    .line 3
    .line 4
    return-void
.end method

.method private final e()V
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lteam/opay/pay/home/security/SecurityEntranceItemDecoration;->d:J

    .line 6
    .line 7
    const-wide/16 v4, 0x0

    .line 8
    .line 9
    cmp-long v6, v2, v4

    .line 10
    .line 11
    if-nez v6, :cond_0

    .line 12
    .line 13
    iput-wide v0, p0, Lteam/opay/pay/home/security/SecurityEntranceItemDecoration;->d:J

    .line 14
    .line 15
    :cond_0
    iget-object v2, p0, Lteam/opay/pay/home/security/SecurityEntranceItemDecoration;->c:Landroid/graphics/Movie;

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/graphics/Movie;->duration()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v2, 0x0

    .line 29
    :goto_0
    const/4 v3, 0x0

    .line 30
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-static {v2, v3}, Loj2;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Ljava/lang/Number;

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-nez v2, :cond_2

    .line 45
    .line 46
    const/16 v2, 0x320

    .line 47
    .line 48
    :cond_2
    iget-wide v3, p0, Lteam/opay/pay/home/security/SecurityEntranceItemDecoration;->d:J

    .line 49
    .line 50
    sub-long/2addr v0, v3

    .line 51
    int-to-long v2, v2

    .line 52
    rem-long/2addr v0, v2

    .line 53
    long-to-int v1, v0

    .line 54
    iput v1, p0, Lteam/opay/pay/home/security/SecurityEntranceItemDecoration;->e:I

    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 5
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "c"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "parent"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "state"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    const/4 v0, 0x0

    .line 24
    :goto_0
    if-ge v0, p3, :cond_4

    .line 25
    .line 26
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    instance-of v4, v3, Lteam/opay/pay/home/security/SecuritySettingAdapter;

    .line 39
    .line 40
    if-eqz v4, :cond_3

    .line 41
    .line 42
    check-cast v3, Lteam/opay/pay/home/security/SecuritySettingAdapter;

    .line 43
    .line 44
    invoke-virtual {v3, v2}, Lteam/opay/pay/home/security/SecuritySettingAdapter;->l(I)Lteam/opay/pay/home/security/SecuritySetting;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    iget-object v3, p0, Lteam/opay/pay/home/security/SecurityEntranceItemDecoration;->b:Ljava/lang/String;

    .line 49
    .line 50
    if-eqz v2, :cond_0

    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    const/4 v2, 0x0

    .line 58
    :goto_1
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_3

    .line 63
    .line 64
    iget-boolean v2, p0, Lteam/opay/pay/home/security/SecurityEntranceItemDecoration;->f:Z

    .line 65
    .line 66
    if-eqz v2, :cond_3

    .line 67
    .line 68
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    sget v3, Lteam/opay/pay/R$id;->menu_title:I

    .line 73
    .line 74
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    add-int/2addr v2, v3

    .line 83
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    int-to-float v1, v1

    .line 88
    const/high16 v3, 0x42a00000    # 80.0f

    .line 89
    .line 90
    invoke-static {v3}, Ljmf;->c(F)F

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    sub-float/2addr v1, v3

    .line 95
    invoke-direct {p0}, Lteam/opay/pay/home/security/SecurityEntranceItemDecoration;->e()V

    .line 96
    .line 97
    .line 98
    iget-object v3, p0, Lteam/opay/pay/home/security/SecurityEntranceItemDecoration;->c:Landroid/graphics/Movie;

    .line 99
    .line 100
    if-eqz v3, :cond_1

    .line 101
    .line 102
    iget v4, p0, Lteam/opay/pay/home/security/SecurityEntranceItemDecoration;->e:I

    .line 103
    .line 104
    invoke-virtual {v3, v4}, Landroid/graphics/Movie;->setTime(I)Z

    .line 105
    .line 106
    .line 107
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 108
    .line 109
    .line 110
    iget-object v3, p0, Lteam/opay/pay/home/security/SecurityEntranceItemDecoration;->c:Landroid/graphics/Movie;

    .line 111
    .line 112
    if-eqz v3, :cond_2

    .line 113
    .line 114
    int-to-float v2, v2

    .line 115
    invoke-virtual {v3, p1, v1, v2}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 116
    .line 117
    .line 118
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 119
    .line 120
    .line 121
    const-wide/16 v1, 0x14

    .line 122
    .line 123
    invoke-virtual {p2, v1, v2}, Landroid/view/View;->postInvalidateDelayed(J)V

    .line 124
    .line 125
    .line 126
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_4
    return-void
.end method
