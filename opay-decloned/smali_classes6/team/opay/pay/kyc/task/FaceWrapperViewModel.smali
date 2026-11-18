.class public final Lteam/opay/pay/kyc/task/FaceWrapperViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "FaceWrapperViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/kyc/task/FaceWrapperViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00aa\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0007\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J%\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001d\u0010\u0010\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001d\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J%\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010\u0016\u001a\u00020\u00152\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u001d\u0010\u001f\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u001d\u00a2\u0006\u0004\u0008\u001f\u0010 R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u001b\u0010(\u001a\u00020#8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'R\u0014\u0010,\u001a\u00020)8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R\u001d\u00103\u001a\u0008\u0012\u0004\u0012\u00020.0-8\u0006\u00a2\u0006\u000c\n\u0004\u0008/\u00100\u001a\u0004\u00081\u00102R\u001d\u00106\u001a\u0008\u0012\u0004\u0012\u00020.0-8\u0006\u00a2\u0006\u000c\n\u0004\u00084\u00100\u001a\u0004\u00085\u00102R\u001d\u0010:\u001a\u0008\u0012\u0004\u0012\u0002070-8\u0006\u00a2\u0006\u000c\n\u0004\u00088\u00100\u001a\u0004\u00089\u00102R\u001d\u0010>\u001a\u0008\u0012\u0004\u0012\u00020;0-8\u0006\u00a2\u0006\u000c\n\u0004\u0008<\u00100\u001a\u0004\u0008=\u00102R\u001d\u0010A\u001a\u0008\u0012\u0004\u0012\u00020;0-8\u0006\u00a2\u0006\u000c\n\u0004\u0008?\u00100\u001a\u0004\u0008@\u00102R\u001d\u0010H\u001a\u0008\u0012\u0004\u0012\u00020C0B8\u0006\u00a2\u0006\u000c\n\u0004\u0008D\u0010E\u001a\u0004\u0008F\u0010GR\u001d\u0010L\u001a\u0008\u0012\u0004\u0012\u00020I0-8\u0006\u00a2\u0006\u000c\n\u0004\u0008J\u00100\u001a\u0004\u0008K\u00102R\u001d\u0010O\u001a\u0008\u0012\u0004\u0012\u0002070-8\u0006\u00a2\u0006\u000c\n\u0004\u0008M\u00100\u001a\u0004\u0008N\u00102R6\u0010Y\u001a\u0016\u0012\u0004\u0012\u00020Q\u0018\u00010Pj\n\u0012\u0004\u0012\u00020Q\u0018\u0001`R8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008S\u0010T\u001a\u0004\u0008U\u0010V\"\u0004\u0008W\u0010XR#\u0010\\\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020Q0\u00190-8\u0006\u00a2\u0006\u000c\n\u0004\u0008Z\u00100\u001a\u0004\u0008[\u00102\u00a8\u0006]"
    }
    d2 = {
        "Lteam/opay/pay/kyc/task/FaceWrapperViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Landroid/app/Application;",
        "app",
        "<init>",
        "(Landroid/app/Application;)V",
        "Lag8;",
        "lifecycleOwner",
        "Lteam/opay/face/net/FaceRequest;",
        "req",
        "Ljava/io/File;",
        "file",
        "",
        "O",
        "(Lag8;Lteam/opay/face/net/FaceRequest;Ljava/io/File;)V",
        "Lteam/opay/pay/kyc/customer/ManualReviewSubmitReq;",
        "L",
        "(Lag8;Lteam/opay/pay/kyc/customer/ManualReviewSubmitReq;)V",
        "Lteam/opay/pay/kyc/customer/Kyc1ManualReviewSubmitReq;",
        "J",
        "(Lag8;Lteam/opay/pay/kyc/customer/Kyc1ManualReviewSubmitReq;)V",
        "Landroid/content/Context;",
        "context",
        "Lteam/opay/pay/kyc/base/KycTaskNode;",
        "taskNode",
        "",
        "Lteam/opay/pay/kyc/base/KycPairItem;",
        "N",
        "(Landroid/content/Context;Lteam/opay/pay/kyc/base/KycTaskNode;)Ljava/util/List;",
        "",
        "scene",
        "x",
        "(Lag8;Ljava/lang/String;)V",
        "b",
        "Landroid/app/Application;",
        "Lteam/opay/face/net/a$a;",
        "c",
        "Lid8;",
        "B",
        "()Lteam/opay/face/net/a$a;",
        "faceAPi",
        "Lcv7;",
        "d",
        "Lcv7;",
        "api",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "e",
        "Landroidx/lifecycle/MutableLiveData;",
        "D",
        "()Landroidx/lifecycle/MutableLiveData;",
        "loading",
        "f",
        "z",
        "commonLoading",
        "Lteam/opay/pay/kyc/base/ErrorMsg;",
        "g",
        "A",
        "errorEvent",
        "Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;",
        "h",
        "I",
        "verifySuccessEvent",
        "i",
        "H",
        "verifyFailEvent",
        "Lteam/opay/pay/util/SingleLiveEvent;",
        "Lteam/opay/pay/kyc/customer/ManualReviewSubmitRsp;",
        "j",
        "Lteam/opay/pay/util/SingleLiveEvent;",
        "E",
        "()Lteam/opay/pay/util/SingleLiveEvent;",
        "manualReviewSubmitSuccessEvent",
        "Lteam/opay/pay/kyc/customer/Kyc1ManualReviewSubmitRsp;",
        "k",
        "C",
        "kyc1ManualReviewSubmitSuccessEvent",
        "l",
        "G",
        "uploadFaceErrorActionEvent",
        "Ljava/util/ArrayList;",
        "Lteam/opay/pay/kyc/customer/QuitReason;",
        "Lkotlin/collections/ArrayList;",
        "m",
        "Ljava/util/ArrayList;",
        "F",
        "()Ljava/util/ArrayList;",
        "setQuitReasonList",
        "(Ljava/util/ArrayList;)V",
        "quitReasonList",
        "n",
        "getSuccess",
        "success",
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
.field public final b:Landroid/app/Application;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lcv7;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/kyc/base/ErrorMsg;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lteam/opay/pay/util/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Lteam/opay/pay/kyc/customer/ManualReviewSubmitRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/kyc/customer/Kyc1ManualReviewSubmitRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/kyc/base/ErrorMsg;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lteam/opay/pay/kyc/customer/QuitReason;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final n:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lteam/opay/pay/kyc/customer/QuitReason;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 2
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lteam/opay/pay/kyc/task/FaceWrapperViewModel;->b:Landroid/app/Application;

    .line 10
    .line 11
    new-instance v0, Lpv5;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lpv5;-><init>(Lteam/opay/pay/kyc/task/FaceWrapperViewModel;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lteam/opay/pay/kyc/task/FaceWrapperViewModel;->c:Lid8;

    .line 21
    .line 22
    sget-object v0, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 23
    .line 24
    const-class v1, Lcv7;

    .line 25
    .line 26
    invoke-virtual {v0, p1, v1}, Lteam/opay/core/api/GraphQL;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcv7;

    .line 31
    .line 32
    iput-object p1, p0, Lteam/opay/pay/kyc/task/FaceWrapperViewModel;->d:Lcv7;

    .line 33
    .line 34
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 35
    .line 36
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lteam/opay/pay/kyc/task/FaceWrapperViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 40
    .line 41
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 42
    .line 43
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lteam/opay/pay/kyc/task/FaceWrapperViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 47
    .line 48
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 49
    .line 50
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lteam/opay/pay/kyc/task/FaceWrapperViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 54
    .line 55
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 56
    .line 57
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Lteam/opay/pay/kyc/task/FaceWrapperViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    .line 61
    .line 62
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 63
    .line 64
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Lteam/opay/pay/kyc/task/FaceWrapperViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    .line 68
    .line 69
    new-instance p1, Lteam/opay/pay/util/SingleLiveEvent;

    .line 70
    .line 71
    invoke-direct {p1}, Lteam/opay/pay/util/SingleLiveEvent;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object p1, p0, Lteam/opay/pay/kyc/task/FaceWrapperViewModel;->j:Lteam/opay/pay/util/SingleLiveEvent;

    .line 75
    .line 76
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 77
    .line 78
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object p1, p0, Lteam/opay/pay/kyc/task/FaceWrapperViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    .line 82
    .line 83
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 84
    .line 85
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 86
    .line 87
    .line 88
    iput-object p1, p0, Lteam/opay/pay/kyc/task/FaceWrapperViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    .line 89
    .line 90
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 91
    .line 92
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 93
    .line 94
    .line 95
    iput-object p1, p0, Lteam/opay/pay/kyc/task/FaceWrapperViewModel;->n:Landroidx/lifecycle/MutableLiveData;

    .line 96
    .line 97
    return-void
.end method

.method public static final K(Lteam/opay/pay/kyc/task/FaceWrapperViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/kyc/task/FaceWrapperViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->f()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget-object v1, Lteam/opay/pay/kyc/task/FaceWrapperViewModel$a;->a:[I

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    aget v0, v1, v0

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    if-eq v0, v1, :cond_3

    .line 33
    .line 34
    const/4 v1, 0x2

    .line 35
    if-eq v0, v1, :cond_1

    .line 36
    .line 37
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object p0, p0, Lteam/opay/pay/kyc/task/FaceWrapperViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 42
    .line 43
    new-instance v6, Lteam/opay/pay/kyc/base/ErrorMsg;

    .line 44
    .line 45
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-nez p1, :cond_2

    .line 54
    .line 55
    const-string p1, ""

    .line 56
    .line 57
    :cond_2
    move-object v2, p1

    .line 58
    const/4 v4, 0x4

    .line 59
    const/4 v5, 0x0

    .line 60
    const/4 v3, 0x0

    .line 61
    move-object v0, v6

    .line 62
    invoke-direct/range {v0 .. v5}, Lteam/opay/pay/kyc/base/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v6}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Lteam/opay/pay/kyc/customer/Kyc1ManualReviewSubmitRsp;

    .line 74
    .line 75
    if-eqz p1, :cond_4

    .line 76
    .line 77
    iget-object p0, p0, Lteam/opay/pay/kyc/task/FaceWrapperViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    .line 78
    .line 79
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    :cond_4
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 83
    .line 84
    return-object p0
.end method

.method public static final M(Lteam/opay/pay/kyc/task/FaceWrapperViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/kyc/task/FaceWrapperViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->f()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget-object v1, Lteam/opay/pay/kyc/task/FaceWrapperViewModel$a;->a:[I

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    aget v0, v1, v0

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    if-eq v0, v1, :cond_3

    .line 33
    .line 34
    const/4 v1, 0x2

    .line 35
    if-eq v0, v1, :cond_1

    .line 36
    .line 37
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object p0, p0, Lteam/opay/pay/kyc/task/FaceWrapperViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 42
    .line 43
    new-instance v6, Lteam/opay/pay/kyc/base/ErrorMsg;

    .line 44
    .line 45
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-nez p1, :cond_2

    .line 54
    .line 55
    const-string p1, ""

    .line 56
    .line 57
    :cond_2
    move-object v2, p1

    .line 58
    const/4 v4, 0x4

    .line 59
    const/4 v5, 0x0

    .line 60
    const/4 v3, 0x0

    .line 61
    move-object v0, v6

    .line 62
    invoke-direct/range {v0 .. v5}, Lteam/opay/pay/kyc/base/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v6}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Lteam/opay/pay/kyc/customer/ManualReviewSubmitRsp;

    .line 74
    .line 75
    if-eqz p1, :cond_4

    .line 76
    .line 77
    iget-object p0, p0, Lteam/opay/pay/kyc/task/FaceWrapperViewModel;->j:Lteam/opay/pay/util/SingleLiveEvent;

    .line 78
    .line 79
    invoke-virtual {p0, p1}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    :cond_4
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 83
    .line 84
    return-object p0
.end method

.method public static final P(Lteam/opay/pay/kyc/task/FaceWrapperViewModel;Ljava/io/File;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v2, v0, Lteam/opay/pay/kyc/task/FaceWrapperViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 11
    .line 12
    invoke-virtual/range {p2 .. p2}, Lteam/opay/core/android/arch/Resource;->f()Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual/range {p2 .. p2}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    sget-object v3, Lteam/opay/pay/kyc/task/FaceWrapperViewModel$a;->a:[I

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    aget v2, v3, v2

    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    const/4 v4, 0x0

    .line 37
    if-eq v2, v3, :cond_2

    .line 38
    .line 39
    const/4 v3, 0x2

    .line 40
    if-eq v2, v3, :cond_1

    .line 41
    .line 42
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 43
    .line 44
    .line 45
    goto/16 :goto_1

    .line 46
    .line 47
    :cond_1
    iget-object v2, v0, Lteam/opay/pay/kyc/task/FaceWrapperViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 48
    .line 49
    new-instance v3, Lteam/opay/pay/kyc/base/ErrorMsg;

    .line 50
    .line 51
    invoke-virtual/range {p2 .. p2}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    invoke-virtual/range {p2 .. p2}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    const/4 v9, 0x4

    .line 60
    const/4 v10, 0x0

    .line 61
    const/4 v8, 0x0

    .line 62
    move-object v5, v3

    .line 63
    invoke-direct/range {v5 .. v10}, Lteam/opay/pay/kyc/base/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    iget-object v2, v0, Lteam/opay/pay/kyc/task/FaceWrapperViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    .line 70
    .line 71
    new-instance v3, Lteam/opay/pay/kyc/base/ErrorMsg;

    .line 72
    .line 73
    invoke-virtual/range {p2 .. p2}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    invoke-virtual/range {p2 .. p2}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    move-object v5, v3

    .line 82
    invoke-direct/range {v5 .. v10}, Lteam/opay/pay/kyc/base/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-static/range {p0 .. p0}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 89
    .line 90
    .line 91
    move-result-object v11

    .line 92
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 93
    .line 94
    .line 95
    move-result-object v12

    .line 96
    new-instance v14, Lteam/opay/pay/kyc/task/FaceWrapperViewModel$uploadFace$1$3;

    .line 97
    .line 98
    invoke-direct {v14, v1, v4}, Lteam/opay/pay/kyc/task/FaceWrapperViewModel$uploadFace$1$3;-><init>(Ljava/io/File;Ljr2;)V

    .line 99
    .line 100
    .line 101
    const/4 v15, 0x2

    .line 102
    const/16 v16, 0x0

    .line 103
    .line 104
    const/4 v13, 0x0

    .line 105
    invoke-static/range {v11 .. v16}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    check-cast v2, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;

    .line 114
    .line 115
    if-eqz v2, :cond_4

    .line 116
    .line 117
    invoke-virtual {v2}, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->getVerifyResult()Ljava/lang/Boolean;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 122
    .line 123
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    if-eqz v3, :cond_3

    .line 128
    .line 129
    iget-object v3, v0, Lteam/opay/pay/kyc/task/FaceWrapperViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    .line 130
    .line 131
    invoke-virtual {v3, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_3
    iget-object v3, v0, Lteam/opay/pay/kyc/task/FaceWrapperViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    .line 136
    .line 137
    invoke-virtual {v3, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    iget-object v3, v0, Lteam/opay/pay/kyc/task/FaceWrapperViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    .line 141
    .line 142
    new-instance v11, Lteam/opay/pay/kyc/base/ErrorMsg;

    .line 143
    .line 144
    invoke-virtual {v2}, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->getDialogResponse()Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    invoke-virtual {v5}, Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;->getFaceDialogOriginalErrorCode()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    invoke-virtual {v2}, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->getDialogResponse()Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-virtual {v2}, Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;->getContent()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v7

    .line 160
    const/4 v9, 0x4

    .line 161
    const/4 v10, 0x0

    .line 162
    const/4 v8, 0x0

    .line 163
    move-object v5, v11

    .line 164
    invoke-direct/range {v5 .. v10}, Lteam/opay/pay/kyc/base/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v3, v11}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    :cond_4
    :goto_0
    invoke-static/range {p0 .. p0}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 171
    .line 172
    .line 173
    move-result-object v12

    .line 174
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 175
    .line 176
    .line 177
    move-result-object v13

    .line 178
    new-instance v15, Lteam/opay/pay/kyc/task/FaceWrapperViewModel$uploadFace$1$2;

    .line 179
    .line 180
    invoke-direct {v15, v1, v4}, Lteam/opay/pay/kyc/task/FaceWrapperViewModel$uploadFace$1$2;-><init>(Ljava/io/File;Ljr2;)V

    .line 181
    .line 182
    .line 183
    const/16 v16, 0x2

    .line 184
    .line 185
    const/16 v17, 0x0

    .line 186
    .line 187
    const/4 v14, 0x0

    .line 188
    invoke-static/range {v12 .. v17}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 189
    .line 190
    .line 191
    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 192
    .line 193
    return-object v0
.end method

.method public static synthetic r(Lteam/opay/pay/kyc/task/FaceWrapperViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/task/FaceWrapperViewModel;->y(Lteam/opay/pay/kyc/task/FaceWrapperViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic s(Lteam/opay/pay/kyc/task/FaceWrapperViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/task/FaceWrapperViewModel;->K(Lteam/opay/pay/kyc/task/FaceWrapperViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic t(Lteam/opay/pay/kyc/task/FaceWrapperViewModel;)Lteam/opay/face/net/a$a;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/task/FaceWrapperViewModel;->w(Lteam/opay/pay/kyc/task/FaceWrapperViewModel;)Lteam/opay/face/net/a$a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic u(Lteam/opay/pay/kyc/task/FaceWrapperViewModel;Ljava/io/File;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/kyc/task/FaceWrapperViewModel;->P(Lteam/opay/pay/kyc/task/FaceWrapperViewModel;Ljava/io/File;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic v(Lteam/opay/pay/kyc/task/FaceWrapperViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/task/FaceWrapperViewModel;->M(Lteam/opay/pay/kyc/task/FaceWrapperViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final w(Lteam/opay/pay/kyc/task/FaceWrapperViewModel;)Lteam/opay/face/net/a$a;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/face/net/a;->a:Lteam/opay/face/net/a;

    .line 2
    .line 3
    iget-object p0, p0, Lteam/opay/pay/kyc/task/FaceWrapperViewModel;->b:Landroid/app/Application;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lteam/opay/face/net/a;->f(Landroid/content/Context;)Lteam/opay/face/net/a$a;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static final y(Lteam/opay/pay/kyc/task/FaceWrapperViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lteam/opay/pay/kyc/task/FaceWrapperViewModel$a;->a:[I

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    aget v0, v1, v0

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lteam/opay/pay/kyc/customer/KycFaceQuitRsp;

    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    invoke-virtual {p1}, Lteam/opay/pay/kyc/customer/KycFaceQuitRsp;->a()Ljava/util/ArrayList;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lteam/opay/pay/kyc/task/FaceWrapperViewModel;->m:Ljava/util/ArrayList;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 37
    .line 38
    .line 39
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 40
    .line 41
    return-object p0
.end method


# virtual methods
.method public final A()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/kyc/base/ErrorMsg;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/task/FaceWrapperViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final B()Lteam/opay/face/net/a$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/task/FaceWrapperViewModel;->c:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/face/net/a$a;

    .line 8
    .line 9
    return-object v0
.end method

.method public final C()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/kyc/customer/Kyc1ManualReviewSubmitRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/task/FaceWrapperViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final D()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/task/FaceWrapperViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final E()Lteam/opay/pay/util/SingleLiveEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Lteam/opay/pay/kyc/customer/ManualReviewSubmitRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/task/FaceWrapperViewModel;->j:Lteam/opay/pay/util/SingleLiveEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final F()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lteam/opay/pay/kyc/customer/QuitReason;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/task/FaceWrapperViewModel;->m:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final G()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/kyc/base/ErrorMsg;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/task/FaceWrapperViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final H()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/task/FaceWrapperViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final I()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/task/FaceWrapperViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final J(Lag8;Lteam/opay/pay/kyc/customer/Kyc1ManualReviewSubmitReq;)V
    .locals 1
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/kyc/customer/Kyc1ManualReviewSubmitReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "lifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "req"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/pay/kyc/task/FaceWrapperViewModel;->d:Lcv7;

    .line 12
    .line 13
    invoke-interface {v0, p2}, Lcv7;->E(Lteam/opay/pay/kyc/customer/Kyc1ManualReviewSubmitReq;)Lretrofit2/Call;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-static {p2, p0}, Lkpc;->a(Lretrofit2/Call;Landroidx/lifecycle/AndroidViewModel;)Landroidx/lifecycle/LiveData;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    new-instance v0, Lsv5;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lsv5;-><init>(Lteam/opay/pay/kyc/task/FaceWrapperViewModel;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p2, p1, v0}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final L(Lag8;Lteam/opay/pay/kyc/customer/ManualReviewSubmitReq;)V
    .locals 1
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/kyc/customer/ManualReviewSubmitReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "lifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "req"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/pay/kyc/task/FaceWrapperViewModel;->d:Lcv7;

    .line 12
    .line 13
    invoke-interface {v0, p2}, Lcv7;->m(Lteam/opay/pay/kyc/customer/ManualReviewSubmitReq;)Lretrofit2/Call;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-static {p2, p0}, Lkpc;->a(Lretrofit2/Call;Landroidx/lifecycle/AndroidViewModel;)Landroidx/lifecycle/LiveData;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    new-instance v0, Lov5;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lov5;-><init>(Lteam/opay/pay/kyc/task/FaceWrapperViewModel;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p2, p1, v0}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final N(Landroid/content/Context;Lteam/opay/pay/kyc/base/KycTaskNode;)Ljava/util/List;
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/kyc/base/KycTaskNode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lteam/opay/pay/kyc/base/KycTaskNode;",
            ")",
            "Ljava/util/List<",
            "Lteam/opay/pay/kyc/base/KycPairItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p2}, Lteam/opay/pay/kyc/base/KycTaskNode;->getIdType()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v2, v1

    .line 20
    :goto_0
    const-string v3, ""

    .line 21
    .line 22
    if-eqz v2, :cond_8

    .line 23
    .line 24
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    goto :goto_4

    .line 31
    :cond_1
    if-eqz p2, :cond_2

    .line 32
    .line 33
    invoke-virtual {p2}, Lteam/opay/pay/kyc/base/KycTaskNode;->getIdNumber()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    move-object v2, v1

    .line 39
    :goto_1
    if-eqz v2, :cond_8

    .line 40
    .line 41
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-nez v2, :cond_3

    .line 46
    .line 47
    goto :goto_4

    .line 48
    :cond_3
    new-instance v2, Lteam/opay/pay/kyc/base/KycPairItem;

    .line 49
    .line 50
    if-eqz p2, :cond_4

    .line 51
    .line 52
    invoke-virtual {p2}, Lteam/opay/pay/kyc/base/KycTaskNode;->getIdType()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    goto :goto_2

    .line 57
    :cond_4
    move-object v4, v1

    .line 58
    :goto_2
    if-nez v4, :cond_5

    .line 59
    .line 60
    move-object v4, v3

    .line 61
    :cond_5
    if-eqz p2, :cond_6

    .line 62
    .line 63
    invoke-virtual {p2}, Lteam/opay/pay/kyc/base/KycTaskNode;->getIdNumber()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    goto :goto_3

    .line 68
    :cond_6
    move-object v5, v1

    .line 69
    :goto_3
    if-nez v5, :cond_7

    .line 70
    .line 71
    move-object v5, v3

    .line 72
    :cond_7
    const/4 v6, 0x1

    .line 73
    invoke-direct {v2, v4, v5, v6}, Lteam/opay/pay/kyc/base/KycPairItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 74
    .line 75
    .line 76
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    :cond_8
    :goto_4
    if-eqz p2, :cond_9

    .line 80
    .line 81
    invoke-virtual {p2}, Lteam/opay/pay/kyc/base/KycTaskNode;->getIdFirstName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    goto :goto_5

    .line 86
    :cond_9
    move-object v2, v1

    .line 87
    :goto_5
    const/4 v4, 0x2

    .line 88
    const-string v5, "getString(...)"

    .line 89
    .line 90
    if-eqz v2, :cond_d

    .line 91
    .line 92
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-nez v2, :cond_a

    .line 97
    .line 98
    goto :goto_7

    .line 99
    :cond_a
    new-instance v2, Lteam/opay/pay/kyc/base/KycPairItem;

    .line 100
    .line 101
    sget v6, Lteam/opay/pay/R$string;->osdk_first_name_upper:I

    .line 102
    .line 103
    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    if-eqz p2, :cond_b

    .line 111
    .line 112
    invoke-virtual {p2}, Lteam/opay/pay/kyc/base/KycTaskNode;->getIdFirstName()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    goto :goto_6

    .line 117
    :cond_b
    move-object v7, v1

    .line 118
    :goto_6
    if-nez v7, :cond_c

    .line 119
    .line 120
    move-object v7, v3

    .line 121
    :cond_c
    invoke-direct {v2, v6, v7, v4}, Lteam/opay/pay/kyc/base/KycPairItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 122
    .line 123
    .line 124
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    :cond_d
    :goto_7
    if-eqz p2, :cond_e

    .line 128
    .line 129
    invoke-virtual {p2}, Lteam/opay/pay/kyc/base/KycTaskNode;->getIdMiddleName()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    goto :goto_8

    .line 134
    :cond_e
    move-object v2, v1

    .line 135
    :goto_8
    if-eqz v2, :cond_12

    .line 136
    .line 137
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    if-nez v2, :cond_f

    .line 142
    .line 143
    goto :goto_a

    .line 144
    :cond_f
    new-instance v2, Lteam/opay/pay/kyc/base/KycPairItem;

    .line 145
    .line 146
    sget v6, Lteam/opay/pay/R$string;->osdk_middle_name_upper:I

    .line 147
    .line 148
    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    if-eqz p2, :cond_10

    .line 156
    .line 157
    invoke-virtual {p2}, Lteam/opay/pay/kyc/base/KycTaskNode;->getIdMiddleName()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v7

    .line 161
    goto :goto_9

    .line 162
    :cond_10
    move-object v7, v1

    .line 163
    :goto_9
    if-nez v7, :cond_11

    .line 164
    .line 165
    move-object v7, v3

    .line 166
    :cond_11
    invoke-direct {v2, v6, v7, v4}, Lteam/opay/pay/kyc/base/KycPairItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 167
    .line 168
    .line 169
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    :cond_12
    :goto_a
    if-eqz p2, :cond_13

    .line 173
    .line 174
    invoke-virtual {p2}, Lteam/opay/pay/kyc/base/KycTaskNode;->getIdLastName()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    goto :goto_b

    .line 179
    :cond_13
    move-object v2, v1

    .line 180
    :goto_b
    if-eqz v2, :cond_17

    .line 181
    .line 182
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    if-nez v2, :cond_14

    .line 187
    .line 188
    goto :goto_d

    .line 189
    :cond_14
    new-instance v2, Lteam/opay/pay/kyc/base/KycPairItem;

    .line 190
    .line 191
    sget v6, Lteam/opay/pay/R$string;->osdk_last_name_upper:I

    .line 192
    .line 193
    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    if-eqz p2, :cond_15

    .line 201
    .line 202
    invoke-virtual {p2}, Lteam/opay/pay/kyc/base/KycTaskNode;->getIdLastName()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    :cond_15
    if-nez v1, :cond_16

    .line 207
    .line 208
    goto :goto_c

    .line 209
    :cond_16
    move-object v3, v1

    .line 210
    :goto_c
    invoke-direct {v2, p1, v3, v4}, Lteam/opay/pay/kyc/base/KycPairItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 211
    .line 212
    .line 213
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    :cond_17
    :goto_d
    return-object v0
.end method

.method public final O(Lag8;Lteam/opay/face/net/FaceRequest;Ljava/io/File;)V
    .locals 1
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/face/net/FaceRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "lifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "req"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "file"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lteam/opay/pay/kyc/task/FaceWrapperViewModel;->B()Lteam/opay/face/net/a$a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0, p2}, Lteam/opay/face/net/a$a;->a(Lteam/opay/face/net/FaceRequest;)Lretrofit2/Call;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-static {p2, p0}, Lkpc;->a(Lretrofit2/Call;Landroidx/lifecycle/AndroidViewModel;)Landroidx/lifecycle/LiveData;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    new-instance v0, Lqv5;

    .line 29
    .line 30
    invoke-direct {v0, p0, p3}, Lqv5;-><init>(Lteam/opay/pay/kyc/task/FaceWrapperViewModel;Ljava/io/File;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p2, p1, v0}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final x(Lag8;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "lifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "scene"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/pay/kyc/task/FaceWrapperViewModel;->d:Lcv7;

    .line 12
    .line 13
    new-instance v1, Lteam/opay/pay/kyc/customer/KycFaceQuitReq;

    .line 14
    .line 15
    invoke-direct {v1, p2}, Lteam/opay/pay/kyc/customer/KycFaceQuitReq;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1}, Lcv7;->M(Lteam/opay/pay/kyc/customer/KycFaceQuitReq;)Lretrofit2/Call;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-static {p2, p0}, Lkpc;->a(Lretrofit2/Call;Landroidx/lifecycle/AndroidViewModel;)Landroidx/lifecycle/LiveData;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    new-instance v0, Lrv5;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lrv5;-><init>(Lteam/opay/pay/kyc/task/FaceWrapperViewModel;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p2, p1, v0}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final z()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/task/FaceWrapperViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method
