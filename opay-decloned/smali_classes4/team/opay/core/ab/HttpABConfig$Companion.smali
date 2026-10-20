.class public final Lteam/opay/core/ab/HttpABConfig$Companion;
.super Ljava/lang/Object;
.source "HttpABConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/core/ab/HttpABConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\r\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\r\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0006J\r\u0010\u0008\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0008\u0010\u0006J\r\u0010\t\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\t\u0010\u0006J\r\u0010\n\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\n\u0010\u0006J\r\u0010\u000b\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u000b\u0010\u0006J\r\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\r\u0010\u000f\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000f\u0010\u000eJ\r\u0010\u0010\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0010\u0010\u000eJ\r\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\r\u0010\u0015\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\r\u0010\u0017\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0017\u0010\u0016J\r\u0010\u0018\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0018\u0010\u0016R\u0014\u0010\u001c\u001a\u00020\u00198BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u001d\u001a\u00020\u000c8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0014\u0010\u001f\u001a\u00020\u000c8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010\u001e\u00a8\u0006 "
    }
    d2 = {
        "Lteam/opay/core/ab/HttpABConfig$Companion;",
        "",
        "<init>",
        "()V",
        "",
        "h",
        "()Z",
        "g",
        "l",
        "m",
        "e",
        "n",
        "",
        "i",
        "()Ljava/lang/String;",
        "k",
        "j",
        "",
        "f",
        "()J",
        "",
        "d",
        "()I",
        "c",
        "b",
        "Lteam/opay/core/ab/HttpABConfig;",
        "a",
        "()Lteam/opay/core/ab/HttpABConfig;",
        "config",
        "UPLOAD_UID",
        "Ljava/lang/String;",
        "DEFAULT_BLACK_LIST",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/core/ab/HttpABConfig$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lteam/opay/core/ab/HttpABConfig;
    .locals 3

    .line 1
    sget-object v0, Lteam/opay/opb/common/base/OpbAbConfig;->Companion:Lteam/opay/opb/common/base/OpbAbConfig$Companion;

    .line 2
    .line 3
    const-class v0, Lteam/opay/core/ab/HttpABConfig;

    .line 4
    .line 5
    const-wide/32 v1, 0x927c0

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1, v2}, Lteam/opay/core/ab/HttpABConfig;->access$getOpbAbConfig$s-1378178972(Ljava/lang/Class;J)Lteam/opay/opb/common/base/OpbAbConfig;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lteam/opay/core/ab/HttpABConfig;

    .line 13
    .line 14
    return-object v0
.end method

.method public final b()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/ab/HttpABConfig$Companion;->a()Lteam/opay/core/ab/HttpABConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lteam/opay/core/ab/HttpABConfig;->access$getKeepAliveDuration$p(Lteam/opay/core/ab/HttpABConfig;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final c()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/ab/HttpABConfig$Companion;->a()Lteam/opay/core/ab/HttpABConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lteam/opay/core/ab/HttpABConfig;->access$getMaxIdleConnection$p(Lteam/opay/core/ab/HttpABConfig;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final d()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/ab/HttpABConfig$Companion;->a()Lteam/opay/core/ab/HttpABConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lteam/opay/core/ab/HttpABConfig;->access$getMaxRequest$p(Lteam/opay/core/ab/HttpABConfig;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final e()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/ab/HttpABConfig$Companion;->a()Lteam/opay/core/ab/HttpABConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lteam/opay/core/ab/HttpABConfig;->access$getTraceEventToggle$p(Lteam/opay/core/ab/HttpABConfig;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final f()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/ab/HttpABConfig$Companion;->a()Lteam/opay/core/ab/HttpABConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lteam/opay/core/ab/HttpABConfig;->access$getTraceTimelineCheckThreshold$p(Lteam/opay/core/ab/HttpABConfig;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final g()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/ab/HttpABConfig$Companion;->a()Lteam/opay/core/ab/HttpABConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lteam/opay/core/ab/HttpABConfig;->access$getTraceTimelineToggle$p(Lteam/opay/core/ab/HttpABConfig;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final h()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/ab/HttpABConfig$Companion;->a()Lteam/opay/core/ab/HttpABConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lteam/opay/core/ab/HttpABConfig;->access$getTraceToggle$p(Lteam/opay/core/ab/HttpABConfig;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/ab/HttpABConfig$Companion;->a()Lteam/opay/core/ab/HttpABConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lteam/opay/core/ab/HttpABConfig;->access$getTraceUploadUid$p(Lteam/opay/core/ab/HttpABConfig;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/ab/HttpABConfig$Companion;->a()Lteam/opay/core/ab/HttpABConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lteam/opay/core/ab/HttpABConfig;->access$getTraceUploadUrl$p(Lteam/opay/core/ab/HttpABConfig;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/ab/HttpABConfig$Companion;->a()Lteam/opay/core/ab/HttpABConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lteam/opay/core/ab/HttpABConfig;->access$getTraceUploadUrlBlack$p(Lteam/opay/core/ab/HttpABConfig;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final l()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/ab/HttpABConfig$Companion;->a()Lteam/opay/core/ab/HttpABConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lteam/opay/core/ab/HttpABConfig;->access$getTrackApiFailedToggle$p(Lteam/opay/core/ab/HttpABConfig;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final m()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/ab/HttpABConfig$Companion;->a()Lteam/opay/core/ab/HttpABConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lteam/opay/core/ab/HttpABConfig;->access$getTrackFailedToggle$p(Lteam/opay/core/ab/HttpABConfig;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final n()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/ab/HttpABConfig$Companion;->a()Lteam/opay/core/ab/HttpABConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lteam/opay/core/ab/HttpABConfig;->access$getTrackToggle$p(Lteam/opay/core/ab/HttpABConfig;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method
