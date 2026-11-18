.class public final Lteam/opay/core/card/CardContentButtonView$b;
.super Landroid/os/CountDownTimer;
.source "CardContentButtonView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/core/card/CardContentButtonView;->h(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "team/opay/core/card/CardContentButtonView$b",
        "Landroid/os/CountDownTimer;",
        "",
        "millisUntilFinished",
        "",
        "onTick",
        "(J)V",
        "onFinish",
        "()V",
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
.field public final synthetic a:Lteam/opay/core/card/CardContentButtonView;


# direct methods
.method public constructor <init>(JLteam/opay/core/card/CardContentButtonView;)V
    .locals 2

    .line 1
    iput-object p3, p0, Lteam/opay/core/card/CardContentButtonView$b;->a:Lteam/opay/core/card/CardContentButtonView;

    .line 2
    .line 3
    const-wide/16 v0, 0x3e8

    .line 4
    .line 5
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/CardContentButtonView$b;->a:Lteam/opay/core/card/CardContentButtonView;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/core/card/CardContentButtonView;->b(Lteam/opay/core/card/CardContentButtonView;)Lrb8;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lrb8;->e:Landroid/widget/TextView;

    .line 8
    .line 9
    const-string v1, "cardButtonTipsRight"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onTick(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/CardContentButtonView$b;->a:Lteam/opay/core/card/CardContentButtonView;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/core/card/CardContentButtonView;->b(Lteam/opay/core/card/CardContentButtonView;)Lrb8;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lrb8;->e:Landroid/widget/TextView;

    .line 8
    .line 9
    iget-object v1, p0, Lteam/opay/core/card/CardContentButtonView$b;->a:Lteam/opay/core/card/CardContentButtonView;

    .line 10
    .line 11
    invoke-static {v1, p1, p2}, Lteam/opay/core/card/CardContentButtonView;->c(Lteam/opay/core/card/CardContentButtonView;J)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
