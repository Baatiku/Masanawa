.class public final Lteam/opay/business/dialog/biz/IHomeDialogImpl;
.super Ljava/lang/Object;
.source "IHomeDialogImpl.kt"

# interfaces
.implements Lteam/opay/business/dialog/biz/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/business/dialog/biz/IHomeDialogImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u0000 \t2\u00020\u00012\u00020\u0002:\u0001*B\u0011\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ \u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0096\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001f\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0014H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0018R\u001b\u0010\u001e\u001a\u00020\u00198BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u001f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u001a\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u001f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010!R\u001b\u0010)\u001a\u00020%8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008&\u0010\u001b\u001a\u0004\u0008\'\u0010(\u00a8\u0006+"
    }
    d2 = {
        "Lteam/opay/business/dialog/biz/IHomeDialogImpl;",
        "",
        "Lteam/opay/business/dialog/biz/a;",
        "iDialogCache",
        "<init>",
        "(Lteam/opay/business/dialog/biz/a;)V",
        "Landroidx/fragment/app/FragmentManager;",
        "fm",
        "",
        "f",
        "(Landroidx/fragment/app/FragmentManager;)V",
        "",
        "cacheKey",
        "",
        "time",
        "Lteam/opay/business/dialog/biz/DialogCache;",
        "a",
        "(Ljava/lang/String;J)Lteam/opay/business/dialog/biz/DialogCache;",
        "Lteam/opay/business/dialog/api/DialogEntity;",
        "entity",
        "",
        "finish",
        "g",
        "(Lteam/opay/business/dialog/api/DialogEntity;Z)V",
        "Lteam/opay/business/dialog/biz/a;",
        "Landroid/content/Context;",
        "b",
        "Lid8;",
        "getContext",
        "()Landroid/content/Context;",
        "context",
        "Lteam/opay/core/common/android/collection/FixedLinkedDeque;",
        "c",
        "Lteam/opay/core/common/android/collection/FixedLinkedDeque;",
        "dialogQueue",
        "d",
        "dialogQueueCopy",
        "Lteam/opay/business/dialog/internal/DialogMap;",
        "e",
        "getDialogMap",
        "()Lteam/opay/business/dialog/internal/DialogMap;",
        "dialogMap",
        "Companion",
        "business-dialog_release"
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
.field public static final f:Lteam/opay/business/dialog/biz/IHomeDialogImpl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Lteam/opay/business/dialog/biz/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lteam/opay/core/common/android/collection/FixedLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/core/common/android/collection/FixedLinkedDeque<",
            "Lteam/opay/business/dialog/api/DialogEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lteam/opay/core/common/android/collection/FixedLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/core/common/android/collection/FixedLinkedDeque<",
            "Lteam/opay/business/dialog/api/DialogEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/business/dialog/biz/IHomeDialogImpl$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/business/dialog/biz/IHomeDialogImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/business/dialog/biz/IHomeDialogImpl;->f:Lteam/opay/business/dialog/biz/IHomeDialogImpl$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lteam/opay/business/dialog/biz/IHomeDialogImpl;-><init>(Lteam/opay/business/dialog/biz/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lteam/opay/business/dialog/biz/a;)V
    .locals 3
    .param p1    # Lteam/opay/business/dialog/biz/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "iDialogCache"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lteam/opay/business/dialog/biz/IHomeDialogImpl;->a:Lteam/opay/business/dialog/biz/a;

    .line 3
    new-instance p1, Ls87;

    invoke-direct {p1}, Ls87;-><init>()V

    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object p1

    iput-object p1, p0, Lteam/opay/business/dialog/biz/IHomeDialogImpl;->b:Lid8;

    .line 4
    new-instance p1, Lteam/opay/core/common/android/collection/FixedLinkedDeque;

    const/16 v0, 0xa

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p1, v0, v1, v2, v1}, Lteam/opay/core/common/android/collection/FixedLinkedDeque;-><init>(ILjava/util/concurrent/ConcurrentLinkedDeque;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lteam/opay/business/dialog/biz/IHomeDialogImpl;->c:Lteam/opay/core/common/android/collection/FixedLinkedDeque;

    .line 5
    new-instance p1, Lteam/opay/core/common/android/collection/FixedLinkedDeque;

    invoke-direct {p1, v0, v1, v2, v1}, Lteam/opay/core/common/android/collection/FixedLinkedDeque;-><init>(ILjava/util/concurrent/ConcurrentLinkedDeque;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lteam/opay/business/dialog/biz/IHomeDialogImpl;->d:Lteam/opay/core/common/android/collection/FixedLinkedDeque;

    .line 6
    new-instance p1, Lt87;

    invoke-direct {p1}, Lt87;-><init>()V

    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object p1

    iput-object p1, p0, Lteam/opay/business/dialog/biz/IHomeDialogImpl;->e:Lid8;

    return-void
.end method

.method public synthetic constructor <init>(Lteam/opay/business/dialog/biz/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 7
    new-instance p1, Lteam/opay/business/dialog/biz/IDialogCacheImpl;

    invoke-direct {p1}, Lteam/opay/business/dialog/biz/IDialogCacheImpl;-><init>()V

    :cond_0
    invoke-direct {p0, p1}, Lteam/opay/business/dialog/biz/IHomeDialogImpl;-><init>(Lteam/opay/business/dialog/biz/a;)V

    return-void
.end method

.method public static synthetic b()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/business/dialog/biz/IHomeDialogImpl;->d()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic c()Lteam/opay/business/dialog/internal/DialogMap;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/business/dialog/biz/IHomeDialogImpl;->e()Lteam/opay/business/dialog/internal/DialogMap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final d()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public static final e()Lteam/opay/business/dialog/internal/DialogMap;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/business/dialog/internal/DialogMap;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/business/dialog/internal/DialogMap;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;J)Lteam/opay/business/dialog/biz/DialogCache;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "cacheKey"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/business/dialog/biz/IHomeDialogImpl;->a:Lteam/opay/business/dialog/biz/a;

    .line 7
    .line 8
    invoke-interface {v0, p1, p2, p3}, Lteam/opay/business/dialog/biz/a;->a(Ljava/lang/String;J)Lteam/opay/business/dialog/biz/DialogCache;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public declared-synchronized f(Landroidx/fragment/app/FragmentManager;)V
    .locals 6
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "fm"

    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lteam/opay/business/dialog/biz/IHomeDialogImpl;->c:Lteam/opay/core/common/android/collection/FixedLinkedDeque;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lteam/opay/business/dialog/biz/IHomeDialogImpl;->c:Lteam/opay/core/common/android/collection/FixedLinkedDeque;

    .line 16
    .line 17
    invoke-virtual {v0}, Lteam/opay/core/common/android/collection/FixedLinkedDeque;->getLast()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "getLast(...)"

    .line 22
    .line 23
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    check-cast v0, Lteam/opay/business/dialog/api/DialogEntity;

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-virtual {p0, v0, v1}, Lteam/opay/business/dialog/biz/IHomeDialogImpl;->g(Lteam/opay/business/dialog/api/DialogEntity;Z)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_3

    .line 35
    :cond_0
    :goto_0
    iget-object v0, p0, Lteam/opay/business/dialog/biz/IHomeDialogImpl;->c:Lteam/opay/core/common/android/collection/FixedLinkedDeque;

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lteam/opay/business/dialog/api/DialogEntity;

    .line 52
    .line 53
    invoke-virtual {v1}, Lteam/opay/business/dialog/api/DialogEntity;->getTag()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {p1, v2}, Landroidx/fragment/app/FragmentManager;->l0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    instance-of v3, v2, Lteam/opay/business/dialog/fragment/BizDialogFragment;

    .line 62
    .line 63
    const/4 v4, 0x0

    .line 64
    if-eqz v3, :cond_1

    .line 65
    .line 66
    check-cast v2, Lteam/opay/business/dialog/fragment/BizDialogFragment;

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_1
    move-object v2, v4

    .line 70
    :goto_2
    invoke-virtual {v1}, Lteam/opay/business/dialog/api/DialogEntity;->getWindowIsForce()Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-nez v3, :cond_2

    .line 75
    .line 76
    if-eqz v2, :cond_2

    .line 77
    .line 78
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_2

    .line 83
    .line 84
    invoke-virtual {v2}, Lteam/opay/business/dialog/fragment/BizDialogFragment;->V()V

    .line 85
    .line 86
    .line 87
    :cond_2
    iget-object v2, p0, Lteam/opay/business/dialog/biz/IHomeDialogImpl;->c:Lteam/opay/core/common/android/collection/FixedLinkedDeque;

    .line 88
    .line 89
    invoke-virtual {v2, v1}, Lteam/opay/core/common/android/collection/FixedLinkedDeque;->remove(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    sget-object v2, Lhl8;->c:Lhl8;

    .line 93
    .line 94
    invoke-virtual {v1}, Lteam/opay/business/dialog/api/DialogEntity;->getTag()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string v5, "dismissAllDialogFragment "

    .line 104
    .line 105
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    const/4 v3, 0x2

    .line 116
    invoke-static {v2, v1, v4, v3, v4}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_3
    iget-object p1, p0, Lteam/opay/business/dialog/biz/IHomeDialogImpl;->c:Lteam/opay/core/common/android/collection/FixedLinkedDeque;

    .line 121
    .line 122
    invoke-virtual {p1}, Lteam/opay/core/common/android/collection/FixedLinkedDeque;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    .line 124
    .line 125
    monitor-exit p0

    .line 126
    return-void

    .line 127
    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    throw p1
.end method

.method public final g(Lteam/opay/business/dialog/api/DialogEntity;Z)V
    .locals 12

    .line 1
    iget-object v0, p0, Lteam/opay/business/dialog/biz/IHomeDialogImpl;->a:Lteam/opay/business/dialog/biz/a;

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/business/dialog/api/DialogEntity;->getCacheKey()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x0

    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    invoke-static/range {v0 .. v5}, Lteam/opay/business/dialog/biz/a$a;->a(Lteam/opay/business/dialog/biz/a;Ljava/lang/String;JILjava/lang/Object;)Lteam/opay/business/dialog/biz/DialogCache;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz p2, :cond_7

    .line 16
    .line 17
    invoke-virtual {p1}, Lteam/opay/business/dialog/api/DialogEntity;->getPriority()Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const/4 v1, 0x1

    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p2, 0x1

    .line 30
    :goto_0
    sget-object v2, Lie3;->b:Lie3;

    .line 31
    .line 32
    invoke-virtual {v2}, Lie3;->f()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const/4 v4, 0x0

    .line 37
    if-lt p2, v3, :cond_5

    .line 38
    .line 39
    invoke-virtual {v2, v1}, Lie3;->l(I)V

    .line 40
    .line 41
    .line 42
    iget-object p2, p0, Lteam/opay/business/dialog/biz/IHomeDialogImpl;->d:Lteam/opay/core/common/android/collection/FixedLinkedDeque;

    .line 43
    .line 44
    new-instance v2, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_2

    .line 58
    .line 59
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    move-object v5, v3

    .line 64
    check-cast v5, Lteam/opay/business/dialog/api/DialogEntity;

    .line 65
    .line 66
    invoke-virtual {v5}, Lteam/opay/business/dialog/api/DialogEntity;->getPriority()Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {p1}, Lteam/opay/business/dialog/api/DialogEntity;->getPriority()Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-eqz v5, :cond_1

    .line 79
    .line 80
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_4

    .line 93
    .line 94
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    move-object v3, v2

    .line 99
    check-cast v3, Lteam/opay/business/dialog/api/DialogEntity;

    .line 100
    .line 101
    invoke-virtual {v3}, Lteam/opay/business/dialog/api/DialogEntity;->getCount()I

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    iget-object v6, p0, Lteam/opay/business/dialog/biz/IHomeDialogImpl;->a:Lteam/opay/business/dialog/biz/a;

    .line 106
    .line 107
    invoke-virtual {v3}, Lteam/opay/business/dialog/api/DialogEntity;->getCacheKey()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    const/4 v10, 0x2

    .line 112
    const/4 v11, 0x0

    .line 113
    const-wide/16 v8, 0x0

    .line 114
    .line 115
    invoke-static/range {v6 .. v11}, Lteam/opay/business/dialog/biz/a$a;->a(Lteam/opay/business/dialog/biz/a;Ljava/lang/String;JILjava/lang/Object;)Lteam/opay/business/dialog/biz/DialogCache;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-virtual {v3}, Lteam/opay/business/dialog/biz/DialogCache;->getCount()I

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    if-le v5, v3, :cond_3

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_4
    move-object v2, v4

    .line 127
    :goto_2
    check-cast v2, Lteam/opay/business/dialog/api/DialogEntity;

    .line 128
    .line 129
    invoke-virtual {v0}, Lteam/opay/business/dialog/biz/DialogCache;->getCount()I

    .line 130
    .line 131
    .line 132
    move-result p2

    .line 133
    invoke-virtual {p1}, Lteam/opay/business/dialog/api/DialogEntity;->getCount()I

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    if-ne p2, p1, :cond_6

    .line 138
    .line 139
    if-nez v2, :cond_6

    .line 140
    .line 141
    sget-object p1, Lie3;->b:Lie3;

    .line 142
    .line 143
    invoke-virtual {p1}, Lie3;->f()I

    .line 144
    .line 145
    .line 146
    move-result p2

    .line 147
    sub-int/2addr p2, v1

    .line 148
    invoke-virtual {p1, p2}, Lie3;->n(I)V

    .line 149
    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_5
    invoke-virtual {v2}, Lie3;->d()I

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    add-int/2addr p1, v1

    .line 157
    invoke-virtual {v2, p1}, Lie3;->l(I)V

    .line 158
    .line 159
    .line 160
    :cond_6
    :goto_3
    sget-object p1, Lhl8;->c:Lhl8;

    .line 161
    .line 162
    sget-object p2, Lie3;->b:Lie3;

    .line 163
    .line 164
    invoke-virtual {p2}, Lie3;->d()I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    invoke-virtual {p2}, Lie3;->f()I

    .line 169
    .line 170
    .line 171
    move-result p2

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    const-string v2, "needShow \u5f39\u7a97\u5df2\u5168\u90e8\u5173\u95ed currentPriority="

    .line 178
    .line 179
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const-string v0, " maxPriority="

    .line 186
    .line 187
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p2

    .line 197
    const/4 v0, 0x2

    .line 198
    invoke-static {p1, p2, v4, v0, v4}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    :cond_7
    return-void
.end method
