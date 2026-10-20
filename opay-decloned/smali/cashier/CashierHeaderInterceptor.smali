.class public final Lcashier/CashierHeaderInterceptor;
.super Ljava/lang/Object;
.source "CashierHeaderInterceptor.kt"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcashier/CashierHeaderInterceptor$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001dB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u0013R\u001c\u0010\u0017\u001a\n \u0015*\u0004\u0018\u00010\u00140\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0016R\u0016\u0010\u001b\u001a\u0004\u0018\u00010\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcashier/CashierHeaderInterceptor;",
        "Lokhttp3/Interceptor;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Lokhttp3/Interceptor$Chain;",
        "chain",
        "Lokhttp3/Response;",
        "intercept",
        "(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;",
        "",
        "a",
        "()Ljava/lang/String;",
        "Lokhttp3/Request$Builder;",
        "builder",
        "",
        "b",
        "(Lokhttp3/Request$Builder;)V",
        "Landroid/content/Context;",
        "Ljava/util/TimeZone;",
        "kotlin.jvm.PlatformType",
        "Ljava/util/TimeZone;",
        "timeZone",
        "Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;",
        "c",
        "Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;",
        "generator",
        "d",
        "Companion",
        "cashier_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final d:Lcashier/CashierHeaderInterceptor$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/util/TimeZone;

.field public final c:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcashier/CashierHeaderInterceptor$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcashier/CashierHeaderInterceptor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcashier/CashierHeaderInterceptor;->d:Lcashier/CashierHeaderInterceptor$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcashier/CashierHeaderInterceptor;->a:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcashier/CashierHeaderInterceptor;->b:Ljava/util/TimeZone;

    .line 16
    .line 17
    sget-object p1, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 18
    .line 19
    const-class v0, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 26
    .line 27
    iput-object p1, p0, Lcashier/CashierHeaderInterceptor;->c:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lcashier/CashierHeaderInterceptor;->c:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IUserDataGenerator;->token()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    move-object v2, v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object v2, v1

    .line 13
    :goto_0
    if-eqz v2, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    const/4 v3, 0x2

    .line 17
    const-string v4, "Bearer "

    .line 18
    .line 19
    invoke-static {v2, v4, v0, v3, v1}, Lkotlin/text/StringsKt;->d0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x1

    .line 24
    if-ne v0, v1, :cond_1

    .line 25
    .line 26
    const/4 v6, 0x4

    .line 27
    const/4 v7, 0x0

    .line 28
    const-string v3, "Bearer "

    .line 29
    .line 30
    const-string v4, ""

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0

    .line 38
    :cond_1
    if-nez v2, :cond_2

    .line 39
    .line 40
    const-string v2, ""

    .line 41
    .line 42
    :cond_2
    return-object v2
.end method

