.class public final Lcom/opay/team/newhome/reward/tasks/RewardsHandleItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "RewardsTaskAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\'\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u0007\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u000fR\u0016\u0010\u0013\u001a\u0004\u0018\u00010\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0017\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u001a\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0019\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/opay/team/newhome/reward/tasks/RewardsHandleItemDecoration;",
        "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/graphics/Canvas;",
        "c",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "parent",
        "Landroidx/recyclerview/widget/RecyclerView$State;",
        "state",
        "",
        "onDrawOver",
        "(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V",
        "()V",
        "Landroid/graphics/Movie;",
        "a",
        "Landroid/graphics/Movie;",
        "gifMovie",
        "",
        "b",
        "J",
        "movieStart",
        "",
        "I",
        "currentAnimTime",
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
.field public final a:Landroid/graphics/Movie;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:J

.field public c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v0, "omain_gif_handle.gif"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p1}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    .line 20
    .line 21
    .line 22
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    const/4 p1, 0x0

    .line 25
    :goto_0
    iput-object p1, p0, Lcom/opay/team/newhome/reward/tasks/RewardsHandleItemDecoration;->a:Landroid/graphics/Movie;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/opay/team/newhome/reward/tasks/RewardsHandleItemDecoration;->b:J

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
    iput-wide v0, p0, Lcom/opay/team/newhome/reward/tasks/RewardsHandleItemDecoration;->b:J

    .line 14
    .line 15
    :cond_0
    iget-object v2, p0, Lcom/opay/team/newhome/reward/tasks/RewardsHandleItemDecoration;->a:Landroid/graphics/Movie;

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
    iget-wide v3, p0, Lcom/opay/team/newhome/reward/tasks/RewardsHandleItemDecoration;->b:J

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
    iput v1, p0, Lcom/opay/team/newhome/reward/tasks/RewardsHandleItemDecoration;->c:I

    .line 55
    .line 56
    return-void
.end method

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
    if-ge v0, p3, :cond_3

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
    instance-of v4, v3, Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;

    .line 39
    .line 40
    if-eqz v4, :cond_2

    .line 41
    .line 42
    check-cast v3, Lcom/opay/team/newhome/reward/tasks/RewardsTaskAdapter;

    .line 43
    .line 44
    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    sub-int/2addr v2, v4

    .line 49
    invoke-virtual {v3, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Lcom/opay/team/newhome/reward/RewardsBean;

    .line 54
    .line 55
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    sget v4, Lteam/opay/pay/R$id;->task_item_layout:I

    .line 60
    .line 61
    if-ne v3, v4, :cond_2

    .line 62
    .line 63
    if-eqz v2, :cond_2

    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/opay/team/newhome/reward/RewardsBean;->a()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    const/4 v4, 0x3

    .line 70
    if-ne v3, v4, :cond_2

    .line 71
    .line 72
    sget-object v3, Lnyc;->a:Lnyc;

    .line 73
    .line 74
    invoke-virtual {v2}, Lcom/opay/team/newhome/reward/RewardsBean;->c()Lcom/opay/team/newhome/reward/TaskItem;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v3, v2}, Lnyc;->a(Lcom/opay/team/newhome/reward/TaskItem;)I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-ne v2, v4, :cond_2

    .line 83
    .line 84
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    int-to-float v2, v2

    .line 89
    const/high16 v3, 0x41f00000    # 30.0f

    .line 90
    .line 91
    invoke-static {v3}, Ljmf;->c(F)F

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    add-float/2addr v2, v3

    .line 96
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    int-to-float v1, v1

    .line 101
    const/high16 v3, 0x42600000    # 56.0f

    .line 102
    .line 103
    invoke-static {v3}, Ljmf;->c(F)F

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    sub-float/2addr v1, v3

    .line 108
    invoke-virtual {p0}, Lcom/opay/team/newhome/reward/tasks/RewardsHandleItemDecoration;->c()V

    .line 109
    .line 110
    .line 111
    iget-object v3, p0, Lcom/opay/team/newhome/reward/tasks/RewardsHandleItemDecoration;->a:Landroid/graphics/Movie;

    .line 112
    .line 113
    if-eqz v3, :cond_0

    .line 114
    .line 115
    iget v4, p0, Lcom/opay/team/newhome/reward/tasks/RewardsHandleItemDecoration;->c:I

    .line 116
    .line 117
    invoke-virtual {v3, v4}, Landroid/graphics/Movie;->setTime(I)Z

    .line 118
    .line 119
    .line 120
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 121
    .line 122
    .line 123
    iget-object v3, p0, Lcom/opay/team/newhome/reward/tasks/RewardsHandleItemDecoration;->a:Landroid/graphics/Movie;

    .line 124
    .line 125
    if-eqz v3, :cond_1

    .line 126
    .line 127
    invoke-virtual {v3, p1, v1, v2}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 128
    .line 129
    .line 130
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 131
    .line 132
    .line 133
    const-wide/16 v1, 0x14

    .line 134
    .line 135
    invoke-virtual {p2, v1, v2}, Landroid/view/View;->postInvalidateDelayed(J)V

    .line 136
    .line 137
    .line 138
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_3
    return-void
.end method
