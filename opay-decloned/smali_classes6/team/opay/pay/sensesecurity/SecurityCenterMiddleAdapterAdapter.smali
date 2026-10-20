.class public final Lteam/opay/pay/sensesecurity/SecurityCenterMiddleAdapterAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SecurityCenterMiddleAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lteam/opay/pay/sensesecurity/SecurityCenterLikeHomeItem;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J!\u0010\t\u001a\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lteam/opay/pay/sensesecurity/SecurityCenterMiddleAdapterAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lteam/opay/pay/sensesecurity/SecurityCenterLikeHomeItem;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "<init>",
        "()V",
        "helper",
        "item",
        "",
        "k",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/sensesecurity/SecurityCenterLikeHomeItem;)V",
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
    sget v0, Lteam/opay/pay/R$layout;->osdk_security_center_middle_item:I

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
    check-cast p2, Lteam/opay/pay/sensesecurity/SecurityCenterLikeHomeItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/sensesecurity/SecurityCenterMiddleAdapterAdapter;->k(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/sensesecurity/SecurityCenterLikeHomeItem;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public k(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/sensesecurity/SecurityCenterLikeHomeItem;)V
    .locals 13
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/sensesecurity/SecurityCenterLikeHomeItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    sget v0, Lteam/opay/pay/R$id;->home_head_service_img:I

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    move-object v1, v0

    .line 13
    check-cast v1, Lcom/opay/team/newhome/home/ImageLottieView;

    .line 14
    .line 15
    sget-object v0, Lc03;->a:Lc03;

    .line 16
    .line 17
    invoke-virtual {v0}, Lc03;->c()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    sget v0, Lteam/opay/pay/R$color;->osdk_home_first_tint:I

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Lcom/opay/team/newhome/home/ImageLottieView;->setTintColor(I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    const-string v0, ""

    .line 29
    .line 30
    if-eqz p2, :cond_1

    .line 31
    .line 32
    invoke-virtual {p2}, Lteam/opay/pay/sensesecurity/SecurityCenterLikeHomeItem;->getDiverseImgUrl()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    if-nez v2, :cond_2

    .line 37
    .line 38
    :cond_1
    move-object v2, v0

    .line 39
    :cond_2
    sget v3, Lteam/opay/pay/R$mipmap;->osdk_logo_place_holder:I

    .line 40
    .line 41
    const/16 v8, 0x3c

    .line 42
    .line 43
    const/4 v9, 0x0

    .line 44
    const/4 v4, 0x0

    .line 45
    const/4 v5, 0x0

    .line 46
    const/4 v6, 0x0

    .line 47
    const/4 v7, 0x0

    .line 48
    invoke-static/range {v1 .. v9}, Lcom/opay/team/newhome/home/ImageLottieView;->n(Lcom/opay/team/newhome/home/ImageLottieView;Ljava/lang/String;IIZZZILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    sget v1, Lteam/opay/pay/R$id;->home_head_service_name:I

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    if-eqz p2, :cond_3

    .line 55
    .line 56
    invoke-virtual {p2}, Lteam/opay/pay/sensesecurity/SecurityCenterLikeHomeItem;->getName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    move-object v3, v2

    .line 62
    :goto_0
    invoke-virtual {p1, v1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 63
    .line 64
    .line 65
    if-eqz p2, :cond_4

    .line 66
    .line 67
    invoke-virtual {p2}, Lteam/opay/pay/sensesecurity/SecurityCenterLikeHomeItem;->getImageSuperscriptUrl()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    :cond_4
    const/4 p2, 0x0

    .line 72
    if-eqz v2, :cond_5

    .line 73
    .line 74
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-lez v1, :cond_5

    .line 79
    .line 80
    const/4 p2, 0x1

    .line 81
    :cond_5
    sget v1, Lteam/opay/pay/R$id;->hot_img:I

    .line 82
    .line 83
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    move-object v4, v3

    .line 88
    check-cast v4, Lcom/opay/team/newhome/home/ImageLottieView;

    .line 89
    .line 90
    if-eqz p2, :cond_7

    .line 91
    .line 92
    if-nez v2, :cond_6

    .line 93
    .line 94
    move-object v5, v0

    .line 95
    goto :goto_1

    .line 96
    :cond_6
    move-object v5, v2

    .line 97
    :goto_1
    const/16 v11, 0x36

    .line 98
    .line 99
    const/4 v12, 0x0

    .line 100
    const/4 v6, 0x0

    .line 101
    const/4 v7, 0x0

    .line 102
    const/4 v8, 0x0

    .line 103
    const/4 v9, 0x0

    .line 104
    const/4 v10, 0x0

    .line 105
    invoke-static/range {v4 .. v12}, Lcom/opay/team/newhome/home/ImageLottieView;->n(Lcom/opay/team/newhome/home/ImageLottieView;Ljava/lang/String;IIZZZILjava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    :cond_7
    invoke-virtual {p1, v1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 109
    .line 110
    .line 111
    return-void
.end method
