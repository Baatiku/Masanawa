.class public final Lteam/opay/core/android/arch/ApiError$Companion;
.super Ljava/lang/Object;
.source "ApiResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/core/android/arch/ApiError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J7\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\t2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0006H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\"\u0010\r\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\"\u0010\u0013\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u000e\u001a\u0004\u0008\u0014\u0010\u0010\"\u0004\u0008\u0015\u0010\u0012R\u0014\u0010\u0016\u001a\u00020\u00048\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u0018\u001a\u00020\u00068\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u000eR\u0014\u0010\u0019\u001a\u00020\u00068\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u000eR\u0014\u0010\u001a\u001a\u00020\u00068\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u000e\u00a8\u0006\u001b"
    }
    d2 = {
        "Lteam/opay/core/android/arch/ApiError$Companion;",
        "",
        "<init>",
        "()V",
        "",
        "httpCode",
        "",
        "apiCode",
        "message",
        "Lkotlin/Pair;",
        "Lteam/opay/core/android/arch/ErrorType;",
        "b",
        "(ILjava/lang/String;Ljava/lang/String;)Lkotlin/Pair;",
        "NET_ERROR_MSG",
        "Ljava/lang/String;",
        "c",
        "()Ljava/lang/String;",
        "setNET_ERROR_MSG",
        "(Ljava/lang/String;)V",
        "OK_TIMEOUT_MSG",
        "d",
        "setOK_TIMEOUT_MSG",
        "OK_HTTP_ERROR_CODE",
        "I",
        "OK_HTTP_ERROR_API_CODE",
        "OK_TIMEOUT_API_CODE",
        "SYSTEM_ERROR_MSG",
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
    invoke-direct {p0}, Lteam/opay/core/android/arch/ApiError$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lteam/opay/core/android/arch/ApiError$Companion;ILjava/lang/String;Ljava/lang/String;)Lkotlin/Pair;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/core/android/arch/ApiError$Companion;->b(ILjava/lang/String;Ljava/lang/String;)Lkotlin/Pair;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final b(ILjava/lang/String;Ljava/lang/String;)Lkotlin/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Pair<",
            "Lteam/opay/core/android/arch/ErrorType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/core/api/graphql/GraphqlErrorCode;->UNAUTHORIZED:Lteam/opay/core/api/graphql/GraphqlErrorCode;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/GraphqlErrorCode;->getCode()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x2

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static {p2, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->d0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    sget-object p1, Lteam/opay/core/android/arch/ErrorType;->UNAUTHORIZED:Lteam/opay/core/android/arch/ErrorType;

    .line 17
    .line 18
    goto/16 :goto_5

    .line 19
    .line 20
    :cond_0
    sget-object v0, Lteam/opay/core/api/graphql/GraphqlErrorCode;->TOKEN_TIMEOUT:Lteam/opay/core/api/graphql/GraphqlErrorCode;

    .line 21
    .line 22
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/GraphqlErrorCode;->getCode()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {p2, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->d0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    sget-object p1, Lteam/opay/core/android/arch/ErrorType;->TOKEN_TIMEOUT:Lteam/opay/core/android/arch/ErrorType;

    .line 33
    .line 34
    goto/16 :goto_5

    .line 35
    .line 36
    :cond_1
    sget-object v0, Lteam/opay/core/api/graphql/GraphqlErrorCode;->NAME_NOT_MATCH:Lteam/opay/core/api/graphql/GraphqlErrorCode;

    .line 37
    .line 38
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/GraphqlErrorCode;->getCode()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {p2, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->d0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    sget-object p1, Lteam/opay/core/android/arch/ErrorType;->NAME_NOT_MATCH_ERROR:Lteam/opay/core/android/arch/ErrorType;

    .line 49
    .line 50
    goto/16 :goto_5

    .line 51
    .line 52
    :cond_2
    sget-object v0, Lteam/opay/core/api/graphql/GraphqlErrorCode;->INCORRECT_REFERRAL:Lteam/opay/core/api/graphql/GraphqlErrorCode;

    .line 53
    .line 54
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/GraphqlErrorCode;->getCode()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {p2, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->d0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    sget-object p1, Lteam/opay/core/android/arch/ErrorType;->INCORRECT_REFERRAL:Lteam/opay/core/android/arch/ErrorType;

    .line 65
    .line 66
    goto/16 :goto_5

    .line 67
    .line 68
    :cond_3
    sget-object v0, Lteam/opay/core/api/graphql/GraphqlErrorCode;->DAILY_LIMIT_EXCEEDED:Lteam/opay/core/api/graphql/GraphqlErrorCode;

    .line 69
    .line 70
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/GraphqlErrorCode;->getCode()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {p2, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->d0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    sget-object p1, Lteam/opay/core/android/arch/ErrorType;->LIMIT_EXCEEDED:Lteam/opay/core/android/arch/ErrorType;

    .line 81
    .line 82
    goto/16 :goto_5

    .line 83
    .line 84
    :cond_4
    sget-object v0, Lteam/opay/core/api/graphql/GraphqlErrorCode;->DEPOSIT_LIMIT_EXCEEDED:Lteam/opay/core/api/graphql/GraphqlErrorCode;

    .line 85
    .line 86
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/GraphqlErrorCode;->getCode()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-static {p2, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->d0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_5

    .line 95
    .line 96
    sget-object p1, Lteam/opay/core/android/arch/ErrorType;->LIMIT_EXCEEDED:Lteam/opay/core/android/arch/ErrorType;

    .line 97
    .line 98
    goto/16 :goto_5

    .line 99
    .line 100
    :cond_5
    sget-object v0, Lteam/opay/core/api/graphql/GraphqlErrorCode;->UNREGISTERED_BETTING_ACCOUNT:Lteam/opay/core/api/graphql/GraphqlErrorCode;

    .line 101
    .line 102
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/GraphqlErrorCode;->getCode()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-static {p2, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->d0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-nez v0, :cond_14

    .line 111
    .line 112
    const-string v0, "04889"

    .line 113
    .line 114
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_6

    .line 119
    .line 120
    goto/16 :goto_4

    .line 121
    .line 122
    :cond_6
    const-string v0, "04171"

    .line 123
    .line 124
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-nez v0, :cond_13

    .line 129
    .line 130
    const-string v0, "04172"

    .line 131
    .line 132
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-nez v0, :cond_13

    .line 137
    .line 138
    const-string v0, "04173"

    .line 139
    .line 140
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-nez v0, :cond_13

    .line 145
    .line 146
    const-string v0, "04174"

    .line 147
    .line 148
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-eqz v0, :cond_7

    .line 153
    .line 154
    goto/16 :goto_3

    .line 155
    .line 156
    :cond_7
    const-string v0, "04018"

    .line 157
    .line 158
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-nez v0, :cond_12

    .line 163
    .line 164
    const-string v0, "04019"

    .line 165
    .line 166
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-eqz v0, :cond_8

    .line 171
    .line 172
    goto/16 :goto_2

    .line 173
    .line 174
    :cond_8
    const-string v0, "05001"

    .line 175
    .line 176
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-eqz v0, :cond_9

    .line 181
    .line 182
    sget-object p1, Lteam/opay/core/android/arch/ErrorType;->LIMIT_RECEIVER_EXCEEDED:Lteam/opay/core/android/arch/ErrorType;

    .line 183
    .line 184
    goto/16 :goto_5

    .line 185
    .line 186
    :cond_9
    const-string v0, "200000"

    .line 187
    .line 188
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-eqz v0, :cond_a

    .line 193
    .line 194
    sget-object p1, Lteam/opay/core/android/arch/ErrorType;->UNAUTHORIZED:Lteam/opay/core/android/arch/ErrorType;

    .line 195
    .line 196
    goto/16 :goto_5

    .line 197
    .line 198
    :cond_a
    const-string v0, "61006"

    .line 199
    .line 200
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    if-eqz v0, :cond_b

    .line 205
    .line 206
    sget-object p1, Lteam/opay/core/android/arch/ErrorType;->UN_FINISH_KYC1:Lteam/opay/core/android/arch/ErrorType;

    .line 207
    .line 208
    goto/16 :goto_5

    .line 209
    .line 210
    :cond_b
    const-string v0, "000031"

    .line 211
    .line 212
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    if-eqz v0, :cond_c

    .line 217
    .line 218
    sget-object p1, Lteam/opay/core/android/arch/ErrorType;->INVALID_PHONE:Lteam/opay/core/android/arch/ErrorType;

    .line 219
    .line 220
    goto/16 :goto_5

    .line 221
    .line 222
    :cond_c
    const-string v0, "000032"

    .line 223
    .line 224
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result p2

    .line 228
    if-eqz p2, :cond_d

    .line 229
    .line 230
    sget-object p1, Lteam/opay/core/android/arch/ErrorType;->INVALID_PROFILE_CODE:Lteam/opay/core/android/arch/ErrorType;

    .line 231
    .line 232
    goto :goto_5

    .line 233
    :cond_d
    invoke-static {}, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;->values()[Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

    .line 234
    .line 235
    .line 236
    move-result-object p2

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    .line 238
    .line 239
    array-length v2, p2

    .line 240
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 241
    .line 242
    .line 243
    array-length v2, p2

    .line 244
    const/4 v4, 0x0

    .line 245
    :goto_0
    if-ge v4, v2, :cond_e

    .line 246
    .line 247
    aget-object v5, p2, v4

    .line 248
    .line 249
    invoke-virtual {v5}, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;->getCode()I

    .line 250
    .line 251
    .line 252
    move-result v5

    .line 253
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    add-int/lit8 v4, v4, 0x1

    .line 261
    .line 262
    goto :goto_0

    .line 263
    :cond_e
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 264
    .line 265
    .line 266
    move-result-object p2

    .line 267
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result p2

    .line 271
    if-eqz p2, :cond_f

    .line 272
    .line 273
    sget-object p1, Lteam/opay/core/android/arch/ErrorType;->SERVER_ERROR:Lteam/opay/core/android/arch/ErrorType;

    .line 274
    .line 275
    goto :goto_5

    .line 276
    :cond_f
    invoke-static {}, Lteam/opay/core/android/arch/ResponseCode$ClientsError;->values()[Lteam/opay/core/android/arch/ResponseCode$ClientsError;

    .line 277
    .line 278
    .line 279
    move-result-object p2

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    .line 281
    .line 282
    array-length v2, p2

    .line 283
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 284
    .line 285
    .line 286
    array-length v2, p2

    .line 287
    :goto_1
    if-ge v1, v2, :cond_10

    .line 288
    .line 289
    aget-object v4, p2, v1

    .line 290
    .line 291
    invoke-virtual {v4}, Lteam/opay/core/android/arch/ResponseCode$ClientsError;->getCode()I

    .line 292
    .line 293
    .line 294
    move-result v4

    .line 295
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 296
    .line 297
    .line 298
    move-result-object v4

    .line 299
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    add-int/lit8 v1, v1, 0x1

    .line 303
    .line 304
    goto :goto_1

    .line 305
    :cond_10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    move-result p1

    .line 313
    if-eqz p1, :cond_11

    .line 314
    .line 315
    sget-object p1, Lteam/opay/core/android/arch/ErrorType;->CLIENT_ERROR:Lteam/opay/core/android/arch/ErrorType;

    .line 316
    .line 317
    goto :goto_5

    .line 318
    :cond_11
    sget-object p1, Lteam/opay/core/android/arch/ErrorType;->OTHER:Lteam/opay/core/android/arch/ErrorType;

    .line 319
    .line 320
    goto :goto_5

    .line 321
    :cond_12
    :goto_2
    sget-object p1, Lteam/opay/core/android/arch/ErrorType;->LIMIT_EXCEEDED:Lteam/opay/core/android/arch/ErrorType;

    .line 322
    .line 323
    goto :goto_5

    .line 324
    :cond_13
    :goto_3
    sget-object p1, Lteam/opay/core/android/arch/ErrorType;->ACCOUNT_TRANSFER:Lteam/opay/core/android/arch/ErrorType;

    .line 325
    .line 326
    goto :goto_5

    .line 327
    :cond_14
    :goto_4
    sget-object p1, Lteam/opay/core/android/arch/ErrorType;->UNREGISTERED_BETTING_ACCOUNT:Lteam/opay/core/android/arch/ErrorType;

    .line 328
    .line 329
    :goto_5
    sget-object p2, Lteam/opay/core/android/arch/ErrorType;->SERVER_ERROR:Lteam/opay/core/android/arch/ErrorType;

    .line 330
    .line 331
    if-ne p1, p2, :cond_15

    .line 332
    .line 333
    invoke-static {p1, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 334
    .line 335
    .line 336
    move-result-object p1

    .line 337
    goto :goto_6

    .line 338
    :cond_15
    invoke-static {p1, p3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 339
    .line 340
    .line 341
    move-result-object p1

    .line 342
    :goto_6
    return-object p1
.end method

.method public final c()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lteam/opay/core/android/arch/ApiError;->access$getNET_ERROR_MSG$cp()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lteam/opay/core/android/arch/ApiError;->access$getOK_TIMEOUT_MSG$cp()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
