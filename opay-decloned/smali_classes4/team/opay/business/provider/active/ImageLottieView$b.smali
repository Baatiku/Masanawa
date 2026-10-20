.class public final Lteam/opay/business/provider/active/ImageLottieView$b;
.super Lcom/airbnb/lottie/TextDelegate;
.source "ImageLottieView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/provider/active/ImageLottieView;->z(Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;Ljava/lang/String;)V
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
        "team/opay/business/provider/active/ImageLottieView$b",
        "Lcom/airbnb/lottie/TextDelegate;",
        "",
        "layerName",
        "input",
        "getText",
        "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;",
        "business-provider_release"
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
.field public final synthetic a:Lteam/opay/business/provider/active/AdItem;


# direct methods
.method public constructor <init>(Lteam/opay/business/provider/active/ImageLottieView;Lteam/opay/business/provider/active/AdItem;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lteam/opay/business/provider/active/ImageLottieView$b;->a:Lteam/opay/business/provider/active/AdItem;

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
    .locals 1

    .line 1
    const-string v0, "text_01"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object p1, p0, Lteam/opay/business/provider/active/ImageLottieView$b;->a:Lteam/opay/business/provider/active/AdItem;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lteam/opay/business/provider/active/AdItem;->getTitle()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    :cond_0
    const-string p1, ""

    .line 20
    .line 21
    :cond_1
    return-object p1

    .line 22
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/TextDelegate;->getText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-object p1
.end method
