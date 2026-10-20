.class final Lteam/opay/opb/qrcode/scan/AlbumViewModel$decodeAlbumPic$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AlbumViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/opb/qrcode/scan/AlbumViewModel;->u(Landroid/net/Uri;Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;)V
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
    c = "team.opay.opb.qrcode.scan.AlbumViewModel$decodeAlbumPic$1"
    f = "AlbumViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $performance:Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

.field final synthetic $uri:Landroid/net/Uri;

.field final synthetic $zxingScannerView:Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;

.field label:I

.field final synthetic this$0:Lteam/opay/opb/qrcode/scan/AlbumViewModel;


# direct methods
.method public constructor <init>(Lteam/opay/opb/qrcode/scan/AlbumViewModel;Landroid/net/Uri;Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/opb/qrcode/scan/AlbumViewModel;",
            "Landroid/net/Uri;",
            "Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;",
            "Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;",
            "Ljr2<",
            "-",
            "Lteam/opay/opb/qrcode/scan/AlbumViewModel$decodeAlbumPic$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/opb/qrcode/scan/AlbumViewModel$decodeAlbumPic$1;->this$0:Lteam/opay/opb/qrcode/scan/AlbumViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/opb/qrcode/scan/AlbumViewModel$decodeAlbumPic$1;->$uri:Landroid/net/Uri;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/opb/qrcode/scan/AlbumViewModel$decodeAlbumPic$1;->$performance:Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/opb/qrcode/scan/AlbumViewModel$decodeAlbumPic$1;->$zxingScannerView:Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;

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
    new-instance p1, Lteam/opay/opb/qrcode/scan/AlbumViewModel$decodeAlbumPic$1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/opb/qrcode/scan/AlbumViewModel$decodeAlbumPic$1;->this$0:Lteam/opay/opb/qrcode/scan/AlbumViewModel;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/opb/qrcode/scan/AlbumViewModel$decodeAlbumPic$1;->$uri:Landroid/net/Uri;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/opb/qrcode/scan/AlbumViewModel$decodeAlbumPic$1;->$performance:Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/opb/qrcode/scan/AlbumViewModel$decodeAlbumPic$1;->$zxingScannerView:Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lteam/opay/opb/qrcode/scan/AlbumViewModel$decodeAlbumPic$1;-><init>(Lteam/opay/opb/qrcode/scan/AlbumViewModel;Landroid/net/Uri;Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/opb/qrcode/scan/AlbumViewModel$decodeAlbumPic$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/opb/qrcode/scan/AlbumViewModel$decodeAlbumPic$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/opb/qrcode/scan/AlbumViewModel$decodeAlbumPic$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/opb/qrcode/scan/AlbumViewModel$decodeAlbumPic$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/opb/qrcode/scan/AlbumViewModel$decodeAlbumPic$1;->label:I

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
    :try_start_0
    sget-object v2, Lbl2;->a:Lbl2;

    .line 16
    .line 17
    iget-object p1, p0, Lteam/opay/opb/qrcode/scan/AlbumViewModel$decodeAlbumPic$1;->this$0:Lteam/opay/opb/qrcode/scan/AlbumViewModel;

    .line 18
    .line 19
    invoke-static {p1}, Lteam/opay/opb/qrcode/scan/AlbumViewModel;->s(Lteam/opay/opb/qrcode/scan/AlbumViewModel;)Landroid/app/Application;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget-object v4, p0, Lteam/opay/opb/qrcode/scan/AlbumViewModel$decodeAlbumPic$1;->$uri:Landroid/net/Uri;

    .line 24
    .line 25
    iget-object v5, p0, Lteam/opay/opb/qrcode/scan/AlbumViewModel$decodeAlbumPic$1;->$performance:Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 26
    .line 27
    const/16 v8, 0x10

    .line 28
    .line 29
    const/4 v9, 0x0

    .line 30
    const/4 v6, 0x1

    .line 31
    const/4 v7, 0x0

    .line 32
    invoke-static/range {v2 .. v9}, Lbl2;->b(Lbl2;Landroid/content/Context;Landroid/net/Uri;Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;ZZILjava/lang/Object;)Lkotlin/Pair;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Landroid/graphics/Bitmap;

    .line 41
    .line 42
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 49
    .line 50
    .line 51
    move-result-wide v3

    .line 52
    sub-long/2addr v3, v0

    .line 53
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-nez v2, :cond_0

    .line 58
    .line 59
    iget-object v1, p0, Lteam/opay/opb/qrcode/scan/AlbumViewModel$decodeAlbumPic$1;->this$0:Lteam/opay/opb/qrcode/scan/AlbumViewModel;

    .line 60
    .line 61
    invoke-static {v1}, Lteam/opay/opb/qrcode/scan/AlbumViewModel;->t(Lteam/opay/opb/qrcode/scan/AlbumViewModel;)Landroidx/lifecycle/MutableLiveData;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    new-instance v3, Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$GetLocalBitmapException;

    .line 66
    .line 67
    invoke-direct {v3, v0, p1}, Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$GetLocalBitmapException;-><init>(Ljava/lang/String;Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    iget-object v1, p0, Lteam/opay/opb/qrcode/scan/AlbumViewModel$decodeAlbumPic$1;->this$0:Lteam/opay/opb/qrcode/scan/AlbumViewModel;

    .line 75
    .line 76
    invoke-static {v1}, Lteam/opay/opb/qrcode/scan/AlbumViewModel;->t(Lteam/opay/opb/qrcode/scan/AlbumViewModel;)Landroidx/lifecycle/MutableLiveData;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    new-instance v3, Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$GetLocalBitmapSuccess;

    .line 81
    .line 82
    invoke-direct {v3, v0}, Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$GetLocalBitmapSuccess;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    :goto_0
    if-nez v2, :cond_1

    .line 89
    .line 90
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 91
    .line 92
    return-object p1

    .line 93
    :cond_1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scan/AlbumViewModel$decodeAlbumPic$1;->this$0:Lteam/opay/opb/qrcode/scan/AlbumViewModel;

    .line 94
    .line 95
    iget-object v1, p0, Lteam/opay/opb/qrcode/scan/AlbumViewModel$decodeAlbumPic$1;->$zxingScannerView:Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;

    .line 96
    .line 97
    invoke-static {v0, v1, v2, p1}, Lteam/opay/opb/qrcode/scan/AlbumViewModel;->r(Lteam/opay/opb/qrcode/scan/AlbumViewModel;Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;Landroid/graphics/Bitmap;Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;)V

    .line 98
    .line 99
    .line 100
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 101
    .line 102
    return-object p1

    .line 103
    :catch_0
    move-exception p1

    .line 104
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 105
    .line 106
    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 108
    .line 109
    .line 110
    move-result-wide v2

    .line 111
    sub-long/2addr v2, v0

    .line 112
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    new-instance v9, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;

    .line 117
    .line 118
    const/16 v7, 0x1f

    .line 119
    .line 120
    const/4 v8, 0x0

    .line 121
    const/4 v2, 0x0

    .line 122
    const/4 v3, 0x0

    .line 123
    const/4 v4, 0x0

    .line 124
    const/4 v5, 0x0

    .line 125
    const/4 v6, 0x0

    .line 126
    move-object v1, v9

    .line 127
    invoke-direct/range {v1 .. v8}, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;-><init>(ZLjava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {v9, p1}, Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;->h(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget-object p1, p0, Lteam/opay/opb/qrcode/scan/AlbumViewModel$decodeAlbumPic$1;->this$0:Lteam/opay/opb/qrcode/scan/AlbumViewModel;

    .line 138
    .line 139
    invoke-static {p1}, Lteam/opay/opb/qrcode/scan/AlbumViewModel;->t(Lteam/opay/opb/qrcode/scan/AlbumViewModel;)Landroidx/lifecycle/MutableLiveData;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    new-instance v1, Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$GetLocalBitmapException;

    .line 144
    .line 145
    invoke-direct {v1, v0, v9}, Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$GetLocalBitmapException;-><init>(Ljava/lang/String;Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 152
    .line 153
    return-object p1

    .line 154
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 155
    .line 156
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 157
    .line 158
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    throw p1
.end method
