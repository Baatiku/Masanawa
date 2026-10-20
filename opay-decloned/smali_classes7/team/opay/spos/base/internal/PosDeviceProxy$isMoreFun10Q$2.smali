.class final Lteam/opay/spos/base/internal/PosDeviceProxy$isMoreFun10Q$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PosDevices.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/spos/base/internal/PosDeviceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "()Ljava/lang/Boolean;"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lteam/opay/spos/base/internal/PosDeviceProxy$isMoreFun10Q$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/spos/base/internal/PosDeviceProxy$isMoreFun10Q$2;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/spos/base/internal/PosDeviceProxy$isMoreFun10Q$2;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lteam/opay/spos/base/internal/PosDeviceProxy$isMoreFun10Q$2;->INSTANCE:Lteam/opay/spos/base/internal/PosDeviceProxy$isMoreFun10Q$2;

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
.method public final invoke()Ljava/lang/Boolean;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/spos/base/internal/PosDeviceProxy;->a:Lteam/opay/spos/base/internal/PosDeviceProxy;

    invoke-static {v0}, Lteam/opay/spos/base/internal/PosDeviceProxy;->b(Lteam/opay/spos/base/internal/PosDeviceProxy;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lteam/opay/spos/base/internal/PosDevices;->MOREFUN_10Q:Lteam/opay/spos/base/internal/PosDevices;

    invoke-virtual {v1}, Lteam/opay/spos/base/internal/PosDevices;->getSnPrefix()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lkotlin/text/StringsKt;->X(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lteam/opay/spos/base/internal/PosDeviceProxy$isMoreFun10Q$2;->invoke()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
