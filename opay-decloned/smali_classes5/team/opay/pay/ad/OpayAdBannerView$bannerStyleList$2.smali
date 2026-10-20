.class final Lteam/opay/pay/ad/OpayAdBannerView$bannerStyleList$2;
.super Lkotlin/jvm/internal/Lambda;
.source "OpayAdBannerView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/ad/OpayAdBannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "+",
        "Lteam/opay/pay/ad/OpayBannerType;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lteam/opay/pay/ad/OpayBannerType;",
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


# static fields
.field public static final INSTANCE:Lteam/opay/pay/ad/OpayAdBannerView$bannerStyleList$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/pay/ad/OpayAdBannerView$bannerStyleList$2;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/ad/OpayAdBannerView$bannerStyleList$2;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lteam/opay/pay/ad/OpayAdBannerView$bannerStyleList$2;->INSTANCE:Lteam/opay/pay/ad/OpayAdBannerView$bannerStyleList$2;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/ad/OpayAdBannerView$bannerStyleList$2;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/pay/ad/OpayBannerType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Lteam/opay/pay/ad/OpayBannerType;

    sget-object v1, Lteam/opay/pay/ad/OpayBannerType;->NORMAL:Lteam/opay/pay/ad/OpayBannerType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lteam/opay/pay/ad/OpayBannerType;->BIGNOTICE:Lteam/opay/pay/ad/OpayBannerType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lteam/opay/pay/ad/OpayBannerType;->LARGE_IMAGE:Lteam/opay/pay/ad/OpayBannerType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 3
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
