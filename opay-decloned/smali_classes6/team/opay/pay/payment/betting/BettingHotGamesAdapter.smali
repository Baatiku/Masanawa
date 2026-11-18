.class public final Lteam/opay/pay/payment/betting/BettingHotGamesAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "BettingHotGamesAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lteam/opay/core/api/graphql/CasinoList;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001f\u0010\t\u001a\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lteam/opay/pay/payment/betting/BettingHotGamesAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lteam/opay/core/api/graphql/CasinoList;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "<init>",
        "()V",
        "helper",
        "bean",
        "",
        "k",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/core/api/graphql/CasinoList;)V",
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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->fragment_betting_quick_item2:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lteam/opay/core/api/graphql/CasinoList;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/betting/BettingHotGamesAdapter;->k(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/core/api/graphql/CasinoList;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public k(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/core/api/graphql/CasinoList;)V
    .locals 8
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/api/graphql/CasinoList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "helper"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "bean"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget v0, Lteam/opay/pay/R$id;->ivPic:I

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/ImageView;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/bumptech/glide/a;->v(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p2}, Lteam/opay/core/api/graphql/CasinoList;->getGameImg()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->u(Ljava/lang/String;)Ljpc;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    sget v2, Lteam/opay/pay/R$mipmap;->osdk_logo_place_holder:I

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->Z(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljpc;

    .line 38
    .line 39
    new-instance v2, Lcom/bumptech/glide/load/MultiTransformation;

    .line 40
    .line 41
    new-instance v3, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    .line 42
    .line 43
    invoke-direct {v3}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>()V

    .line 44
    .line 45
    .line 46
    new-instance v4, Lteam/opay/pay/message/utils/GlideRoundedCornersTransformation;

    .line 47
    .line 48
    const/high16 v5, 0x41400000    # 12.0f

    .line 49
    .line 50
    invoke-static {v5}, Lkmf;->f(F)F

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    float-to-int v5, v5

    .line 55
    const/4 v6, 0x0

    .line 56
    sget-object v7, Lteam/opay/pay/message/utils/GlideRoundedCornersTransformation$CornerType;->TOP:Lteam/opay/pay/message/utils/GlideRoundedCornersTransformation$CornerType;

    .line 57
    .line 58
    invoke-direct {v4, v5, v6, v7}, Lteam/opay/pay/message/utils/GlideRoundedCornersTransformation;-><init>(IILteam/opay/pay/message/utils/GlideRoundedCornersTransformation$CornerType;)V

    .line 59
    .line 60
    .line 61
    const/4 v5, 0x2

    .line 62
    new-array v5, v5, [Locf;

    .line 63
    .line 64
    aput-object v3, v5, v6

    .line 65
    .line 66
    const/4 v3, 0x1

    .line 67
    aput-object v4, v5, v3

    .line 68
    .line 69
    invoke-direct {v2, v5}, Lcom/bumptech/glide/load/MultiTransformation;-><init>([Locf;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->l0(Locf;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Ljpc;

    .line 77
    .line 78
    invoke-virtual {v1, v0}, Ljpc;->F0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 79
    .line 80
    .line 81
    sget v0, Lteam/opay/pay/R$id;->tvName:I

    .line 82
    .line 83
    invoke-virtual {p2}, Lteam/opay/core/api/graphql/CasinoList;->getGameName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 88
    .line 89
    .line 90
    return-void
.end method
