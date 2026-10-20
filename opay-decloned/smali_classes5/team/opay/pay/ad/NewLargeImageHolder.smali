.class public final Lteam/opay/pay/ad/NewLargeImageHolder;
.super Lteam/opay/pay/ad/BannerViewHoler;
.source "NewLargeImageHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\'\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0011\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0011\u0010\u0016\u001a\u0004\u0018\u00010\u0013H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0015R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0019R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u001aR*\u0010!\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u001b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 \u00a8\u0006\""
    }
    d2 = {
        "Lteam/opay/pay/ad/NewLargeImageHolder;",
        "Lteam/opay/pay/ad/BannerViewHoler;",
        "Lcga;",
        "binding",
        "Lteam/opay/pay/ad/BannerHolderData;",
        "bannerInfo",
        "Lteam/opay/pay/ad/ODBannerViewReporer;",
        "reporter",
        "<init>",
        "(Lcga;Lteam/opay/pay/ad/BannerHolderData;Lteam/opay/pay/ad/ODBannerViewReporer;)V",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "holder",
        "Lteam/opay/odialog/net/AdDataItem;",
        "data",
        "",
        "position",
        "",
        "d",
        "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lteam/opay/odialog/net/AdDataItem;I)V",
        "Landroid/widget/TextView;",
        "b",
        "()Landroid/widget/TextView;",
        "c",
        "a",
        "Lcga;",
        "Lteam/opay/pay/ad/BannerHolderData;",
        "Lteam/opay/pay/ad/ODBannerViewReporer;",
        "Lkotlin/Function0;",
        "Lkotlin/jvm/functions/Function0;",
        "getOnClickListener",
        "()Lkotlin/jvm/functions/Function0;",
        "setOnClickListener",
        "(Lkotlin/jvm/functions/Function0;)V",
        "onClickListener",
        "advertisement_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcga;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lteam/opay/pay/ad/BannerHolderData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lteam/opay/pay/ad/ODBannerViewReporer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcga;Lteam/opay/pay/ad/BannerHolderData;Lteam/opay/pay/ad/ODBannerViewReporer;)V
    .locals 2
    .param p1    # Lcga;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/ad/BannerHolderData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/pay/ad/ODBannerViewReporer;
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
    const-string v0, "bannerInfo"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "reporter"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcga;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "binding.root"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, v0}, Lteam/opay/pay/ad/BannerViewHoler;-><init>(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lteam/opay/pay/ad/NewLargeImageHolder;->a:Lcga;

    .line 29
    .line 30
    iput-object p2, p0, Lteam/opay/pay/ad/NewLargeImageHolder;->b:Lteam/opay/pay/ad/BannerHolderData;

    .line 31
    .line 32
    iput-object p3, p0, Lteam/opay/pay/ad/NewLargeImageHolder;->c:Lteam/opay/pay/ad/ODBannerViewReporer;

    .line 33
    .line 34
    return-void
.end method

.method public static synthetic e(Lteam/opay/pay/ad/NewLargeImageHolder;Lteam/opay/odialog/net/AdDataItem;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/ad/NewLargeImageHolder;->f(Lteam/opay/pay/ad/NewLargeImageHolder;Lteam/opay/odialog/net/AdDataItem;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final f(Lteam/opay/pay/ad/NewLargeImageHolder;Lteam/opay/odialog/net/AdDataItem;Landroid/view/View;)V
    .locals 3

    .line 1
    const-string p2, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "$data"

    .line 7
    .line 8
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lteam/opay/pay/ad/NewLargeImageHolder;->d:Lkotlin/jvm/functions/Function0;

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    :cond_0
    sget-object p2, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 19
    .line 20
    const-class v0, Lteam/opay/swarmfoundation/action/IActionManager;

    .line 21
    .line 22
    invoke-virtual {p2, v0}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    check-cast p2, Lteam/opay/swarmfoundation/action/IActionManager;

    .line 27
    .line 28
    if-eqz p2, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lteam/opay/pay/ad/NewLargeImageHolder;->a:Lcga;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcga;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "binding.root.context"

    .line 41
    .line 42
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lteam/opay/odialog/net/AdDataItem;->getActionWrapper()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-nez v1, :cond_1

    .line 50
    .line 51
    const-string v1, ""

    .line 52
    .line 53
    :cond_1
    iget-object v2, p0, Lteam/opay/pay/ad/NewLargeImageHolder;->b:Lteam/opay/pay/ad/BannerHolderData;

    .line 54
    .line 55
    invoke-virtual {v2}, Lteam/opay/pay/ad/BannerHolderData;->d()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-interface {p2, v0, v1, v2}, Lteam/opay/swarmfoundation/action/IActionManager;->open(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_2
    iget-object p0, p0, Lteam/opay/pay/ad/NewLargeImageHolder;->c:Lteam/opay/pay/ad/ODBannerViewReporer;

    .line 63
    .line 64
    invoke-virtual {p0, p1}, Lteam/opay/pay/ad/ODBannerViewReporer;->i(Lteam/opay/odialog/net/AdDataItem;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method


# virtual methods
.method public b()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/ad/NewLargeImageHolder;->a:Lcga;

    .line 2
    .line 3
    iget-object v0, v0, Lcga;->c:Landroid/widget/TextView;

    .line 4
    .line 5
    return-object v0
.end method

.method public c()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/ad/NewLargeImageHolder;->a:Lcga;

    .line 2
    .line 3
    iget-object v0, v0, Lcga;->d:Landroid/widget/TextView;

    .line 4
    .line 5
    return-object v0
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lteam/opay/odialog/net/AdDataItem;I)V
    .locals 9
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/odialog/net/AdDataItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "data"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2, p3}, Lteam/opay/pay/ad/BannerViewHoler;->d(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lteam/opay/odialog/net/AdDataItem;I)V

    .line 12
    .line 13
    .line 14
    iget-object p3, p0, Lteam/opay/pay/ad/NewLargeImageHolder;->a:Lcga;

    .line 15
    .line 16
    iget-object v0, p3, Lcga;->b:Lcom/opay/team/newhome/home/ImageLottieView;

    .line 17
    .line 18
    const-string p3, "binding.adImageNew"

    .line 19
    .line 20
    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Lteam/opay/odialog/net/AdDataItem;->getImageSuperscriptUrlWrapper()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    if-nez p3, :cond_0

    .line 28
    .line 29
    const-string p3, ""

    .line 30
    .line 31
    :cond_0
    move-object v1, p3

    .line 32
    sget v2, Lteam/opay/odialog/R$drawable;->od_shape_image_place_holder:I

    .line 33
    .line 34
    iget-object p3, p0, Lteam/opay/pay/ad/NewLargeImageHolder;->b:Lteam/opay/pay/ad/BannerHolderData;

    .line 35
    .line 36
    invoke-virtual {p3}, Lteam/opay/pay/ad/BannerHolderData;->f()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    const/16 v7, 0x38

    .line 41
    .line 42
    const/4 v8, 0x0

    .line 43
    const/4 v4, 0x0

    .line 44
    const/4 v5, 0x0

    .line 45
    const/4 v6, 0x0

    .line 46
    invoke-static/range {v0 .. v8}, Lcom/opay/team/newhome/home/ImageLottieView;->n(Lcom/opay/team/newhome/home/ImageLottieView;Ljava/lang/String;IIZZZILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 50
    .line 51
    new-instance p3, Lqq9;

    .line 52
    .line 53
    invoke-direct {p3, p0, p2}, Lqq9;-><init>(Lteam/opay/pay/ad/NewLargeImageHolder;Lteam/opay/odialog/net/AdDataItem;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method
