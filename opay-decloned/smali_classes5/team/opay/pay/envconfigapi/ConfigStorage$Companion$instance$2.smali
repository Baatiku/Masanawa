.class final Lteam/opay/pay/envconfigapi/ConfigStorage$Companion$instance$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ConfigStorage.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/envconfigapi/ConfigStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lteam/opay/pay/envconfigapi/ConfigStorage;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lteam/opay/pay/envconfigapi/ConfigStorage;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# static fields
.field public static final INSTANCE:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion$instance$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion$instance$2;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion$instance$2;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion$instance$2;->INSTANCE:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion$instance$2;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion$instance$2;->invoke()Lteam/opay/pay/envconfigapi/ConfigStorage;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lteam/opay/pay/envconfigapi/ConfigStorage;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lteam/opay/pay/envconfigapi/ConfigStorage;

    invoke-direct {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage;-><init>()V

    return-object v0
.end method
