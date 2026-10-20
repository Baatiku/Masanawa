.class public final Lcom/opay/team/newhome/home/kbox/KBoxBigVoucherViewHolder;
.super Lcom/opay/team/newhome/home/kbox/KBoxVoucherViewHolder;
.source "KBoxBigVoucherViewHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/opay/team/newhome/home/kbox/KBoxBigVoucherViewHolder;",
        "Lcom/opay/team/newhome/home/kbox/KBoxVoucherViewHolder;",
        "Lrja;",
        "binding",
        "<init>",
        "(Lrja;)V",
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


# direct methods
.method public constructor <init>(Lrja;)V
    .locals 2
    .param p1    # Lrja;
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
    invoke-direct {p0, p1}, Lcom/opay/team/newhome/home/kbox/KBoxVoucherViewHolder;-><init>(Lrja;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p1, Lrja;->h:Landroid/view/View;

    .line 10
    .line 11
    const-string v1, "voucherLeftBg"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p1, Lrja;->i:Landroid/view/View;

    .line 17
    .line 18
    const-string v1, "voucherRightBg"

    .line 19
    .line 20
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-virtual {p0, v0, p1, v1}, Lcom/opay/team/newhome/home/kbox/KBoxVoucherViewHolder;->q(Landroid/view/View;Landroid/view/View;Z)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
