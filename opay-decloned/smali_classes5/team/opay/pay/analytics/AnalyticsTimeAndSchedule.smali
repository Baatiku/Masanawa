.class public final Lteam/opay/pay/analytics/AnalyticsTimeAndSchedule;
.super Ljava/lang/Object;
.source "AnalyticsTimeAndSchedule.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\r\u0010\u0006\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0003J\u0015\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\r\u0010\u000b\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u000b\u0010\u0003J\u000f\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\"\u0010\u0018\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0013\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\"\u0010\u001f\u001a\u00020\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR$\u0010&\u001a\u0004\u0018\u00010 8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010!\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%\u00a8\u0006\'"
    }
    d2 = {
        "Lteam/opay/pay/analytics/AnalyticsTimeAndSchedule;",
        "",
        "<init>",
        "()V",
        "",
        "e",
        "g",
        "",
        "data",
        "f",
        "(Ljava/lang/String;)V",
        "a",
        "",
        "d",
        "()J",
        "Lorg/json/JSONObject;",
        "c",
        "()Lorg/json/JSONObject;",
        "",
        "b",
        "Z",
        "()Z",
        "setCanUpload",
        "(Z)V",
        "canUpload",
        "",
        "I",
        "getCountAction",
        "()I",
        "setCountAction",
        "(I)V",
        "countAction",
        "Lteam/opay/core/android/arch/IOScope;",
        "Lteam/opay/core/android/arch/IOScope;",
        "getAnalyticsIOScope",
        "()Lteam/opay/core/android/arch/IOScope;",
        "setAnalyticsIOScope",
        "(Lteam/opay/core/android/arch/IOScope;)V",
        "analyticsIOScope",
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
.field public static final a:Lteam/opay/pay/analytics/AnalyticsTimeAndSchedule;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static b:Z

.field public static c:I

.field public static d:Lteam/opay/core/android/arch/IOScope;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/pay/analytics/AnalyticsTimeAndSchedule;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/analytics/AnalyticsTimeAndSchedule;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lteam/opay/pay/analytics/AnalyticsTimeAndSchedule;->a:Lteam/opay/pay/analytics/AnalyticsTimeAndSchedule;

    .line 7
    .line 8
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


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    const-string v0, "\u505c\u6b62\u5b50\u4efb\u52a1"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lteam/opay/pay/analytics/AnalyticsTimeAndSchedule;->f(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    sput-boolean v0, Lteam/opay/pay/analytics/AnalyticsTimeAndSchedule;->b:Z

    .line 8
    .line 9
    sget-object v0, Lteam/opay/pay/analytics/AnalyticsTimeAndSchedule;->d:Lteam/opay/core/android/arch/IOScope;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lteam/opay/core/android/arch/IOScope;->a()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 1

    .line 1
    sget-boolean v0, Lteam/opay/pay/analytics/AnalyticsTimeAndSchedule;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public final c()Lorg/json/JSONObject;
    .locals 3

    .line 1
    sget-object v0, Lteam/opay/oconfig/a;->a:Lteam/opay/oconfig/a;

    .line 2
    .line 3
    const-string v1, "analytics_time_and_schedule"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lteam/opay/oconfig/a;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    .line 13
    sget-object v1, Lteam/opay/pay/analytics/AnalyticsTimeAndSchedule;->a:Lteam/opay/pay/analytics/AnalyticsTimeAndSchedule;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lteam/opay/pay/analytics/AnalyticsTimeAndSchedule;->f(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Lorg/json/JSONObject;

    .line 19
    .line 20
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 21
    .line 22
    .line 23
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 24
    .line 25
    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    return-object v2

    .line 29
    :catch_0
    :catchall_0
    return-object v1
.end method

.method public final d()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/analytics/AnalyticsTimeAndSchedule;->c()Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "delaytime"

    .line 6
    .line 7
    const-wide/16 v2, 0x1e

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    const/16 v2, 0x3e8

    .line 14
    .line 15
    int-to-long v2, v2

    .line 16
    mul-long v0, v0, v2

    .line 17
    .line 18
    return-wide v0
.end method

.method public final e()V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/analytics/AnalyticsTimeAndSchedule;->d()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/4 v2, 0x1

    .line 6
    sput-boolean v2, Lteam/opay/pay/analytics/AnalyticsTimeAndSchedule;->b:Z

    .line 7
    .line 8
    new-instance v3, Lteam/opay/core/android/arch/IOScope;

    .line 9
    .line 10
    invoke-direct {v3}, Lteam/opay/core/android/arch/IOScope;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v3, Lteam/opay/pay/analytics/AnalyticsTimeAndSchedule;->d:Lteam/opay/core/android/arch/IOScope;

    .line 14
    .line 15
    new-instance v6, Lteam/opay/pay/analytics/AnalyticsTimeAndSchedule$init$1;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-direct {v6, v0, v1, v2}, Lteam/opay/pay/analytics/AnalyticsTimeAndSchedule$init$1;-><init>(JLjr2;)V

    .line 19
    .line 20
    .line 21
    const/4 v7, 0x3

    .line 22
    const/4 v8, 0x0

    .line 23
    const/4 v4, 0x0

    .line 24
    const/4 v5, 0x0

    .line 25
    invoke-static/range {v3 .. v8}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 7
    .line 8
    invoke-virtual {p1}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lteam/opay/pay/envconfigapi/ConfigStorage;->i()Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final g()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lx7b;->a:Lx7b;

    .line 3
    .line 4
    invoke-virtual {v0}, Lx7b;->m()Ln1a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ln1a;->h()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    sput v0, Lteam/opay/pay/analytics/AnalyticsTimeAndSchedule;->c:I

    .line 13
    .line 14
    sget-object v0, Lteam/opay/pay/analytics/AnalyticsTimeAndSchedule;->a:Lteam/opay/pay/analytics/AnalyticsTimeAndSchedule;

    .line 15
    .line 16
    const-string v1, "\u4e0a\u62a5\u65e5\u5fd7\u4e86"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lteam/opay/pay/analytics/AnalyticsTimeAndSchedule;->f(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    monitor-exit p0

    .line 27
    throw v0
.end method
