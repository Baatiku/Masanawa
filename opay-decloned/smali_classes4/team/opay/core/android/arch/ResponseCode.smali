.class public final Lteam/opay/core/android/arch/ResponseCode;
.super Ljava/lang/Object;
.source "ResponseCode.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/core/android/arch/ResponseCode$ClientsError;,
        Lteam/opay/core/android/arch/ResponseCode$Companion;,
        Lteam/opay/core/android/arch/ResponseCode$InformationalResponse;,
        Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;,
        Lteam/opay/core/android/arch/ResponseCode$ServerErrors;,
        Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\n\u0018\u0000 \u00042\u00020\u0001:\u0006\u0005\u0006\u0007\u0008\t\nB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u000b"
    }
    d2 = {
        "Lteam/opay/core/android/arch/ResponseCode;",
        "",
        "<init>",
        "()V",
        "a",
        "InformationalResponse",
        "SuccessCodes",
        "RedirectionCodes",
        "ClientsError",
        "ServerErrors",
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
.field public static final a:Lteam/opay/core/android/arch/ResponseCode$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/core/android/arch/ResponseCode$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/core/android/arch/ResponseCode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/core/android/arch/ResponseCode;->a:Lteam/opay/core/android/arch/ResponseCode$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
