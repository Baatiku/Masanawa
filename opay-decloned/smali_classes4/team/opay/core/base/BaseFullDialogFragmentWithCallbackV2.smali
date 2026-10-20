.class public abstract Lteam/opay/core/base/BaseFullDialogFragmentWithCallbackV2;
.super Lteam/opay/core/base/BaseFullDialogInjectFragmentV2;
.source "BaseDialogFragmentV2.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VB::",
        "Lxyf;",
        ">",
        "Lteam/opay/core/base/BaseFullDialogInjectFragmentV2<",
        "TVB;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0003B)\u0012 \u0010\u0008\u001a\u001c\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00028\u00000\u0004\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH\u0014\u00a2\u0006\u0004\u0008\u000c\u0010\rR.\u0010\u0008\u001a\u001c\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00028\u00000\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\"\u0010\u0016\u001a\u00020\u00078\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R*\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00178\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001f"
    }
    d2 = {
        "Lteam/opay/core/base/BaseFullDialogFragmentWithCallbackV2;",
        "Lxyf;",
        "VB",
        "Lteam/opay/core/base/BaseFullDialogInjectFragmentV2;",
        "Lkotlin/Function3;",
        "Landroid/view/LayoutInflater;",
        "Landroid/view/ViewGroup;",
        "",
        "inflate",
        "<init>",
        "(Lhm6;)V",
        "",
        "K",
        "()V",
        "n",
        "Lhm6;",
        "o",
        "Z",
        "getSupportBack",
        "()Z",
        "setSupportBack",
        "(Z)V",
        "supportBack",
        "Lkotlin/Function0;",
        "p",
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
.field public final n:Lhm6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhm6<",
            "Landroid/view/LayoutInflater;",
            "Landroid/view/ViewGroup;",
            "Ljava/lang/Boolean;",
            "TVB;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public o:Z

.field public p:Lkotlin/jvm/functions/Function0;
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
.method public constructor <init>(Lhm6;)V
    .locals 1
    .param p1    # Lhm6;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhm6<",
            "-",
            "Landroid/view/LayoutInflater;",
            "-",
            "Landroid/view/ViewGroup;",
            "-",
            "Ljava/lang/Boolean;",
            "+TVB;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "inflate"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lteam/opay/core/base/BaseFullDialogInjectFragmentV2;-><init>(Lhm6;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lteam/opay/core/base/BaseFullDialogFragmentWithCallbackV2;->n:Lhm6;

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lteam/opay/core/base/BaseFullDialogFragmentWithCallbackV2;->o:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public K()V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/base/BaseFullDialogFragmentWithCallbackV2;->p:Lkotlin/jvm/functions/Function0;

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
    iget-boolean v0, p0, Lteam/opay/core/base/BaseFullDialogFragmentWithCallbackV2;->o:Z

    .line 2
    .line 3
    return v0
.end method
