.class public final Lteam/opay/business/picture/h5Photo/PhotoUploader;
.super Ljava/lang/Object;
.source "PhotoUploader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/business/picture/h5Photo/PhotoUploader$Companion;,
        Lteam/opay/business/picture/h5Photo/PhotoUploader$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\t\u0008\u0000\u0018\u0000 .2\u00020\u0001:\u0001/B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0010\u0010\t\u001a\u00020\u0006H\u0086@\u00a2\u0006\u0004\u0008\t\u0010\nJ!\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00042\u0008\u0008\u0002\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001f\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u001b\u0010\u0019\u001a\u00020\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R0\u0010!\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u001a8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u001b\u0010&\u001a\u00020\"8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008#\u0010\u0016\u001a\u0004\u0008$\u0010%R\u0014\u0010*\u001a\u00020\'8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008(\u0010)R\u0014\u0010-\u001a\u00020\u000c8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008+\u0010,\u00a8\u00060"
    }
    d2 = {
        "Lteam/opay/business/picture/h5Photo/PhotoUploader;",
        "",
        "<init>",
        "()V",
        "Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;",
        "photoData",
        "",
        "s",
        "(Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;)V",
        "i",
        "(Ljr2;)Ljava/lang/Object;",
        "takePhotoUploadData",
        "",
        "retry",
        "k",
        "(Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;I)V",
        "",
        "url",
        "t",
        "(Ljava/lang/String;Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;)V",
        "Landroid/content/Context;",
        "a",
        "Lid8;",
        "o",
        "()Landroid/content/Context;",
        "context",
        "Lkotlin/Function1;",
        "b",
        "Lkotlin/jvm/functions/Function1;",
        "getCallback2H5",
        "()Lkotlin/jvm/functions/Function1;",
        "r",
        "(Lkotlin/jvm/functions/Function1;)V",
        "callback2H5",
        "Lteam/opay/business/picture/hilt/PhotoRepository;",
        "c",
        "p",
        "()Lteam/opay/business/picture/hilt/PhotoRepository;",
        "repository",
        "",
        "d",
        "J",
        "retryDelay",
        "e",
        "I",
        "maxRetries",
        "f",
        "Companion",
        "business-picture_release"
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
.field public static final f:Lteam/opay/business/picture/h5Photo/PhotoUploader$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static volatile g:Lteam/opay/business/picture/h5Photo/PhotoUploader;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# instance fields
.field public final a:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final c:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:J

.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/business/picture/h5Photo/PhotoUploader$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/business/picture/h5Photo/PhotoUploader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/business/picture/h5Photo/PhotoUploader;->f:Lteam/opay/business/picture/h5Photo/PhotoUploader$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lepb;

    invoke-direct {v0}, Lepb;-><init>()V

    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object v0

    iput-object v0, p0, Lteam/opay/business/picture/h5Photo/PhotoUploader;->a:Lid8;

    .line 4
    new-instance v0, Lfpb;

    invoke-direct {v0, p0}, Lfpb;-><init>(Lteam/opay/business/picture/h5Photo/PhotoUploader;)V

    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object v0

    iput-object v0, p0, Lteam/opay/business/picture/h5Photo/PhotoUploader;->c:Lid8;

    const-wide/16 v0, 0x7530

    .line 5
    iput-wide v0, p0, Lteam/opay/business/picture/h5Photo/PhotoUploader;->d:J

    const/4 v0, 0x3

    .line 6
    iput v0, p0, Lteam/opay/business/picture/h5Photo/PhotoUploader;->e:I

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/business/picture/h5Photo/PhotoUploader;-><init>()V

    return-void
.end method

.method public static synthetic a(Lteam/opay/business/picture/h5Photo/PhotoUploader;)Lteam/opay/business/picture/hilt/PhotoRepository;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/picture/h5Photo/PhotoUploader;->q(Lteam/opay/business/picture/h5Photo/PhotoUploader;)Lteam/opay/business/picture/hilt/PhotoRepository;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lteam/opay/business/picture/h5Photo/PhotoUploader;Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;Lteam/opay/core/http/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/business/picture/h5Photo/PhotoUploader;->u(Lteam/opay/business/picture/h5Photo/PhotoUploader;Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;Lteam/opay/core/http/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(ILteam/opay/business/picture/h5Photo/PhotoUploader;Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;Lteam/opay/core/http/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/business/picture/h5Photo/PhotoUploader;->m(ILteam/opay/business/picture/h5Photo/PhotoUploader;Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;Lteam/opay/core/http/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lteam/opay/business/picture/h5Photo/PhotoUploader;Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/business/picture/h5Photo/PhotoUploader;->n(Lteam/opay/business/picture/h5Photo/PhotoUploader;Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/business/picture/h5Photo/PhotoUploader;->j()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic f(Lteam/opay/business/picture/h5Photo/PhotoUploader;)Landroid/content/Context;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/picture/h5Photo/PhotoUploader;->o()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic g()Lteam/opay/business/picture/h5Photo/PhotoUploader;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/business/picture/h5Photo/PhotoUploader;->g:Lteam/opay/business/picture/h5Photo/PhotoUploader;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic h(Lteam/opay/business/picture/h5Photo/PhotoUploader;)V
    .locals 0

    .line 1
    sput-object p0, Lteam/opay/business/picture/h5Photo/PhotoUploader;->g:Lteam/opay/business/picture/h5Photo/PhotoUploader;

    .line 2
    .line 3
    return-void
.end method

.method public static final j()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public static synthetic l(Lteam/opay/business/picture/h5Photo/PhotoUploader;Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;IILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/picture/h5Photo/PhotoUploader;->k(Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final m(ILteam/opay/business/picture/h5Photo/PhotoUploader;Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;Lteam/opay/core/http/arch/Resource;)Lkotlin/Unit;
    .locals 16

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x2

    .line 9
    const/4 v5, 0x1

    .line 10
    const/4 v6, 0x0

    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    invoke-virtual/range {p3 .. p3}, Lteam/opay/core/http/arch/Resource;->c()Lteam/opay/core/http/arch/Status;

    .line 14
    .line 15
    .line 16
    move-result-object v7

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v7, v6

    .line 19
    :goto_0
    if-nez v7, :cond_1

    .line 20
    .line 21
    const/4 v7, -0x1

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    sget-object v8, Lteam/opay/business/picture/h5Photo/PhotoUploader$a;->a:[I

    .line 24
    .line 25
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    aget v7, v8, v7

    .line 30
    .line 31
    :goto_1
    const-string v8, "retry"

    .line 32
    .line 33
    const-string v9, "key"

    .line 34
    .line 35
    if-eq v7, v5, :cond_4

    .line 36
    .line 37
    if-eq v7, v4, :cond_2

    .line 38
    .line 39
    invoke-static {}, Let;->l()Lkotlin/jvm/functions/Function0;

    .line 40
    .line 41
    .line 42
    goto/16 :goto_2

    .line 43
    .line 44
    :cond_2
    iget v7, v1, Lteam/opay/business/picture/h5Photo/PhotoUploader;->e:I

    .line 45
    .line 46
    if-lt v0, v7, :cond_3

    .line 47
    .line 48
    sget-object v0, Lteam/opay/business/picture/h5Photo/PictureStorage;->b:Lteam/opay/business/picture/h5Photo/PictureStorage;

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Lteam/opay/business/picture/h5Photo/PictureStorage;->f(Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;)V

    .line 51
    .line 52
    .line 53
    sget-object v0, Lfk8;->c:Lfk8;

    .line 54
    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v3, "Max retries reached. Giving up on "

    .line 61
    .line 62
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-static {v0, v1, v6, v4, v6}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 76
    .line 77
    return-object v0

    .line 78
    :cond_3
    new-instance v6, Lhpb;

    .line 79
    .line 80
    invoke-direct {v6, v1, v2, v0}, Lhpb;-><init>(Lteam/opay/business/picture/h5Photo/PhotoUploader;Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;I)V

    .line 81
    .line 82
    .line 83
    int-to-long v10, v0

    .line 84
    iget-wide v12, v1, Lteam/opay/business/picture/h5Photo/PhotoUploader;->d:J

    .line 85
    .line 86
    mul-long v10, v10, v12

    .line 87
    .line 88
    invoke-static {v6, v10, v11}, Lgke;->f(Ljava/lang/Runnable;J)Z

    .line 89
    .line 90
    .line 91
    sget-object v6, Lteam/opay/core/common/spi/a;->b:Lteam/opay/core/common/spi/a;

    .line 92
    .line 93
    invoke-virtual/range {p1 .. p1}, Lteam/opay/business/picture/h5Photo/PhotoUploader;->o()Landroid/content/Context;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    new-instance v7, Lkotlin/Pair;

    .line 98
    .line 99
    invoke-virtual/range {p2 .. p2}, Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;->b()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-direct {v7, v9, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    new-instance v2, Lkotlin/Pair;

    .line 107
    .line 108
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-direct {v2, v8, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    new-array v0, v4, [Lkotlin/Pair;

    .line 116
    .line 117
    aput-object v7, v0, v3

    .line 118
    .line 119
    aput-object v2, v0, v5

    .line 120
    .line 121
    const-string v2, "h5_photo_upload_failed"

    .line 122
    .line 123
    invoke-virtual {v6, v1, v2, v0}, Lteam/opay/core/common/spi/a;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_4
    invoke-virtual/range {p3 .. p3}, Lteam/opay/core/http/arch/Resource;->a()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v7

    .line 131
    check-cast v7, Lteam/opay/business/picture/api/UploadPrivacyFileResponse;

    .line 132
    .line 133
    if-eqz v7, :cond_7

    .line 134
    .line 135
    invoke-virtual {v7}, Lteam/opay/business/picture/api/UploadPrivacyFileResponse;->getFileUrl()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    if-nez v7, :cond_5

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_5
    invoke-virtual {v1, v7, v2}, Lteam/opay/business/picture/h5Photo/PhotoUploader;->t(Ljava/lang/String;Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;)V

    .line 143
    .line 144
    .line 145
    new-instance v10, Lcom/google/gson/JsonObject;

    .line 146
    .line 147
    invoke-direct {v10}, Lcom/google/gson/JsonObject;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-virtual/range {p2 .. p2}, Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;->b()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v11

    .line 154
    invoke-virtual {v10, v9, v11}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    const-string v11, "url"

    .line 158
    .line 159
    invoke-virtual {v10, v11, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    iget-object v7, v1, Lteam/opay/business/picture/h5Photo/PhotoUploader;->b:Lkotlin/jvm/functions/Function1;

    .line 163
    .line 164
    if-eqz v7, :cond_6

    .line 165
    .line 166
    new-instance v11, Lcom/google/gson/Gson;

    .line 167
    .line 168
    invoke-direct {v11}, Lcom/google/gson/Gson;-><init>()V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v11, v10}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v10

    .line 175
    const-string v11, "toJson(...)"

    .line 176
    .line 177
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-interface {v7, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    :cond_6
    sget-object v7, Lteam/opay/business/picture/h5Photo/PictureStorage;->b:Lteam/opay/business/picture/h5Photo/PictureStorage;

    .line 184
    .line 185
    invoke-virtual {v7, v2}, Lteam/opay/business/picture/h5Photo/PictureStorage;->e(Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;)V

    .line 186
    .line 187
    .line 188
    invoke-static {}, Lvy;->b()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;

    .line 189
    .line 190
    .line 191
    move-result-object v10

    .line 192
    new-instance v13, Lteam/opay/business/picture/h5Photo/PhotoUploader$doUploadImage$1$1$1;

    .line 193
    .line 194
    invoke-direct {v13, v1, v6}, Lteam/opay/business/picture/h5Photo/PhotoUploader$doUploadImage$1$1$1;-><init>(Lteam/opay/business/picture/h5Photo/PhotoUploader;Ljr2;)V

    .line 195
    .line 196
    .line 197
    const/4 v14, 0x3

    .line 198
    const/4 v15, 0x0

    .line 199
    const/4 v11, 0x0

    .line 200
    const/4 v12, 0x0

    .line 201
    invoke-static/range {v10 .. v15}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 202
    .line 203
    .line 204
    sget-object v6, Lteam/opay/core/common/spi/a;->b:Lteam/opay/core/common/spi/a;

    .line 205
    .line 206
    invoke-virtual/range {p1 .. p1}, Lteam/opay/business/picture/h5Photo/PhotoUploader;->o()Landroid/content/Context;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    new-instance v7, Lkotlin/Pair;

    .line 211
    .line 212
    invoke-virtual/range {p2 .. p2}, Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;->b()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    invoke-direct {v7, v9, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    new-instance v2, Lkotlin/Pair;

    .line 220
    .line 221
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-direct {v2, v8, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    new-array v0, v4, [Lkotlin/Pair;

    .line 229
    .line 230
    aput-object v7, v0, v3

    .line 231
    .line 232
    aput-object v2, v0, v5

    .line 233
    .line 234
    const-string v2, "h5_photo_upload_success"

    .line 235
    .line 236
    invoke-virtual {v6, v1, v2, v0}, Lteam/opay/core/common/spi/a;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 237
    .line 238
    .line 239
    :cond_7
    :goto_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 240
    .line 241
    return-object v0
.end method

.method public static final n(Lteam/opay/business/picture/h5Photo/PhotoUploader;Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;I)V
    .locals 0

    .line 1
    add-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/picture/h5Photo/PhotoUploader;->k(Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final q(Lteam/opay/business/picture/h5Photo/PhotoUploader;)Lteam/opay/business/picture/hilt/PhotoRepository;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/picture/h5Photo/PhotoUploader;->o()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-class v0, Lapb;

    .line 6
    .line 7
    invoke-static {p0, v0}, Luo5;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lapb;

    .line 12
    .line 13
    invoke-interface {p0}, Lapb;->b()Lteam/opay/business/picture/hilt/PhotoRepository;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static final u(Lteam/opay/business/picture/h5Photo/PhotoUploader;Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;Lteam/opay/core/http/arch/Resource;)Lkotlin/Unit;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    sget-object v2, Lfk8;->c:Lfk8;

    .line 4
    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v4, "submitUrl: "

    .line 11
    .line 12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x2

    .line 24
    invoke-static {v2, v3, v4, v5, v4}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    if-eqz p2, :cond_0

    .line 28
    .line 29
    invoke-virtual {p2}, Lteam/opay/core/http/arch/Resource;->c()Lteam/opay/core/http/arch/Status;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    :cond_0
    if-nez v4, :cond_1

    .line 34
    .line 35
    const/4 p2, -0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    sget-object p2, Lteam/opay/business/picture/h5Photo/PhotoUploader$a;->a:[I

    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    aget p2, p2, v2

    .line 44
    .line 45
    :goto_0
    const-string v2, "key"

    .line 46
    .line 47
    if-eq p2, v1, :cond_3

    .line 48
    .line 49
    if-eq p2, v5, :cond_2

    .line 50
    .line 51
    invoke-static {}, Let;->l()Lkotlin/jvm/functions/Function0;

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    sget-object p2, Lteam/opay/core/common/spi/a;->b:Lteam/opay/core/common/spi/a;

    .line 56
    .line 57
    invoke-virtual {p0}, Lteam/opay/business/picture/h5Photo/PhotoUploader;->o()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    new-instance v3, Lkotlin/Pair;

    .line 62
    .line 63
    invoke-virtual {p1}, Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;->b()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-direct {v3, v2, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    new-array p1, v1, [Lkotlin/Pair;

    .line 71
    .line 72
    aput-object v3, p1, v0

    .line 73
    .line 74
    const-string v0, "h5_photo_upload_submitUrl_failed"

    .line 75
    .line 76
    invoke-virtual {p2, p0, v0, p1}, Lteam/opay/core/common/spi/a;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    sget-object p2, Lteam/opay/core/common/spi/a;->b:Lteam/opay/core/common/spi/a;

    .line 81
    .line 82
    invoke-virtual {p0}, Lteam/opay/business/picture/h5Photo/PhotoUploader;->o()Landroid/content/Context;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    new-instance v3, Lkotlin/Pair;

    .line 87
    .line 88
    invoke-virtual {p1}, Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;->b()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-direct {v3, v2, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    new-array p1, v1, [Lkotlin/Pair;

    .line 96
    .line 97
    aput-object v3, p1, v0

    .line 98
    .line 99
    const-string v0, "h5_photo_upload_submitUrl_success"

    .line 100
    .line 101
    invoke-virtual {p2, p0, v0, p1}, Lteam/opay/core/common/spi/a;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 102
    .line 103
    .line 104
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 105
    .line 106
    return-object p0
.end method


# virtual methods
.method public final i(Ljr2;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljr2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lteam/opay/business/picture/h5Photo/PhotoUploader$checkCacheTask$2;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p0, v2}, Lteam/opay/business/picture/h5Photo/PhotoUploader$checkCacheTask$2;-><init>(Lteam/opay/business/picture/h5Photo/PhotoUploader;Ljr2;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, p1}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-ne p1, v0, :cond_0

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p1
.end method

.method public final k(Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;I)V
    .locals 4

    .line 1
    sget-object v0, Lfk8;->c:Lfk8;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "doUploadImage, retry: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, ":  "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v3, 0x2

    .line 30
    invoke-static {v0, v1, v2, v3, v2}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lteam/opay/business/picture/h5Photo/PhotoUploader;->p()Lteam/opay/business/picture/hilt/PhotoRepository;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0, p1}, Lteam/opay/business/picture/hilt/PhotoRepository;->d(Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;)Landroidx/lifecycle/LiveData;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    new-instance v1, Lgpb;

    .line 42
    .line 43
    invoke-direct {v1, p2, p0, p1}, Lgpb;-><init>(ILteam/opay/business/picture/h5Photo/PhotoUploader;Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v1}, Lpna;->b(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final o()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/picture/h5Photo/PhotoUploader;->a:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/Context;

    .line 8
    .line 9
    return-object v0
.end method

.method public final p()Lteam/opay/business/picture/hilt/PhotoRepository;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/picture/h5Photo/PhotoUploader;->c:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/business/picture/hilt/PhotoRepository;

    .line 8
    .line 9
    return-object v0
.end method

.method public final r(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/picture/h5Photo/PhotoUploader;->b:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public final s(Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;)V
    .locals 3
    .param p1    # Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "photoData"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {p0, p1, v2, v0, v1}, Lteam/opay/business/picture/h5Photo/PhotoUploader;->l(Lteam/opay/business/picture/h5Photo/PhotoUploader;Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;IILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final t(Ljava/lang/String;Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;->a()Lcom/google/gson/JsonObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/google/gson/JsonObject;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;->b()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    new-instance v3, Lcom/google/gson/JsonArray;

    .line 15
    .line 16
    invoke-direct {v3}, Lcom/google/gson/JsonArray;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, p1}, Lcom/google/gson/JsonArray;->add(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 25
    .line 26
    .line 27
    const-string p1, "map"

    .line 28
    .line 29
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lteam/opay/business/picture/h5Photo/PhotoUploader;->p()Lteam/opay/business/picture/hilt/PhotoRepository;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p2}, Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;->a()Lcom/google/gson/JsonObject;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p1, v0}, Lteam/opay/business/picture/hilt/PhotoRepository;->c(Lcom/google/gson/JsonObject;)Landroidx/lifecycle/LiveData;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    new-instance v0, Lipb;

    .line 45
    .line 46
    invoke-direct {v0, p0, p2}, Lipb;-><init>(Lteam/opay/business/picture/h5Photo/PhotoUploader;Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;)V

    .line 47
    .line 48
    .line 49
    invoke-static {p1, v0}, Lpna;->b(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method
