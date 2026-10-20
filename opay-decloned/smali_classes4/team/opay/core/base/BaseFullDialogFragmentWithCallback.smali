.class public abstract Lteam/opay/core/base/BaseFullDialogFragmentWithCallback;
.super Lteam/opay/core/base/BaseFullDialogInjectFragment;
.source "BaseDialogFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008&\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0003R\"\u0010\r\u001a\u00020\u00068\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR*\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0016"
    }
    d2 = {
        "Lteam/opay/core/base/BaseFullDialogFragmentWithCallback;",
        "Lteam/opay/core/base/BaseFullDialogInjectFragment;",
        "<init>",
        "()V",
        "",
        "K",
        "",
        "i",
        "Z",
        "getSupportBack",
        "()Z",
        "setSupportBack",
        "(Z)V",
        "supportBack",
        "Lkotlin/Function0;",
        "j",
        "Lkotlin/jvm/functions/Function0;",
        "getOnCloseCallback",
        "()Lkotlin/jvm/functions/Function0;",
        "setOnCloseCallback",
        "(Lkotlin/jvm/functions/Function0;)V",
        "onCloseCallback",
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
.field public i:Z

.field public j:Lkotlin/jvm/functions/Function0;
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
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lteam/opay/core/base/BaseFullDialogInjectFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lteam/opay/core/base/BaseFullDialogFragmentWithCallback;->i:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public K()V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/base/BaseFullDialogFragmentWithCallback;->j:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Lteam/opay/core/base/BaseDialogFragment;->K()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public getSupportBack()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/core/base/BaseFullDialogFragmentWithCallback;->i:Z

    .line 2
    .line 3
    return v0
.end method
