.class public final Lteam/opay/core/card/CardDesignPagerAdapter$CardDesignImageViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CardDesignPagerAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/core/card/CardDesignPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CardDesignImageViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lteam/opay/core/card/CardDesignPagerAdapter$CardDesignImageViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lkj7;",
        "binding",
        "<init>",
        "(Lteam/opay/core/card/CardDesignPagerAdapter;Lkj7;)V",
        "Lteam/opay/core/card/CardDesignListData;",
        "data",
        "",
        "a",
        "(Lteam/opay/core/card/CardDesignListData;)V",
        "Lcom/opay/team/newhome/home/ImageLottieView;",
        "view",
        "",
        "url",
        "b",
        "(Lcom/opay/team/newhome/home/ImageLottieView;Ljava/lang/String;)V",
        "Lkj7;",
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
.field public final a:Lkj7;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final synthetic b:Lteam/opay/core/card/CardDesignPagerAdapter;


# direct methods
.method public constructor <init>(Lteam/opay/core/card/CardDesignPagerAdapter;Lkj7;)V
    .locals 1
    .param p1    # Lteam/opay/core/card/CardDesignPagerAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkj7;",
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
    iput-object p1, p0, Lteam/opay/core/card/CardDesignPagerAdapter$CardDesignImageViewHolder;->b:Lteam/opay/core/card/CardDesignPagerAdapter;

    .line 7
    .line 8
    invoke-virtual {p2}, Lkj7;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Lteam/opay/core/card/CardDesignPagerAdapter$CardDesignImageViewHolder;->a:Lkj7;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a(Lteam/opay/core/card/CardDesignListData;)V
    .locals 4
    .param p1    # Lteam/opay/core/card/CardDesignListData;
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
    iget-object v0, p0, Lteam/opay/core/card/CardDesignPagerAdapter$CardDesignImageViewHolder;->a:Lkj7;

    .line 7
    .line 8
    iget-object v0, v0, Lkj7;->b:Lcom/opay/team/newhome/home/ImageLottieView;

    .line 9
    .line 10
    const-string v1, "cardIC"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lteam/opay/core/card/CardDesignListData;->getCardDesignUrl()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    const-string v1, ""

    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0, v0, v1}, Lteam/opay/core/card/CardDesignPagerAdapter$CardDesignImageViewHolder;->b(Lcom/opay/team/newhome/home/ImageLottieView;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lteam/opay/core/card/CardDesignListData;->getExpireTimestamp()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "cardTimeTips"

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    iget-object v0, p0, Lteam/opay/core/card/CardDesignPagerAdapter$CardDesignImageViewHolder;->a:Lkj7;

    .line 42
    .line 43
    iget-object v0, v0, Lkj7;->c:Landroid/widget/TextView;

    .line 44
    .line 45
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 49
    .line 50
    .line 51
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 52
    .line 53
    const-string v1, "MMM dd, yyyy"

    .line 54
    .line 55
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 56
    .line 57
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 58
    .line 59
    .line 60
    new-instance v1, Ljava/util/Date;

    .line 61
    .line 62
    invoke-virtual {p1}, Lteam/opay/core/card/CardDesignListData;->getExpireTimestamp()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {p1}, Lkotlin/text/StringsKt;->y(Ljava/lang/String;)Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 73
    .line 74
    .line 75
    move-result-wide v2

    .line 76
    goto :goto_0

    .line 77
    :cond_2
    const-wide/16 v2, 0x0

    .line 78
    .line 79
    :goto_0
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iget-object v0, p0, Lteam/opay/core/card/CardDesignPagerAdapter$CardDesignImageViewHolder;->a:Lkj7;

    .line 87
    .line 88
    iget-object v0, v0, Lkj7;->c:Landroid/widget/TextView;

    .line 89
    .line 90
    sget v1, Lteam/opay/pay/R$string;->osdk_available_till:I

    .line 91
    .line 92
    const/4 v2, 0x1

    .line 93
    new-array v2, v2, [Ljava/lang/Object;

    .line 94
    .line 95
    const/4 v3, 0x0

    .line 96
    aput-object p1, v2, v3

    .line 97
    .line 98
    invoke-static {v1, v2}, Ljmf;->l(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-static {p1}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_3
    :goto_1
    iget-object p1, p0, Lteam/opay/core/card/CardDesignPagerAdapter$CardDesignImageViewHolder;->a:Lkj7;

    .line 111
    .line 112
    iget-object p1, p1, Lkj7;->c:Landroid/widget/TextView;

    .line 113
    .line 114
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 118
    .line 119
    .line 120
    :goto_2
    return-void
.end method

.method public final b(Lcom/opay/team/newhome/home/ImageLottieView;Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "cardWeb"

    .line 8
    .line 9
    const-string v2, ""

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lteam/opay/pay/envconfigapi/ConfigStorage;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v0, "/file/download?url="

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    new-instance v0, Lcom/bumptech/glide/load/model/GlideUrl;

    .line 36
    .line 37
    new-instance v1, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;

    .line 38
    .line 39
    invoke-direct {v1}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;-><init>()V

    .line 40
    .line 41
    .line 42
    new-instance v2, Lteam/opay/core/settings/SettingsStorage;

    .line 43
    .line 44
    invoke-static {}, Ljmf;->i()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-direct {v2, v3}, Lteam/opay/core/settings/SettingsStorage;-><init>(Landroid/content/Context;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Lteam/opay/core/settings/SettingsStorage;->e()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    const-string v3, "Authorization"

    .line 56
    .line 57
    invoke-virtual {v1, v3, v2}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/bumptech/glide/load/model/LazyHeaders$Builder;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->c()Lcom/bumptech/glide/load/model/LazyHeaders;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-direct {v0, p2, v1}, Lcom/bumptech/glide/load/model/GlideUrl;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/model/a;)V

    .line 66
    .line 67
    .line 68
    invoke-static {p1}, Lcom/bumptech/glide/a;->v(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestManager;->t(Ljava/lang/Object;)Ljpc;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    const/16 v0, 0x3a98

    .line 77
    .line 78
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->k0(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    check-cast p2, Ljpc;

    .line 83
    .line 84
    sget v0, Lteam/opay/pay/R$mipmap;->osdk_card_guide2:I

    .line 85
    .line 86
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->Z(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    check-cast p2, Ljpc;

    .line 91
    .line 92
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->n(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    check-cast p2, Ljpc;

    .line 97
    .line 98
    invoke-virtual {p2, p1}, Ljpc;->F0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 99
    .line 100
    .line 101
    return-void
.end method
