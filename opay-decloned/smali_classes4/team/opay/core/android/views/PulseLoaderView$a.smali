.class public final Lteam/opay/core/android/views/PulseLoaderView$a;
.super Landroid/os/CountDownTimer;
.source "PulseLoaderView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/core/android/views/PulseLoaderView;-><init>(Landroid/content/Context;)V
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
        "team/opay/core/android/views/PulseLoaderView$a",
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
.field public final synthetic a:Lteam/opay/core/android/views/PulseLoaderView;


# direct methods
.method public constructor <init>(Lteam/opay/core/android/views/PulseLoaderView;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lteam/opay/core/android/views/PulseLoaderView$a;->a:Lteam/opay/core/android/views/PulseLoaderView;

    .line 2
    .line 3
    const-wide/32 v0, 0x36ee80

    .line 4
    .line 5
    .line 6
    const-wide/16 v2, 0x7d0

    .line 7
    .line 8
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 0

    .line 1
    return-void
.end method

.method public onTick(J)V
    .locals 0

    .line 1
    iget-object p1, p0, Lteam/opay/core/android/views/PulseLoaderView$a;->a:Lteam/opay/core/android/views/PulseLoaderView;

    .line 2
    .line 3
    invoke-static {p1}, Lteam/opay/core/android/views/PulseLoaderView;->b(Lteam/opay/core/android/views/PulseLoaderView;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