.method public final b(Lokhttp3/Request$Builder;)V
    .locals 2

    .line 1
    const-string v0, "Accept"

    .line 2
    .line 3
    const-string v1, "application/json"

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 6
    .line 7
    .line 8
    const-string v0, "Content-Type"

    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 8
    .param p1    # Lokhttp3/Interceptor$Chain;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "dma"

    .line 2
    .line 3
    const-string v1, "model"

    .line 4
    .line 5
    const-string v2, "chain"

    .line 6
    .line 7
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {p0, v2}, Lcashier/CashierHeaderInterceptor;->b(Lokhttp3/Request$Builder;)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v4, "Bearer "

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcashier/CashierHeaderInterceptor;->a()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const-string v4, "Authorization"

    .line 43
    .line 44
    invoke-virtual {v2, v4, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 45
    .line 46
    .line 47
    const-string v3, "token"

    .line 48
    .line 49
    invoke-virtual {p0}, Lcashier/CashierHeaderInterceptor;->a()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 54
    .line 55
    .line 56
    iget-object v3, p0, Lcashier/CashierHeaderInterceptor;->c:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 57
    .line 58
    const/4 v4, 0x0

    .line 59
    if-eqz v3, :cond_0

    .line 60
    .line 61
    invoke-interface {v3}, Lteam/opay/swarmfoundation/data/IDeviceDataGenerator;->deviceId()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    move-object v3, v4

    .line 67
    :goto_0
    const-string v5, ""

    .line 68
    .line 69
    if-nez v3, :cond_1

    .line 70
    .line 71
    move-object v3, v5

    .line 72
    :cond_1
    const-string v6, "device_id"

    .line 73
    .line 74
    invoke-virtual {v2, v6, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 75
    .line 76
    .line 77
    iget-object v3, p0, Lcashier/CashierHeaderInterceptor;->a:Landroid/content/Context;

    .line 78
    .line 79
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    const-string v6, "context.packageName"

    .line 84
    .line 85
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    const-string v6, "pn"

    .line 89
    .line 90
    invoke-virtual {v2, v6, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 91
    .line 92
    .line 93
    iget-object v3, p0, Lcashier/CashierHeaderInterceptor;->c:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 94
    .line 95
    if-eqz v3, :cond_2

    .line 96
    .line 97
    invoke-interface {v3}, Lteam/opay/swarmfoundation/data/IAppDataGenerator;->versionCode()I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    goto :goto_1

    .line 106
    :cond_2
    move-object v3, v4

    .line 107
    :goto_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    const-string v6, "version_code"

    .line 112
    .line 113
    invoke-virtual {v2, v6, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 114
    .line 115
    .line 116
    iget-object v3, p0, Lcashier/CashierHeaderInterceptor;->c:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 117
    .line 118
    if-eqz v3, :cond_3

    .line 119
    .line 120
    invoke-interface {v3}, Lteam/opay/swarmfoundation/data/IAppDataGenerator;->versionName()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    goto :goto_2

    .line 125
    :cond_3
    move-object v3, v4

    .line 126
    :goto_2
    if-nez v3, :cond_4

    .line 127
    .line 128
    move-object v3, v5

    .line 129
    :cond_4
    const-string v6, "version_name"

    .line 130
    .line 131
    invoke-virtual {v2, v6, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 132
    .line 133
    .line 134
    iget-object v3, p0, Lcashier/CashierHeaderInterceptor;->c:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 135
    .line 136
    if-eqz v3, :cond_5

    .line 137
    .line 138
    invoke-interface {v3}, Lteam/opay/swarmfoundation/data/IAppDataGenerator;->traceId()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    goto :goto_3

    .line 143
    :cond_5
    move-object v3, v4

    .line 144
    :goto_3
    if-nez v3, :cond_6

    .line 145
    .line 146
    move-object v3, v5

    .line 147
    :cond_6
    const-string v6, "trace_id"

    .line 148
    .line 149
    invoke-virtual {v2, v6, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 150
    .line 151
    .line 152
    :try_start_0
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 153
    .line 154
    const-string v6, "MODEL"

    .line 155
    .line 156
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2, v1, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .line 161
    .line 162
    goto :goto_4

    .line 163
    :catch_0
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 164
    .line 165
    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    const-string v6, "encode(Build.MODEL)"

    .line 170
    .line 171
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2, v1, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 175
    .line 176
    .line 177
    :goto_4
    iget-object v1, p0, Lcashier/CashierHeaderInterceptor;->b:Ljava/util/TimeZone;

    .line 178
    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 180
    .line 181
    .line 182
    move-result-wide v6

    .line 183
    invoke-virtual {v1, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    div-int/lit16 v1, v1, 0x3e8

    .line 188
    .line 189
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    const-string v3, "zone_offset"

    .line 194
    .line 195
    invoke-virtual {v2, v3, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 196
    .line 197
    .line 198
    :try_start_1
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 199
    .line 200
    const-string v3, "MANUFACTURER"

    .line 201
    .line 202
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2, v0, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 206
    .line 207
    .line 208
    goto :goto_5

    .line 209
    :catch_1
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 210
    .line 211
    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    const-string v3, "encode(Build.MANUFACTURER)"

    .line 216
    .line 217
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v2, v0, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 221
    .line 222
    .line 223
    :goto_5
    iget-object v0, p0, Lcashier/CashierHeaderInterceptor;->c:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 224
    .line 225
    if-eqz v0, :cond_7

    .line 226
    .line 227
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IAppDataGenerator;->appId()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    goto :goto_6

    .line 232
    :cond_7
    move-object v0, v4

    .line 233
    :goto_6
    if-nez v0, :cond_8

    .line 234
    .line 235
    move-object v0, v5

    .line 236
    :cond_8
    const-string v1, "app"

    .line 237
    .line 238
    invoke-virtual {v2, v1, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 239
    .line 240
    .line 241
    iget-object v0, p0, Lcashier/CashierHeaderInterceptor;->c:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 242
    .line 243
    if-eqz v0, :cond_9

    .line 244
    .line 245
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IDeviceDataGenerator;->platform()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    goto :goto_7

    .line 250
    :cond_9
    move-object v0, v4

    .line 251
    :goto_7
    if-nez v0, :cond_a

    .line 252
    .line 253
    move-object v0, v5

    .line 254
    :cond_a
    const-string v1, "platform"

    .line 255
    .line 256
    invoke-virtual {v2, v1, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 257
    .line 258
    .line 259
    iget-object v0, p0, Lcashier/CashierHeaderInterceptor;->c:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 260
    .line 261
    if-eqz v0, :cond_b

    .line 262
    .line 263
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IBuildDataGenerator;->mcc()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    goto :goto_8

    .line 268
    :cond_b
    move-object v0, v4

    .line 269
    :goto_8
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    const-string v1, "mcc"

    .line 274
    .line 275
    invoke-virtual {v2, v1, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 276
    .line 277
    .line 278
    iget-object v0, p0, Lcashier/CashierHeaderInterceptor;->c:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 279
    .line 280
    if-eqz v0, :cond_c

    .line 281
    .line 282
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IUserDataGenerator;->role()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    if-nez v0, :cond_d

    .line 287
    .line 288
    :cond_c
    const-string v0, "customer"

    .line 289
    .line 290
    :cond_d
    const-string v1, "role"

    .line 291
    .line 292
    invoke-virtual {v2, v1, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 293
    .line 294
    .line 295
    iget-object v0, p0, Lcashier/CashierHeaderInterceptor;->c:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 296
    .line 297
    if-eqz v0, :cond_e

    .line 298
    .line 299
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IAdvertisingDataGenerator;->campaign()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    goto :goto_9

    .line 304
    :cond_e
    move-object v0, v4

    .line 305
    :goto_9
    if-nez v0, :cond_f

    .line 306
    .line 307
    move-object v0, v5

    .line 308
    :cond_f
    const-string v1, "campaign"

    .line 309
    .line 310
    invoke-virtual {v2, v1, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 311
    .line 312
    .line 313
    const-string v0, "user-agent"

    .line 314
    .line 315
    invoke-static {}, Lr52;->h()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    invoke-virtual {v2, v0, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 320
    .line 321
    .line 322
    iget-object v0, p0, Lcashier/CashierHeaderInterceptor;->c:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 323
    .line 324
    if-eqz v0, :cond_10

    .line 325
    .line 326
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IAdvertisingDataGenerator;->mediaSource()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    goto :goto_a

    .line 331
    :cond_10
    move-object v0, v4

    .line 332
    :goto_a
    if-nez v0, :cond_11

    .line 333
    .line 334
    move-object v0, v5

    .line 335
    :cond_11
    const-string v1, "mediaSource"

    .line 336
    .line 337
    invoke-virtual {v2, v1, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 338
    .line 339
    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    .line 341
    .line 342
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    .line 344
    .line 345
    iget-object v1, p0, Lcashier/CashierHeaderInterceptor;->c:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 346
    .line 347
    if-eqz v1, :cond_12

    .line 348
    .line 349
    invoke-interface {v1}, Lteam/opay/swarmfoundation/data/IUserLocationGenerator;->longitude()D

    .line 350
    .line 351
    .line 352
    move-result-wide v6

    .line 353
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    goto :goto_b

    .line 358
    :cond_12
    move-object v1, v4

    .line 359
    :goto_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    const/16 v1, 0x7c

    .line 363
    .line 364
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    iget-object v1, p0, Lcashier/CashierHeaderInterceptor;->c:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 368
    .line 369
    if-eqz v1, :cond_13

    .line 370
    .line 371
    invoke-interface {v1}, Lteam/opay/swarmfoundation/data/IUserLocationGenerator;->latitude()D

    .line 372
    .line 373
    .line 374
    move-result-wide v6

    .line 375
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    goto :goto_c

    .line 380
    :cond_13
    move-object v1, v4

    .line 381
    :goto_c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    const-string v1, "location"

    .line 389
    .line 390
    invoke-virtual {v2, v1, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 391
    .line 392
    .line 393
    iget-object v0, p0, Lcashier/CashierHeaderInterceptor;->c:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 394
    .line 395
    if-eqz v0, :cond_14

    .line 396
    .line 397
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IDeviceDataGenerator;->getBlackbox()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    goto :goto_d

    .line 402
    :cond_14
    move-object v0, v4

    .line 403
    :goto_d
    if-nez v0, :cond_15

    .line 404
    .line 405
    move-object v0, v5

    .line 406
    :cond_15
    const-string v1, "blackbox"

    .line 407
    .line 408
    invoke-virtual {v2, v1, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 409
    .line 410
    .line 411
    iget-object v0, p0, Lcashier/CashierHeaderInterceptor;->c:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 412
    .line 413
    if-eqz v0, :cond_16

    .line 414
    .line 415
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IAdvertisingDataGenerator;->appsFlyerId()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    goto :goto_e

    .line 420
    :cond_16
    move-object v0, v4

    .line 421
    :goto_e
    if-nez v0, :cond_17

    .line 422
    .line 423
    move-object v0, v5

    .line 424
    :cond_17
    const-string v1, "appsflyerId"

    .line 425
    .line 426
    invoke-virtual {v2, v1, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 427
    .line 428
    .line 429
    iget-object v0, p0, Lcashier/CashierHeaderInterceptor;->c:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 430
    .line 431
    if-eqz v0, :cond_18

    .line 432
    .line 433
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IAdvertisingDataGenerator;->firebaseId()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v4

    .line 437
    :cond_18
    if-nez v4, :cond_19

    .line 438
    .line 439
    goto :goto_f

    .line 440
    :cond_19
    move-object v5, v4

    .line 441
    :goto_f
    const-string v0, "instanceId"

    .line 442
    .line 443
    invoke-virtual {v2, v0, v5}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    .line 451
    .line 452
    .line 453
    move-result-object p1

    .line 454
    return-object p1
.end method
