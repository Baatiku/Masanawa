.class public final Lteam/opay/core/common/android/event/FlowEventBus;
.super Ljava/lang/Object;
.source "FlowEventBus.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/core/common/android/event/FlowEventBus$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u00192\u00020\u0001:\u0001\u001aB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J5\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00040\n\"\u0008\u0008\u0000\u0010\u0005*\u00020\u00042\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00062\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001f\u0010\u000f\u001a\u00020\u000e\"\u0008\u0008\u0000\u0010\u0005*\u00020\u00042\u0006\u0010\r\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\u000f\u0010\u0010JE\u0010\u0013\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0012*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00110\u0011\"\u0008\u0008\u0000\u0010\u0005*\u00020\u00042\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00062\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R*\u0010\u0018\u001a\u0018\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00110\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001b"
    }
    d2 = {
        "Lteam/opay/core/common/android/event/FlowEventBus;",
        "",
        "<init>",
        "()V",
        "Lu66;",
        "T",
        "Lho7;",
        "clazz",
        "",
        "replay",
        "Lv56;",
        "c",
        "(Lho7;I)Lv56;",
        "event",
        "",
        "e",
        "(Lu66;)Z",
        "Lxe9;",
        "kotlin.jvm.PlatformType",
        "f",
        "(Lho7;I)Lxe9;",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "a",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "flowEvents",
        "b",
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
.field public static final b:Lteam/opay/core/common/android/event/FlowEventBus$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static volatile c:Lteam/opay/core/common/android/event/FlowEventBus;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lho7<",
            "*>;",
            "Lxe9<",
            "Lu66;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/core/common/android/event/FlowEventBus$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/core/common/android/event/FlowEventBus$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/core/common/android/event/FlowEventBus;->b:Lteam/opay/core/common/android/event/FlowEventBus$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lteam/opay/core/common/android/event/FlowEventBus;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/core/common/android/event/FlowEventBus;-><init>()V

    return-void
.end method

.method public static final synthetic a()Lteam/opay/core/common/android/event/FlowEventBus;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/core/common/android/event/FlowEventBus;->c:Lteam/opay/core/common/android/event/FlowEventBus;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic b(Lteam/opay/core/common/android/event/FlowEventBus;)V
    .locals 0

    .line 1
    sput-object p0, Lteam/opay/core/common/android/event/FlowEventBus;->c:Lteam/opay/core/common/android/event/FlowEventBus;

    .line 2
    .line 3
    return-void
.end method

.method public static synthetic d(Lteam/opay/core/common/android/event/FlowEventBus;Lho7;IILjava/lang/Object;)Lv56;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/common/android/event/FlowEventBus;->c(Lho7;I)Lv56;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static synthetic g(Lteam/opay/core/common/android/event/FlowEventBus;Lho7;IILjava/lang/Object;)Lxe9;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/common/android/event/FlowEventBus;->f(Lho7;I)Lxe9;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method


# virtual methods
.method public final c(Lho7;I)Lv56;
    .locals 1
    .param p1    # Lho7;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lu66;",
            ">(",
            "Lho7<",
            "TT;>;I)",
            "Lv56<",
            "Lu66;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "clazz"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/common/android/event/FlowEventBus;->f(Lho7;I)Lxe9;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string p2, "with(...)"

    .line 11
    .line 12
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-object p1
.end method

.method public final e(Lu66;)Z
    .locals 4
    .param p1    # Lu66;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lu66;",
            ">(TT;)Z"
        }
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x2

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-static {p0, v0, v3, v1, v2}, Lteam/opay/core/common/android/event/FlowEventBus;->g(Lteam/opay/core/common/android/event/FlowEventBus;Lho7;IILjava/lang/Object;)Lxe9;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0, p1}, Lxe9;->a(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1
.end method

.method public final f(Lho7;I)Lxe9;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lu66;",
            ">(",
            "Lho7<",
            "TT;>;I)",
            "Lxe9<",
            "Lu66;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/common/android/event/FlowEventBus;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    sget-object v2, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_OLDEST:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 11
    .line 12
    invoke-static {p2, v1, v2}, Laod;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lxe9;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    move-object v1, p2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object v1, p1

    .line 25
    :cond_1
    :goto_0
    check-cast v1, Lxe9;

    .line 26
    .line 27
    return-object v1
.end method
