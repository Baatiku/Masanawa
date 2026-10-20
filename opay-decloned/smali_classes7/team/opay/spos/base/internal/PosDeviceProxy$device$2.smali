.class final Lteam/opay/spos/base/internal/PosDeviceProxy$device$2;
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
        "Lteam/opay/spos/base/internal/PosDevices;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lteam/opay/spos/base/internal/PosDevices;",
        "invoke"
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
.field public static final INSTANCE:Lteam/opay/spos/base/internal/PosDeviceProxy$device$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/spos/base/internal/PosDeviceProxy$device$2;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/spos/base/internal/PosDeviceProxy$device$2;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lteam/opay/spos/base/internal/PosDeviceProxy$device$2;->INSTANCE:Lteam/opay/spos/base/internal/PosDeviceProxy$device$2;

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
    invoke-virtual {p0}, Lteam/opay/spos/base/internal/PosDeviceProxy$device$2;->invoke()Lteam/opay/spos/base/internal/PosDevices;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lteam/opay/spos/base/internal/PosDevices;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    sget-object v0, Lteam/opay/spos/base/spi/IPosDeviceDataGenerator;->Companion:Lteam/opay/spos/base/spi/IPosDeviceDataGenerator$Companion;

    invoke-virtual {v0}, Lteam/opay/spos/base/spi/IPosDeviceDataGenerator$Companion;->a()Lteam/opay/spos/base/spi/IPosDeviceDataGenerator;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lteam/opay/spos/base/spi/IPosDeviceDataGenerator;->posDeviceName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    const-string v0, ""

    .line 3
    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_2

    move-object v1, v0

    :cond_2
    if-eqz v1, :cond_3

    .line 4
    invoke-static {v0}, Lteam/opay/spos/base/internal/PosDevices;->valueOf(Ljava/lang/String;)Lteam/opay/spos/base/internal/PosDevices;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    .line 5
    :cond_3
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "please implements IPosDeviceDataGenerator"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method
