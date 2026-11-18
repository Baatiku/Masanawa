.class public abstract Lteam/opay/pay/android/NoBindingActivity;
.super Lteam/opay/pay/android/BaseActivity;
.source "NoBindingActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008&\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0007R\"\u0010\u000f\u001a\u00020\u00088\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lteam/opay/pay/android/NoBindingActivity;",
        "Lteam/opay/pay/android/BaseActivity;",
        "",
        "layoutId",
        "<init>",
        "(I)V",
        "a",
        "I",
        "",
        "b",
        "Z",
        "getNeedViewBinding",
        "()Z",
        "setNeedViewBinding",
        "(Z)V",
        "needViewBinding",
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
.field public final a:I

.field public b:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lteam/opay/pay/android/BaseActivity;-><init>(I)V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lteam/opay/pay/android/NoBindingActivity;->a:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getNeedViewBinding()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/android/NoBindingActivity;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public setNeedViewBinding(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/android/NoBindingActivity;->b:Z

    .line 2
    .line 3
    return-void
.end method
