.class final Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$LargeImageBannerViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "NewHomeBannerViewHolder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LargeImageBannerViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ+\u0010\u0010\u001a\u00020\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$LargeImageBannerViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcj2;",
        "binding",
        "<init>",
        "(Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder;Lcj2;)V",
        "Lcom/opay/team/newhome/bean/HomeAdData;",
        "data",
        "",
        "c",
        "(Lcom/opay/team/newhome/bean/HomeAdData;)V",
        "Landroid/widget/TextView;",
        "ageTagView",
        "adTagView",
        "Lcom/opay/team/newhome/bean/NewBusinessData;",
        "item",
        "b",
        "(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/opay/team/newhome/bean/NewBusinessData;)V",
        "a",
        "Lcj2;",
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
.field public final a:Lcj2;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final synthetic b:Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder;


# direct methods
.method public constructor <init>(Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder;Lcj2;)V
    .locals 1
    .param p1    # Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcj2;",
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
    iput-object p1, p0, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$LargeImageBannerViewHolder;->b:Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder;

    .line 7
    .line 8
    invoke-virtual {p2}, Lcj2;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$LargeImageBannerViewHolder;->a:Lcj2;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic a(Lcom/opay/team/newhome/bean/HomeAdData;Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$LargeImageBannerViewHolder;->d(Lcom/opay/team/newhome/bean/HomeAdData;Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final d(Lcom/opay/team/newhome/bean/HomeAdData;Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder;)Lkotlin/Unit;
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
    invoke-virtual/range {p0 .. p0}, Lcom/opay/team/newhome/bean/HomeAdData;->a()Lcom/opay/team/newhome/bean/NewBusinessData;

    .line 6
    .line 7
    .line 8
    move-result-object v4

    .line 9
    invoke-virtual {v4}, Lcom/opay/team/newhome/bean/NewBusinessData;->getTaskType()Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    const-string v5, "ad_action_url"

    .line 14
    .line 15
    const-string v6, "banner_type"

    .line 16
    .line 17
    const-string v7, "home_banner_item_click"

    .line 18
    .line 19
    if-nez v4, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-nez v4, :cond_1

    .line 27
    .line 28
    sget-object v4, Lx7b;->a:Lx7b;

    .line 29
    .line 30
    new-instance v8, Lkotlin/Pair;

    .line 31
    .line 32
    const-string v9, "ad"

    .line 33
    .line 34
    invoke-direct {v8, v6, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    new-instance v6, Lkotlin/Pair;

    .line 38
    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/opay/team/newhome/bean/HomeAdData;->a()Lcom/opay/team/newhome/bean/NewBusinessData;

    .line 40
    .line 41
    .line 42
    move-result-object v9

    .line 43
    invoke-virtual {v9}, Lcom/opay/team/newhome/bean/NewBusinessData;->getId()Ljava/lang/Long;

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    const-string v10, "ad_id"

    .line 48
    .line 49
    invoke-direct {v6, v10, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    new-instance v9, Lkotlin/Pair;

    .line 53
    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/opay/team/newhome/bean/HomeAdData;->a()Lcom/opay/team/newhome/bean/NewBusinessData;

    .line 55
    .line 56
    .line 57
    move-result-object v10

    .line 58
    invoke-virtual {v10}, Lcom/opay/team/newhome/bean/NewBusinessData;->getAction()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v10

    .line 62
    invoke-direct {v9, v5, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    new-array v2, v2, [Lkotlin/Pair;

    .line 66
    .line 67
    aput-object v8, v2, v3

    .line 68
    .line 69
    aput-object v6, v2, v1

    .line 70
    .line 71
    aput-object v9, v2, v0

    .line 72
    .line 73
    invoke-virtual {v4, v7, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    :goto_0
    sget-object v4, Lx7b;->a:Lx7b;

    .line 78
    .line 79
    new-instance v8, Lkotlin/Pair;

    .line 80
    .line 81
    const-string v9, "task"

    .line 82
    .line 83
    invoke-direct {v8, v6, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    new-instance v6, Lkotlin/Pair;

    .line 87
    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/opay/team/newhome/bean/HomeAdData;->a()Lcom/opay/team/newhome/bean/NewBusinessData;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    invoke-virtual {v9}, Lcom/opay/team/newhome/bean/NewBusinessData;->getId()Ljava/lang/Long;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    const-string v10, "task_id"

    .line 97
    .line 98
    invoke-direct {v6, v10, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    new-instance v9, Lkotlin/Pair;

    .line 102
    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/opay/team/newhome/bean/HomeAdData;->a()Lcom/opay/team/newhome/bean/NewBusinessData;

    .line 104
    .line 105
    .line 106
    move-result-object v10

    .line 107
    invoke-virtual {v10}, Lcom/opay/team/newhome/bean/NewBusinessData;->getAction()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v10

    .line 111
    invoke-direct {v9, v5, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    new-array v2, v2, [Lkotlin/Pair;

    .line 115
    .line 116
    aput-object v8, v2, v3

    .line 117
    .line 118
    aput-object v6, v2, v1

    .line 119
    .line 120
    aput-object v9, v2, v0

    .line 121
    .line 122
    invoke-virtual {v4, v7, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 123
    .line 124
    .line 125
    :goto_1
    sget-object v10, Lx7b;->a:Lx7b;

    .line 126
    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/opay/team/newhome/bean/HomeAdData;->a()Lcom/opay/team/newhome/bean/NewBusinessData;

    .line 128
    .line 129
    .line 130
    move-result-object v11

    .line 131
    const/4 v14, 0x4

    .line 132
    const/4 v15, 0x0

    .line 133
    const-string v12, "Banner_ads"

    .line 134
    .line 135
    const/4 v13, 0x0

    .line 136
    invoke-static/range {v10 .. v15}, Lx7b;->v(Lx7b;Lcom/opay/team/newhome/bean/NewBusinessData;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    sget-object v16, Lcom/opay/team/home/a;->a:Lcom/opay/team/home/a;

    .line 140
    .line 141
    invoke-virtual/range {p1 .. p1}, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder;->d()Landroid/content/Context;

    .line 142
    .line 143
    .line 144
    move-result-object v17

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/opay/team/newhome/bean/HomeAdData;->a()Lcom/opay/team/newhome/bean/NewBusinessData;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {v0}, Lcom/opay/team/newhome/bean/NewBusinessData;->getAction()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v18

    .line 153
    new-array v0, v3, [Lkotlin/Pair;

    .line 154
    .line 155
    const/16 v22, 0x4

    .line 156
    .line 157
    const/16 v23, 0x0

    .line 158
    .line 159
    const/16 v19, 0x0

    .line 160
    .line 161
    const-string v20, ""

    .line 162
    .line 163
    move-object/from16 v21, v0

    .line 164
    .line 165
    invoke-static/range {v16 .. v23}, Lcom/opay/team/home/a;->y(Lcom/opay/team/home/a;Landroid/content/Context;Ljava/lang/String;Lteam/opay/core/api/Country;Ljava/lang/String;[Lkotlin/Pair;ILjava/lang/Object;)Lcom/opay/team/home/ServiceTypeRunner;

    .line 166
    .line 167
    .line 168
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 169
    .line 170
    return-object v0
.end method


# virtual methods
.method public final b(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/opay/team/newhome/bean/NewBusinessData;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p3}, Lcom/opay/team/newhome/bean/NewBusinessData;->getAgeLimit()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p3}, Lcom/opay/team/newhome/bean/NewBusinessData;->getAgeLimit()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    :cond_2
    :goto_1
    if-eqz p2, :cond_5

    .line 31
    .line 32
    invoke-virtual {p3}, Lcom/opay/team/newhome/bean/NewBusinessData;->getAdReminder()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_4

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_3

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_3
    invoke-static {p2}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p3}, Lcom/opay/team/newhome/bean/NewBusinessData;->getAdReminder()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_4
    :goto_2
    invoke-static {p2}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 57
    .line 58
    .line 59
    :cond_5
    :goto_3
    return-void
.end method

.method public final c(Lcom/opay/team/newhome/bean/HomeAdData;)V
    .locals 10
    .param p1    # Lcom/opay/team/newhome/bean/HomeAdData;
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
    iget-object v0, p0, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$LargeImageBannerViewHolder;->b:Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder;

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
    iget-object v0, p0, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$LargeImageBannerViewHolder;->a:Lcj2;

    .line 16
    .line 17
    iget-object v1, v0, Lcj2;->b:Lcom/opay/team/newhome/home/ImageLottieView;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/opay/team/newhome/bean/HomeAdData;->a()Lcom/opay/team/newhome/bean/NewBusinessData;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/opay/team/newhome/bean/NewBusinessData;->getImageIconUrl()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    sget v3, Lteam/opay/pay/R$mipmap;->bg_banner_default:I

    .line 28
    .line 29
    const/16 v0, 0x8

    .line 30
    .line 31
    invoke-static {v0}, Ljmf;->d(I)I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    const/16 v8, 0x38

    .line 36
    .line 37
    const/4 v9, 0x0

    .line 38
    const/4 v5, 0x0

    .line 39
    const/4 v6, 0x0

    .line 40
    const/4 v7, 0x0

    .line 41
    invoke-static/range {v1 .. v9}, Lcom/opay/team/newhome/home/ImageLottieView;->n(Lcom/opay/team/newhome/home/ImageLottieView;Ljava/lang/String;IIZZZILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$LargeImageBannerViewHolder;->a:Lcj2;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcj2;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "getRoot(...)"

    .line 51
    .line 52
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$LargeImageBannerViewHolder;->b:Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder;

    .line 56
    .line 57
    new-instance v2, Lcom/opay/team/newhome/adapter/a;

    .line 58
    .line 59
    invoke-direct {v2, p1, v1}, Lcom/opay/team/newhome/adapter/a;-><init>(Lcom/opay/team/newhome/bean/HomeAdData;Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder;)V

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$LargeImageBannerViewHolder;->a:Lcj2;

    .line 66
    .line 67
    iget-object v1, v0, Lcj2;->d:Landroid/widget/TextView;

    .line 68
    .line 69
    iget-object v0, v0, Lcj2;->c:Landroid/widget/TextView;

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/opay/team/newhome/bean/HomeAdData;->a()Lcom/opay/team/newhome/bean/NewBusinessData;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p0, v1, v0, p1}, Lcom/opay/team/newhome/adapter/NewHomeBannerViewHolder$LargeImageBannerViewHolder;->b(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/opay/team/newhome/bean/NewBusinessData;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method
