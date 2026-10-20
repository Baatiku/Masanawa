.class public Lteam/opay/business/picture/PictureCropFragment;
.super Lteam/opay/core/common/base/BaseFragment;
.source "PictureCropFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/business/picture/PictureCropFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0016\u0018\u0000 .2\u00020\u0001:\u0001/B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J!\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0008H\u0017\u00a2\u0006\u0004\u0008\u000b\u0010\u0003J\u000f\u0010\u000c\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\u0003J\u000f\u0010\u000e\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0019\u0010\u0012\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u001b\u0010\u0019\u001a\u00020\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u001f\u001a\u00020\u001a8\u0006X\u0086D\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001eR$\u0010%\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010\u000f\"\u0004\u0008#\u0010$R$\u0010-\u001a\u0004\u0018\u00010&8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\'\u0010(\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,\u00a8\u00060"
    }
    d2 = {
        "Lteam/opay/business/picture/PictureCropFragment;",
        "Lteam/opay/core/common/base/BaseFragment;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "K",
        "J",
        "Landroid/net/Uri;",
        "N",
        "()Landroid/net/Uri;",
        "Lteam/opay/business/picture/widget/ClipViewLayout;",
        "crop",
        "O",
        "(Lteam/opay/business/picture/widget/ClipViewLayout;)Landroid/net/Uri;",
        "Lqqb;",
        "a",
        "Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;",
        "P",
        "()Lqqb;",
        "binding",
        "",
        "b",
        "Ljava/lang/String;",
        "getCROP_URL_KEY",
        "()Ljava/lang/String;",
        "CROP_URL_KEY",
        "c",
        "Landroid/net/Uri;",
        "getInputUri",
        "setInputUri",
        "(Landroid/net/Uri;)V",
        "inputUri",
        "Lteam/opay/business/picture/helper/PickViewWrapper;",
        "d",
        "Lteam/opay/business/picture/helper/PickViewWrapper;",
        "getCallback",
        "()Lteam/opay/business/picture/helper/PickViewWrapper;",
        "setCallback",
        "(Lteam/opay/business/picture/helper/PickViewWrapper;)V",
        "callback",
        "e",
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
.field public static final e:Lteam/opay/business/picture/PictureCropFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final synthetic f:[Lzo7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lzo7<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Landroid/net/Uri;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:Lteam/opay/business/picture/helper/PickViewWrapper;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    .line 2
    .line 3
    const-string v1, "getBinding()Lteam/opay/business/picture/databinding/PictureFragmentCropBinding;"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-class v3, Lteam/opay/business/picture/PictureCropFragment;

    .line 7
    .line 8
    const-string v4, "binding"

    .line 9
    .line 10
    invoke-direct {v0, v3, v4, v1, v2}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->i(Lkotlin/jvm/internal/PropertyReference1;)Lbp7;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x1

    .line 18
    new-array v1, v1, [Lzo7;

    .line 19
    .line 20
    aput-object v0, v1, v2

    .line 21
    .line 22
    sput-object v1, Lteam/opay/business/picture/PictureCropFragment;->f:[Lzo7;

    .line 23
    .line 24
    new-instance v0, Lteam/opay/business/picture/PictureCropFragment$Companion;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-direct {v0, v1}, Lteam/opay/business/picture/PictureCropFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lteam/opay/business/picture/PictureCropFragment;->e:Lteam/opay/business/picture/PictureCropFragment$Companion;

    .line 31
    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    sget v0, Lteam/opay/business/picture/R$layout;->picture_fragment_crop:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/core/common/base/BaseFragment;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 7
    .line 8
    const-class v1, Lqqb;

    .line 9
    .line 10
    invoke-direct {v0, v1, p0}, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;-><init>(Ljava/lang/Class;Landroidx/fragment/app/Fragment;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lteam/opay/business/picture/PictureCropFragment;->a:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 14
    .line 15
    const-string v0, "imageUrl"

    .line 16
    .line 17
    iput-object v0, p0, Lteam/opay/business/picture/PictureCropFragment;->b:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method public static synthetic F(Lteam/opay/business/picture/PictureCropFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/picture/PictureCropFragment;->R(Lteam/opay/business/picture/PictureCropFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic G(Lteam/opay/business/picture/PictureCropFragment;Le60;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/picture/PictureCropFragment;->L(Lteam/opay/business/picture/PictureCropFragment;Le60;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic H(Lteam/opay/business/picture/PictureCropFragment;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/picture/PictureCropFragment;->M(Lteam/opay/business/picture/PictureCropFragment;Landroid/net/Uri;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic I(Lteam/opay/business/picture/PictureCropFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/picture/PictureCropFragment;->Q(Lteam/opay/business/picture/PictureCropFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final L(Lteam/opay/business/picture/PictureCropFragment;Le60;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/picture/PictureCropFragment;->N()Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Lpqb;

    .line 9
    .line 10
    invoke-direct {v1, p0, v0}, Lpqb;-><init>(Lteam/opay/business/picture/PictureCropFragment;Landroid/net/Uri;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v1}, Landroidx/arch/core/executor/TaskExecutor;->b(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lteam/opay/core/common/base/BaseFragment;->onBackPressed()Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static final M(Lteam/opay/business/picture/PictureCropFragment;Landroid/net/Uri;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lteam/opay/business/picture/PictureCropFragment;->d:Lteam/opay/business/picture/helper/PickViewWrapper;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-string v0, "image/jpeg"

    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Lteam/opay/business/picture/helper/PickViewWrapper;->a(Landroid/net/Uri;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static final Q(Lteam/opay/business/picture/PictureCropFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/picture/PictureCropFragment;->J()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final R(Lteam/opay/business/picture/PictureCropFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/picture/PictureCropFragment;->K()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method


# virtual methods
.method public J()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public K()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 1
    invoke-static {}, Le60;->h()Le60;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Loqb;

    .line 6
    .line 7
    invoke-direct {v1, p0, v0}, Loqb;-><init>(Lteam/opay/business/picture/PictureCropFragment;Le60;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Le60;->a(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final N()Landroid/net/Uri;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/picture/PictureCropFragment;->P()Lqqb;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lqqb;->c:Lteam/opay/business/picture/widget/ClipViewLayout;

    .line 6
    .line 7
    const-string v1, "crop"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lteam/opay/business/picture/PictureCropFragment;->O(Lteam/opay/business/picture/widget/ClipViewLayout;)Landroid/net/Uri;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public final O(Lteam/opay/business/picture/widget/ClipViewLayout;)Landroid/net/Uri;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lteam/opay/business/picture/widget/ClipViewLayout;->c()Landroid/graphics/Bitmap;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    sget-object p1, Lfk8;->c:Lfk8;

    .line 9
    .line 10
    const-string v1, "zoomedCropBitmap == null"

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    invoke-static {p1, v1, v0, v2, v0}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-object v0

    .line 17
    :catch_0
    move-exception p1

    .line 18
    goto/16 :goto_6

    .line 19
    .line 20
    :catch_1
    move-exception p1

    .line 21
    goto/16 :goto_7

    .line 22
    .line 23
    :cond_0
    new-instance v2, Ljava/io/File;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const-string v4, "avatar"

    .line 34
    .line 35
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_1

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 45
    .line 46
    .line 47
    :cond_1
    new-instance v3, Ljava/io/File;

    .line 48
    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 50
    .line 51
    .line 52
    move-result-wide v4

    .line 53
    new-instance v6, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v7, "cropped_"

    .line 59
    .line 60
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v4, ".jpg"

    .line 67
    .line 68
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 79
    .line 80
    .line 81
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    if-eqz v2, :cond_4

    .line 83
    .line 84
    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    .line 93
    .line 94
    .line 95
    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 96
    if-eqz p1, :cond_2

    .line 97
    .line 98
    :try_start_2
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 99
    .line 100
    const/16 v4, 0x32

    .line 101
    .line 102
    invoke-virtual {v1, v3, v4, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :catchall_0
    move-exception v1

    .line 107
    goto :goto_3

    .line 108
    :catch_2
    move-exception v1

    .line 109
    goto :goto_2

    .line 110
    :cond_2
    :goto_0
    if-eqz p1, :cond_4

    .line 111
    .line 112
    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0

    .line 113
    .line 114
    .line 115
    goto :goto_5

    .line 116
    :catch_3
    move-exception p1

    .line 117
    :goto_1
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0

    .line 118
    .line 119
    .line 120
    goto :goto_5

    .line 121
    :catchall_1
    move-exception v1

    .line 122
    move-object p1, v0

    .line 123
    goto :goto_3

    .line 124
    :catch_4
    move-exception v1

    .line 125
    move-object p1, v0

    .line 126
    :goto_2
    :try_start_5
    sget-object v3, Lfk8;->c:Lfk8;

    .line 127
    .line 128
    new-instance v4, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    const-string v5, "Cannot open file: "

    .line 134
    .line 135
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    invoke-virtual {v3, v4, v1}, Lteam/opay/core/common/GenericLogger;->f(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 146
    .line 147
    .line 148
    if-eqz p1, :cond_4

    .line 149
    .line 150
    :try_start_6
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_0

    .line 151
    .line 152
    .line 153
    goto :goto_5

    .line 154
    :catch_5
    move-exception p1

    .line 155
    goto :goto_1

    .line 156
    :goto_3
    if-eqz p1, :cond_3

    .line 157
    .line 158
    :try_start_7
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_0

    .line 159
    .line 160
    .line 161
    goto :goto_4

    .line 162
    :catch_6
    move-exception p1

    .line 163
    :try_start_8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 164
    .line 165
    .line 166
    :cond_3
    :goto_4
    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_0

    .line 167
    :cond_4
    :goto_5
    return-object v2

    .line 168
    :goto_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 169
    .line 170
    .line 171
    goto :goto_8

    .line 172
    :goto_7
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 173
    .line 174
    .line 175
    :goto_8
    return-object v0
.end method

.method public final P()Lqqb;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/business/picture/PictureCropFragment;->a:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/business/picture/PictureCropFragment;->f:[Lzo7;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aget-object v1, v1, v2

    .line 7
    .line 8
    invoke-virtual {v0, p0, v1}, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;->g(Landroidx/fragment/app/Fragment;Lzo7;)Lxyf;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lqqb;

    .line 13
    .line 14
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lteam/opay/core/common/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 p2, 0x0

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lteam/opay/business/picture/PictureCropFragment;->b:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/net/Uri;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object p1, p2

    .line 26
    :goto_0
    instance-of v0, p1, Landroid/net/Uri;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    move-object p2, p1

    .line 31
    :cond_1
    iput-object p2, p0, Lteam/opay/business/picture/PictureCropFragment;->c:Landroid/net/Uri;

    .line 32
    .line 33
    if-eqz p2, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0}, Lteam/opay/business/picture/PictureCropFragment;->P()Lqqb;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object p1, p1, Lqqb;->c:Lteam/opay/business/picture/widget/ClipViewLayout;

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Lteam/opay/business/picture/widget/ClipViewLayout;->setImageSrc(Landroid/net/Uri;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    invoke-virtual {p0}, Lteam/opay/business/picture/PictureCropFragment;->P()Lqqb;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iget-object p1, p1, Lqqb;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 49
    .line 50
    const-string p2, "cancel"

    .line 51
    .line 52
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance p2, Lmqb;

    .line 56
    .line 57
    invoke-direct {p2, p0}, Lmqb;-><init>(Lteam/opay/business/picture/PictureCropFragment;)V

    .line 58
    .line 59
    .line 60
    invoke-static {p1, p2}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lteam/opay/business/picture/PictureCropFragment;->P()Lqqb;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget-object p1, p1, Lqqb;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 68
    .line 69
    const-string p2, "done"

    .line 70
    .line 71
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    new-instance p2, Lnqb;

    .line 75
    .line 76
    invoke-direct {p2, p0}, Lnqb;-><init>(Lteam/opay/business/picture/PictureCropFragment;)V

    .line 77
    .line 78
    .line 79
    invoke-static {p1, p2}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method
