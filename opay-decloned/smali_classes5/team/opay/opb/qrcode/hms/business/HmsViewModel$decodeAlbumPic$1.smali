.class final Lteam/opay/opb/qrcode/hms/business/HmsViewModel$decodeAlbumPic$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "HmsViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/opb/qrcode/hms/business/HmsViewModel;->u(Landroid/net/Uri;Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;Ljava/lang/String;)V
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
    c = "team.opay.opb.qrcode.hms.business.HmsViewModel$decodeAlbumPic$1"
    f = "HmsViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $performance:Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

.field final synthetic $scanType:Ljava/lang/String;

.field final synthetic $uri:Landroid/net/Uri;

.field label:I

.field final synthetic this$0:Lteam/opay/opb/qrcode/hms/business/HmsViewModel;


# direct methods
.method public constructor <init>(Lteam/opay/opb/qrcode/hms/business/HmsViewModel;Landroid/net/Uri;Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;Ljava/lang/String;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/opb/qrcode/hms/business/HmsViewModel;",
            "Landroid/net/Uri;",
            "Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;",
            "Ljava/lang/String;",
            "Ljr2<",
            "-",
            "Lteam/opay/opb/qrcode/hms/business/HmsViewModel$decodeAlbumPic$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/opb/qrcode/hms/business/HmsViewModel$decodeAlbumPic$1;->this$0:Lteam/opay/opb/qrcode/hms/business/HmsViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/opb/qrcode/hms/business/HmsViewModel$decodeAlbumPic$1;->$uri:Landroid/net/Uri;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/opb/qrcode/hms/business/HmsViewModel$decodeAlbumPic$1;->$performance:Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/opb/qrcode/hms/business/HmsViewModel$decodeAlbumPic$1;->$scanType:Ljava/lang/String;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 6
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
    new-instance p1, Lteam/opay/opb/qrcode/hms/business/HmsViewModel$decodeAlbumPic$1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/opb/qrcode/hms/business/HmsViewModel$decodeAlbumPic$1;->this$0:Lteam/opay/opb/qrcode/hms/business/HmsViewModel;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/opb/qrcode/hms/business/HmsViewModel$decodeAlbumPic$1;->$uri:Landroid/net/Uri;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/opb/qrcode/hms/business/HmsViewModel$decodeAlbumPic$1;->$performance:Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/opb/qrcode/hms/business/HmsViewModel$decodeAlbumPic$1;->$scanType:Ljava/lang/String;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lteam/opay/opb/qrcode/hms/business/HmsViewModel$decodeAlbumPic$1;-><init>(Lteam/opay/opb/qrcode/hms/business/HmsViewModel;Landroid/net/Uri;Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;Ljava/lang/String;Ljr2;)V

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/opb/qrcode/hms/business/HmsViewModel$decodeAlbumPic$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/opb/qrcode/hms/business/HmsViewModel$decodeAlbumPic$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/opb/qrcode/hms/business/HmsViewModel$decodeAlbumPic$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/opb/qrcode/hms/business/HmsViewModel$decodeAlbumPic$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/opb/qrcode/hms/business/HmsViewModel$decodeAlbumPic$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    const/4 p1, 0x2

    .line 16
    const/4 v2, 0x0

    .line 17
    :try_start_0
    sget-object v3, Lbl2;->a:Lbl2;

    .line 18
    .line 19
    iget-object v4, p0, Lteam/opay/opb/qrcode/hms/business/HmsViewModel$decodeAlbumPic$1;->this$0:Lteam/opay/opb/qrcode/hms/business/HmsViewModel;

    .line 20
    .line 21
    invoke-static {v4}, Lteam/opay/opb/qrcode/hms/business/HmsViewModel;->s(Lteam/opay/opb/qrcode/hms/business/HmsViewModel;)Landroid/app/Application;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    iget-object v5, p0, Lteam/opay/opb/qrcode/hms/business/HmsViewModel$decodeAlbumPic$1;->$uri:Landroid/net/Uri;

    .line 26
    .line 27
    iget-object v6, p0, Lteam/opay/opb/qrcode/hms/business/HmsViewModel$decodeAlbumPic$1;->$performance:Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 28
    .line 29
    const/4 v7, 0x0

    .line 30
    const/4 v8, 0x1

    .line 31
    invoke-virtual/range {v3 .. v8}, Lbl2;->a(Landroid/content/Context;Landroid/net/Uri;Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;ZZ)Lkotlin/Pair;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Landroid/graphics/Bitmap;

    .line 40
    .line 41
    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;

    .line 46
    .line 47
    sget-object v5, Lsk8;->c:Lsk8;

    .line 48
    .line 49
    iget-object v6, p0, Lteam/opay/opb/qrcode/hms/business/HmsViewModel$decodeAlbumPic$1;->$uri:Landroid/net/Uri;

    .line 50
    .line 51
    invoke-static {v6}, Lvd;->c(Landroid/net/Uri;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    new-instance v7, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v8, "zhjjj uri.getUrl: "

    .line 61
    .line 62
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    invoke-static {v5, v6, v2, p1, v2}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    if-nez v4, :cond_0

    .line 76
    .line 77
    const/4 v6, 0x1

    .line 78
    goto :goto_0

    .line 79
    :cond_0
    const/4 v6, 0x0

    .line 80
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v8, "zhjjj bitmap == null: "

    .line 86
    .line 87
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    invoke-static {v5, v6, v2, p1, v2}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .line 99
    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 101
    .line 102
    .line 103
    move-result-wide v5

    .line 104
    sub-long/2addr v5, v0

    .line 105
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    if-nez v4, :cond_1

    .line 110
    .line 111
    iget-object v0, p0, Lteam/opay/opb/qrcode/hms/business/HmsViewModel$decodeAlbumPic$1;->this$0:Lteam/opay/opb/qrcode/hms/business/HmsViewModel;

    .line 112
    .line 113
    invoke-static {v0}, Lteam/opay/opb/qrcode/hms/business/HmsViewModel;->t(Lteam/opay/opb/qrcode/hms/business/HmsViewModel;)Landroidx/lifecycle/MutableLiveData;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    new-instance v1, Lteam/opay/opb/qrcode/hms/business/data/HmsAlbumDecodeResult$GetLocalBitmapException;

    .line 118
    .line 119
    invoke-direct {v1, p1, v3}, Lteam/opay/opb/qrcode/hms/business/data/HmsAlbumDecodeResult$GetLocalBitmapException;-><init>(Ljava/lang/String;Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 126
    .line 127
    return-object p1

    .line 128
    :cond_1
    iget-object v0, p0, Lteam/opay/opb/qrcode/hms/business/HmsViewModel$decodeAlbumPic$1;->this$0:Lteam/opay/opb/qrcode/hms/business/HmsViewModel;

    .line 129
    .line 130
    invoke-static {v0}, Lteam/opay/opb/qrcode/hms/business/HmsViewModel;->t(Lteam/opay/opb/qrcode/hms/business/HmsViewModel;)Landroidx/lifecycle/MutableLiveData;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    new-instance v1, Lteam/opay/opb/qrcode/hms/business/data/HmsAlbumDecodeResult$GetLocalBitmapSuccess;

    .line 135
    .line 136
    invoke-direct {v1, p1}, Lteam/opay/opb/qrcode/hms/business/data/HmsAlbumDecodeResult$GetLocalBitmapSuccess;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    iget-object p1, p0, Lteam/opay/opb/qrcode/hms/business/HmsViewModel$decodeAlbumPic$1;->this$0:Lteam/opay/opb/qrcode/hms/business/HmsViewModel;

    .line 143
    .line 144
    iget-object v0, p0, Lteam/opay/opb/qrcode/hms/business/HmsViewModel$decodeAlbumPic$1;->$scanType:Ljava/lang/String;

    .line 145
    .line 146
    invoke-static {p1, v4, v3, v0}, Lteam/opay/opb/qrcode/hms/business/HmsViewModel;->r(Lteam/opay/opb/qrcode/hms/business/HmsViewModel;Landroid/graphics/Bitmap;Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 150
    .line 151
    return-object p1

    .line 152
    :catch_0
    move-exception v3

    .line 153
    sget-object v4, Lsk8;->c:Lsk8;

    .line 154
    .line 155
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    new-instance v6, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .line 163
    .line 164
    const-string v7, "zhjjj decodeAlbumPic Exception: "

    .line 165
    .line 166
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    invoke-static {v4, v5, v2, p1, v2}, Lteam/opay/core/common/GenericLogger;->j(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 180
    .line 181
    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 183
    .line 184
    .line 185
    move-result-wide v4

    .line 186
    sub-long/2addr v4, v0

    .line 187
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    new-instance v0, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;

    .line 192
    .line 193
    const/16 v10, 0x1f

    .line 194
    .line 195
    const/4 v11, 0x0

    .line 196
    const/4 v5, 0x0

    .line 197
    const/4 v6, 0x0

    .line 198
    const/4 v7, 0x0

    .line 199
    const/4 v8, 0x0

    .line 200
    const/4 v9, 0x0

    .line 201
    move-object v4, v0

    .line 202
    invoke-direct/range {v4 .. v11}, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;-><init>(ZLjava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-virtual {v0, v1}, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;->h(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    iget-object v1, p0, Lteam/opay/opb/qrcode/hms/business/HmsViewModel$decodeAlbumPic$1;->this$0:Lteam/opay/opb/qrcode/hms/business/HmsViewModel;

    .line 213
    .line 214
    invoke-static {v1}, Lteam/opay/opb/qrcode/hms/business/HmsViewModel;->t(Lteam/opay/opb/qrcode/hms/business/HmsViewModel;)Landroidx/lifecycle/MutableLiveData;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    new-instance v2, Lteam/opay/opb/qrcode/hms/business/data/HmsAlbumDecodeResult$GetLocalBitmapException;

    .line 219
    .line 220
    invoke-direct {v2, p1, v0}, Lteam/opay/opb/qrcode/hms/business/data/HmsAlbumDecodeResult$GetLocalBitmapException;-><init>(Ljava/lang/String;Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 227
    .line 228
    return-object p1

    .line 229
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 230
    .line 231
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 232
    .line 233
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    throw p1
.end method
