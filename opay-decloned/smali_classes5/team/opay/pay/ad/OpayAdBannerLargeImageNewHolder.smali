.class public final Lteam/opay/pay/ad/OpayAdBannerLargeImageNewHolder;
.super Ljava/lang/Object;
.source "OpayAdBannerLargeImageNewHolder.kt"

# interfaces
.implements Ltzf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ltzf<",
        "Lteam/opay/odialog/net/AdDataItem;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\'\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u001f\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u0008\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u001cR#\u0010#\u001a\n \u001e*\u0004\u0018\u00010\u001d0\u001d8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"R*\u0010+\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010$8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008%\u0010&\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*\u00a8\u0006,"
    }
    d2 = {
        "Lteam/opay/pay/ad/OpayAdBannerLargeImageNewHolder;",
        "Ltzf;",
        "Lteam/opay/odialog/net/AdDataItem;",
        "Landroid/content/Context;",
        "context",
        "Lteam/opay/pay/ad/BannerHolderData;",
        "bannerInfo",
        "Lteam/opay/pay/ad/ODBannerViewReporer;",
        "reporter",
        "<init>",
        "(Landroid/content/Context;Lteam/opay/pay/ad/BannerHolderData;Lteam/opay/pay/ad/ODBannerViewReporer;)V",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "holder",
        "data",
        "",
        "position",
        "",
        "g",
        "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lteam/opay/odialog/net/AdDataItem;I)V",
        "Landroid/view/ViewGroup;",
        "container",
        "viewType",
        "c",
        "(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "a",
        "Landroid/content/Context;",
        "b",
        "Lteam/opay/pay/ad/BannerHolderData;",
        "Lteam/opay/pay/ad/ODBannerViewReporer;",
        "Landroid/view/LayoutInflater;",
        "kotlin.jvm.PlatformType",
        "d",
        "Lid8;",
        "f",
        "()Landroid/view/LayoutInflater;",
        "layoutInflater",
        "Lkotlin/Function0;",
        "e",
        "Lkotlin/jvm/functions/Function0;",
        "getOnClickListener",
        "()Lkotlin/jvm/functions/Function0;",
        "h",
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
.field public final a:Landroid/content/Context;
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

.field public final d:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Lkotlin/jvm/functions/Function0;
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
.method public constructor <init>(Landroid/content/Context;Lteam/opay/pay/ad/BannerHolderData;Lteam/opay/pay/ad/ODBannerViewReporer;)V
    .locals 1
    .param p1    # Landroid/content/Context;
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
    const-string v0, "context"

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lteam/opay/pay/ad/OpayAdBannerLargeImageNewHolder;->a:Landroid/content/Context;

    .line 20
    .line 21
    iput-object p2, p0, Lteam/opay/pay/ad/OpayAdBannerLargeImageNewHolder;->b:Lteam/opay/pay/ad/BannerHolderData;

    .line 22
    .line 23
    iput-object p3, p0, Lteam/opay/pay/ad/OpayAdBannerLargeImageNewHolder;->c:Lteam/opay/pay/ad/ODBannerViewReporer;

    .line 24
    .line 25
    new-instance p1, Lteam/opay/pay/ad/OpayAdBannerLargeImageNewHolder$layoutInflater$2;

    .line 26
    .line 27
    invoke-direct {p1, p0}, Lteam/opay/pay/ad/OpayAdBannerLargeImageNewHolder$layoutInflater$2;-><init>(Lteam/opay/pay/ad/OpayAdBannerLargeImageNewHolder;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lteam/opay/pay/ad/OpayAdBannerLargeImageNewHolder;->d:Lid8;

    .line 35
    .line 36
    return-void
.end method

.method public static final synthetic d(Lteam/opay/pay/ad/OpayAdBannerLargeImageNewHolder;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/ad/OpayAdBannerLargeImageNewHolder;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method private final f()Landroid/view/LayoutInflater;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/ad/OpayAdBannerLargeImageNewHolder;->d:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/LayoutInflater;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p2, Lteam/opay/odialog/net/AdDataItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/pay/ad/OpayAdBannerLargeImageNewHolder;->g(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lteam/opay/odialog/net/AdDataItem;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic b(ILjava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p2, Lteam/opay/odialog/net/AdDataItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/ad/OpayAdBannerLargeImageNewHolder;->e(ILteam/opay/odialog/net/AdDataItem;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public c(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p2, "container"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lteam/opay/pay/ad/OpayAdBannerLargeImageNewHolder;->f()Landroid/view/LayoutInflater;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-static {p2, p1, v0}, Lcga;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcga;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string p2, "inflate(layoutInflater, container, false)"

    .line 16
    .line 17
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance p2, Lteam/opay/pay/ad/NewLargeImageHolder;

    .line 21
    .line 22
    iget-object v0, p0, Lteam/opay/pay/ad/OpayAdBannerLargeImageNewHolder;->b:Lteam/opay/pay/ad/BannerHolderData;

    .line 23
    .line 24
    iget-object v1, p0, Lteam/opay/pay/ad/OpayAdBannerLargeImageNewHolder;->c:Lteam/opay/pay/ad/ODBannerViewReporer;

    .line 25
    .line 26
    invoke-direct {p2, p1, v0, v1}, Lteam/opay/pay/ad/NewLargeImageHolder;-><init>(Lcga;Lteam/opay/pay/ad/BannerHolderData;Lteam/opay/pay/ad/ODBannerViewReporer;)V

    .line 27
    .line 28
    .line 29
    return-object p2
.end method

.method public e(ILteam/opay/odialog/net/AdDataItem;)I
    .locals 0
    .param p2    # Lteam/opay/odialog/net/AdDataItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1, p2}, Ltzf$a;->a(Ltzf;ILjava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public g(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lteam/opay/odialog/net/AdDataItem;I)V
    .locals 1
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
    move-object v0, p1

    .line 12
    check-cast v0, Lteam/opay/pay/ad/NewLargeImageHolder;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2, p3}, Lteam/opay/pay/ad/NewLargeImageHolder;->d(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lteam/opay/odialog/net/AdDataItem;I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final h(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/ad/OpayAdBannerLargeImageNewHolder;->e:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method
