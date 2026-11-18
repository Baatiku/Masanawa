.class public final Lteam/opay/pay/ad/AdReachHelp;
.super Ljava/lang/Object;
.source "AdReachHelp.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u001b\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\r\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ+\u0010\u0010\u001a\u00020\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u001b\u0010\u001b\u001a\u00020\u00168BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001c"
    }
    d2 = {
        "Lteam/opay/pay/ad/AdReachHelp;",
        "",
        "Landroid/app/Application;",
        "app",
        "Lxh;",
        "dao",
        "<init>",
        "(Landroid/app/Application;Lxh;)V",
        "",
        "k",
        "()V",
        "",
        "callbackShow",
        "",
        "adpCode",
        "adId",
        "f",
        "(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V",
        "a",
        "Landroid/app/Application;",
        "b",
        "Lxh;",
        "Lfv;",
        "c",
        "Lid8;",
        "j",
        "()Lfv;",
        "apiService",
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


# instance fields
.field public final a:Landroid/app/Application;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lxh;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final c:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;Lxh;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lxh;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "app"

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
    iput-object p1, p0, Lteam/opay/pay/ad/AdReachHelp;->a:Landroid/app/Application;

    .line 10
    .line 11
    iput-object p2, p0, Lteam/opay/pay/ad/AdReachHelp;->b:Lxh;

    .line 12
    .line 13
    new-instance p1, Ldi;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Ldi;-><init>(Lteam/opay/pay/ad/AdReachHelp;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lteam/opay/pay/ad/AdReachHelp;->c:Lid8;

    .line 23
    .line 24
    return-void
.end method

.method public static synthetic a(Lteam/opay/pay/ad/AdReachHelp;)Lfv;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/ad/AdReachHelp;->i(Lteam/opay/pay/ad/AdReachHelp;)Lfv;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lteam/opay/pay/ad/AdReachHelp;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/ad/AdReachHelp;->m(Lteam/opay/pay/ad/AdReachHelp;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/ad/AdReachHelp;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/ad/AdReachHelp;->g(Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/ad/AdReachHelp;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lteam/opay/pay/ad/AdReachHelp;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/ad/AdReachHelp;->l(Lteam/opay/pay/ad/AdReachHelp;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/ad/AdReachHelp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/ad/AdReachHelp;->h(Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/ad/AdReachHelp;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final g(Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/ad/AdReachHelp;)V
    .locals 2

    .line 1
    sget-object v0, Lqy;->a:Lqy;

    .line 2
    .line 3
    new-instance v1, Lei;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lei;-><init>(Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/ad/AdReachHelp;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lqy;->b(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static final h(Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/ad/AdReachHelp;)Lkotlin/Unit;
    .locals 8

    .line 1
    new-instance v7, Lteam/opay/pay/ad/AdReachEntity;

    .line 2
    .line 3
    sget-object v0, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager;->u()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    const/4 v5, 0x1

    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v1, 0x0

    .line 16
    move-object v0, v7

    .line 17
    move-object v2, p0

    .line 18
    move-object v3, p1

    .line 19
    invoke-direct/range {v0 .. v6}, Lteam/opay/pay/ad/AdReachEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p2, Lteam/opay/pay/ad/AdReachHelp;->b:Lxh;

    .line 23
    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    invoke-interface {p0, v7}, Lxh;->b(Lteam/opay/pay/ad/AdReachEntity;)V

    .line 27
    .line 28
    .line 29
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    :goto_0
    return-object p0
.end method

.method public static final i(Lteam/opay/pay/ad/AdReachHelp;)Lfv;
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 2
    .line 3
    iget-object p0, p0, Lteam/opay/pay/ad/AdReachHelp;->a:Landroid/app/Application;

    .line 4
    .line 5
    const-class v1, Lfv;

    .line 6
    .line 7
    invoke-virtual {v0, p0, v1}, Lteam/opay/core/api/GraphQL;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lfv;

    .line 12
    .line 13
    return-object p0
.end method

.method public static final l(Lteam/opay/pay/ad/AdReachHelp;)V
    .locals 9

    .line 1
    sget-object v0, Lqy;->a:Lqy;

    .line 2
    .line 3
    new-instance v1, Lfi;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lfi;-><init>(Lteam/opay/pay/ad/AdReachHelp;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lqy;->b(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/util/List;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "upload--data="

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    if-eqz v0, :cond_e

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    goto/16 :goto_5

    .line 36
    .line 37
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 43
    .line 44
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_2

    .line 56
    .line 57
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    move-object v5, v4

    .line 62
    check-cast v5, Lteam/opay/pay/ad/AdReachEntity;

    .line 63
    .line 64
    invoke-virtual {v5}, Lteam/opay/pay/ad/AdReachEntity;->b()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    if-nez v6, :cond_1

    .line 73
    .line 74
    new-instance v6, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    :cond_1
    check-cast v6, Ljava/util/List;

    .line 83
    .line 84
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-eqz v4, :cond_b

    .line 101
    .line 102
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    check-cast v4, Ljava/lang/String;

    .line 107
    .line 108
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    check-cast v5, Ljava/util/List;

    .line 113
    .line 114
    if-eqz v5, :cond_3

    .line 115
    .line 116
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    if-eqz v6, :cond_4

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_4
    new-instance v6, Lteam/opay/pay/api/BubbleReachReq;

    .line 124
    .line 125
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    const-string v8, ""

    .line 130
    .line 131
    invoke-direct {v6, v8, v8, v7}, Lteam/opay/pay/api/BubbleReachReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 132
    .line 133
    .line 134
    if-eqz v4, :cond_6

    .line 135
    .line 136
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 137
    .line 138
    .line 139
    move-result v7

    .line 140
    if-nez v7, :cond_5

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_5
    invoke-virtual {v6, v4}, Lteam/opay/pay/api/BubbleReachReq;->b(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    :cond_6
    :goto_2
    const/4 v4, 0x0

    .line 147
    invoke-static {v5, v4}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    check-cast v4, Lteam/opay/pay/ad/AdReachEntity;

    .line 152
    .line 153
    if-eqz v4, :cond_7

    .line 154
    .line 155
    invoke-virtual {v4}, Lteam/opay/pay/ad/AdReachEntity;->d()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    if-nez v4, :cond_8

    .line 160
    .line 161
    :cond_7
    move-object v4, v8

    .line 162
    :cond_8
    invoke-virtual {v6, v4}, Lteam/opay/pay/api/BubbleReachReq;->d(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    new-instance v4, Ljava/util/ArrayList;

    .line 166
    .line 167
    const/16 v7, 0xa

    .line 168
    .line 169
    invoke-static {v5, v7}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 170
    .line 171
    .line 172
    move-result v7

    .line 173
    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 174
    .line 175
    .line 176
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 181
    .line 182
    .line 183
    move-result v7

    .line 184
    if-eqz v7, :cond_a

    .line 185
    .line 186
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v7

    .line 190
    check-cast v7, Lteam/opay/pay/ad/AdReachEntity;

    .line 191
    .line 192
    invoke-virtual {v7}, Lteam/opay/pay/ad/AdReachEntity;->a()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v7

    .line 196
    if-nez v7, :cond_9

    .line 197
    .line 198
    move-object v7, v8

    .line 199
    :cond_9
    invoke-interface {v4, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_a
    invoke-virtual {v6, v4}, Lteam/opay/pay/api/BubbleReachReq;->c(Ljava/util/List;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v6}, Lteam/opay/pay/api/BubbleReachReq;->a()Ljava/util/List;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 211
    .line 212
    .line 213
    move-result v4

    .line 214
    if-nez v4, :cond_3

    .line 215
    .line 216
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    goto :goto_1

    .line 220
    :cond_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    if-eqz v2, :cond_d

    .line 225
    .line 226
    iget-object p0, p0, Lteam/opay/pay/ad/AdReachHelp;->b:Lxh;

    .line 227
    .line 228
    if-eqz p0, :cond_c

    .line 229
    .line 230
    invoke-interface {p0, v0}, Lxh;->a(Ljava/util/List;)V

    .line 231
    .line 232
    .line 233
    :cond_c
    return-void

    .line 234
    :cond_d
    :try_start_0
    invoke-virtual {p0}, Lteam/opay/pay/ad/AdReachHelp;->j()Lfv;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    invoke-interface {v2, v1}, Lfv;->J0(Ljava/util/List;)Lretrofit2/Call;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-interface {v1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 243
    .line 244
    .line 245
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    goto :goto_4

    .line 247
    :catch_0
    const/4 v1, 0x0

    .line 248
    :goto_4
    if-eqz v1, :cond_e

    .line 249
    .line 250
    invoke-virtual {v1}, Lretrofit2/Response;->isSuccessful()Z

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    const/4 v2, 0x1

    .line 255
    if-ne v1, v2, :cond_e

    .line 256
    .line 257
    iget-object p0, p0, Lteam/opay/pay/ad/AdReachHelp;->b:Lxh;

    .line 258
    .line 259
    if-eqz p0, :cond_e

    .line 260
    .line 261
    invoke-interface {p0, v0}, Lxh;->a(Ljava/util/List;)V

    .line 262
    .line 263
    .line 264
    :cond_e
    :goto_5
    return-void
.end method

.method public static final m(Lteam/opay/pay/ad/AdReachHelp;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/ad/AdReachHelp;->b:Lxh;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lxh;->c()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final f(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string p1, "ad_reach-action"

    .line 19
    .line 20
    invoke-static {p1}, Lteam/opay/library/service/task/OScheduler;->j(Ljava/lang/String;)Lteam/opay/library/service/task/OScheduler$b;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance v0, Lbi;

    .line 25
    .line 26
    invoke-direct {v0, p2, p3, p0}, Lbi;-><init>(Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/ad/AdReachHelp;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lteam/opay/library/service/task/OScheduler$b;->b(Ljava/lang/Runnable;)Lyfe;

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method public final j()Lfv;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/ad/AdReachHelp;->c:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lfv;

    .line 8
    .line 9
    return-object v0
.end method

.method public final k()V
    .locals 2

    .line 1
    const-string v0, "ad_reach-action"

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/library/service/task/OScheduler;->j(Ljava/lang/String;)Lteam/opay/library/service/task/OScheduler$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lci;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lci;-><init>(Lteam/opay/pay/ad/AdReachHelp;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lteam/opay/library/service/task/OScheduler$b;->b(Ljava/lang/Runnable;)Lyfe;

    .line 13
    .line 14
    .line 15
    return-void
.end method
