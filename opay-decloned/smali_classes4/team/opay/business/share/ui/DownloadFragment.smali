.class public final Lteam/opay/business/share/ui/DownloadFragment;
.super Lteam/opay/business/share/ui/Hilt_DownloadFragment;
.source "DownloadFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/business/share/ui/DownloadFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0001\u0018\u0000 /2\u00020\u0001:\u00010B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\u0003J\u000f\u0010\n\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u0003J\u000f\u0010\u000b\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0003J\u0017\u0010\u000e\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0014H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R\u001b\u0010\u001d\u001a\u00020\u00188BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001cR\u0018\u0010!\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0016\u0010%\u001a\u00020\"8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R0\u0010.\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0018\u00010&j\u0004\u0018\u0001`\'8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008(\u0010)\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-\u00a8\u00061"
    }
    d2 = {
        "Lteam/opay/business/share/ui/DownloadFragment;",
        "Lteam/opay/core/common/base/BasePermissionFragment;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "E0",
        "d0",
        "N0",
        "Ljava/io/File;",
        "file",
        "O0",
        "(Ljava/io/File;)V",
        "",
        "filePath",
        "R0",
        "(Ljava/lang/String;)V",
        "",
        "msg",
        "P0",
        "(I)V",
        "Lteam/opay/business/share/ShareViewModel;",
        "p",
        "Lid8;",
        "Q0",
        "()Lteam/opay/business/share/ShareViewModel;",
        "viewModel",
        "Lteam/opay/business/share/PDFInfo;",
        "q",
        "Lteam/opay/business/share/PDFInfo;",
        "pdfInfo",
        "Lteam/opay/business/share/ShareItem;",
        "r",
        "Lteam/opay/business/share/ShareItem;",
        "shareItem",
        "Lkotlin/Function0;",
        "Lteam/opay/core/common/android/Block;",
        "s",
        "Lkotlin/jvm/functions/Function0;",
        "n0",
        "()Lkotlin/jvm/functions/Function0;",
        "setStoragePermissionDenied",
        "(Lkotlin/jvm/functions/Function0;)V",
        "storagePermissionDenied",
        "t",
        "Companion",
        "business-share_release"
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
.field public static final t:Lteam/opay/business/share/ui/DownloadFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final p:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public q:Lteam/opay/business/share/PDFInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public r:Lteam/opay/business/share/ShareItem;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public s:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/business/share/ui/DownloadFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/business/share/ui/DownloadFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/business/share/ui/DownloadFragment;->t:Lteam/opay/business/share/ui/DownloadFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    sget v0, Lteam/opay/business/share/R$layout;->share_activity_container:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/business/share/ui/Hilt_DownloadFragment;-><init>(I)V

    .line 4
    .line 5
    .line 6
    const-class v0, Lteam/opay/business/share/ShareViewModel;

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lteam/opay/business/share/ui/DownloadFragment$special$$inlined$activityViewModels$default$1;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lteam/opay/business/share/ui/DownloadFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lteam/opay/business/share/ui/DownloadFragment$special$$inlined$activityViewModels$default$2;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-direct {v2, v3, p0}, Lteam/opay/business/share/ui/DownloadFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lteam/opay/business/share/ui/DownloadFragment$special$$inlined$activityViewModels$default$3;

    .line 24
    .line 25
    invoke-direct {v3, p0}, Lteam/opay/business/share/ui/DownloadFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lteam/opay/business/share/ui/DownloadFragment;->p:Lid8;

    .line 33
    .line 34
    sget-object v0, Lteam/opay/business/share/ShareItem;->SHARE_IMAGE:Lteam/opay/business/share/ShareItem;

    .line 35
    .line 36
    iput-object v0, p0, Lteam/opay/business/share/ui/DownloadFragment;->r:Lteam/opay/business/share/ShareItem;

    .line 37
    .line 38
    new-instance v0, Lwi3;

    .line 39
    .line 40
    invoke-direct {v0, p0}, Lwi3;-><init>(Lteam/opay/business/share/ui/DownloadFragment;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lteam/opay/business/share/ui/DownloadFragment;->s:Lkotlin/jvm/functions/Function0;

    .line 44
    .line 45
    return-void
.end method

.method public static synthetic G0(Lteam/opay/business/share/ui/DownloadFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/share/ui/DownloadFragment;->S0(Lteam/opay/business/share/ui/DownloadFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic H0(Lteam/opay/business/share/ui/DownloadFragment;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/business/share/ui/DownloadFragment;->O0(Ljava/io/File;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic I0(Lteam/opay/business/share/ui/DownloadFragment;)Lteam/opay/business/share/PDFInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/business/share/ui/DownloadFragment;->q:Lteam/opay/business/share/PDFInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic J0(Lteam/opay/business/share/ui/DownloadFragment;)Lteam/opay/business/share/ShareItem;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/business/share/ui/DownloadFragment;->r:Lteam/opay/business/share/ShareItem;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic K0(Lteam/opay/business/share/ui/DownloadFragment;)Lteam/opay/business/share/ShareViewModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/business/share/ui/DownloadFragment;->Q0()Lteam/opay/business/share/ShareViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic L0(Lteam/opay/business/share/ui/DownloadFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/business/share/ui/DownloadFragment;->R0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic M0(Lteam/opay/business/share/ui/DownloadFragment;Lteam/opay/business/share/PDFInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/business/share/ui/DownloadFragment;->q:Lteam/opay/business/share/PDFInfo;

    .line 2
    .line 3
    return-void
.end method

.method private final Q0()Lteam/opay/business/share/ShareViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/share/ui/DownloadFragment;->p:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/business/share/ShareViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final S0(Lteam/opay/business/share/ui/DownloadFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method


# virtual methods
.method public E0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/share/ui/DownloadFragment;->N0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final N0()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lteam/opay/business/share/ui/DownloadFragment;->Q0()Lteam/opay/business/share/ShareViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/business/share/ShareViewModel;->s()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    new-instance v5, Lteam/opay/business/share/ui/DownloadFragment$beginPdfImageLogic$1;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-direct {v5, p0, v0}, Lteam/opay/business/share/ui/DownloadFragment$beginPdfImageLogic$1;-><init>(Lteam/opay/business/share/ui/DownloadFragment;Ljr2;)V

    .line 26
    .line 27
    .line 28
    const/4 v6, 0x2

    .line 29
    const/4 v7, 0x0

    .line 30
    const/4 v4, 0x0

    .line 31
    invoke-static/range {v2 .. v7}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final O0(Ljava/io/File;)V
    .locals 2

    .line 1
    sget-object v0, Lnnd;->a:Lnnd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lnnd;->b()Landroid/graphics/Bitmap;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0}, Lnnd;->a()V

    .line 8
    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    sget-object v0, Lje7;->a:Lje7;

    .line 13
    .line 14
    invoke-virtual {v0, v1, p1}, Lje7;->a(Landroid/graphics/Bitmap;Ljava/io/File;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v0, "getAbsolutePath(...)"

    .line 22
    .line 23
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lteam/opay/business/share/ui/DownloadFragment;->R0(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    sget p1, Lteam/opay/business/share/R$string;->share_download_success:I

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lteam/opay/business/share/ui/DownloadFragment;->P0(I)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method public final P0(I)V
    .locals 6

    .line 1
    invoke-static {p0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v3, Lteam/opay/business/share/ui/DownloadFragment$finishPage$1;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v3, p0, p1, v2}, Lteam/opay/business/share/ui/DownloadFragment$finishPage$1;-><init>(Lteam/opay/business/share/ui/DownloadFragment;ILjr2;)V

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    const/4 v5, 0x0

    .line 17
    invoke-static/range {v0 .. v5}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final R0(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    invoke-static {p1}, Lsy5;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, "."

    .line 29
    .line 30
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const/4 v1, 0x0

    .line 41
    :try_start_0
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {v0, v2, p1, v1}, Lteam/opay/business/share/utils/a;->b(Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception p1

    .line 50
    instance-of v0, p1, Landroid/system/ErrnoException;

    .line 51
    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    check-cast p1, Landroid/system/ErrnoException;

    .line 55
    .line 56
    iget p1, p1, Landroid/system/ErrnoException;->errno:I

    .line 57
    .line 58
    sget v0, Landroid/system/OsConstants;->ENOSPC:I

    .line 59
    .line 60
    if-ne p1, v0, :cond_0

    .line 61
    .line 62
    sget p1, Lteam/opay/business/share/R$string;->share_no_space:I

    .line 63
    .line 64
    invoke-virtual {p0, p1}, Lteam/opay/business/share/ui/DownloadFragment;->P0(I)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    sget p1, Lteam/opay/business/share/R$string;->share_something_went_wrong:I

    .line 69
    .line 70
    invoke-virtual {p0, p1}, Lteam/opay/business/share/ui/DownloadFragment;->P0(I)V

    .line 71
    .line 72
    .line 73
    :goto_0
    sget-object p1, Lteam/opay/core/common/spi/a;->b:Lteam/opay/core/common/spi/a;

    .line 74
    .line 75
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iget-object v2, p0, Lteam/opay/business/share/ui/DownloadFragment;->q:Lteam/opay/business/share/PDFInfo;

    .line 80
    .line 81
    if-eqz v2, :cond_1

    .line 82
    .line 83
    invoke-virtual {v2}, Lteam/opay/business/share/PDFInfo;->getOrderNo()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    :cond_1
    const-string v2, "orderNo"

    .line 88
    .line 89
    invoke-static {v2, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    const/4 v2, 0x1

    .line 94
    new-array v2, v2, [Lkotlin/Pair;

    .line 95
    .line 96
    const/4 v3, 0x0

    .line 97
    aput-object v1, v2, v3

    .line 98
    .line 99
    const-string v1, "share_download_success"

    .line 100
    .line 101
    invoke-virtual {p1, v0, v1, v2}, Lteam/opay/core/common/spi/a;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 102
    .line 103
    .line 104
    sget p1, Lteam/opay/business/share/R$string;->share_download_success:I

    .line 105
    .line 106
    invoke-virtual {p0, p1}, Lteam/opay/business/share/ui/DownloadFragment;->P0(I)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_2
    sget p1, Lteam/opay/business/share/R$string;->share_something_went_wrong:I

    .line 111
    .line 112
    invoke-virtual {p0, p1}, Lteam/opay/business/share/ui/DownloadFragment;->P0(I)V

    .line 113
    .line 114
    .line 115
    :goto_1
    return-void
.end method

.method public d0()V
    .locals 0

    .line 1
    return-void
.end method

.method public n0()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/share/ui/DownloadFragment;->s:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lteam/opay/business/share/ui/DownloadFragment;->q:Lteam/opay/business/share/PDFInfo;

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lteam/opay/core/common/base/BasePermissionFragment;->k0()V

    .line 16
    .line 17
    .line 18
    return-void
.end method
