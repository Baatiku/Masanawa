.class public final Lteam/opay/core/android/arch/CancellableNetworkAction$e;
.super Ljava/lang/Object;
.source "CancellableNetworkAction.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/core/android/arch/CancellableNetworkAction;->s(Ljr2;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/core/android/arch/CancellableNetworkAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/core/android/arch/CancellableNetworkAction<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/core/android/arch/CancellableNetworkAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/android/arch/CancellableNetworkAction<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/core/android/arch/CancellableNetworkAction$e;->a:Lteam/opay/core/android/arch/CancellableNetworkAction;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    sget-object p1, Lxk8;->a:Lxk8;

    .line 2
    .line 3
    new-instance v0, Lteam/opay/core/android/arch/CancellableNetworkAction$e$a;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/core/android/arch/CancellableNetworkAction$e;->a:Lteam/opay/core/android/arch/CancellableNetworkAction;

    .line 6
    .line 7
    invoke-direct {v0, v1}, Lteam/opay/core/android/arch/CancellableNetworkAction$e$a;-><init>(Lteam/opay/core/android/arch/CancellableNetworkAction;)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {p1, v2, v0, v1, v2}, Lxk8;->f(Lxk8;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lteam/opay/core/android/arch/CancellableNetworkAction$e;->a:Lteam/opay/core/android/arch/CancellableNetworkAction;

    .line 16
    .line 17
    invoke-static {p1}, Lteam/opay/core/android/arch/CancellableNetworkAction;->b(Lteam/opay/core/android/arch/CancellableNetworkAction;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lteam/opay/core/android/arch/RequestBuilder;->j()Lretrofit2/Call;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {p1}, Lretrofit2/Call;->isCanceled()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    iget-object p1, p0, Lteam/opay/core/android/arch/CancellableNetworkAction$e;->a:Lteam/opay/core/android/arch/CancellableNetworkAction;

    .line 32
    .line 33
    invoke-static {p1}, Lteam/opay/core/android/arch/CancellableNetworkAction;->b(Lteam/opay/core/android/arch/CancellableNetworkAction;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lteam/opay/core/android/arch/RequestBuilder;->j()Lretrofit2/Call;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-interface {p1}, Lretrofit2/Call;->cancel()V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/core/android/arch/CancellableNetworkAction$e;->a(Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p1
.end method
