.class public final Lteam/opay/business/provider/active/AdpApi;
.super Lteam/opay/core/http/IAppModule;
.source "AdpApi.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/business/provider/active/AdpApi$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001fB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J!\u0010\t\u001a\u00020\u00082\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ+\u0010\u000c\u001a\u00020\u00082\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u001b\u0010\u0013\u001a\u00020\u000e8@X\u0080\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u001b\u0010\u0018\u001a\u00020\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0010\u001a\u0004\u0008\u0016\u0010\u0017R\u001b\u0010\u001d\u001a\u00020\u00198BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u0010\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006 "
    }
    d2 = {
        "Lteam/opay/business/provider/active/AdpApi;",
        "Lteam/opay/core/http/IAppModule;",
        "<init>",
        "()V",
        "",
        "adpCode",
        "Lteam/opay/business/provider/active/AdItem;",
        "adItem",
        "Lkotlinx/coroutines/l;",
        "z",
        "(Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;)Lkotlinx/coroutines/l;",
        "clickType",
        "x",
        "(Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;Ljava/lang/String;)Lkotlinx/coroutines/l;",
        "Luv;",
        "f",
        "Lid8;",
        "E",
        "()Luv;",
        "api",
        "Lteam/opay/kotlin/coroutine/SafeCoroutineScope;",
        "g",
        "D",
        "()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;",
        "adpScope",
        "Landroid/content/Context;",
        "h",
        "F",
        "()Landroid/content/Context;",
        "context",
        "i",
        "Companion",
        "business-provider_release"
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
.field public static final i:Lteam/opay/business/provider/active/AdpApi$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static volatile j:Lteam/opay/business/provider/active/AdpApi;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# instance fields
.field public final f:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/business/provider/active/AdpApi$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/business/provider/active/AdpApi$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/business/provider/active/AdpApi;->i:Lteam/opay/business/provider/active/AdpApi$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Lteam/opay/core/http/IAppModule;-><init>()V

    .line 3
    new-instance v0, Lam;

    invoke-direct {v0, p0}, Lam;-><init>(Lteam/opay/business/provider/active/AdpApi;)V

    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object v0

    iput-object v0, p0, Lteam/opay/business/provider/active/AdpApi;->f:Lid8;

    .line 4
    new-instance v0, Lbm;

    invoke-direct {v0}, Lbm;-><init>()V

    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object v0

    iput-object v0, p0, Lteam/opay/business/provider/active/AdpApi;->g:Lid8;

    .line 5
    new-instance v0, Lcm;

    invoke-direct {v0}, Lcm;-><init>()V

    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object v0

    iput-object v0, p0, Lteam/opay/business/provider/active/AdpApi;->h:Lid8;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/business/provider/active/AdpApi;-><init>()V

    return-void
.end method

.method public static final A()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;
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

.method public static final B(Lteam/opay/business/provider/active/AdpApi;)Luv;
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/core/http/HttpFactory;->a:Lteam/opay/core/http/HttpFactory;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/core/http/IAppModule;->l()Lokhttp3/OkHttpClient;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-class v1, Luv;

    .line 8
    .line 9
    invoke-virtual {v0, p0, v1}, Lteam/opay/core/http/HttpFactory;->e(Lokhttp3/OkHttpClient;Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Luv;

    .line 14
    .line 15
    return-object p0
.end method

.method public static final C()Landroid/content/Context;
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

.method public static synthetic r(Lteam/opay/business/provider/active/AdpApi;)Luv;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/provider/active/AdpApi;->B(Lteam/opay/business/provider/active/AdpApi;)Luv;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic s()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/business/provider/active/AdpApi;->C()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic t()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/business/provider/active/AdpApi;->A()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic u(Lteam/opay/business/provider/active/AdpApi;)Landroid/content/Context;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/provider/active/AdpApi;->F()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic v()Lteam/opay/business/provider/active/AdpApi;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/business/provider/active/AdpApi;->j:Lteam/opay/business/provider/active/AdpApi;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic w(Lteam/opay/business/provider/active/AdpApi;)V
    .locals 0

    .line 1
    sput-object p0, Lteam/opay/business/provider/active/AdpApi;->j:Lteam/opay/business/provider/active/AdpApi;

    .line 2
    .line 3
    return-void
.end method

.method public static synthetic y(Lteam/opay/business/provider/active/AdpApi;Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;Ljava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/l;
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const-string p3, ""

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/business/provider/active/AdpApi;->x(Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;Ljava/lang/String;)Lkotlinx/coroutines/l;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method


# virtual methods
.method public final D()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/provider/active/AdpApi;->g:Lid8;

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

.method public final E()Luv;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/provider/active/AdpApi;->f:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Luv;

    .line 8
    .line 9
    return-object v0
.end method

.method public final F()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/provider/active/AdpApi;->h:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/Context;

    .line 8
    .line 9
    return-object v0
.end method

.method public final x(Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;Ljava/lang/String;)Lkotlinx/coroutines/l;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lteam/opay/business/provider/active/AdItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "clickType"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/business/provider/active/AdpApi;->D()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v0, Lteam/opay/business/provider/active/AdpApi$adClickFeedback$1;

    .line 11
    .line 12
    const/4 v7, 0x0

    .line 13
    move-object v2, v0

    .line 14
    move-object v3, p1

    .line 15
    move-object v4, p2

    .line 16
    move-object v5, p0

    .line 17
    move-object v6, p3

    .line 18
    invoke-direct/range {v2 .. v7}, Lteam/opay/business/provider/active/AdpApi$adClickFeedback$1;-><init>(Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;Lteam/opay/business/provider/active/AdpApi;Ljava/lang/String;Ljr2;)V

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
    move-object v4, v0

    .line 26
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1
.end method

.method public final z(Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;)Lkotlinx/coroutines/l;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lteam/opay/business/provider/active/AdItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/provider/active/AdpApi;->D()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v3, Lteam/opay/business/provider/active/AdpApi$adReachFeedback$1;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v3, p1, p2, p0, v1}, Lteam/opay/business/provider/active/AdpApi$adReachFeedback$1;-><init>(Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;Lteam/opay/business/provider/active/AdpApi;Ljr2;)V

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x3

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method
