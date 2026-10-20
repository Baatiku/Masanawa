.class public final Lteam/opay/core/ab/HttpABConfig;
.super Lteam/opay/opb/common/base/OpbAbConfig;
.source "HttpABConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/core/ab/HttpABConfig$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/opb/common/base/OpbAbConfig<",
        "Lteam/opay/core/ab/HttpABConfig;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \u00182\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0018B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0015\u001a\u00020\u000cH\u0016J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016R\u0010\u0010\u0004\u001a\u00020\u00058\u0002X\u0083D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00058\u0002X\u0083D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00058\u0002X\u0083D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u00020\u00058\u0002X\u0083D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00058\u0002X\u0083D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u00058\u0002X\u0083D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u000c8\u0002X\u0083D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u000c8\u0002X\u0083D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u00020\u000c8\u0002X\u0083D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u00020\u00108\u0002X\u0083D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u00020\u00128\u0002X\u0083D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u00020\u00128\u0002X\u0083D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u00020\u00128\u0002X\u0083D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lteam/opay/core/ab/HttpABConfig;",
        "Lteam/opay/opb/common/base/OpbAbConfig;",
        "<init>",
        "()V",
        "traceToggle",
        "",
        "traceTimelineToggle",
        "trackApiFailedToggle",
        "trackFailedToggle",
        "traceEventToggle",
        "trackToggle",
        "traceUploadUid",
        "",
        "traceUploadUrlBlack",
        "traceUploadUrl",
        "traceTimelineCheckThreshold",
        "",
        "maxRequest",
        "",
        "maxIdleConnection",
        "keepAliveDuration",
        "featureName",
        "defaultValue",
        "Lorg/json/JSONObject;",
        "Companion",
        "common-http_release"
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
.field public static final Companion:Lteam/opay/core/ab/HttpABConfig$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DEFAULT_BLACK_LIST:Ljava/lang/String; = "/offline/pushApi/msg/print/list,/offline/pushApi/msg/count,/api/pos/check,pos/check,/v2/ad/list/for-pos,/offline/pushApi/msg/recieved"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final UPLOAD_UID:Ljava/lang/String; = "0,5,9"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final keepAliveDuration:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "biz-http-keep-alive-duration"
    .end annotation
.end field

.field private final maxIdleConnection:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "biz-http-max-idle-connection"
    .end annotation
.end field

.field private final maxRequest:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "biz-http-max-request"
    .end annotation
.end field

.field private final traceEventToggle:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "biz-http-trace-event-toggle"
    .end annotation
.end field

.field private final traceTimelineCheckThreshold:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "biz-http-trace-timeline-check-threshold"
    .end annotation
.end field

.field private final traceTimelineToggle:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "biz-http-trace-timeline-toggle"
    .end annotation
.end field

.field private final traceToggle:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "biz-http-trace-toggle"
    .end annotation
.end field

.field private final traceUploadUid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "biz-http-trace-upload-uid"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final traceUploadUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "biz-http-trace-upload-url"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final traceUploadUrlBlack:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "biz-http-trace-upload-url-black"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final trackApiFailedToggle:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "biz-http-track-api-failed-toggle"
    .end annotation
.end field

.field private final trackFailedToggle:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "biz-http-track-failed-toggle"
    .end annotation
.end field

.field private final trackToggle:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "biz-http-track-toggle"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/core/ab/HttpABConfig$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/core/ab/HttpABConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/core/ab/HttpABConfig;->Companion:Lteam/opay/core/ab/HttpABConfig$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lteam/opay/opb/common/base/OpbAbConfig;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "0,5,9"

    .line 5
    .line 6
    iput-object v0, p0, Lteam/opay/core/ab/HttpABConfig;->traceUploadUid:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "/offline/pushApi/msg/print/list,/offline/pushApi/msg/count,/api/pos/check,pos/check,/v2/ad/list/for-pos,/offline/pushApi/msg/recieved"

    .line 9
    .line 10
    iput-object v0, p0, Lteam/opay/core/ab/HttpABConfig;->traceUploadUrlBlack:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, ""

    .line 13
    .line 14
    iput-object v0, p0, Lteam/opay/core/ab/HttpABConfig;->traceUploadUrl:Ljava/lang/String;

    .line 15
    .line 16
    const/16 v0, 0xa

    .line 17
    .line 18
    iput v0, p0, Lteam/opay/core/ab/HttpABConfig;->maxRequest:I

    .line 19
    .line 20
    iput v0, p0, Lteam/opay/core/ab/HttpABConfig;->maxIdleConnection:I

    .line 21
    .line 22
    iput v0, p0, Lteam/opay/core/ab/HttpABConfig;->keepAliveDuration:I

    .line 23
    .line 24
    return-void
.end method

