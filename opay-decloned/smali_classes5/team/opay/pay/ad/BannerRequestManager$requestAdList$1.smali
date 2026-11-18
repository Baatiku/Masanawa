.class final Lteam/opay/pay/ad/BannerRequestManager$requestAdList$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BannerRequestManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/ad/BannerRequestManager;->d(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Lteam/opay/odialog/net/AdDataItem;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "Lteam/opay/odialog/net/AdDataItem;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lteam/opay/pay/ad/BannerRequestManager;


# direct methods
.method public constructor <init>(Lteam/opay/pay/ad/BannerRequestManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/ad/BannerRequestManager$requestAdList$1;->this$0:Lteam/opay/pay/ad/BannerRequestManager;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lteam/opay/pay/ad/BannerRequestManager$requestAdList$1;->invoke(Ljava/util/List;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/odialog/net/AdDataItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    const-string v1, "banner"

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lteam/opay/pay/ad/BannerRequestManager$requestAdList$1;->this$0:Lteam/opay/pay/ad/BannerRequestManager;

    invoke-static {p1}, Lteam/opay/pay/ad/BannerRequestManager;->a(Lteam/opay/pay/ad/BannerRequestManager;)Lteam/opay/pay/ad/OpayAdBannerView;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-static {v0}, Le43;->b(Landroid/view/View;)V

    goto :goto_2

    .line 4
    :cond_1
    iget-object v2, p0, Lteam/opay/pay/ad/BannerRequestManager$requestAdList$1;->this$0:Lteam/opay/pay/ad/BannerRequestManager;

    invoke-static {v2}, Lteam/opay/pay/ad/BannerRequestManager;->a(Lteam/opay/pay/ad/BannerRequestManager;)Lteam/opay/pay/ad/OpayAdBannerView;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    invoke-virtual {v0, p1}, Lteam/opay/pay/ad/OpayAdBannerView;->b(Ljava/util/List;)V

    :goto_2
    return-void
.end method
