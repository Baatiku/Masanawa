.class public final Lteam/opay/business/provider/active/LoopBannerView$b;
.super Landroid/view/ViewOutlineProvider;
.source "LoopBannerView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/provider/active/LoopBannerView;->H()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J#\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "team/opay/business/provider/active/LoopBannerView$b",
        "Landroid/view/ViewOutlineProvider;",
        "Landroid/view/View;",
        "view",
        "Landroid/graphics/Outline;",
        "outline",
        "",
        "getOutline",
        "(Landroid/view/View;Landroid/graphics/Outline;)V",
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
.field public final synthetic a:Lteam/opay/business/provider/active/LoopBannerView;


# direct methods
.method public constructor <init>(Lteam/opay/business/provider/active/LoopBannerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/business/provider/active/LoopBannerView$b;->a:Lteam/opay/business/provider/active/LoopBannerView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 8

    .line 1
    if-eqz p2, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    move v5, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v5, 0x0

    .line 13
    :goto_0
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    move v6, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    const/4 v6, 0x0

    .line 22
    :goto_1
    iget-object p1, p0, Lteam/opay/business/provider/active/LoopBannerView$b;->a:Lteam/opay/business/provider/active/LoopBannerView;

    .line 23
    .line 24
    invoke-static {p1}, Lteam/opay/business/provider/active/LoopBannerView;->s(Lteam/opay/business/provider/active/LoopBannerView;)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    int-to-float v7, p1

    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v4, 0x0

    .line 31
    move-object v2, p2

    .line 32
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 33
    .line 34
    .line 35
    :cond_2
    return-void
.end method
