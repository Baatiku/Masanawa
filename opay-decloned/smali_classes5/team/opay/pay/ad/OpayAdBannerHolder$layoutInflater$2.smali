.class final Lteam/opay/pay/ad/OpayAdBannerHolder$layoutInflater$2;
.super Lkotlin/jvm/internal/Lambda;
.source "OpayAdBannerHolder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/ad/OpayAdBannerHolder;-><init>(Landroid/content/Context;Lteam/opay/pay/ad/BannerHolderData;Lteam/opay/pay/ad/ODBannerViewReporer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/view/LayoutInflater;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Landroid/view/LayoutInflater;",
        "kotlin.jvm.PlatformType",
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
.field final synthetic this$0:Lteam/opay/pay/ad/OpayAdBannerHolder;


# direct methods
.method public constructor <init>(Lteam/opay/pay/ad/OpayAdBannerHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/ad/OpayAdBannerHolder$layoutInflater$2;->this$0:Lteam/opay/pay/ad/OpayAdBannerHolder;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke()Landroid/view/LayoutInflater;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/ad/OpayAdBannerHolder$layoutInflater$2;->this$0:Lteam/opay/pay/ad/OpayAdBannerHolder;

    invoke-static {v0}, Lteam/opay/pay/ad/OpayAdBannerHolder;->f(Lteam/opay/pay/ad/OpayAdBannerHolder;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lteam/opay/pay/ad/OpayAdBannerHolder$layoutInflater$2;->invoke()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method
