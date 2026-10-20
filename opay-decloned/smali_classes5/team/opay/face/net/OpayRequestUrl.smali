.class public final Lteam/opay/face/net/OpayRequestUrl;
.super Lteam/opay/face/net/RequestUrlDelegate;
.source "OpayRequestUrl.kt"


# annotations
.annotation runtime Lcom/google/auto/service/AutoService;
    value = {
        Lteam/opay/face/net/RequestUrlDelegate;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/face/net/OpayRequestUrl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lteam/opay/face/net/OpayRequestUrl;",
        "Lteam/opay/face/net/RequestUrlDelegate;",
        "<init>",
        "()V",
        "getBaseUrl",
        "",
        "context",
        "Landroid/content/Context;",
        "header",
        "Companion",
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


# static fields
.field public static final Companion:Lteam/opay/face/net/OpayRequestUrl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DRAFT_HOST$delegate:Lid8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lid8<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final OPAY_HOST$delegate:Lid8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lid8<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/face/net/OpayRequestUrl$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/face/net/OpayRequestUrl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/face/net/OpayRequestUrl;->Companion:Lteam/opay/face/net/OpayRequestUrl$Companion;

    .line 8
    .line 9
    new-instance v0, Lura;

    .line 10
    .line 11
    invoke-direct {v0}, Lura;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lteam/opay/face/net/OpayRequestUrl;->DRAFT_HOST$delegate:Lid8;

    .line 19
    .line 20
    new-instance v0, Lesa;

    .line 21
    .line 22
    invoke-direct {v0}, Lesa;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lteam/opay/face/net/OpayRequestUrl;->OPAY_HOST$delegate:Lid8;

    .line 30
    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/face/net/RequestUrlDelegate;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final DRAFT_HOST_delegate$lambda$0()Ljava/lang/String;
    .locals 3

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
    const-string v1, "draftHost"

    .line 8
    .line 9
    const-string v2, ""

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lteam/opay/pay/envconfigapi/ConfigStorage;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "null cannot be cast to non-null type kotlin.String"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    check-cast v0, Ljava/lang/String;

    .line 21
    .line 22
    return-object v0
.end method

.method private static final OPAY_HOST_delegate$lambda$1()Ljava/lang/String;
    .locals 3

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
    const-string v1, "opayHost"

    .line 8
    .line 9
    const-string v2, ""

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lteam/opay/pay/envconfigapi/ConfigStorage;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "null cannot be cast to non-null type kotlin.String"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    check-cast v0, Ljava/lang/String;

    .line 21
    .line 22
    return-object v0
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/face/net/OpayRequestUrl;->DRAFT_HOST_delegate$lambda$0()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic access$getDRAFT_HOST$delegate$cp()Lid8;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/face/net/OpayRequestUrl;->DRAFT_HOST$delegate:Lid8;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getOPAY_HOST$delegate$cp()Lid8;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/face/net/OpayRequestUrl;->OPAY_HOST$delegate:Lid8;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic b()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/face/net/OpayRequestUrl;->OPAY_HOST_delegate$lambda$1()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public getBaseUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "credit"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    sget-object p1, Lteam/opay/face/net/OpayRequestUrl;->Companion:Lteam/opay/face/net/OpayRequestUrl$Companion;

    .line 15
    .line 16
    invoke-static {p1}, Lteam/opay/face/net/OpayRequestUrl$Companion;->a(Lteam/opay/face/net/OpayRequestUrl$Companion;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string p1, "opayHost"

    .line 22
    .line 23
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    sget-object p1, Lteam/opay/face/net/OpayRequestUrl;->Companion:Lteam/opay/face/net/OpayRequestUrl$Companion;

    .line 30
    .line 31
    invoke-static {p1}, Lteam/opay/face/net/OpayRequestUrl$Companion;->b(Lteam/opay/face/net/OpayRequestUrl$Companion;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 p1, 0x0

    .line 37
    :goto_0
    return-object p1
.end method
