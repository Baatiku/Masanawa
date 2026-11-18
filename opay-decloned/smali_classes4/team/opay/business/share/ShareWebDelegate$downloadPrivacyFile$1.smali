.class final Lteam/opay/business/share/ShareWebDelegate$downloadPrivacyFile$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ShareWebDelegate.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/share/ShareWebDelegate;->downloadPrivacyFile(Lcom/opay/webview/WebFoundationJsData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lzr2;",
        "Ljr2<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lzr2;",
        "",
        "<anonymous>",
        "(Lzr2;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Ln33;
    c = "team.opay.business.share.ShareWebDelegate$downloadPrivacyFile$1"
    f = "ShareWebDelegate.kt"
    l = {
        0x105,
        0x10d,
        0x110
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $webFoundationJsData:Lcom/opay/webview/WebFoundationJsData;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lteam/opay/business/share/ShareWebDelegate;


# direct methods
.method public constructor <init>(Lcom/opay/webview/WebFoundationJsData;Lteam/opay/business/share/ShareWebDelegate;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opay/webview/WebFoundationJsData;",
            "Lteam/opay/business/share/ShareWebDelegate;",
            "Ljr2<",
            "-",
            "Lteam/opay/business/share/ShareWebDelegate$downloadPrivacyFile$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/share/ShareWebDelegate$downloadPrivacyFile$1;->$webFoundationJsData:Lcom/opay/webview/WebFoundationJsData;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/business/share/ShareWebDelegate$downloadPrivacyFile$1;->this$0:Lteam/opay/business/share/ShareWebDelegate;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljr2<",
            "*>;)",
            "Ljr2<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lteam/opay/business/share/ShareWebDelegate$downloadPrivacyFile$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/business/share/ShareWebDelegate$downloadPrivacyFile$1;->$webFoundationJsData:Lcom/opay/webview/WebFoundationJsData;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/business/share/ShareWebDelegate$downloadPrivacyFile$1;->this$0:Lteam/opay/business/share/ShareWebDelegate;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/business/share/ShareWebDelegate$downloadPrivacyFile$1;-><init>(Lcom/opay/webview/WebFoundationJsData;Lteam/opay/business/share/ShareWebDelegate;Ljr2;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/business/share/ShareWebDelegate$downloadPrivacyFile$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lzr2;Ljr2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzr2;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/share/ShareWebDelegate$downloadPrivacyFile$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/business/share/ShareWebDelegate$downloadPrivacyFile$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/business/share/ShareWebDelegate$downloadPrivacyFile$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v6

    .line 5
    iget v0, p0, Lteam/opay/business/share/ShareWebDelegate$downloadPrivacyFile$1;->label:I

    .line 6
    .line 7
    const-string v7, "toString(...)"

    .line 8
    .line 9
    const-string v8, "status"

    .line 10
    .line 11
    const/4 v9, 0x0

    .line 12
    const/4 v1, 0x3

    .line 13
    const/4 v2, 0x2

    .line 14
    const/4 v3, 0x1

    .line 15
    const/4 v4, 0x0

    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    if-eq v0, v3, :cond_2

    .line 19
    .line 20
    if-eq v0, v2, :cond_1

    .line 21
    .line 22
    if-ne v0, v1, :cond_0

    .line 23
    .line 24
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto/16 :goto_3

    .line 28
    .line 29
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 32
    .line 33
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0

    .line 37
    :cond_1
    iget-object v0, p0, Lteam/opay/business/share/ShareWebDelegate$downloadPrivacyFile$1;->L$1:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v0, Ljava/io/File;

    .line 40
    .line 41
    iget-object v2, p0, Lteam/opay/business/share/ShareWebDelegate$downloadPrivacyFile$1;->L$0:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v2, Lteam/opay/business/share/hilt/H5FileInfo;

    .line 44
    .line 45
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    move-object v5, v0

    .line 49
    move-object v0, v2

    .line 50
    move-object v2, p1

    .line 51
    goto/16 :goto_2

    .line 52
    .line 53
    :cond_2
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_0

    .line 57
    .line 58
    :cond_3
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-static {}, Lkt6;->g()Lcom/google/gson/Gson;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-object v5, p0, Lteam/opay/business/share/ShareWebDelegate$downloadPrivacyFile$1;->$webFoundationJsData:Lcom/opay/webview/WebFoundationJsData;

    .line 66
    .line 67
    invoke-virtual {v5}, Lcom/opay/webview/WebFoundationJsData;->getFunctionData()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    const-class v10, Lteam/opay/business/share/hilt/H5FileInfo;

    .line 72
    .line 73
    invoke-virtual {v0, v5, v10}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Lteam/opay/business/share/hilt/H5FileInfo;

    .line 78
    .line 79
    sget-object v5, Lteam/opay/business/share/pdf/ShareFile;->a:Lteam/opay/business/share/pdf/ShareFile;

    .line 80
    .line 81
    iget-object v10, p0, Lteam/opay/business/share/ShareWebDelegate$downloadPrivacyFile$1;->this$0:Lteam/opay/business/share/ShareWebDelegate;

    .line 82
    .line 83
    invoke-virtual {v10}, Lteam/opay/business/share/ShareWebDelegate;->getContext()Landroid/content/Context;

    .line 84
    .line 85
    .line 86
    move-result-object v10

    .line 87
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5, v10, v0}, Lteam/opay/business/share/pdf/ShareFile;->i(Landroid/content/Context;Lteam/opay/business/share/hilt/H5FileInfo;)Ljava/io/File;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    sget-object v10, Ljk8;->c:Ljk8;

    .line 95
    .line 96
    new-instance v11, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    const-string v12, "h5File ="

    .line 102
    .line 103
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v11

    .line 113
    invoke-static {v10, v11, v4, v2, v4}, Lteam/opay/core/common/GenericLogger;->m(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 117
    .line 118
    .line 119
    move-result v10

    .line 120
    if-eqz v10, :cond_4

    .line 121
    .line 122
    sget-object v0, Lteam/opay/business/share/utils/PDFUtils;->a:Lteam/opay/business/share/utils/PDFUtils;

    .line 123
    .line 124
    iget-object v1, p0, Lteam/opay/business/share/ShareWebDelegate$downloadPrivacyFile$1;->this$0:Lteam/opay/business/share/ShareWebDelegate;

    .line 125
    .line 126
    invoke-virtual {v1}, Lteam/opay/business/share/ShareWebDelegate;->getContext()Landroid/content/Context;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {v0, v1, v5}, Lteam/opay/business/share/utils/PDFUtils;->u(Landroid/content/Context;Ljava/io/File;)V

    .line 131
    .line 132
    .line 133
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 134
    .line 135
    return-object v0

    .line 136
    :cond_4
    iget-object v10, p0, Lteam/opay/business/share/ShareWebDelegate$downloadPrivacyFile$1;->this$0:Lteam/opay/business/share/ShareWebDelegate;

    .line 137
    .line 138
    invoke-static {v10}, Lteam/opay/business/share/ShareWebDelegate;->access$getLoading$p(Lteam/opay/business/share/ShareWebDelegate;)Landroidx/lifecycle/MutableLiveData;

    .line 139
    .line 140
    .line 141
    move-result-object v10

    .line 142
    invoke-static {v3}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 143
    .line 144
    .line 145
    move-result-object v11

    .line 146
    invoke-virtual {v10, v11}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Lteam/opay/business/share/hilt/H5FileInfo;->a()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v10

    .line 153
    if-eqz v10, :cond_7

    .line 154
    .line 155
    invoke-static {v10}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 156
    .line 157
    .line 158
    move-result v10

    .line 159
    if-eqz v10, :cond_5

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_5
    iget-object v1, p0, Lteam/opay/business/share/ShareWebDelegate$downloadPrivacyFile$1;->this$0:Lteam/opay/business/share/ShareWebDelegate;

    .line 163
    .line 164
    invoke-virtual {v1}, Lteam/opay/business/share/ShareWebDelegate;->getContext()Landroid/content/Context;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-virtual {v0}, Lteam/opay/business/share/hilt/H5FileInfo;->a()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    invoke-virtual {v0}, Lteam/opay/business/share/hilt/H5FileInfo;->d()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v7

    .line 176
    iput v3, p0, Lteam/opay/business/share/ShareWebDelegate$downloadPrivacyFile$1;->label:I

    .line 177
    .line 178
    move-object v0, v1

    .line 179
    move-object v1, v2

    .line 180
    move-object v2, v4

    .line 181
    move-object v3, v7

    .line 182
    move-object v4, v5

    .line 183
    move-object v5, p0

    .line 184
    invoke-static/range {v0 .. v5}, Lteam/opay/business/share/ShareWebDelegate;->access$saveToAlbumOrDownload(Lteam/opay/business/share/ShareWebDelegate;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljr2;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    if-ne v0, v6, :cond_6

    .line 189
    .line 190
    return-object v6

    .line 191
    :cond_6
    :goto_0
    iget-object v0, p0, Lteam/opay/business/share/ShareWebDelegate$downloadPrivacyFile$1;->this$0:Lteam/opay/business/share/ShareWebDelegate;

    .line 192
    .line 193
    invoke-static {v0}, Lteam/opay/business/share/ShareWebDelegate;->access$getLoading$p(Lteam/opay/business/share/ShareWebDelegate;)Landroidx/lifecycle/MutableLiveData;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-static {v9}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 205
    .line 206
    return-object v0

    .line 207
    :cond_7
    :goto_1
    new-instance v3, Lteam/opay/business/share/api/PrivacyFileRequest;

    .line 208
    .line 209
    invoke-virtual {v0}, Lteam/opay/business/share/hilt/H5FileInfo;->e()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v10

    .line 213
    invoke-direct {v3, v10}, Lteam/opay/business/share/api/PrivacyFileRequest;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    iget-object v10, p0, Lteam/opay/business/share/ShareWebDelegate$downloadPrivacyFile$1;->this$0:Lteam/opay/business/share/ShareWebDelegate;

    .line 217
    .line 218
    invoke-virtual {v10}, Lteam/opay/business/share/ShareWebDelegate;->getContext()Landroid/content/Context;

    .line 219
    .line 220
    .line 221
    move-result-object v10

    .line 222
    invoke-static {v10}, Lbmd;->b(Landroid/content/Context;)Lteam/opay/business/share/hilt/ShareRepository;

    .line 223
    .line 224
    .line 225
    move-result-object v10

    .line 226
    iput-object v0, p0, Lteam/opay/business/share/ShareWebDelegate$downloadPrivacyFile$1;->L$0:Ljava/lang/Object;

    .line 227
    .line 228
    iput-object v5, p0, Lteam/opay/business/share/ShareWebDelegate$downloadPrivacyFile$1;->L$1:Ljava/lang/Object;

    .line 229
    .line 230
    iput v2, p0, Lteam/opay/business/share/ShareWebDelegate$downloadPrivacyFile$1;->label:I

    .line 231
    .line 232
    invoke-virtual {v10, v3, p0}, Lteam/opay/business/share/hilt/ShareRepository;->a(Lteam/opay/business/share/api/PrivacyFileRequest;Ljr2;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    if-ne v2, v6, :cond_8

    .line 237
    .line 238
    return-object v6

    .line 239
    :cond_8
    :goto_2
    check-cast v2, Lteam/opay/core/http/HttpResult;

    .line 240
    .line 241
    instance-of v3, v2, Lteam/opay/core/http/HttpResult$Success;

    .line 242
    .line 243
    if-eqz v3, :cond_c

    .line 244
    .line 245
    check-cast v2, Lteam/opay/core/http/HttpResult$Success;

    .line 246
    .line 247
    invoke-virtual {v2}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    check-cast v2, Lteam/opay/business/share/api/PrivacyFileResponse;

    .line 252
    .line 253
    if-eqz v2, :cond_9

    .line 254
    .line 255
    invoke-virtual {v2}, Lteam/opay/business/share/api/PrivacyFileResponse;->a()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    if-nez v2, :cond_a

    .line 260
    .line 261
    :cond_9
    const-string v2, ""

    .line 262
    .line 263
    :cond_a
    iget-object v3, p0, Lteam/opay/business/share/ShareWebDelegate$downloadPrivacyFile$1;->this$0:Lteam/opay/business/share/ShareWebDelegate;

    .line 264
    .line 265
    invoke-virtual {v3}, Lteam/opay/business/share/ShareWebDelegate;->getContext()Landroid/content/Context;

    .line 266
    .line 267
    .line 268
    move-result-object v10

    .line 269
    invoke-virtual {v0}, Lteam/opay/business/share/hilt/H5FileInfo;->d()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v11

    .line 273
    iput-object v4, p0, Lteam/opay/business/share/ShareWebDelegate$downloadPrivacyFile$1;->L$0:Ljava/lang/Object;

    .line 274
    .line 275
    iput-object v4, p0, Lteam/opay/business/share/ShareWebDelegate$downloadPrivacyFile$1;->L$1:Ljava/lang/Object;

    .line 276
    .line 277
    iput v1, p0, Lteam/opay/business/share/ShareWebDelegate$downloadPrivacyFile$1;->label:I

    .line 278
    .line 279
    move-object v0, v3

    .line 280
    move-object v1, v10

    .line 281
    move-object v3, v11

    .line 282
    move-object v4, v5

    .line 283
    move-object v5, p0

    .line 284
    invoke-static/range {v0 .. v5}, Lteam/opay/business/share/ShareWebDelegate;->access$saveToAlbumOrDownload(Lteam/opay/business/share/ShareWebDelegate;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljr2;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    if-ne v0, v6, :cond_b

    .line 289
    .line 290
    return-object v6

    .line 291
    :cond_b
    :goto_3
    new-instance v0, Lorg/json/JSONObject;

    .line 292
    .line 293
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 294
    .line 295
    .line 296
    const-string v1, "success"

    .line 297
    .line 298
    invoke-virtual {v0, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 299
    .line 300
    .line 301
    iget-object v1, p0, Lteam/opay/business/share/ShareWebDelegate$downloadPrivacyFile$1;->$webFoundationJsData:Lcom/opay/webview/WebFoundationJsData;

    .line 302
    .line 303
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v1, v0}, Lcom/opay/webview/WebFoundationJsData;->callH5Method(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    goto :goto_4

    .line 314
    :cond_c
    iget-object v0, p0, Lteam/opay/business/share/ShareWebDelegate$downloadPrivacyFile$1;->this$0:Lteam/opay/business/share/ShareWebDelegate;

    .line 315
    .line 316
    invoke-virtual {v0}, Lteam/opay/business/share/ShareWebDelegate;->getContext()Landroid/content/Context;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    invoke-virtual {v2}, Lteam/opay/core/http/HttpResult;->getApiError()Lteam/opay/core/http/arch/ApiError;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    if-eqz v1, :cond_d

    .line 325
    .line 326
    invoke-virtual {v1}, Lteam/opay/core/http/arch/ApiError;->d()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v4

    .line 330
    :cond_d
    invoke-static {v0, v4}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    new-instance v0, Lorg/json/JSONObject;

    .line 334
    .line 335
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 336
    .line 337
    .line 338
    const-string v1, "fail"

    .line 339
    .line 340
    invoke-virtual {v0, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 341
    .line 342
    .line 343
    iget-object v1, p0, Lteam/opay/business/share/ShareWebDelegate$downloadPrivacyFile$1;->$webFoundationJsData:Lcom/opay/webview/WebFoundationJsData;

    .line 344
    .line 345
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v1, v0}, Lcom/opay/webview/WebFoundationJsData;->callH5Method(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    :goto_4
    iget-object v0, p0, Lteam/opay/business/share/ShareWebDelegate$downloadPrivacyFile$1;->this$0:Lteam/opay/business/share/ShareWebDelegate;

    .line 356
    .line 357
    invoke-static {v0}, Lteam/opay/business/share/ShareWebDelegate;->access$getLoading$p(Lteam/opay/business/share/ShareWebDelegate;)Landroidx/lifecycle/MutableLiveData;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    invoke-static {v9}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 366
    .line 367
    .line 368
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 369
    .line 370
    return-object v0
.end method
