.class public final Lcom/opay/team/newhome/me/OpayBannerViewHolder;
.super Lcom/opay/team/newhome/me/totalassets/TotalAssetsViewHolder;
.source "OpayBannerViewHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/opay/team/newhome/me/OpayBannerViewHolder;",
        "Lcom/opay/team/newhome/me/totalassets/TotalAssetsViewHolder;",
        "Loja;",
        "binding",
        "<init>",
        "(Loja;)V",
        "",
        "position",
        "Lcom/opay/team/newhome/bean/TotalAssetsItemData;",
        "data",
        "",
        "a",
        "(ILcom/opay/team/newhome/bean/TotalAssetsItemData;)V",
        "Loja;",
        "getBinding",
        "()Loja;",
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
.field public final a:Loja;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Loja;)V
    .locals 2
    .param p1    # Loja;
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
    invoke-virtual {p1}, Loja;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

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
    iput-object p1, p0, Lcom/opay/team/newhome/me/OpayBannerViewHolder;->a:Loja;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public a(ILcom/opay/team/newhome/bean/TotalAssetsItemData;)V
    .locals 0
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
    invoke-virtual {p2}, Lcom/opay/team/newhome/bean/TotalAssetsItemData;->a()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p2, p0, Lcom/opay/team/newhome/me/OpayBannerViewHolder;->a:Loja;

    .line 13
    .line 14
    iget-object p2, p2, Loja;->b:Lteam/opay/pay/ad/OpayAdBannerView;

    .line 15
    .line 16
    invoke-virtual {p2, p1}, Lteam/opay/pay/ad/OpayAdBannerView;->b(Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
