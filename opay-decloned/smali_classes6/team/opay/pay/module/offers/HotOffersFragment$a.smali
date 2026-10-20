.class public final Lteam/opay/pay/module/offers/HotOffersFragment$a;
.super Lcom/airbnb/lottie/TextDelegate;
.source "HotOffersFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/module/offers/HotOffersFragment;->addObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J#\u0010\u0005\u001a\u00020\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "team/opay/pay/module/offers/HotOffersFragment$a",
        "Lcom/airbnb/lottie/TextDelegate;",
        "",
        "layerName",
        "input",
        "getText",
        "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;",
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
.field public final synthetic a:Lteam/opay/pay/api/QueryVoucherItem;


# direct methods
.method public constructor <init>(Lcom/opay/team/newhome/home/ImageLottieView;Lteam/opay/pay/api/QueryVoucherItem;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lteam/opay/pay/module/offers/HotOffersFragment$a;->a:Lteam/opay/pay/api/QueryVoucherItem;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/TextDelegate;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/module/offers/HotOffersFragment$a;->a:Lteam/opay/pay/api/QueryVoucherItem;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/api/QueryVoucherItem;->getDiscountedAmount()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "layerName:"

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, " discountedAmount:"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v0, "text_01"

    .line 29
    .line 30
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-object p1, p0, Lteam/opay/pay/module/offers/HotOffersFragment$a;->a:Lteam/opay/pay/api/QueryVoucherItem;

    .line 37
    .line 38
    invoke-virtual {p1}, Lteam/opay/pay/api/QueryVoucherItem;->getDiscountedAmount()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-nez p1, :cond_1

    .line 43
    .line 44
    const-string p1, ""

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/TextDelegate;->getText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string p2, "getText(...)"

    .line 52
    .line 53
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    :goto_0
    return-object p1
.end method
