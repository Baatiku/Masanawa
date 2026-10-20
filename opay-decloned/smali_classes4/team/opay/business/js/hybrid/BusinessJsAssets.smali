.class public final Lteam/opay/business/js/hybrid/BusinessJsAssets;
.super Ljava/lang/Object;
.source "BusinessJsAssets.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/business/js/hybrid/BusinessJsAssets$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u0000 \u00172\u00020\u0001:\u0001\u0018B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t\u00a2\u0006\u0004\u0008\u000c\u0010\rR\"\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u001b\u0010\u0016\u001a\u00020\u00118BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0019"
    }
    d2 = {
        "Lteam/opay/business/js/hybrid/BusinessJsAssets;",
        "",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "appContext",
        "",
        "h",
        "(Landroid/content/Context;)V",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "",
        "Lteam/opay/swarmfoundation/hybrid/HybridBean;",
        "e",
        "()Ljava/util/concurrent/ConcurrentHashMap;",
        "a",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "hybridList",
        "Lteam/opay/kotlin/coroutine/SafeCoroutineScope;",
        "b",
        "Lid8;",
        "f",
        "()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;",
        "ioScope",
        "c",
        "Companion",
        "business-js_release"
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
.field public static final c:Lteam/opay/business/js/hybrid/BusinessJsAssets$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static volatile d:Lteam/opay/business/js/hybrid/BusinessJsAssets;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# instance fields
.field public a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lteam/opay/swarmfoundation/hybrid/HybridBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/business/js/hybrid/BusinessJsAssets$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/business/js/hybrid/BusinessJsAssets$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/business/js/hybrid/BusinessJsAssets;->c:Lteam/opay/business/js/hybrid/BusinessJsAssets$Companion;

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

    iput-object v0, p0, Lteam/opay/business/js/hybrid/BusinessJsAssets;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    new-instance v0, Lxl1;

    invoke-direct {v0}, Lxl1;-><init>()V

    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object v0

    iput-object v0, p0, Lteam/opay/business/js/hybrid/BusinessJsAssets;->b:Lid8;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/business/js/hybrid/BusinessJsAssets;-><init>()V

    return-void
.end method

.method public static synthetic a()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/business/js/hybrid/BusinessJsAssets;->g()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic b(Lteam/opay/business/js/hybrid/BusinessJsAssets;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/business/js/hybrid/BusinessJsAssets;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic c()Lteam/opay/business/js/hybrid/BusinessJsAssets;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/business/js/hybrid/BusinessJsAssets;->d:Lteam/opay/business/js/hybrid/BusinessJsAssets;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic d(Lteam/opay/business/js/hybrid/BusinessJsAssets;)V
    .locals 0

    .line 1
    sput-object p0, Lteam/opay/business/js/hybrid/BusinessJsAssets;->d:Lteam/opay/business/js/hybrid/BusinessJsAssets;

    .line 2
    .line 3
    return-void
.end method

.method public static final g()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {v0, v1, v0}, Lteam/opay/kotlin/coroutine/CoroutineScopeKt;->d(Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lteam/opay/kotlin/coroutine/SafeCoroutineScope;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method


# virtual methods
.method public final e()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lteam/opay/swarmfoundation/hybrid/HybridBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/js/hybrid/BusinessJsAssets;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/js/hybrid/BusinessJsAssets;->b:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/kotlin/coroutine/SafeCoroutineScope;

    .line 8
    .line 9
    return-object v0
.end method

.method public final h(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "appContext"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/business/js/hybrid/BusinessJsAssets;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/business/js/hybrid/BusinessJsAssets;->f()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v4, Lteam/opay/business/js/hybrid/BusinessJsAssets$loadIndex$1;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-direct {v4, p1, p0, v0}, Lteam/opay/business/js/hybrid/BusinessJsAssets$loadIndex$1;-><init>(Landroid/content/Context;Lteam/opay/business/js/hybrid/BusinessJsAssets;Ljr2;)V

    .line 19
    .line 20
    .line 21
    const/4 v5, 0x3

    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 26
    .line 27
    .line 28
    return-void
.end method
