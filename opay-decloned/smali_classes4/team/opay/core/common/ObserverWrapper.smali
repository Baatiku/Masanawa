.class public final Lteam/opay/core/common/ObserverWrapper;
.super Ljava/lang/Object;
.source "CorpLiveData.kt"

# interfaces
.implements Lvfa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lvfa<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0002B%\u0012\u000e\u0010\u0003\u001a\n\u0012\u0006\u0008\u0000\u0012\u00028\u00000\u0002\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00028\u0000H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u001c\u0010\u0003\u001a\n\u0012\u0006\u0008\u0000\u0012\u00028\u00000\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u001a\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0013\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0014"
    }
    d2 = {
        "Lteam/opay/core/common/ObserverWrapper;",
        "T",
        "Lvfa;",
        "observer",
        "Lteam/opay/core/common/CorpLiveData;",
        "liveData",
        "<init>",
        "(Lvfa;Lteam/opay/core/common/CorpLiveData;)V",
        "t",
        "",
        "onChanged",
        "(Ljava/lang/Object;)V",
        "a",
        "Lvfa;",
        "b",
        "Lteam/opay/core/common/CorpLiveData;",
        "",
        "c",
        "I",
        "mLastVersion",
        "common-base_release"
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
.field public final a:Lvfa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvfa<",
            "-TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lteam/opay/core/common/CorpLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/core/common/CorpLiveData<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:I


# direct methods
.method public constructor <init>(Lvfa;Lteam/opay/core/common/CorpLiveData;)V
    .locals 1
    .param p1    # Lvfa;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/common/CorpLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvfa<",
            "-TT;>;",
            "Lteam/opay/core/common/CorpLiveData<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "observer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "liveData"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lteam/opay/core/common/ObserverWrapper;->a:Lvfa;

    .line 15
    .line 16
    iput-object p2, p0, Lteam/opay/core/common/ObserverWrapper;->b:Lteam/opay/core/common/CorpLiveData;

    .line 17
    .line 18
    invoke-virtual {p2}, Lteam/opay/core/common/CorpLiveData;->b()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iput p1, p0, Lteam/opay/core/common/ObserverWrapper;->c:I

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lteam/opay/core/common/ObserverWrapper;->c:I

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/core/common/ObserverWrapper;->b:Lteam/opay/core/common/CorpLiveData;

    .line 4
    .line 5
    invoke-virtual {v1}, Lteam/opay/core/common/CorpLiveData;->b()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lteam/opay/core/common/ObserverWrapper;->b:Lteam/opay/core/common/CorpLiveData;

    .line 13
    .line 14
    invoke-virtual {v0}, Lteam/opay/core/common/CorpLiveData;->b()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iput v0, p0, Lteam/opay/core/common/ObserverWrapper;->c:I

    .line 19
    .line 20
    iget-object v0, p0, Lteam/opay/core/common/ObserverWrapper;->a:Lvfa;

    .line 21
    .line 22
    invoke-interface {v0, p1}, Lvfa;->onChanged(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
