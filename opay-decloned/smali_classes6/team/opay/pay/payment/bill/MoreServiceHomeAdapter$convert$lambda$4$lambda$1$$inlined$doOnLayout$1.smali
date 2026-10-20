.class public final Lteam/opay/pay/payment/bill/MoreServiceHomeAdapter$convert$lambda$4$lambda$1$$inlined$doOnLayout$1;
.super Ljava/lang/Object;
.source "View.kt"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/payment/bill/MoreServiceHomeAdapter;->k(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000;\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0008\u0008\n\u0002\u0008\u0008\n\u0002\u0008\u0008\n\u0002\u0008\u0008\n\u0002\u0008\u0008\n\u0002\u0008\u0008\n\u0002\u0008\t*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001JP\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007H\u0016\u00a8\u0006\u000f\u00b8\u0006\u0010"
    }
    d2 = {
        "androidx/core/view/ViewKt$doOnNextLayout$1",
        "Landroid/view/View$OnLayoutChangeListener;",
        "onLayoutChange",
        "",
        "view",
        "Landroid/view/View;",
        "left",
        "",
        "top",
        "right",
        "bottom",
        "oldLeft",
        "oldTop",
        "oldRight",
        "oldBottom",
        "core-ktx_release",
        "androidx/core/view/ViewKt$doOnLayout$$inlined$doOnNextLayout$1"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/pay/ad/OpayAdBannerView;

.field public final synthetic b:Lteam/opay/pay/payment/bill/MoreItemData;


# direct methods
.method public constructor <init>(Lteam/opay/pay/ad/OpayAdBannerView;Lteam/opay/pay/payment/bill/MoreItemData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/payment/bill/MoreServiceHomeAdapter$convert$lambda$4$lambda$1$$inlined$doOnLayout$1;->a:Lteam/opay/pay/ad/OpayAdBannerView;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/payment/bill/MoreServiceHomeAdapter$convert$lambda$4$lambda$1$$inlined$doOnLayout$1;->b:Lteam/opay/pay/payment/bill/MoreItemData;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p2, "view"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lteam/opay/pay/payment/bill/MoreServiceHomeAdapter$convert$lambda$4$lambda$1$$inlined$doOnLayout$1;->a:Lteam/opay/pay/ad/OpayAdBannerView;

    .line 10
    .line 11
    iget-object p2, p0, Lteam/opay/pay/payment/bill/MoreServiceHomeAdapter$convert$lambda$4$lambda$1$$inlined$doOnLayout$1;->b:Lteam/opay/pay/payment/bill/MoreItemData;

    .line 12
    .line 13
    invoke-virtual {p2}, Lteam/opay/pay/payment/bill/MoreItemData;->a()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    :cond_0
    invoke-virtual {p1, p2}, Lteam/opay/pay/ad/OpayAdBannerView;->b(Ljava/util/List;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
