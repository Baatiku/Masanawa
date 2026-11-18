.class final Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$NormalBannerViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "NewHomeBannerViewHolder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NormalBannerViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\nR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$NormalBannerViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcka;",
        "binding",
        "<init>",
        "(Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder;Lcka;)V",
        "Lcom/opay/team/newhome/bean/NewBusinessData;",
        "data",
        "",
        "c",
        "(Lcom/opay/team/newhome/bean/NewBusinessData;)V",
        "e",
        "a",
        "Lcka;",
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
.field public final a:Lcka;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final synthetic b:Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder;


# direct methods
.method public constructor <init>(Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder;Lcka;)V
    .locals 1
    .param p1    # Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcka;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$NormalBannerViewHolder;->b:Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder;

    .line 7
    .line 8
    invoke-virtual {p2}, Lcka;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$NormalBannerViewHolder;->a:Lcka;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic a(Lcom/opay/team/newhome/bean/NewBusinessData;Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$NormalBannerViewHolder;->d(Lcom/opay/team/newhome/bean/NewBusinessData;Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$NormalBannerViewHolder;Lcom/opay/team/newhome/bean/NewBusinessData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$NormalBannerViewHolder;->f(Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$NormalBannerViewHolder;Lcom/opay/team/newhome/bean/NewBusinessData;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final d(Lcom/opay/team/newhome/bean/NewBusinessData;Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder;)Lkotlin/Unit;
    .locals 24

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x3

    .line 4
    const/4 v3, 0x0

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/opay/team/newhome/bean/NewBusinessData;->getTaskType()Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v4

    .line 9
    const-string v5, "ad_action_url"

    .line 10
    .line 11
    const-string v6, "banner_type"

    .line 12
    .line 13
    const-string v7, "home_banner_item_click"

    .line 14
    .line 15
    if-nez v4, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-nez v4, :cond_1

    .line 23
    .line 24
    sget-object v4, Lx7b;->a:Lx7b;

    .line 25
    .line 26
    new-instance v8, Lkotlin/Pair;

    .line 27
    .line 28
    const-string v9, "ad"

    .line 29
    .line 30
    invoke-direct {v8, v6, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    new-instance v6, Lkotlin/Pair;

    .line 34
    .line 35
    const-string v9, "ad_id"

    .line 36
    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/opay/team/newhome/bean/NewBusinessData;->getId()Ljava/lang/Long;

    .line 38
    .line 39
    .line 40
    move-result-object v10

    .line 41
    invoke-direct {v6, v9, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    new-instance v9, Lkotlin/Pair;

    .line 45
    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/opay/team/newhome/bean/NewBusinessData;->getAction()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v10

    .line 50
    invoke-direct {v9, v5, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    new-array v2, v2, [Lkotlin/Pair;

    .line 54
    .line 55
    aput-object v8, v2, v3

    .line 56
    .line 57
    aput-object v6, v2, v1

    .line 58
    .line 59
    aput-object v9, v2, v0

    .line 60
    .line 61
    invoke-virtual {v4, v7, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    :goto_0
    sget-object v4, Lx7b;->a:Lx7b;

    .line 66
    .line 67
    new-instance v8, Lkotlin/Pair;

    .line 68
    .line 69
    const-string v9, "task"

    .line 70
    .line 71
    invoke-direct {v8, v6, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    new-instance v6, Lkotlin/Pair;

    .line 75
    .line 76
    const-string v9, "task_id"

    .line 77
    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/opay/team/newhome/bean/NewBusinessData;->getId()Ljava/lang/Long;

    .line 79
    .line 80
    .line 81
    move-result-object v10

    .line 82
    invoke-direct {v6, v9, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    new-instance v9, Lkotlin/Pair;

    .line 86
    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/opay/team/newhome/bean/NewBusinessData;->getAction()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v10

    .line 91
    invoke-direct {v9, v5, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    new-array v2, v2, [Lkotlin/Pair;

    .line 95
    .line 96
    aput-object v8, v2, v3

    .line 97
    .line 98
    aput-object v6, v2, v1

    .line 99
    .line 100
    aput-object v9, v2, v0

    .line 101
    .line 102
    invoke-virtual {v4, v7, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 103
    .line 104
    .line 105
    :goto_1
    sget-object v10, Lx7b;->a:Lx7b;

    .line 106
    .line 107
    const/4 v14, 0x4

    .line 108
    const/4 v15, 0x0

    .line 109
    const-string v12, "Banner_ads"

    .line 110
    .line 111
    const/4 v13, 0x0

    .line 112
    move-object/from16 v11, p0

    .line 113
    .line 114
    invoke-static/range {v10 .. v15}, Lx7b;->v(Lx7b;Lcom/opay/team/newhome/bean/NewBusinessData;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    sget-object v16, Lcom/opay/team/home/a;->a:Lcom/opay/team/home/a;

    .line 118
    .line 119
    invoke-virtual/range {p1 .. p1}, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder;->d()Landroid/content/Context;

    .line 120
    .line 121
    .line 122
    move-result-object v17

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/opay/team/newhome/bean/NewBusinessData;->getAction()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v18

    .line 127
    new-array v0, v3, [Lkotlin/Pair;

    .line 128
    .line 129
    const/16 v22, 0x4

    .line 130
    .line 131
    const/16 v23, 0x0

    .line 132
    .line 133
    const/16 v19, 0x0

    .line 134
    .line 135
    const-string v20, ""

    .line 136
    .line 137
    move-object/from16 v21, v0

    .line 138
    .line 139
    invoke-static/range {v16 .. v23}, Lcom/opay/team/home/a;->y(Lcom/opay/team/home/a;Landroid/content/Context;Ljava/lang/String;Lteam/opay/core/api/Country;Ljava/lang/String;[Lkotlin/Pair;ILjava/lang/Object;)Lcom/opay/team/home/ServiceTypeRunner;

    .line 140
    .line 141
    .line 142
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 143
    .line 144
    return-object v0
.end method

.method public static final f(Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$NormalBannerViewHolder;Lcom/opay/team/newhome/bean/NewBusinessData;)Lkotlin/Unit;
    .locals 8

    .line 1
    sget-object v0, Lcom/opay/team/home/a;->a:Lcom/opay/team/home/a;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$NormalBannerViewHolder;->a:Lcka;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcka;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string p0, "getContext(...)"

    .line 14
    .line 15
    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/opay/team/newhome/bean/NewBusinessData;->getAction()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/4 p0, 0x0

    .line 23
    new-array v5, p0, [Lkotlin/Pair;

    .line 24
    .line 25
    const/4 v6, 0x4

    .line 26
    const/4 v7, 0x0

    .line 27
    const/4 v3, 0x0

    .line 28
    const-string v4, ""

    .line 29
    .line 30
    invoke-static/range {v0 .. v7}, Lcom/opay/team/home/a;->y(Lcom/opay/team/home/a;Landroid/content/Context;Ljava/lang/String;Lteam/opay/core/api/Country;Ljava/lang/String;[Lkotlin/Pair;ILjava/lang/Object;)Lcom/opay/team/home/ServiceTypeRunner;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/opay/team/newhome/bean/NewBusinessData;->getTaskType()Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-nez p1, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_1

    .line 45
    .line 46
    const-string p1, "ad"

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    :goto_0
    const-string p1, "task"

    .line 50
    .line 51
    :goto_1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 52
    .line 53
    const-string v1, "banner_type"

    .line 54
    .line 55
    invoke-static {v1, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const/4 v1, 0x1

    .line 60
    new-array v1, v1, [Lkotlin/Pair;

    .line 61
    .line 62
    aput-object p1, v1, p0

    .line 63
    .line 64
    const-string p0, "home_banner_go_click"

    .line 65
    .line 66
    invoke-virtual {v0, p0, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 67
    .line 68
    .line 69
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 70
    .line 71
    return-object p0
.end method


# virtual methods
.method public final c(Lcom/opay/team/newhome/bean/NewBusinessData;)V
    .locals 10
    .param p1    # Lcom/opay/team/newhome/bean/NewBusinessData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$NormalBannerViewHolder;->b:Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder;->d()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$NormalBannerViewHolder;->a:Lcka;

    .line 16
    .line 17
    iget-object v1, v0, Lcka;->f:Lcom/opay/team/newhome/home/ImageLottieView;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/opay/team/newhome/bean/NewBusinessData;->getImageIconUrl()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const/16 v8, 0x3e

    .line 24
    .line 25
    const/4 v9, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    const/4 v4, 0x0

    .line 28
    const/4 v5, 0x0

    .line 29
    const/4 v6, 0x0

    .line 30
    const/4 v7, 0x0

    .line 31
    invoke-static/range {v1 .. v9}, Lcom/opay/team/newhome/home/ImageLottieView;->n(Lcom/opay/team/newhome/home/ImageLottieView;Ljava/lang/String;IIZZZILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/opay/team/newhome/bean/NewBusinessData;->getAmountImgUrl()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v1, "homeBannerAmountImg"

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$NormalBannerViewHolder;->a:Lcka;

    .line 50
    .line 51
    iget-object v0, v0, Lcka;->c:Landroid/widget/ImageView;

    .line 52
    .line 53
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$NormalBannerViewHolder;->b:Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder;->d()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {v0}, Lcom/bumptech/glide/a;->u(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p1}, Lcom/opay/team/newhome/bean/NewBusinessData;->getAmountImgUrl()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->u(Ljava/lang/String;)Ljpc;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$NormalBannerViewHolder;->a:Lcka;

    .line 78
    .line 79
    iget-object v1, v1, Lcka;->c:Landroid/widget/ImageView;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljpc;->F0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$NormalBannerViewHolder;->a:Lcka;

    .line 90
    .line 91
    iget-object v0, v0, Lcka;->c:Landroid/widget/ImageView;

    .line 92
    .line 93
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 97
    .line 98
    .line 99
    :goto_1
    const/16 v0, 0xe6

    .line 100
    .line 101
    invoke-static {v0}, Ljmf;->d(I)I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    invoke-virtual {p1}, Lcom/opay/team/newhome/bean/NewBusinessData;->getAmount()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    if-eqz v1, :cond_4

    .line 110
    .line 111
    invoke-static {v1}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-eqz v1, :cond_3

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_3
    const/16 v0, 0x96

    .line 119
    .line 120
    invoke-static {v0}, Ljmf;->d(I)I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$NormalBannerViewHolder;->a:Lcka;

    .line 125
    .line 126
    iget-object v1, v1, Lcka;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 127
    .line 128
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$NormalBannerViewHolder;->a:Lcka;

    .line 132
    .line 133
    iget-object v0, v0, Lcka;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 134
    .line 135
    invoke-virtual {p1}, Lcom/opay/team/newhome/bean/NewBusinessData;->getName()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    const-string v2, ""

    .line 140
    .line 141
    if-eqz v1, :cond_5

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_5
    move-object v1, v2

    .line 145
    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$NormalBannerViewHolder;->a:Lcka;

    .line 149
    .line 150
    iget-object v0, v0, Lcka;->b:Landroid/widget/TextView;

    .line 151
    .line 152
    invoke-virtual {p1}, Lcom/opay/team/newhome/bean/NewBusinessData;->getAmount()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    if-eqz v1, :cond_6

    .line 157
    .line 158
    move-object v2, v1

    .line 159
    :cond_6
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1}, Lcom/opay/team/newhome/bean/NewBusinessData;->getRich_desc()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    if-eqz v0, :cond_8

    .line 167
    .line 168
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-nez v0, :cond_7

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_7
    iget-object v0, p0, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$NormalBannerViewHolder;->a:Lcka;

    .line 176
    .line 177
    iget-object v0, v0, Lcka;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 178
    .line 179
    invoke-virtual {p1}, Lcom/opay/team/newhome/bean/NewBusinessData;->getRich_desc()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-static {v1}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    .line 189
    .line 190
    goto :goto_5

    .line 191
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$NormalBannerViewHolder;->a:Lcka;

    .line 192
    .line 193
    iget-object v0, v0, Lcka;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 194
    .line 195
    invoke-virtual {p1}, Lcom/opay/team/newhome/bean/NewBusinessData;->getDescription()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    .line 201
    .line 202
    :goto_5
    iget-object v0, p0, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$NormalBannerViewHolder;->a:Lcka;

    .line 203
    .line 204
    invoke-virtual {v0}, Lcka;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    const-string v1, "getRoot(...)"

    .line 209
    .line 210
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    iget-object v1, p0, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$NormalBannerViewHolder;->b:Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder;

    .line 214
    .line 215
    new-instance v2, Lcom/opay/team/newhome/adapter/b;

    .line 216
    .line 217
    invoke-direct {v2, p1, v1}, Lcom/opay/team/newhome/adapter/b;-><init>(Lcom/opay/team/newhome/bean/NewBusinessData;Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder;)V

    .line 218
    .line 219
    .line 220
    invoke-static {v0, v2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0, p1}, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$NormalBannerViewHolder;->e(Lcom/opay/team/newhome/bean/NewBusinessData;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p1}, Lcom/opay/team/newhome/bean/NewBusinessData;->getBackgroundConfig()Lteam/opay/odialog/net/BackgroundConfig;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    if-eqz v0, :cond_9

    .line 231
    .line 232
    iget-object v0, p0, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$NormalBannerViewHolder;->a:Lcka;

    .line 233
    .line 234
    invoke-virtual {v0}, Lcka;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-virtual {p1}, Lcom/opay/team/newhome/bean/NewBusinessData;->getBackgroundConfig()Lteam/opay/odialog/net/BackgroundConfig;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    const/16 v1, 0xc

    .line 243
    .line 244
    invoke-static {p1, v1}, Lkzf;->c(Lteam/opay/odialog/net/BackgroundConfig;I)Landroid/graphics/drawable/GradientDrawable;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 249
    .line 250
    .line 251
    goto :goto_6

    .line 252
    :cond_9
    iget-object p1, p0, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$NormalBannerViewHolder;->a:Lcka;

    .line 253
    .line 254
    invoke-virtual {p1}, Lcka;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    iget-object v0, p0, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$NormalBannerViewHolder;->a:Lcka;

    .line 259
    .line 260
    invoke-virtual {v0}, Lcka;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    sget v1, Lteam/opay/pay/R$drawable;->omain_bg_white_radius_12:I

    .line 269
    .line 270
    invoke-static {v0, v1}, Lzq2;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 275
    .line 276
    .line 277
    :goto_6
    return-void
.end method

.method public final e(Lcom/opay/team/newhome/bean/NewBusinessData;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/opay/team/newhome/bean/NewBusinessData;->getActionTitle()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "homeBannerGo"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/opay/team/newhome/bean/NewBusinessData;->getActionTitle()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v2, "null"

    .line 20
    .line 21
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$NormalBannerViewHolder;->a:Lcka;

    .line 28
    .line 29
    iget-object p1, p1, Lcka;->e:Lcom/google/android/material/button/MaterialButton;

    .line 30
    .line 31
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$NormalBannerViewHolder;->a:Lcka;

    .line 39
    .line 40
    iget-object v0, v0, Lcka;->e:Lcom/google/android/material/button/MaterialButton;

    .line 41
    .line 42
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$NormalBannerViewHolder;->a:Lcka;

    .line 49
    .line 50
    iget-object v0, v0, Lcka;->e:Lcom/google/android/material/button/MaterialButton;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/opay/team/newhome/bean/NewBusinessData;->getActionTitle()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    if-nez v2, :cond_2

    .line 57
    .line 58
    const-string v2, ""

    .line 59
    .line 60
    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$NormalBannerViewHolder;->a:Lcka;

    .line 64
    .line 65
    iget-object v0, v0, Lcka;->e:Lcom/google/android/material/button/MaterialButton;

    .line 66
    .line 67
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    new-instance v2, Lcom/opay/team/newhome/adapter/c;

    .line 71
    .line 72
    invoke-direct {v2, p0, p1}, Lcom/opay/team/newhome/adapter/c;-><init>(Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$NormalBannerViewHolder;Lcom/opay/team/newhome/bean/NewBusinessData;)V

    .line 73
    .line 74
    .line 75
    invoke-static {v0, v2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$NormalBannerViewHolder;->a:Lcka;

    .line 79
    .line 80
    iget-object v0, v0, Lcka;->e:Lcom/google/android/material/button/MaterialButton;

    .line 81
    .line 82
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/opay/team/newhome/bean/NewBusinessData;->getButtonColor()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    iget-object v2, p0, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$NormalBannerViewHolder;->a:Lcka;

    .line 90
    .line 91
    invoke-virtual {v2}, Lcka;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    sget v3, Lteam/opay/pay/R$color;->color_00B876:I

    .line 100
    .line 101
    invoke-static {v2, v3}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    invoke-static {v1, v2}, Lkzf;->l(Ljava/lang/String;I)I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    const/4 v2, 0x2

    .line 110
    const/4 v3, 0x0

    .line 111
    invoke-static {v0, v1, v3, v2, v3}, Lkzf;->o(Landroid/view/View;ILandroid/graphics/PorterDuff$Mode;ILjava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$NormalBannerViewHolder;->a:Lcka;

    .line 115
    .line 116
    iget-object v0, v0, Lcka;->e:Lcom/google/android/material/button/MaterialButton;

    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/opay/team/newhome/bean/NewBusinessData;->getButtonFontColor()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    iget-object v1, p0, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$NormalBannerViewHolder;->a:Lcka;

    .line 123
    .line 124
    invoke-virtual {v1}, Lcka;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    sget v2, Lteam/opay/pay/R$color;->osdk_color_white:I

    .line 133
    .line 134
    invoke-static {v1, v2}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    invoke-static {p1, v1}, Lkzf;->l(Ljava/lang/String;I)I

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    .line 144
    .line 145
    :goto_0
    return-void
.end method
