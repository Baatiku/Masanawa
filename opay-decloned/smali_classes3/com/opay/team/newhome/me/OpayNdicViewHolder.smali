.class public final Lcom/opay/team/newhome/me/OpayNdicViewHolder;
.super Lcom/opay/team/newhome/me/totalassets/TotalAssetsViewHolder;
.source "OpayNdicViewHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001d\u0010\n\u001a\u00020\t2\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001f\u0010\u0010\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014R$\u0010\u001c\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/opay/team/newhome/me/OpayNdicViewHolder;",
        "Lcom/opay/team/newhome/me/totalassets/TotalAssetsViewHolder;",
        "Lfka;",
        "binding",
        "<init>",
        "(Lfka;)V",
        "",
        "Lteam/opay/odialog/net/AdDataItem;",
        "ads",
        "",
        "d",
        "(Ljava/util/List;)V",
        "",
        "position",
        "Lcom/opay/team/newhome/bean/TotalAssetsItemData;",
        "data",
        "a",
        "(ILcom/opay/team/newhome/bean/TotalAssetsItemData;)V",
        "Lfka;",
        "getBinding",
        "()Lfka;",
        "Lteam/opay/pay/ad/OpayAdBannerView;",
        "b",
        "Lteam/opay/pay/ad/OpayAdBannerView;",
        "c",
        "()Lteam/opay/pay/ad/OpayAdBannerView;",
        "setAdList",
        "(Lteam/opay/pay/ad/OpayAdBannerView;)V",
        "adList",
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
.field public final a:Lfka;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lteam/opay/pay/ad/OpayAdBannerView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lfka;)V
    .locals 2
    .param p1    # Lfka;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lfka;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "getRoot(...)"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0}, Lcom/opay/team/newhome/me/totalassets/TotalAssetsViewHolder;-><init>(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/opay/team/newhome/me/OpayNdicViewHolder;->a:Lfka;

    .line 19
    .line 20
    return-void
.end method

.method public static final synthetic b(Lcom/opay/team/newhome/me/OpayNdicViewHolder;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/opay/team/newhome/me/OpayNdicViewHolder;->d(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final d(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/odialog/net/AdDataItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/me/OpayNdicViewHolder;->b:Lteam/opay/pay/ad/OpayAdBannerView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lteam/opay/pay/ad/OpayAdBannerView;->b(Ljava/util/List;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method


# virtual methods
.method public a(ILcom/opay/team/newhome/bean/TotalAssetsItemData;)V
    .locals 5
    .param p2    # Lcom/opay/team/newhome/bean/TotalAssetsItemData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p1, "data"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 7
    .line 8
    sget v0, Lteam/opay/pay/R$id;->ad_list:I

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lteam/opay/pay/ad/OpayAdBannerView;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/opay/team/newhome/me/OpayNdicViewHolder;->b:Lteam/opay/pay/ad/OpayAdBannerView;

    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/opay/team/newhome/bean/TotalAssetsItemData;->a()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_7

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    goto/16 :goto_2

    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lcom/opay/team/newhome/me/OpayNdicViewHolder;->b:Lteam/opay/pay/ad/OpayAdBannerView;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {p2}, Lcom/opay/team/newhome/bean/TotalAssetsItemData;->a()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    if-nez p2, :cond_2

    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    return-void

    .line 53
    :cond_3
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Lteam/opay/odialog/net/AdDataItem;

    .line 58
    .line 59
    const-wide/16 v1, 0x0

    .line 60
    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    invoke-virtual {v0}, Lteam/opay/odialog/net/AdDataItem;->getAdpScale()Ljava/lang/Double;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 70
    .line 71
    .line 72
    move-result-wide v3

    .line 73
    goto :goto_0

    .line 74
    :cond_4
    move-wide v3, v1

    .line 75
    :goto_0
    cmpl-double v0, v3, v1

    .line 76
    .line 77
    if-lez v0, :cond_6

    .line 78
    .line 79
    iget-object p1, p0, Lcom/opay/team/newhome/me/OpayNdicViewHolder;->b:Lteam/opay/pay/ad/OpayAdBannerView;

    .line 80
    .line 81
    if-eqz p1, :cond_5

    .line 82
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string v1, "h,"

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, ":1"

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {p1, v0}, Lteam/opay/pay/ad/OpayAdBannerView;->setOpayBannerRatio(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :cond_5
    invoke-direct {p0, p2}, Lcom/opay/team/newhome/me/OpayNdicViewHolder;->d(Ljava/util/List;)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-static {v0}, Lcom/bumptech/glide/a;->u(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->c()Ljpc;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    const/4 v1, 0x0

    .line 125
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    check-cast v1, Lteam/opay/odialog/net/AdDataItem;

    .line 130
    .line 131
    invoke-virtual {v1}, Lteam/opay/odialog/net/AdDataItem;->getImg_url()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {v0, v1}, Ljpc;->M0(Ljava/lang/String;)Ljpc;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    new-instance v1, Lcom/opay/team/newhome/me/OpayNdicViewHolder$a;

    .line 140
    .line 141
    invoke-direct {v1, p1, p0, p2}, Lcom/opay/team/newhome/me/OpayNdicViewHolder$a;-><init>(Landroid/view/View;Lcom/opay/team/newhome/me/OpayNdicViewHolder;Ljava/util/List;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v1}, Ljpc;->C0(Llfe;)Llfe;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    :goto_1
    return-void

    .line 152
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/opay/team/newhome/me/OpayNdicViewHolder;->b:Lteam/opay/pay/ad/OpayAdBannerView;

    .line 153
    .line 154
    if-eqz p1, :cond_8

    .line 155
    .line 156
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 157
    .line 158
    .line 159
    :cond_8
    return-void
.end method

.method public final c()Lteam/opay/pay/ad/OpayAdBannerView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/me/OpayNdicViewHolder;->b:Lteam/opay/pay/ad/OpayAdBannerView;

    .line 2
    .line 3
    return-object v0
.end method
