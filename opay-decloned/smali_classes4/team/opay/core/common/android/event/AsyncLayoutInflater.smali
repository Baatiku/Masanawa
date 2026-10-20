.class public final Lteam/opay/core/common/android/event/AsyncLayoutInflater;
.super Ljava/lang/Object;
.source "AsyncLayoutInflater.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/core/common/android/event/AsyncLayoutInflater$BasicInflater;,
        Lteam/opay/core/common/android/event/AsyncLayoutInflater$Companion;,
        Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateRequest;,
        Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateThread;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 \u000f2\u00020\u0001:\u0004!\"#$B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005JM\u0010\u000f\u001a\u00020\u000c2\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082(\u0010\u000e\u001a$\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\u0004\u0012\u00020\u000c\u0018\u00010\nj\u0004\u0018\u0001`\rH\u0007\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u001c\u001a\u00020\u00198\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0014\u0010 \u001a\u00020\u001d8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001f\u00a8\u0006%"
    }
    d2 = {
        "Lteam/opay/core/common/android/event/AsyncLayoutInflater;",
        "",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "",
        "resId",
        "Landroid/view/ViewGroup;",
        "parent",
        "Lkotlin/Function3;",
        "Landroid/view/View;",
        "",
        "Lteam/opay/core/common/android/event/onInflateFinished;",
        "callback",
        "e",
        "(ILandroid/view/ViewGroup;Lhm6;)V",
        "a",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "Landroid/view/LayoutInflater;",
        "b",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/os/Handler;",
        "c",
        "Landroid/os/Handler;",
        "handler",
        "Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateThread;",
        "d",
        "Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateThread;",
        "inflateThread",
        "InflateRequest",
        "BasicInflater",
        "InflateThread",
        "Companion",
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


# static fields
.field public static final e:Lteam/opay/core/common/android/event/AsyncLayoutInflater$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Landroid/view/LayoutInflater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateThread;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/core/common/android/event/AsyncLayoutInflater$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/core/common/android/event/AsyncLayoutInflater$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/core/common/android/event/AsyncLayoutInflater;->e:Lteam/opay/core/common/android/event/AsyncLayoutInflater$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lteam/opay/core/common/android/event/AsyncLayoutInflater;->a:Landroid/content/Context;

    .line 10
    .line 11
    new-instance v0, Lteam/opay/core/common/android/event/AsyncLayoutInflater$BasicInflater;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Lteam/opay/core/common/android/event/AsyncLayoutInflater$BasicInflater;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lteam/opay/core/common/android/event/AsyncLayoutInflater;->b:Landroid/view/LayoutInflater;

    .line 17
    .line 18
    new-instance p1, Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateThread;

    .line 19
    .line 20
    invoke-direct {p1}, Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateThread;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lteam/opay/core/common/android/event/AsyncLayoutInflater;->d:Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateThread;

    .line 27
    .line 28
    new-instance p1, Landroid/os/Handler;

    .line 29
    .line 30
    new-instance v0, Lr60;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lr60;-><init>(Lteam/opay/core/common/android/event/AsyncLayoutInflater;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lteam/opay/core/common/android/event/AsyncLayoutInflater;->c:Landroid/os/Handler;

    .line 39
    .line 40
    return-void
.end method

.method public static synthetic a(Lteam/opay/core/common/android/event/AsyncLayoutInflater;Landroid/os/Message;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/common/android/event/AsyncLayoutInflater;->b(Lteam/opay/core/common/android/event/AsyncLayoutInflater;Landroid/os/Message;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final b(Lteam/opay/core/common/android/event/AsyncLayoutInflater;Landroid/os/Message;)Z
    .locals 4

    .line 1
    const-string v0, "msg"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7
    .line 8
    const-string v0, "null cannot be cast to non-null type team.opay.core.common.android.event.AsyncLayoutInflater.InflateRequest"

    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    check-cast p1, Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateRequest;

    .line 14
    .line 15
    invoke-virtual {p1}, Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateRequest;->e()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lteam/opay/core/common/android/event/AsyncLayoutInflater;->b:Landroid/view/LayoutInflater;

    .line 22
    .line 23
    invoke-virtual {p1}, Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateRequest;->d()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {p1}, Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateRequest;->c()Landroid/view/ViewGroup;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p1, v0}, Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateRequest;->j(Landroid/view/View;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-virtual {p1}, Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateRequest;->a()Lhm6;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {p1}, Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateRequest;->e()Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateRequest;->d()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {p1}, Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateRequest;->c()Landroid/view/ViewGroup;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-interface {v0, v1, v2, v3}, Lhm6;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    :cond_1
    iget-object p0, p0, Lteam/opay/core/common/android/event/AsyncLayoutInflater;->d:Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateThread;

    .line 68
    .line 69
    invoke-virtual {p0, p1}, Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateThread;->c(Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateRequest;)V

    .line 70
    .line 71
    .line 72
    const/4 p0, 0x1

    .line 73
    return p0
.end method

.method public static final synthetic c(Lteam/opay/core/common/android/event/AsyncLayoutInflater;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/core/common/android/event/AsyncLayoutInflater;->c:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic d(Lteam/opay/core/common/android/event/AsyncLayoutInflater;)Landroid/view/LayoutInflater;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/core/common/android/event/AsyncLayoutInflater;->b:Landroid/view/LayoutInflater;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final e(ILandroid/view/ViewGroup;Lhm6;)V
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lhm6;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/ViewGroup;",
            "Lhm6<",
            "-",
            "Landroid/view/View;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroid/view/ViewGroup;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/core/common/android/event/AsyncLayoutInflater;->d:Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateThread;

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateThread;->b()Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateRequest;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p0}, Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateRequest;->g(Lteam/opay/core/common/android/event/AsyncLayoutInflater;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateRequest;->i(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p2}, Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateRequest;->h(Landroid/view/ViewGroup;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p3}, Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateRequest;->f(Lhm6;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lteam/opay/core/common/android/event/AsyncLayoutInflater;->d:Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateThread;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateThread;->a(Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateRequest;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 28
    .line 29
    const-string p2, "callback argument may not be null!"

    .line 30
    .line 31
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p1
.end method
