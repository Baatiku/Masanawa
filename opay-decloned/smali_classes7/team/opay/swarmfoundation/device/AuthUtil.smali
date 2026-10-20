.class public final Lteam/opay/swarmfoundation/device/AuthUtil;
.super Ljava/lang/Object;
.source "AuthUtil.kt"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0010\u0008\n\u0002\u0008\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J!\u0010\t\u001a\u00020\u00082\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0011\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0003\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u000cJ\u000f\u0010\u0014\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u000cJ\u0019\u0010\u0016\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0015\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0019\u0010\u0019\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0018\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u0017J\u0019\u0010\u001c\u001a\u00020\u00062\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0011\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008!\u0010\"J\u000f\u0010#\u001a\u00020\u0008H\u0003\u00a2\u0006\u0004\u0008#\u0010\u0003J\u0017\u0010%\u001a\u00020\u00082\u0006\u0010$\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008%\u0010&J\u0017\u0010(\u001a\u00020\u00082\u0006\u0010\'\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008(\u0010)J\u0017\u0010*\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008*\u0010+J\r\u0010,\u001a\u00020\u0006\u00a2\u0006\u0004\u0008,\u0010\u000cJ\r\u0010-\u001a\u00020\u0006\u00a2\u0006\u0004\u0008-\u0010\u000cJ\u0017\u0010.\u001a\u00020\u00102\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008.\u0010/J\u0019\u00100\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007\u00a2\u0006\u0004\u00080\u0010+J\u0015\u00102\u001a\u00020\u00062\u0006\u00101\u001a\u00020\u0006\u00a2\u0006\u0004\u00082\u0010\u0017J\r\u00103\u001a\u00020\u0006\u00a2\u0006\u0004\u00083\u0010\u000cJ\u0019\u00105\u001a\u0004\u0018\u0001042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u00085\u00106J\u0019\u00107\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u00087\u0010+J\u0015\u00109\u001a\u00020\u00102\u0006\u00108\u001a\u00020\u0006\u00a2\u0006\u0004\u00089\u0010:J\r\u0010;\u001a\u00020\u0006\u00a2\u0006\u0004\u0008;\u0010\u000cR\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008<\u0010=R\u0016\u0010?\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008>\u0010=R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008@\u0010AR\u0016\u0010D\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008B\u0010CR\u0016\u0010F\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008E\u0010=R\u0016\u0010H\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008G\u0010=R\u0016\u0010J\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008I\u0010=R\u0016\u0010L\u001a\u0002048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008K\u0010\u0011R\u0016\u0010N\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008M\u0010=R2\u0010S\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060Oj\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006`P8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Q\u0010RR\u0016\u0010W\u001a\u00020T8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008U\u0010VR\u0016\u0010X\u001a\u00020T8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010VR\u0016\u0010Y\u001a\u00020T8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00080\u0010VR\u0016\u0010Z\u001a\u00020T8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010VR\u0016\u0010\\\u001a\u00020T8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008[\u0010VR\u0016\u0010]\u001a\u00020T8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008;\u0010VR\u0016\u0010^\u001a\u00020T8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010VR\u001c\u0010a\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001040_8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010`R\u001c\u0010b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060_8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u0010`R\u0016\u0010c\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010=\u00a8\u0006d"
    }
    d2 = {
        "Lteam/opay/swarmfoundation/device/AuthUtil;",
        "",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "context",
        "",
        "deviceId",
        "",
        "N",
        "(Landroid/content/Context;Ljava/lang/String;)V",
        "s",
        "()Ljava/lang/String;",
        "Ljava/io/File;",
        "r",
        "()Ljava/io/File;",
        "",
        "I",
        "()Ljava/lang/Boolean;",
        "u",
        "B",
        "propName",
        "w",
        "(Ljava/lang/String;)Ljava/lang/String;",
        "command",
        "m",
        "Ljava/io/BufferedInputStream;",
        "bufferedInputStream",
        "y",
        "(Ljava/io/BufferedInputStream;)Ljava/lang/String;",
        "Landroid/content/SharedPreferences;",
        "x",
        "()Landroid/content/SharedPreferences;",
        "K",
        "()Z",
        "o",
        "data",
        "M",
        "(Ljava/lang/String;)V",
        "ctx",
        "E",
        "(Landroid/content/Context;)V",
        "t",
        "(Landroid/content/Context;)Ljava/lang/String;",
        "v",
        "z",
        "H",
        "(Landroid/content/Context;)Z",
        "n",
        "text",
        "L",
        "A",
        "",
        "C",
        "(Landroid/content/Context;)Ljava/lang/Integer;",
        "D",
        "str",
        "G",
        "(Ljava/lang/String;)Z",
        "q",
        "b",
        "Ljava/lang/String;",
        "c",
        "TRACE_ID",
        "d",
        "Landroid/content/Context;",
        "e",
        "Z",
        "isInitCpuInfos",
        "f",
        "cpuSerial",
        "g",
        "cpuArchitecture",
        "h",
        "memSize",
        "i",
        "cpuProcessorNum",
        "j",
        "sbManufacturerName",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "k",
        "Ljava/util/HashMap;",
        "memInfo",
        "Lcom/google/gson/JsonArray;",
        "l",
        "Lcom/google/gson/JsonArray;",
        "gyroscopeSensor",
        "accelerometerSensor",
        "gravitySensor",
        "rotationVectorSensor",
        "p",
        "wifiInfo",
        "bluetoothInfo",
        "appListInfo",
        "Lid8;",
        "Lid8;",
        "versionCode",
        "versionName",
        "cpuAbi",
        "swarmfoundation_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lteam/opay/swarmfoundation/device/AuthUtil;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static d:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public static e:Z

.field public static f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static i:I

.field public static j:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static l:Lcom/google/gson/JsonArray;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static m:Lcom/google/gson/JsonArray;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static n:Lcom/google/gson/JsonArray;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static o:Lcom/google/gson/JsonArray;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static p:Lcom/google/gson/JsonArray;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static q:Lcom/google/gson/JsonArray;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static r:Lcom/google/gson/JsonArray;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final s:Lid8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lid8<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final t:Lid8;
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

.field public static u:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/swarmfoundation/device/AuthUtil;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/swarmfoundation/device/AuthUtil;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lteam/opay/swarmfoundation/device/AuthUtil;->a:Lteam/opay/swarmfoundation/device/AuthUtil;

    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    sput-object v0, Lteam/opay/swarmfoundation/device/AuthUtil;->b:Ljava/lang/String;

    .line 11
    .line 12
    sput-object v0, Lteam/opay/swarmfoundation/device/AuthUtil;->c:Ljava/lang/String;

    .line 13
    .line 14
    sput-object v0, Lteam/opay/swarmfoundation/device/AuthUtil;->f:Ljava/lang/String;

    .line 15
    .line 16
    sput-object v0, Lteam/opay/swarmfoundation/device/AuthUtil;->g:Ljava/lang/String;

    .line 17
    .line 18
    sput-object v0, Lteam/opay/swarmfoundation/device/AuthUtil;->h:Ljava/lang/String;

    .line 19
    .line 20
    const/4 v1, -0x1

    .line 21
    sput v1, Lteam/opay/swarmfoundation/device/AuthUtil;->i:I

    .line 22
    .line 23
    sput-object v0, Lteam/opay/swarmfoundation/device/AuthUtil;->j:Ljava/lang/String;

    .line 24
    .line 25
    new-instance v1, Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    sput-object v1, Lteam/opay/swarmfoundation/device/AuthUtil;->k:Ljava/util/HashMap;

    .line 31
    .line 32
    new-instance v1, Lcom/google/gson/JsonArray;

    .line 33
    .line 34
    invoke-direct {v1}, Lcom/google/gson/JsonArray;-><init>()V

    .line 35
    .line 36
    .line 37
    sput-object v1, Lteam/opay/swarmfoundation/device/AuthUtil;->l:Lcom/google/gson/JsonArray;

    .line 38
    .line 39
    new-instance v1, Lcom/google/gson/JsonArray;

    .line 40
    .line 41
    invoke-direct {v1}, Lcom/google/gson/JsonArray;-><init>()V

    .line 42
    .line 43
    .line 44
    sput-object v1, Lteam/opay/swarmfoundation/device/AuthUtil;->m:Lcom/google/gson/JsonArray;

    .line 45
    .line 46
    new-instance v1, Lcom/google/gson/JsonArray;

    .line 47
    .line 48
    invoke-direct {v1}, Lcom/google/gson/JsonArray;-><init>()V

    .line 49
    .line 50
    .line 51
    sput-object v1, Lteam/opay/swarmfoundation/device/AuthUtil;->n:Lcom/google/gson/JsonArray;

    .line 52
    .line 53
    new-instance v1, Lcom/google/gson/JsonArray;

    .line 54
    .line 55
    invoke-direct {v1}, Lcom/google/gson/JsonArray;-><init>()V

    .line 56
    .line 57
    .line 58
    sput-object v1, Lteam/opay/swarmfoundation/device/AuthUtil;->o:Lcom/google/gson/JsonArray;

    .line 59
    .line 60
    new-instance v1, Lcom/google/gson/JsonArray;

    .line 61
    .line 62
    invoke-direct {v1}, Lcom/google/gson/JsonArray;-><init>()V

    .line 63
    .line 64
    .line 65
    sput-object v1, Lteam/opay/swarmfoundation/device/AuthUtil;->p:Lcom/google/gson/JsonArray;

    .line 66
    .line 67
    new-instance v1, Lcom/google/gson/JsonArray;

    .line 68
    .line 69
    invoke-direct {v1}, Lcom/google/gson/JsonArray;-><init>()V

    .line 70
    .line 71
    .line 72
    sput-object v1, Lteam/opay/swarmfoundation/device/AuthUtil;->q:Lcom/google/gson/JsonArray;

    .line 73
    .line 74
    new-instance v1, Lcom/google/gson/JsonArray;

    .line 75
    .line 76
    invoke-direct {v1}, Lcom/google/gson/JsonArray;-><init>()V

    .line 77
    .line 78
    .line 79
    sput-object v1, Lteam/opay/swarmfoundation/device/AuthUtil;->r:Lcom/google/gson/JsonArray;

    .line 80
    .line 81
    sget-object v1, Lteam/opay/swarmfoundation/device/AuthUtil$versionCode$1;->INSTANCE:Lteam/opay/swarmfoundation/device/AuthUtil$versionCode$1;

    .line 82
    .line 83
    invoke-static {v1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    sput-object v1, Lteam/opay/swarmfoundation/device/AuthUtil;->s:Lid8;

    .line 88
    .line 89
    sget-object v1, Lteam/opay/swarmfoundation/device/AuthUtil$versionName$1;->INSTANCE:Lteam/opay/swarmfoundation/device/AuthUtil$versionName$1;

    .line 90
    .line 91
    invoke-static {v1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    sput-object v1, Lteam/opay/swarmfoundation/device/AuthUtil;->t:Lid8;

    .line 96
    .line 97
    sput-object v0, Lteam/opay/swarmfoundation/device/AuthUtil;->u:Ljava/lang/String;

    .line 98
    .line 99
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

.method public static final F()V
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/swarmfoundation/device/AuthUtil;->a:Lteam/opay/swarmfoundation/device/AuthUtil;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/swarmfoundation/device/AuthUtil;->d:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lteam/opay/swarmfoundation/device/AuthUtil;->H(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    sget-object v1, Lteam/opay/swarmfoundation/device/AuthUtil;->d:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lteam/opay/swarmfoundation/device/AuthUtil;->t(Landroid/content/Context;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    sget-object v1, Lteam/opay/swarmfoundation/device/AuthUtil;->d:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lteam/opay/swarmfoundation/device/AuthUtil;->C(Landroid/content/Context;)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    sget-object v1, Lteam/opay/swarmfoundation/device/AuthUtil;->d:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lteam/opay/swarmfoundation/device/AuthUtil;->D(Landroid/content/Context;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lteam/opay/swarmfoundation/device/AuthUtil;->z()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lteam/opay/swarmfoundation/device/AuthUtil;->o()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public static final J(Lteam/opay/swarmfoundation/device/AuthUtil;)V
    .locals 10

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lteam/opay/swarmfoundation/device/AuthUtil;->a:Lteam/opay/swarmfoundation/device/AuthUtil;

    .line 7
    .line 8
    const-string v1, "gsm.version.baseband"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lteam/opay/swarmfoundation/device/AuthUtil;->w(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x2

    .line 16
    const/4 v4, 0x1

    .line 17
    const/4 v5, 0x0

    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    if-nez v6, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string v6, "1.0.0.0"

    .line 28
    .line 29
    invoke-static {v1, v6, v5, v3, v2}, Lkotlin/text/StringsKt;->d0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v1, 0x0

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 39
    :goto_1
    const-string v6, "ro.build.flavor"

    .line 40
    .line 41
    invoke-virtual {v0, v6}, Lteam/opay/swarmfoundation/device/AuthUtil;->w(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    if-eqz v6, :cond_4

    .line 46
    .line 47
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    if-nez v7, :cond_3

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_3
    const-string v7, "vbox"

    .line 55
    .line 56
    invoke-static {v6, v7, v5, v3, v2}, Lkotlin/text/StringsKt;->d0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    if-nez v7, :cond_4

    .line 61
    .line 62
    const-string v7, "sdk_gphone"

    .line 63
    .line 64
    invoke-static {v6, v7, v5, v3, v2}, Lkotlin/text/StringsKt;->d0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-eqz v6, :cond_5

    .line 69
    .line 70
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 71
    .line 72
    :cond_5
    const-string v6, "ro.product.board"

    .line 73
    .line 74
    invoke-virtual {v0, v6}, Lteam/opay/swarmfoundation/device/AuthUtil;->w(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    const-string v7, "android"

    .line 79
    .line 80
    if-eqz v6, :cond_7

    .line 81
    .line 82
    invoke-static {v6, v7, v5, v3, v2}, Lkotlin/text/StringsKt;->d0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    if-nez v8, :cond_6

    .line 87
    .line 88
    const-string v8, "goldfish"

    .line 89
    .line 90
    invoke-static {v6, v8, v5, v3, v2}, Lkotlin/text/StringsKt;->d0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    if-eqz v6, :cond_7

    .line 95
    .line 96
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 97
    .line 98
    :cond_7
    const-string v6, "ro.board.platform"

    .line 99
    .line 100
    invoke-virtual {v0, v6}, Lteam/opay/swarmfoundation/device/AuthUtil;->w(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    if-eqz v6, :cond_9

    .line 105
    .line 106
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    if-nez v8, :cond_8

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_8
    invoke-static {v6, v7, v5, v3, v2}, Lkotlin/text/StringsKt;->d0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    if-eqz v6, :cond_a

    .line 118
    .line 119
    :cond_9
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 120
    .line 121
    :cond_a
    const-string v6, "ro.hardware"

    .line 122
    .line 123
    invoke-virtual {v0, v6}, Lteam/opay/swarmfoundation/device/AuthUtil;->w(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    if-nez v6, :cond_b

    .line 128
    .line 129
    add-int/lit8 v1, v1, 0x1

    .line 130
    .line 131
    goto :goto_5

    .line 132
    :cond_b
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    const-string v8, "this as java.lang.String).toLowerCase()"

    .line 137
    .line 138
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    const-string v9, "ttvm"

    .line 142
    .line 143
    invoke-static {v7, v9, v5, v3, v2}, Lkotlin/text/StringsKt;->d0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v7

    .line 147
    if-eqz v7, :cond_c

    .line 148
    .line 149
    :goto_4
    add-int/lit8 v1, v1, 0xa

    .line 150
    .line 151
    goto :goto_5

    .line 152
    :cond_c
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    const-string v7, "nox"

    .line 160
    .line 161
    invoke-static {v6, v7, v5, v3, v2}, Lkotlin/text/StringsKt;->d0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    if-eqz v2, :cond_d

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_d
    :goto_5
    sget-object v2, Lteam/opay/swarmfoundation/device/AuthUtil;->d:Landroid/content/Context;

    .line 169
    .line 170
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    const-string v3, "android.hardware.camera.flash"

    .line 178
    .line 179
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    if-nez v2, :cond_e

    .line 184
    .line 185
    add-int/lit8 v1, v1, 0x1

    .line 186
    .line 187
    :cond_e
    sget-object v2, Lteam/opay/swarmfoundation/device/AuthUtil;->d:Landroid/content/Context;

    .line 188
    .line 189
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    const-string v3, "sensor"

    .line 193
    .line 194
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    const-string v3, "null cannot be cast to non-null type android.hardware.SensorManager"

    .line 199
    .line 200
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    check-cast v2, Landroid/hardware/SensorManager;

    .line 204
    .line 205
    const/4 v3, -0x1

    .line 206
    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    const/4 v3, 0x7

    .line 215
    if-ge v2, v3, :cond_f

    .line 216
    .line 217
    add-int/lit8 v1, v1, 0x1

    .line 218
    .line 219
    :cond_f
    const-string v2, "cat /proc/self/cgroup"

    .line 220
    .line 221
    invoke-virtual {v0, v2}, Lteam/opay/swarmfoundation/device/AuthUtil;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    if-eqz v2, :cond_10

    .line 226
    .line 227
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    if-nez v2, :cond_11

    .line 232
    .line 233
    :cond_10
    add-int/lit8 v1, v1, 0x1

    .line 234
    .line 235
    :cond_11
    const-string v2, "\u8c03\u7528\u4e86isEnulatorLazy \u5199\u5165sp"

    .line 236
    .line 237
    invoke-virtual {p0, v2}, Lteam/opay/swarmfoundation/device/AuthUtil;->M(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0}, Lteam/opay/swarmfoundation/device/AuthUtil;->x()Landroid/content/SharedPreferences;

    .line 241
    .line 242
    .line 243
    move-result-object p0

    .line 244
    if-eqz p0, :cond_13

    .line 245
    .line 246
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 247
    .line 248
    .line 249
    move-result-object p0

    .line 250
    if-eqz p0, :cond_13

    .line 251
    .line 252
    const/4 v0, 0x3

    .line 253
    if-lt v1, v0, :cond_12

    .line 254
    .line 255
    goto :goto_6

    .line 256
    :cond_12
    const/4 v4, 0x0

    .line 257
    :goto_6
    const-string v0, "sp_is_virtual"

    .line 258
    .line 259
    invoke-interface {p0, v0, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 260
    .line 261
    .line 262
    move-result-object p0

    .line 263
    if-eqz p0, :cond_13

    .line 264
    .line 265
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 266
    .line 267
    .line 268
    :cond_13
    return-void
.end method

.method public static final O(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "$deviceId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p0, :cond_1

    .line 7
    .line 8
    :try_start_0
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-nez p0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string v0, "mounted"

    .line 21
    .line 22
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    new-instance p0, Ljava/io/File;

    .line 29
    .line 30
    sget-object v0, Lteam/opay/swarmfoundation/device/AuthUtil;->a:Lteam/opay/swarmfoundation/device/AuthUtil;

    .line 31
    .line 32
    invoke-virtual {v0}, Lteam/opay/swarmfoundation/device/AuthUtil;->r()Ljava/io/File;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "deviceid.txt"

    .line 37
    .line 38
    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_0

    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception p0

    .line 59
    goto :goto_1

    .line 60
    :cond_0
    :goto_0
    new-instance v0, Ljava/io/FileOutputStream;

    .line 61
    .line 62
    const/4 v1, 0x0

    .line 63
    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 64
    .line 65
    .line 66
    sget-object p0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 67
    .line 68
    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    const-string p1, "this as java.lang.String).getBytes(charset)"

    .line 73
    .line 74
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 88
    .line 89
    .line 90
    :cond_1
    :goto_2
    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/swarmfoundation/device/AuthUtil;->O(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b()V
    .locals 0

    .line 1
    invoke-static {}, Lteam/opay/swarmfoundation/device/AuthUtil;->F()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lteam/opay/swarmfoundation/device/AuthUtil;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/swarmfoundation/device/AuthUtil;->p(Lteam/opay/swarmfoundation/device/AuthUtil;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lteam/opay/swarmfoundation/device/AuthUtil;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/swarmfoundation/device/AuthUtil;->J(Lteam/opay/swarmfoundation/device/AuthUtil;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic e()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/swarmfoundation/device/AuthUtil;->d:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic f()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/swarmfoundation/device/AuthUtil;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic g()I
    .locals 1

    .line 1
    sget v0, Lteam/opay/swarmfoundation/device/AuthUtil;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic h()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/swarmfoundation/device/AuthUtil;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic i(Lteam/opay/swarmfoundation/device/AuthUtil;)Landroid/content/SharedPreferences;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/swarmfoundation/device/AuthUtil;->x()Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic j(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lteam/opay/swarmfoundation/device/AuthUtil;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic k(I)V
    .locals 0

    .line 1
    sput p0, Lteam/opay/swarmfoundation/device/AuthUtil;->i:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic l(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lteam/opay/swarmfoundation/device/AuthUtil;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static final p(Lteam/opay/swarmfoundation/device/AuthUtil;)V
    .locals 7

    .line 1
    const-string v0, "sp_auth_cpu"

    .line 2
    .line 3
    const-string v1, "0000"

    .line 4
    .line 5
    const-string v2, "this$0"

    .line 6
    .line 7
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object v2, Lteam/opay/swarmfoundation/device/AuthUtil;->u:Ljava/lang/String;

    .line 11
    .line 12
    const-string v3, ""

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_3

    .line 21
    .line 22
    :cond_0
    const/4 v2, 0x0

    .line 23
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    const-string v5, "getprop ro.product.cpu.abi"

    .line 28
    .line 29
    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    new-instance v5, Ljava/io/BufferedReader;

    .line 34
    .line 35
    new-instance v6, Ljava/io/InputStreamReader;

    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-direct {v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 42
    .line 43
    .line 44
    const/16 v4, 0x400

    .line 45
    .line 46
    invoke-direct {v5, v6, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 47
    .line 48
    .line 49
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const-string v4, "readLine(...)"

    .line 54
    .line 55
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    .line 57
    .line 58
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    .line 60
    .line 61
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 62
    .line 63
    .line 64
    goto :goto_3

    .line 65
    :catch_0
    move-exception v4

    .line 66
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 67
    .line 68
    .line 69
    goto :goto_3

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    move-object v2, v5

    .line 72
    goto/16 :goto_7

    .line 73
    .line 74
    :catch_1
    move-object v4, v2

    .line 75
    :goto_0
    move-object v2, v5

    .line 76
    goto :goto_1

    .line 77
    :catch_2
    move-object v4, v3

    .line 78
    goto :goto_0

    .line 79
    :catchall_1
    move-exception p0

    .line 80
    goto/16 :goto_7

    .line 81
    .line 82
    :catch_3
    move-object v4, v3

    .line 83
    :goto_1
    :try_start_4
    sput-object v3, Lteam/opay/swarmfoundation/device/AuthUtil;->u:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 84
    .line 85
    if-eqz v2, :cond_1

    .line 86
    .line 87
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :catch_4
    move-exception v2

    .line 92
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 93
    .line 94
    .line 95
    :cond_1
    :goto_2
    move-object v2, v4

    .line 96
    :goto_3
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-nez v4, :cond_2

    .line 101
    .line 102
    const-string v2, "arm"

    .line 103
    .line 104
    :cond_2
    sput-object v2, Lteam/opay/swarmfoundation/device/AuthUtil;->u:Ljava/lang/String;

    .line 105
    .line 106
    sget-object v2, Lteam/opay/swarmfoundation/device/AuthUtil;->a:Lteam/opay/swarmfoundation/device/AuthUtil;

    .line 107
    .line 108
    invoke-virtual {v2}, Lteam/opay/swarmfoundation/device/AuthUtil;->x()Landroid/content/SharedPreferences;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    if-eqz v2, :cond_3

    .line 113
    .line 114
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    if-eqz v2, :cond_3

    .line 119
    .line 120
    const-string v4, "sp_auth_cpu_abi"

    .line 121
    .line 122
    sget-object v5, Lteam/opay/swarmfoundation/device/AuthUtil;->u:Ljava/lang/String;

    .line 123
    .line 124
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    if-eqz v2, :cond_3

    .line 129
    .line 130
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 131
    .line 132
    .line 133
    :cond_3
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 134
    .line 135
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 136
    .line 137
    .line 138
    iput-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 139
    .line 140
    :try_start_6
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    const-string v4, "cat /proc/cpuinfo"

    .line 145
    .line 146
    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    new-instance v4, Ljava/io/InputStreamReader;

    .line 151
    .line 152
    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 157
    .line 158
    .line 159
    new-instance v3, Ljava/io/LineNumberReader;

    .line 160
    .line 161
    invoke-direct {v3, v4}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 162
    .line 163
    .line 164
    new-instance v4, Lteam/opay/swarmfoundation/device/AuthUtil$getCPUInfos$1$1;

    .line 165
    .line 166
    invoke-direct {v4, v2}, Lteam/opay/swarmfoundation/device/AuthUtil$getCPUInfos$1$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 167
    .line 168
    .line 169
    invoke-static {v3, v4}, Lkotlin/io/b;->d(Ljava/io/Reader;Lkotlin/jvm/functions/Function1;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 170
    .line 171
    .line 172
    sget-object p0, Lteam/opay/swarmfoundation/device/AuthUtil;->f:Ljava/lang/String;

    .line 173
    .line 174
    if-eqz p0, :cond_4

    .line 175
    .line 176
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 177
    .line 178
    .line 179
    move-result p0

    .line 180
    if-nez p0, :cond_5

    .line 181
    .line 182
    :cond_4
    sput-object v1, Lteam/opay/swarmfoundation/device/AuthUtil;->f:Ljava/lang/String;

    .line 183
    .line 184
    :cond_5
    sget-object p0, Lteam/opay/swarmfoundation/device/AuthUtil;->a:Lteam/opay/swarmfoundation/device/AuthUtil;

    .line 185
    .line 186
    invoke-virtual {p0}, Lteam/opay/swarmfoundation/device/AuthUtil;->x()Landroid/content/SharedPreferences;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    if-eqz p0, :cond_8

    .line 191
    .line 192
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    if-eqz p0, :cond_8

    .line 197
    .line 198
    sget-object v1, Lteam/opay/swarmfoundation/device/AuthUtil;->f:Ljava/lang/String;

    .line 199
    .line 200
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    if-eqz p0, :cond_8

    .line 205
    .line 206
    :goto_4
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 207
    .line 208
    .line 209
    goto :goto_5

    .line 210
    :catchall_2
    move-exception p0

    .line 211
    goto :goto_6

    .line 212
    :catch_5
    move-exception v2

    .line 213
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 214
    .line 215
    .line 216
    const-string v2, "\u5f00\u59cb\u8c03\u7528\u4e86 getCPUSerial \u5f02\u5e38"

    .line 217
    .line 218
    invoke-virtual {p0, v2}, Lteam/opay/swarmfoundation/device/AuthUtil;->M(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 219
    .line 220
    .line 221
    sget-object p0, Lteam/opay/swarmfoundation/device/AuthUtil;->f:Ljava/lang/String;

    .line 222
    .line 223
    if-eqz p0, :cond_6

    .line 224
    .line 225
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 226
    .line 227
    .line 228
    move-result p0

    .line 229
    if-nez p0, :cond_7

    .line 230
    .line 231
    :cond_6
    sput-object v1, Lteam/opay/swarmfoundation/device/AuthUtil;->f:Ljava/lang/String;

    .line 232
    .line 233
    :cond_7
    sget-object p0, Lteam/opay/swarmfoundation/device/AuthUtil;->a:Lteam/opay/swarmfoundation/device/AuthUtil;

    .line 234
    .line 235
    invoke-virtual {p0}, Lteam/opay/swarmfoundation/device/AuthUtil;->x()Landroid/content/SharedPreferences;

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    if-eqz p0, :cond_8

    .line 240
    .line 241
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    if-eqz p0, :cond_8

    .line 246
    .line 247
    sget-object v1, Lteam/opay/swarmfoundation/device/AuthUtil;->f:Ljava/lang/String;

    .line 248
    .line 249
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 250
    .line 251
    .line 252
    move-result-object p0

    .line 253
    if-eqz p0, :cond_8

    .line 254
    .line 255
    goto :goto_4

    .line 256
    :cond_8
    :goto_5
    const/4 p0, 0x1

    .line 257
    sput-boolean p0, Lteam/opay/swarmfoundation/device/AuthUtil;->e:Z

    .line 258
    .line 259
    return-void

    .line 260
    :goto_6
    sget-object v2, Lteam/opay/swarmfoundation/device/AuthUtil;->f:Ljava/lang/String;

    .line 261
    .line 262
    if-eqz v2, :cond_9

    .line 263
    .line 264
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    if-nez v2, :cond_a

    .line 269
    .line 270
    :cond_9
    sput-object v1, Lteam/opay/swarmfoundation/device/AuthUtil;->f:Ljava/lang/String;

    .line 271
    .line 272
    :cond_a
    sget-object v1, Lteam/opay/swarmfoundation/device/AuthUtil;->a:Lteam/opay/swarmfoundation/device/AuthUtil;

    .line 273
    .line 274
    invoke-virtual {v1}, Lteam/opay/swarmfoundation/device/AuthUtil;->x()Landroid/content/SharedPreferences;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    if-eqz v1, :cond_b

    .line 279
    .line 280
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    if-eqz v1, :cond_b

    .line 285
    .line 286
    sget-object v2, Lteam/opay/swarmfoundation/device/AuthUtil;->f:Ljava/lang/String;

    .line 287
    .line 288
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    if-eqz v0, :cond_b

    .line 293
    .line 294
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 295
    .line 296
    .line 297
    :cond_b
    throw p0

    .line 298
    :goto_7
    if-eqz v2, :cond_c

    .line 299
    .line 300
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 301
    .line 302
    .line 303
    goto :goto_8

    .line 304
    :catch_6
    move-exception v0

    .line 305
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 306
    .line 307
    .line 308
    :cond_c
    :goto_8
    throw p0
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/swarmfoundation/device/AuthUtil;->c:Ljava/lang/String;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "toString(...)"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lteam/opay/swarmfoundation/device/AuthUtil;->c:Ljava/lang/String;

    .line 23
    .line 24
    :cond_0
    sget-object v0, Lteam/opay/swarmfoundation/device/AuthUtil;->c:Ljava/lang/String;

    .line 25
    .line 26
    return-object v0
.end method

.method public final B()Ljava/lang/String;
    .locals 7

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v0, "toString(...)"

    .line 10
    .line 11
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v5, 0x4

    .line 15
    const/4 v6, 0x0

    .line 16
    const-string v2, "-"

    .line 17
    .line 18
    const-string v3, ""

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public final C(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    sput-object p1, Lteam/opay/swarmfoundation/device/AuthUtil;->d:Landroid/content/Context;

    .line 10
    .line 11
    sget-object p1, Lteam/opay/swarmfoundation/device/AuthUtil;->s:Lid8;

    .line 12
    .line 13
    invoke-interface {p1}, Lid8;->getValue()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/Integer;

    .line 18
    .line 19
    return-object p1
.end method

.method public final D(Landroid/content/Context;)Ljava/lang/String;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    sput-object p1, Lteam/opay/swarmfoundation/device/AuthUtil;->d:Landroid/content/Context;

    .line 10
    .line 11
    sget-object p1, Lteam/opay/swarmfoundation/device/AuthUtil;->t:Lid8;

    .line 12
    .line 13
    invoke-interface {p1}, Lid8;->getValue()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/String;

    .line 18
    .line 19
    return-object p1
.end method

.method public final E(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 1
    const-string v0, "ctx"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    sput-object p1, Lteam/opay/swarmfoundation/device/AuthUtil;->d:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {}, Le60;->g()Ljava/util/concurrent/Executor;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    new-instance v0, Lx70;

    .line 17
    .line 18
    invoke-direct {v0}, Lx70;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final G(Ljava/lang/String;)Z
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "str"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-lez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v0, "this as java.lang.String).toCharArray()"

    .line 18
    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    array-length v0, p1

    .line 23
    const/4 v2, 0x0

    .line 24
    :goto_0
    if-ge v2, v0, :cond_1

    .line 25
    .line 26
    aget-char v3, p1, v2

    .line 27
    .line 28
    const/16 v4, 0x4e00

    .line 29
    .line 30
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->i(II)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-ltz v4, :cond_0

    .line 35
    .line 36
    const v4, 0x9fa5

    .line 37
    .line 38
    .line 39
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->i(II)I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-gtz v3, :cond_0

    .line 44
    .line 45
    const/4 p1, 0x1

    .line 46
    return p1

    .line 47
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    return v1
.end method

.method public final H(Landroid/content/Context;)Z
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    sput-object p1, Lteam/opay/swarmfoundation/device/AuthUtil;->d:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/swarmfoundation/device/AuthUtil;->I()Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public final I()Ljava/lang/Boolean;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/swarmfoundation/device/AuthUtil;->x()Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "sp_is_virtual"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v3, 0x1

    .line 15
    if-ne v0, v3, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v3, 0x0

    .line 19
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v4, "\u5f00\u59cb\u8c03\u7528\u4e86isEnulatorLazy isContainer "

    .line 25
    .line 26
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p0, v0}, Lteam/opay/swarmfoundation/device/AuthUtil;->M(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0}, Lteam/opay/swarmfoundation/device/AuthUtil;->x()Landroid/content/SharedPreferences;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    :cond_1
    return-object v0

    .line 57
    :cond_2
    sget-object v3, Lteam/opay/swarmfoundation/device/AuthUtil;->d:Landroid/content/Context;

    .line 58
    .line 59
    if-nez v3, :cond_3

    .line 60
    .line 61
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 62
    .line 63
    return-object v0

    .line 64
    :cond_3
    invoke-static {}, Le60;->g()Ljava/util/concurrent/Executor;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    new-instance v4, Lw70;

    .line 69
    .line 70
    invoke-direct {v4, p0}, Lw70;-><init>(Lteam/opay/swarmfoundation/device/AuthUtil;)V

    .line 71
    .line 72
    .line 73
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lteam/opay/swarmfoundation/device/AuthUtil;->x()Landroid/content/SharedPreferences;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    if-eqz v3, :cond_4

    .line 81
    .line 82
    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    :cond_4
    return-object v0
.end method

.method public final K()Z
    .locals 1

    .line 1
    sget-boolean v0, Lteam/opay/swarmfoundation/device/AuthUtil;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public final L(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "text"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v0, "MD5"

    .line 7
    .line 8
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "this as java.lang.String).getBytes(charset)"

    .line 19
    .line 20
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-virtual {v0, v1, v3, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    array-length v2, v0

    .line 41
    :goto_0
    if-ge v3, v2, :cond_1

    .line 42
    .line 43
    aget-byte v4, v0, v3

    .line 44
    .line 45
    and-int/lit16 v4, v4, 0xff

    .line 46
    .line 47
    const/16 v5, 0xf

    .line 48
    .line 49
    if-gt v4, v5, :cond_0

    .line 50
    .line 51
    const-string v5, "0"

    .line 52
    .line 53
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    add-int/lit8 v3, v3, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const-string v1, "toString(...)"

    .line 71
    .line 72
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    .line 75
    return-object v0

    .line 76
    :catchall_0
    return-object p1
.end method

.method public final M(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final N(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    .line 3
    new-instance v1, Lv70;

    .line 4
    .line 5
    invoke-direct {v1, p1, p2}, Lv70;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final m(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "this as java.lang.String).getBytes(charset)"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    const-string v3, "sh"

    .line 9
    .line 10
    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 11
    .line 12
    .line 13
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 14
    :try_start_1
    new-instance v3, Ljava/io/BufferedOutputStream;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 21
    .line 22
    .line 23
    :try_start_2
    new-instance v4, Ljava/io/BufferedInputStream;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 30
    .line 31
    .line 32
    :try_start_3
    sget-object v5, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 33
    .line 34
    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write([B)V

    .line 42
    .line 43
    .line 44
    const-string p1, "\n"

    .line 45
    .line 46
    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write([B)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v4}, Lteam/opay/swarmfoundation/device/AuthUtil;->y(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 69
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    .line 76
    .line 77
    :goto_0
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :catch_1
    move-exception v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 83
    .line 84
    .line 85
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 86
    .line 87
    .line 88
    return-object p1

    .line 89
    :catchall_0
    move-exception p1

    .line 90
    :goto_2
    move-object v1, v3

    .line 91
    goto :goto_4

    .line 92
    :catch_2
    nop

    .line 93
    goto :goto_7

    .line 94
    :catchall_1
    move-exception p1

    .line 95
    move-object v4, v1

    .line 96
    goto :goto_2

    .line 97
    :catch_3
    nop

    .line 98
    move-object v4, v1

    .line 99
    goto :goto_7

    .line 100
    :catchall_2
    move-exception p1

    .line 101
    move-object v4, v1

    .line 102
    goto :goto_4

    .line 103
    :catch_4
    nop

    .line 104
    move-object v3, v1

    .line 105
    :goto_3
    move-object v4, v3

    .line 106
    goto :goto_7

    .line 107
    :catchall_3
    move-exception p1

    .line 108
    move-object v2, v1

    .line 109
    move-object v4, v2

    .line 110
    goto :goto_4

    .line 111
    :catch_5
    nop

    .line 112
    move-object v2, v1

    .line 113
    move-object v3, v2

    .line 114
    goto :goto_3

    .line 115
    :goto_4
    if-eqz v1, :cond_0

    .line 116
    .line 117
    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 118
    .line 119
    .line 120
    goto :goto_5

    .line 121
    :catch_6
    move-exception v0

    .line 122
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 123
    .line 124
    .line 125
    :cond_0
    :goto_5
    if-eqz v4, :cond_1

    .line 126
    .line 127
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 128
    .line 129
    .line 130
    goto :goto_6

    .line 131
    :catch_7
    move-exception v0

    .line 132
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 133
    .line 134
    .line 135
    :cond_1
    :goto_6
    if-eqz v2, :cond_2

    .line 136
    .line 137
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 138
    .line 139
    .line 140
    :cond_2
    throw p1

    .line 141
    :goto_7
    if-eqz v3, :cond_3

    .line 142
    .line 143
    :try_start_8
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    .line 144
    .line 145
    .line 146
    goto :goto_8

    .line 147
    :catch_8
    move-exception p1

    .line 148
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 149
    .line 150
    .line 151
    :cond_3
    :goto_8
    if-eqz v4, :cond_4

    .line 152
    .line 153
    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    .line 154
    .line 155
    .line 156
    goto :goto_9

    .line 157
    :catch_9
    move-exception p1

    .line 158
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 159
    .line 160
    .line 161
    :cond_4
    :goto_9
    if-eqz v2, :cond_5

    .line 162
    .line 163
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 164
    .line 165
    .line 166
    :cond_5
    return-object v1
.end method

.method public final n(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    const-string v1, "auth"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "android"

    .line 13
    .line 14
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    move-object v0, v3

    .line 25
    :goto_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-nez v3, :cond_1

    .line 30
    .line 31
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v3, "android_id"

    .line 36
    .line 37
    invoke-static {p1, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string v3, "getString(...)"

    .line 42
    .line 43
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    move-object v0, p1

    .line 47
    goto :goto_1

    .line 48
    :catch_0
    move-exception p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    .line 51
    .line 52
    :goto_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 61
    .line 62
    .line 63
    :cond_1
    return-object v0
.end method

.method public final o()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lteam/opay/swarmfoundation/device/AuthUtil;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Le60;->g()Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Ly70;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Ly70;-><init>(Lteam/opay/swarmfoundation/device/AuthUtil;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final q()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/swarmfoundation/device/AuthUtil;->K()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "arm"

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    sget-object v0, Lteam/opay/swarmfoundation/device/AuthUtil;->u:Ljava/lang/String;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_3

    .line 19
    .line 20
    :cond_1
    invoke-virtual {p0}, Lteam/opay/swarmfoundation/device/AuthUtil;->x()Landroid/content/SharedPreferences;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    const-string v1, "sp_auth_cpu_abi"

    .line 27
    .line 28
    const-string v2, ""

    .line 29
    .line 30
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    const/4 v0, 0x0

    .line 36
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sput-object v0, Lteam/opay/swarmfoundation/device/AuthUtil;->u:Ljava/lang/String;

    .line 41
    .line 42
    :cond_3
    const-string v0, "\u5f00\u59cb\u8c03\u7528\u4e86 getCpuAbi"

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lteam/opay/swarmfoundation/device/AuthUtil;->M(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sget-object v0, Lteam/opay/swarmfoundation/device/AuthUtil;->u:Ljava/lang/String;

    .line 48
    .line 49
    return-object v0
.end method

.method public final r()Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/swarmfoundation/device/AuthUtil;->d:Landroid/content/Context;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    const-string v2, "opay"

    .line 16
    .line 17
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 4
    .line 5
    invoke-virtual {p0}, Lteam/opay/swarmfoundation/device/AuthUtil;->r()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "deviceid.txt"

    .line 10
    .line 11
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    new-instance v2, Ljava/io/FileInputStream;

    .line 21
    .line 22
    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Ljava/io/BufferedReader;

    .line 26
    .line 27
    new-instance v3, Ljava/io/InputStreamReader;

    .line 28
    .line 29
    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 43
    .line 44
    .line 45
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    return-object v3

    .line 49
    :catch_0
    move-exception v1

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    return-object v0

    .line 52
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    .line 54
    .line 55
    return-object v0
.end method

.method public final t(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/swarmfoundation/device/AuthUtil;->b:Ljava/lang/String;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v0, "device from memory "

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    sget-object v0, Lteam/opay/swarmfoundation/device/AuthUtil;->b:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    sget-object p1, Lteam/opay/swarmfoundation/device/AuthUtil;->b:Ljava/lang/String;

    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    const-string v1, "auth"

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move-object v1, v0

    .line 39
    :goto_0
    const-string v2, "deviceid.txt"

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    const-string v0, ""

    .line 44
    .line 45
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    :cond_2
    if-eqz v0, :cond_3

    .line 50
    .line 51
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-lez v3, :cond_3

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    sput-object p1, Lteam/opay/swarmfoundation/device/AuthUtil;->b:Ljava/lang/String;

    .line 62
    .line 63
    new-instance p1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v0, "device from sp "

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    sget-object v0, Lteam/opay/swarmfoundation/device/AuthUtil;->b:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    sget-object p1, Lteam/opay/swarmfoundation/device/AuthUtil;->b:Ljava/lang/String;

    .line 79
    .line 80
    return-object p1

    .line 81
    :cond_3
    invoke-virtual {p0}, Lteam/opay/swarmfoundation/device/AuthUtil;->s()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-lez v3, :cond_5

    .line 90
    .line 91
    sput-object v0, Lteam/opay/swarmfoundation/device/AuthUtil;->b:Ljava/lang/String;

    .line 92
    .line 93
    if-eqz v1, :cond_4

    .line 94
    .line 95
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    if-eqz p1, :cond_4

    .line 100
    .line 101
    sget-object v1, Lteam/opay/swarmfoundation/device/AuthUtil;->b:Ljava/lang/String;

    .line 102
    .line 103
    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    if-eqz p1, :cond_4

    .line 108
    .line 109
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 110
    .line 111
    .line 112
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    const-string v1, "device from file and  write to sp "

    .line 118
    .line 119
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    sget-object v1, Lteam/opay/swarmfoundation/device/AuthUtil;->b:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    return-object v0

    .line 128
    :cond_5
    invoke-virtual {p0}, Lteam/opay/swarmfoundation/device/AuthUtil;->v()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    const-string v3, "this as java.lang.String).toUpperCase()"

    .line 133
    .line 134
    if-eqz v0, :cond_7

    .line 135
    .line 136
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    if-nez v4, :cond_6

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_6
    invoke-virtual {p0, v0}, Lteam/opay/swarmfoundation/device/AuthUtil;->L(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lteam/opay/swarmfoundation/device/AuthUtil;->u()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    :goto_2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 160
    .line 161
    .line 162
    move-result v4

    .line 163
    if-nez v4, :cond_8

    .line 164
    .line 165
    invoke-virtual {p0}, Lteam/opay/swarmfoundation/device/AuthUtil;->B()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {p0, v0}, Lteam/opay/swarmfoundation/device/AuthUtil;->L(Ljava/lang/String;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    :cond_8
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    if-nez v4, :cond_9

    .line 185
    .line 186
    invoke-virtual {p0, p1}, Lteam/opay/swarmfoundation/device/AuthUtil;->n(Landroid/content/Context;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {p0, v0}, Lteam/opay/swarmfoundation/device/AuthUtil;->L(Ljava/lang/String;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    :cond_9
    sput-object v0, Lteam/opay/swarmfoundation/device/AuthUtil;->b:Ljava/lang/String;

    .line 202
    .line 203
    if-eqz v1, :cond_a

    .line 204
    .line 205
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    if-eqz v1, :cond_a

    .line 210
    .line 211
    sget-object v3, Lteam/opay/swarmfoundation/device/AuthUtil;->b:Ljava/lang/String;

    .line 212
    .line 213
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    if-eqz v1, :cond_a

    .line 218
    .line 219
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 220
    .line 221
    .line 222
    :cond_a
    sget-object v1, Lteam/opay/swarmfoundation/device/AuthUtil;->b:Ljava/lang/String;

    .line 223
    .line 224
    invoke-virtual {p0, p1, v1}, Lteam/opay/swarmfoundation/device/AuthUtil;->N(Landroid/content/Context;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    new-instance p1, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    .line 231
    .line 232
    const-string v1, "device building ,write sp ,and write to file "

    .line 233
    .line 234
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    return-object v0
.end method

.method public final u()Ljava/lang/String;
    .locals 6

    .line 1
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    array-length v2, v0

    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    if-ge v3, v2, :cond_0

    .line 10
    .line 11
    aget-object v4, v0, v3

    .line 12
    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v2, "35"

    .line 34
    .line 35
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    sget-object v1, Landroid/os/Build;->HOST:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    sget-object v1, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    sget-object v1, Landroid/os/Build;->USER:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lteam/opay/swarmfoundation/device/AuthUtil;->z()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Lteam/opay/swarmfoundation/device/AuthUtil;->v()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    sget-object v1, Lteam/opay/swarmfoundation/device/AuthUtil;->d:Landroid/content/Context;

    .line 116
    .line 117
    invoke-virtual {p0, v1}, Lteam/opay/swarmfoundation/device/AuthUtil;->n(Landroid/content/Context;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    const-string v2, "sb."

    .line 130
    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    const-string v1, "toString(...)"

    .line 142
    .line 143
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v0}, Lteam/opay/swarmfoundation/device/AuthUtil;->L(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    const-string v1, "this as java.lang.String).toUpperCase()"

    .line 155
    .line 156
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    return-object v0
.end method

.method public final v()Ljava/lang/String;
    .locals 10
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, ""

    .line 4
    .line 5
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    invoke-static {v3}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-eqz v4, :cond_4

    .line 22
    .line 23
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Ljava/net/NetworkInterface;

    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    const-string v6, "wlan0"

    .line 34
    .line 35
    invoke-static {v5, v6, v1}, Lkotlin/text/StringsKt;->I(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_0

    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    if-nez v3, :cond_1

    .line 46
    .line 47
    return-object v2

    .line 48
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    array-length v5, v3

    .line 54
    const/4 v6, 0x0

    .line 55
    :goto_0
    if-ge v6, v5, :cond_2

    .line 56
    .line 57
    aget-byte v7, v3, v6

    .line 58
    .line 59
    sget-object v8, Lf6e;->a:Lf6e;

    .line 60
    .line 61
    const-string v8, "%02X:"

    .line 62
    .line 63
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    new-array v9, v1, [Ljava/lang/Object;

    .line 68
    .line 69
    aput-object v7, v9, v0

    .line 70
    .line 71
    invoke-static {v9, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    const-string v8, "format(format, *args)"

    .line 80
    .line 81
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    add-int/2addr v6, v1

    .line 88
    goto :goto_0

    .line 89
    :cond_2
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-lez v0, :cond_3

    .line 94
    .line 95
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    sub-int/2addr v0, v1

    .line 100
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    const-string v1, "toString(...)"

    .line 108
    .line 109
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .line 111
    .line 112
    return-object v0

    .line 113
    :catch_0
    :cond_4
    return-object v2
.end method

.method public final w(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    :try_start_0
    const-string v3, "android.os.SystemProperties"

    .line 5
    .line 6
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    const-string v4, "get"

    .line 11
    .line 12
    new-array v5, v1, [Ljava/lang/Class;

    .line 13
    .line 14
    const-class v6, Ljava/lang/String;

    .line 15
    .line 16
    aput-object v6, v5, v0

    .line 17
    .line 18
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    new-array v1, v1, [Ljava/lang/Object;

    .line 23
    .line 24
    aput-object p1, v1, v0

    .line 25
    .line 26
    invoke-virtual {v3, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    move-object v2, p1

    .line 35
    :catch_0
    :catchall_0
    :cond_0
    return-object v2
.end method

.method public final x()Landroid/content/SharedPreferences;
    .locals 3

    .line 1
    sget-object v0, Lteam/opay/swarmfoundation/device/AuthUtil;->d:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "auth"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return-object v0
.end method

.method public final y(Ljava/io/BufferedInputStream;)Ljava/lang/String;
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, ""

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    const/16 v0, 0x200

    .line 7
    .line 8
    new-array v1, v0, [B

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    :cond_1
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-lez v3, :cond_2

    .line 20
    .line 21
    new-instance v4, Ljava/lang/String;

    .line 22
    .line 23
    sget-object v5, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 24
    .line 25
    const/4 v6, 0x0

    .line 26
    invoke-direct {v4, v1, v6, v3, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p1

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    :goto_0
    if-ge v3, v0, :cond_1

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    .line 40
    .line 41
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string v0, "toString(...)"

    .line 46
    .line 47
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-object p1
.end method

.method public final z()Ljava/lang/String;
    .locals 10
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/swarmfoundation/device/AuthUtil;->h:Ljava/lang/String;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "memSize from memory "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    sget-object v1, Lteam/opay/swarmfoundation/device/AuthUtil;->h:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    sget-object v0, Lteam/opay/swarmfoundation/device/AuthUtil;->h:Ljava/lang/String;

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_0
    sget-object v0, Lteam/opay/swarmfoundation/device/AuthUtil;->d:Landroid/content/Context;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    const/4 v2, 0x0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    const-string v3, "auth"

    .line 34
    .line 35
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move-object v0, v1

    .line 41
    :goto_0
    const-string v3, ""

    .line 42
    .line 43
    const-string v4, "sp_auth_mem"

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    :cond_2
    if-eqz v1, :cond_4

    .line 52
    .line 53
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-nez v5, :cond_3

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sput-object v0, Lteam/opay/swarmfoundation/device/AuthUtil;->h:Ljava/lang/String;

    .line 65
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v1, "memSize from sp "

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    sget-object v1, Lteam/opay/swarmfoundation/device/AuthUtil;->h:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    sget-object v0, Lteam/opay/swarmfoundation/device/AuthUtil;->h:Ljava/lang/String;

    .line 82
    .line 83
    return-object v0

    .line 84
    :cond_4
    :goto_1
    const-string v1, "\u5f00\u59cb\u8c03\u7528\u4e86getTotalMemory"

    .line 85
    .line 86
    invoke-virtual {p0, v1}, Lteam/opay/swarmfoundation/device/AuthUtil;->M(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const-string v1, "/proc/meminfo"

    .line 90
    .line 91
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    .line 92
    .line 93
    invoke-direct {v5, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    new-instance v1, Ljava/io/BufferedReader;

    .line 97
    .line 98
    const/16 v6, 0x2000

    .line 99
    .line 100
    invoke-direct {v1, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    const-string v6, "readLine(...)"

    .line 108
    .line 109
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    if-eqz v6, :cond_5

    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 119
    .line 120
    .line 121
    return-object v3

    .line 122
    :catch_0
    nop

    .line 123
    goto :goto_5

    .line 124
    :cond_5
    new-instance v6, Lkotlin/text/Regex;

    .line 125
    .line 126
    const-string v7, "\\s+"

    .line 127
    .line 128
    invoke-direct {v6, v7}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v6, v5, v2}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    const/4 v7, 0x1

    .line 140
    if-nez v6, :cond_7

    .line 141
    .line 142
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    invoke-interface {v5, v6}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    :goto_2
    invoke-interface {v6}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 151
    .line 152
    .line 153
    move-result v8

    .line 154
    if-eqz v8, :cond_7

    .line 155
    .line 156
    invoke-interface {v6}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v8

    .line 160
    check-cast v8, Ljava/lang/String;

    .line 161
    .line 162
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    .line 163
    .line 164
    .line 165
    move-result v8

    .line 166
    if-nez v8, :cond_6

    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_6
    invoke-interface {v6}, Ljava/util/ListIterator;->nextIndex()I

    .line 170
    .line 171
    .line 172
    move-result v6

    .line 173
    add-int/2addr v6, v7

    .line 174
    invoke-static {v5, v6}, Lkotlin/collections/CollectionsKt;->N0(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    goto :goto_3

    .line 179
    :cond_7
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    :goto_3
    new-array v6, v2, [Ljava/lang/String;

    .line 184
    .line 185
    invoke-interface {v5, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    check-cast v5, [Ljava/lang/String;

    .line 190
    .line 191
    array-length v6, v5

    .line 192
    :goto_4
    if-ge v2, v6, :cond_8

    .line 193
    .line 194
    aget-object v8, v5, v2

    .line 195
    .line 196
    new-instance v9, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const/16 v8, 0x9

    .line 205
    .line 206
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    add-int/lit8 v2, v2, 0x1

    .line 210
    .line 211
    goto :goto_4

    .line 212
    :cond_8
    aget-object v3, v5, v7

    .line 213
    .line 214
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .line 216
    .line 217
    :goto_5
    sput-object v3, Lteam/opay/swarmfoundation/device/AuthUtil;->h:Ljava/lang/String;

    .line 218
    .line 219
    if-eqz v0, :cond_9

    .line 220
    .line 221
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    if-eqz v0, :cond_9

    .line 226
    .line 227
    sget-object v1, Lteam/opay/swarmfoundation/device/AuthUtil;->h:Ljava/lang/String;

    .line 228
    .line 229
    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    if-eqz v0, :cond_9

    .line 234
    .line 235
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 236
    .line 237
    .line 238
    :cond_9
    sget-object v0, Lteam/opay/swarmfoundation/device/AuthUtil;->h:Ljava/lang/String;

    .line 239
    .line 240
    return-object v0
.end method
