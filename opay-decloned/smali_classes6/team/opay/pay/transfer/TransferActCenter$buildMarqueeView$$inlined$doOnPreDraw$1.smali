.class public final Lteam/opay/pay/transfer/TransferActCenter$buildMarqueeView$$inlined$doOnPreDraw$1;
.super Ljava/lang/Object;
.source "View.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/transfer/TransferActCenter;->e(Lteam/opay/pay/wallet/view/MarqueeView;Landroid/view/View;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "androidx/core/view/ViewKt$doOnPreDraw$1"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lteam/opay/pay/transfer/TransferActCenter;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lteam/opay/pay/wallet/view/MarqueeView;

.field public final synthetic e:I


# direct methods
.method public constructor <init>(Landroid/view/View;Lteam/opay/pay/transfer/TransferActCenter;Ljava/util/List;Lteam/opay/pay/wallet/view/MarqueeView;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/transfer/TransferActCenter$buildMarqueeView$$inlined$doOnPreDraw$1;->a:Landroid/view/View;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/transfer/TransferActCenter$buildMarqueeView$$inlined$doOnPreDraw$1;->b:Lteam/opay/pay/transfer/TransferActCenter;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/transfer/TransferActCenter$buildMarqueeView$$inlined$doOnPreDraw$1;->c:Ljava/util/List;

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/pay/transfer/TransferActCenter$buildMarqueeView$$inlined$doOnPreDraw$1;->d:Lteam/opay/pay/wallet/view/MarqueeView;

    .line 8
    .line 9
    iput p5, p0, Lteam/opay/pay/transfer/TransferActCenter$buildMarqueeView$$inlined$doOnPreDraw$1;->e:I

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/TransferActCenter$buildMarqueeView$$inlined$doOnPreDraw$1;->b:Lteam/opay/pay/transfer/TransferActCenter;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/transfer/TransferActCenter$buildMarqueeView$$inlined$doOnPreDraw$1;->c:Ljava/util/List;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/pay/transfer/TransferActCenter$buildMarqueeView$$inlined$doOnPreDraw$1;->d:Lteam/opay/pay/wallet/view/MarqueeView;

    .line 6
    .line 7
    iget v3, p0, Lteam/opay/pay/transfer/TransferActCenter$buildMarqueeView$$inlined$doOnPreDraw$1;->e:I

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lteam/opay/pay/transfer/TransferActCenter;->d(Lteam/opay/pay/transfer/TransferActCenter;Ljava/util/List;Lteam/opay/pay/wallet/view/MarqueeView;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