.method public static final synthetic access$getKeepAliveDuration$p(Lteam/opay/core/ab/HttpABConfig;)I
    .locals 0

    .line 1
    iget p0, p0, Lteam/opay/core/ab/HttpABConfig;->keepAliveDuration:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getMaxIdleConnection$p(Lteam/opay/core/ab/HttpABConfig;)I
    .locals 0

    .line 1
    iget p0, p0, Lteam/opay/core/ab/HttpABConfig;->maxIdleConnection:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getMaxRequest$p(Lteam/opay/core/ab/HttpABConfig;)I
    .locals 0

    .line 1
    iget p0, p0, Lteam/opay/core/ab/HttpABConfig;->maxRequest:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getOpbAbConfig$s-1378178972(Ljava/lang/Class;J)Lteam/opay/opb/common/base/OpbAbConfig;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/opb/common/base/OpbAbConfig;->getOpbAbConfig(Ljava/lang/Class;J)Lteam/opay/opb/common/base/OpbAbConfig;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getTraceEventToggle$p(Lteam/opay/core/ab/HttpABConfig;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lteam/opay/core/ab/HttpABConfig;->traceEventToggle:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getTraceTimelineCheckThreshold$p(Lteam/opay/core/ab/HttpABConfig;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lteam/opay/core/ab/HttpABConfig;->traceTimelineCheckThreshold:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic access$getTraceTimelineToggle$p(Lteam/opay/core/ab/HttpABConfig;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lteam/opay/core/ab/HttpABConfig;->traceTimelineToggle:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getTraceToggle$p(Lteam/opay/core/ab/HttpABConfig;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lteam/opay/core/ab/HttpABConfig;->traceToggle:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getTraceUploadUid$p(Lteam/opay/core/ab/HttpABConfig;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/core/ab/HttpABConfig;->traceUploadUid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getTraceUploadUrl$p(Lteam/opay/core/ab/HttpABConfig;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/core/ab/HttpABConfig;->traceUploadUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getTraceUploadUrlBlack$p(Lteam/opay/core/ab/HttpABConfig;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/core/ab/HttpABConfig;->traceUploadUrlBlack:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getTrackApiFailedToggle$p(Lteam/opay/core/ab/HttpABConfig;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lteam/opay/core/ab/HttpABConfig;->trackApiFailedToggle:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getTrackFailedToggle$p(Lteam/opay/core/ab/HttpABConfig;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lteam/opay/core/ab/HttpABConfig;->trackFailedToggle:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getTrackToggle$p(Lteam/opay/core/ab/HttpABConfig;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lteam/opay/core/ab/HttpABConfig;->trackToggle:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public defaultValue()Lorg/json/JSONObject;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "biz-http-trace-toggle"

    .line 7
    .line 8
    iget-boolean v2, p0, Lteam/opay/core/ab/HttpABConfig;->traceToggle:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "biz-http-trace-timeline-toggle"

    .line 14
    .line 15
    iget-boolean v2, p0, Lteam/opay/core/ab/HttpABConfig;->traceTimelineToggle:Z

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    const-string v1, "biz-http-track-api-failed-toggle"

    .line 21
    .line 22
    iget-boolean v2, p0, Lteam/opay/core/ab/HttpABConfig;->trackApiFailedToggle:Z

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    const-string v1, "biz-http-track-failed-toggle"

    .line 28
    .line 29
    iget-boolean v2, p0, Lteam/opay/core/ab/HttpABConfig;->trackFailedToggle:Z

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    const-string v1, "biz-http-trace-event-toggle"

    .line 35
    .line 36
    iget-boolean v2, p0, Lteam/opay/core/ab/HttpABConfig;->traceEventToggle:Z

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    const-string v1, "biz-http-track-toggle"

    .line 42
    .line 43
    iget-boolean v2, p0, Lteam/opay/core/ab/HttpABConfig;->trackToggle:Z

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 46
    .line 47
    .line 48
    const-string v1, "biz-http-trace-upload-uid"

    .line 49
    .line 50
    iget-object v2, p0, Lteam/opay/core/ab/HttpABConfig;->traceUploadUid:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    .line 54
    .line 55
    const-string v1, "biz-http-trace-upload-url-black"

    .line 56
    .line 57
    iget-object v2, p0, Lteam/opay/core/ab/HttpABConfig;->traceUploadUrlBlack:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    .line 61
    .line 62
    const-string v1, "biz-http-trace-upload-url"

    .line 63
    .line 64
    iget-object v2, p0, Lteam/opay/core/ab/HttpABConfig;->traceUploadUrl:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    .line 68
    .line 69
    const-string v1, "biz-http-trace-timeline-check-threshold"

    .line 70
    .line 71
    iget-wide v2, p0, Lteam/opay/core/ab/HttpABConfig;->traceTimelineCheckThreshold:J

    .line 72
    .line 73
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 74
    .line 75
    .line 76
    const-string v1, "biz-http-max-request"

    .line 77
    .line 78
    iget v2, p0, Lteam/opay/core/ab/HttpABConfig;->maxRequest:I

    .line 79
    .line 80
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 81
    .line 82
    .line 83
    const-string v1, "biz-http-max-idle-connection"

    .line 84
    .line 85
    iget v2, p0, Lteam/opay/core/ab/HttpABConfig;->maxIdleConnection:I

    .line 86
    .line 87
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 88
    .line 89
    .line 90
    const-string v1, "biz-http-keep-alive-duration"

    .line 91
    .line 92
    iget v2, p0, Lteam/opay/core/ab/HttpABConfig;->keepAliveDuration:I

    .line 93
    .line 94
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 95
    .line 96
    .line 97
    return-object v0
.end method

.method public featureName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "opb_feature_http_config"

    .line 2
    .line 3
    return-object v0
.end method
