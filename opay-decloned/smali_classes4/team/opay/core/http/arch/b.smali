.class public final Lteam/opay/core/http/arch/b;
.super Ljava/lang/Object;
.source "HttpErrorType.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001a-\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0001\u001a\u00020\u00002\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002H\u0000\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u001a\'\u0010\u0008\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002H\u0000\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "",
        "httpCode",
        "",
        "apiCode",
        "message",
        "Lteam/opay/core/common/base/ErrorType;",
        "b",
        "(ILjava/lang/String;Ljava/lang/String;)Lteam/opay/core/common/base/ErrorType;",
        "a",
        "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;",
        "common-http_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lb67;->b:Lb67;

    .line 2
    .line 3
    invoke-virtual {v0}, Lb67;->f()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "failed"

    .line 10
    .line 11
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const-string p0, "init"

    .line 18
    .line 19
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    return-object p0

    .line 27
    :cond_0
    return-object p1
.end method

.method public static final b(ILjava/lang/String;Ljava/lang/String;)Lteam/opay/core/common/base/ErrorType;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lb67;->b:Lb67;

    .line 2
    .line 3
    invoke-virtual {v0}, Lb67;->f()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string v1, "failed"

    .line 10
    .line 11
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const-string v1, "init"

    .line 18
    .line 19
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    sget-object p0, Lteam/opay/core/common/base/ErrorType;->TOKEN_EXPIRED:Lteam/opay/core/common/base/ErrorType;

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_0
    const-string p2, "00005"

    .line 29
    .line 30
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    if-nez p2, :cond_9

    .line 35
    .line 36
    const-string p2, "00007"

    .line 37
    .line 38
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    if-eqz p2, :cond_1

    .line 43
    .line 44
    goto/16 :goto_3

    .line 45
    .line 46
    :cond_1
    const-string p2, "401"

    .line 47
    .line 48
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-nez p2, :cond_8

    .line 53
    .line 54
    const-string p2, "unauthenticated"

    .line 55
    .line 56
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-nez p2, :cond_8

    .line 61
    .line 62
    const-string p2, "666997"

    .line 63
    .line 64
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    if-eqz p2, :cond_2

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_2
    const-string p2, "667003"

    .line 72
    .line 73
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_3

    .line 78
    .line 79
    sget-object p0, Lteam/opay/core/common/base/ErrorType;->FORCED_UPGRADE:Lteam/opay/core/common/base/ErrorType;

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_3
    invoke-static {}, Lteam/opay/core/http/arch/ResponseCode$ServerErrors;->values()[Lteam/opay/core/http/arch/ResponseCode$ServerErrors;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    new-instance p2, Ljava/util/ArrayList;

    .line 87
    .line 88
    array-length v0, p1

    .line 89
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 90
    .line 91
    .line 92
    array-length v0, p1

    .line 93
    const/4 v1, 0x0

    .line 94
    const/4 v2, 0x0

    .line 95
    :goto_0
    if-ge v2, v0, :cond_4

    .line 96
    .line 97
    aget-object v3, p1, v2

    .line 98
    .line 99
    invoke-virtual {v3}, Lteam/opay/core/http/arch/ResponseCode$ServerErrors;->getCode()I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-interface {p2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    add-int/lit8 v2, v2, 0x1

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_4
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-eqz p1, :cond_5

    .line 122
    .line 123
    sget-object p0, Lteam/opay/core/common/base/ErrorType;->SERVER_ERROR:Lteam/opay/core/common/base/ErrorType;

    .line 124
    .line 125
    goto :goto_4

    .line 126
    :cond_5
    invoke-static {}, Lteam/opay/core/http/arch/ResponseCode$ClientsError;->values()[Lteam/opay/core/http/arch/ResponseCode$ClientsError;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    new-instance p2, Ljava/util/ArrayList;

    .line 131
    .line 132
    array-length v0, p1

    .line 133
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 134
    .line 135
    .line 136
    array-length v0, p1

    .line 137
    :goto_1
    if-ge v1, v0, :cond_6

    .line 138
    .line 139
    aget-object v2, p1, v1

    .line 140
    .line 141
    invoke-virtual {v2}, Lteam/opay/core/http/arch/ResponseCode$ClientsError;->getCode()I

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-interface {p2, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    add-int/lit8 v1, v1, 0x1

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    invoke-interface {p2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result p0

    .line 163
    if-eqz p0, :cond_7

    .line 164
    .line 165
    sget-object p0, Lteam/opay/core/common/base/ErrorType;->CLIENT_ERROR:Lteam/opay/core/common/base/ErrorType;

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_7
    sget-object p0, Lteam/opay/core/common/base/ErrorType;->OTHER:Lteam/opay/core/common/base/ErrorType;

    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_8
    :goto_2
    sget-object p0, Lteam/opay/core/common/base/ErrorType;->TOKEN_EXPIRED:Lteam/opay/core/common/base/ErrorType;

    .line 172
    .line 173
    goto :goto_4

    .line 174
    :cond_9
    :goto_3
    invoke-virtual {v0}, Lb67;->e()Z

    .line 175
    .line 176
    .line 177
    move-result p0

    .line 178
    if-eqz p0, :cond_a

    .line 179
    .line 180
    sget-object p0, Lteam/opay/core/common/base/ErrorType;->TOKEN_EXPIRED:Lteam/opay/core/common/base/ErrorType;

    .line 181
    .line 182
    goto :goto_4

    .line 183
    :cond_a
    sget-object p0, Lteam/opay/core/common/base/ErrorType;->OTHER:Lteam/opay/core/common/base/ErrorType;

    .line 184
    .line 185
    :goto_4
    return-object p0
.end method

.method public static synthetic c(ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lteam/opay/core/common/base/ErrorType;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x4

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-static {p0, p1, p2}, Lteam/opay/core/http/arch/b;->b(ILjava/lang/String;Ljava/lang/String;)Lteam/opay/core/common/base/ErrorType;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method
