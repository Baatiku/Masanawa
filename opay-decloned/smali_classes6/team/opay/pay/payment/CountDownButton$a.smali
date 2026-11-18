.class public final Lteam/opay/pay/payment/CountDownButton$a;
.super Ljava/lang/Object;
.source "CountDownButton.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/payment/CountDownButton;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "team/opay/pay/payment/CountDownButton$a",
        "Ljava/lang/Runnable;",
        "",
        "run",
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
.field public final synthetic a:Lteam/opay/pay/payment/CountDownButton;


# direct methods
.method public constructor <init>(Lteam/opay/pay/payment/CountDownButton;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/payment/CountDownButton$a;->a:Lteam/opay/pay/payment/CountDownButton;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/CountDownButton$a;->a:Lteam/opay/pay/payment/CountDownButton;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/pay/payment/CountDownButton;->a(Lteam/opay/pay/payment/CountDownButton;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lteam/opay/pay/payment/CountDownButton$a;->a:Lteam/opay/pay/payment/CountDownButton;

    .line 10
    .line 11
    invoke-static {v0}, Lteam/opay/pay/payment/CountDownButton;->b(Lteam/opay/pay/payment/CountDownButton;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lteam/opay/pay/payment/CountDownButton$a;->a:Lteam/opay/pay/payment/CountDownButton;

    .line 19
    .line 20
    invoke-static {v0}, Lteam/opay/pay/payment/CountDownButton;->a(Lteam/opay/pay/payment/CountDownButton;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-object v1, p0, Lteam/opay/pay/payment/CountDownButton$a;->a:Lteam/opay/pay/payment/CountDownButton;

    .line 25
    .line 26
    add-int/lit8 v0, v0, -0x1

    .line 27
    .line 28
    invoke-static {v1, v0}, Lteam/opay/pay/payment/CountDownButton;->d(Lteam/opay/pay/payment/CountDownButton;I)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lteam/opay/pay/payment/CountDownButton$a;->a:Lteam/opay/pay/payment/CountDownButton;

    .line 32
    .line 33
    invoke-static {v0}, Lteam/opay/pay/payment/CountDownButton;->e(Lteam/opay/pay/payment/CountDownButton;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/payment/CountDownButton$a;->a:Lteam/opay/pay/payment/CountDownButton;

    .line 38
    .line 39
    invoke-static {v0}, Lteam/opay/pay/payment/CountDownButton;->c(Lteam/opay/pay/payment/CountDownButton;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method
