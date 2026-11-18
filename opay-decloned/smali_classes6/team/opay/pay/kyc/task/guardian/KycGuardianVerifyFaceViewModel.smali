.class public final Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;
.super Lteam/opay/pay/kyc/base/AbstractKycViewModel;
.source "KycGuardianVerifyFaceViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel$Companion;,
        Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u0000 *2\u00020\u0001:\u0001+B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J%\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\'\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u001f\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u001c\u001a\u00020\u00198\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u001d\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u001d8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!R\u001d\u0010&\u001a\u0008\u0012\u0004\u0012\u00020#0\u001d8\u0006\u00a2\u0006\u000c\n\u0004\u0008$\u0010\u001f\u001a\u0004\u0008%\u0010!R\u001d\u0010)\u001a\u0008\u0012\u0004\u0012\u00020#0\u001d8\u0006\u00a2\u0006\u000c\n\u0004\u0008\'\u0010\u001f\u001a\u0004\u0008(\u0010!\u00a8\u0006,"
    }
    d2 = {
        "Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;",
        "Lteam/opay/pay/kyc/base/AbstractKycViewModel;",
        "Landroid/app/Application;",
        "app",
        "<init>",
        "(Landroid/app/Application;)V",
        "Lag8;",
        "lifecycleOwner",
        "",
        "idNumber",
        "Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;",
        "guardianInfo",
        "",
        "I",
        "(Lag8;Ljava/lang/String;Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;)V",
        "Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;",
        "rsp",
        "H",
        "(Ljava/lang/String;Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;)V",
        "apiCode",
        "message",
        "G",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "i",
        "Landroid/app/Application;",
        "Lcv7;",
        "j",
        "Lcv7;",
        "api",
        "Landroidx/lifecycle/MutableLiveData;",
        "k",
        "Landroidx/lifecycle/MutableLiveData;",
        "F",
        "()Landroidx/lifecycle/MutableLiveData;",
        "verifyIdNumberSuccessEvent",
        "Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;",
        "l",
        "D",
        "sceneAgeDialogEvent",
        "m",
        "E",
        "sceneSexDialogEvent",
        "n",
        "Companion",
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


# static fields
.field public static final n:Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final i:Landroid/app/Application;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lcv7;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;",
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
            "Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final m:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;->n:Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel$Companion;

    .line 8
    .line 9
    return-void
.end method

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
    invoke-direct {p0, p1}, Lteam/opay/pay/kyc/base/AbstractKycViewModel;-><init>(Landroid/app/Application;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;->i:Landroid/app/Application;

    .line 10
    .line 11
    sget-object v0, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 12
    .line 13
    const-class v1, Lcv7;

    .line 14
    .line 15
    invoke-virtual {v0, p1, v1}, Lteam/opay/core/api/GraphQL;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcv7;

    .line 20
    .line 21
    iput-object p1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;->j:Lcv7;

    .line 22
    .line 23
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 24
    .line 25
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    .line 29
    .line 30
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    .line 36
    .line 37
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 38
    .line 39
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    .line 43
    .line 44
    return-void
.end method

.method public static synthetic A(JLteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;Ljava/lang/String;Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;->J(JLteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;Ljava/lang/String;Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic B(Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;->G(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic C(Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;Ljava/lang/String;Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;->H(Ljava/lang/String;Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final J(JLteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;Ljava/lang/String;Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 10

    .line 1
    if-nez p5, :cond_0

    .line 2
    .line 3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-virtual {p5}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel$a;->a:[I

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
    const-wide/16 v4, 0xbb8

    .line 20
    .line 21
    if-eq v0, v1, :cond_5

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    if-eq v0, v1, :cond_1

    .line 25
    .line 26
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 27
    .line 28
    .line 29
    goto/16 :goto_1

    .line 30
    .line 31
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    sub-long/2addr v0, p0

    .line 36
    cmp-long v2, v0, v4

    .line 37
    .line 38
    if-lez v2, :cond_4

    .line 39
    .line 40
    invoke-virtual {p5}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v1, ""

    .line 45
    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    move-object v0, v1

    .line 49
    :cond_2
    invoke-virtual {p5}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    if-nez v2, :cond_3

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    move-object v1, v2

    .line 57
    :goto_0
    invoke-virtual {p2, v0, v1}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;->G(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto/16 :goto_1

    .line 61
    .line 62
    :cond_4
    invoke-static {p2}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    new-instance v7, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel$verifyIdNumber$1$2;

    .line 67
    .line 68
    const/4 v5, 0x0

    .line 69
    move-object v0, v7

    .line 70
    move-wide v1, p0

    .line 71
    move-object v3, p2

    .line 72
    move-object v4, p5

    .line 73
    invoke-direct/range {v0 .. v5}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel$verifyIdNumber$1$2;-><init>(JLteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;Lteam/opay/core/android/arch/Resource;Ljr2;)V

    .line 74
    .line 75
    .line 76
    const/4 v0, 0x3

    .line 77
    const/4 v1, 0x0

    .line 78
    const/4 v2, 0x0

    .line 79
    const/4 v3, 0x0

    .line 80
    move-object p0, v6

    .line 81
    move-object p1, v2

    .line 82
    move-object p2, v3

    .line 83
    move-object p3, v7

    .line 84
    move p4, v0

    .line 85
    move-object p5, v1

    .line 86
    invoke-static/range {p0 .. p5}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_5
    invoke-virtual {p5}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    move-object v6, v0

    .line 95
    check-cast v6, Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;

    .line 96
    .line 97
    if-eqz v6, :cond_7

    .line 98
    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 100
    .line 101
    .line 102
    move-result-wide v0

    .line 103
    sub-long/2addr v0, p0

    .line 104
    cmp-long v2, v0, v4

    .line 105
    .line 106
    if-lez v2, :cond_6

    .line 107
    .line 108
    invoke-virtual {p2, p3, p4, v6}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;->H(Ljava/lang/String;Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_6
    invoke-static {p2}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    new-instance v9, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel$verifyIdNumber$1$1$1;

    .line 117
    .line 118
    const/4 v7, 0x0

    .line 119
    move-object v0, v9

    .line 120
    move-wide v1, p0

    .line 121
    move-object v3, p2

    .line 122
    move-object v4, p3

    .line 123
    move-object v5, p4

    .line 124
    invoke-direct/range {v0 .. v7}, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel$verifyIdNumber$1$1$1;-><init>(JLteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;Ljava/lang/String;Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;Ljr2;)V

    .line 125
    .line 126
    .line 127
    const/4 v0, 0x3

    .line 128
    const/4 v1, 0x0

    .line 129
    const/4 v2, 0x0

    .line 130
    const/4 v3, 0x0

    .line 131
    move-object p0, v8

    .line 132
    move-object p1, v2

    .line 133
    move-object p2, v3

    .line 134
    move-object p3, v9

    .line 135
    move p4, v0

    .line 136
    move-object p5, v1

    .line 137
    invoke-static/range {p0 .. p5}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 138
    .line 139
    .line 140
    :cond_7
    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 141
    .line 142
    return-object v0
.end method


# virtual methods
.method public final D()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final E()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final F()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final G(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycViewModel;->t()Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v7, Lteam/opay/pay/kyc/base/ErrorMsg;

    .line 6
    .line 7
    const/4 v5, 0x4

    .line 8
    const/4 v6, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    move-object v1, v7

    .line 11
    move-object v2, p1

    .line 12
    move-object v3, p2

    .line 13
    invoke-direct/range {v1 .. v6}, Lteam/opay/pay/kyc/base/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v7}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final H(Ljava/lang/String;Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;)V
    .locals 2

    .line 1
    invoke-virtual {p3}, Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;->getDialogResponse()Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p2, p1}, Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;->m(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;->getCheckScene()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    const-string v1, "AGE_CHECK"

    .line 16
    .line 17
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    if-eqz p3, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p2, p1}, Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;->n(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {p2, p1}, Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;->l(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    .line 42
    .line 43
    invoke-virtual {p1, p3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void
.end method

.method public final I(Lag8;Ljava/lang/String;Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;)V
    .locals 17
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    const-string v0, "lifecycleOwner"

    .line 6
    .line 7
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "idNumber"

    .line 11
    .line 12
    move-object/from16 v4, p2

    .line 13
    .line 14
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v0, "guardianInfo"

    .line 18
    .line 19
    move-object/from16 v5, p3

    .line 20
    .line 21
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    iget-object v0, v6, Lteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;->j:Lcv7;

    .line 29
    .line 30
    new-instance v3, Lteam/opay/pay/kyc/customer/GuardianIdNumberReq;

    .line 31
    .line 32
    invoke-virtual/range {p3 .. p3}, Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;->d()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v9

    .line 36
    invoke-virtual/range {p3 .. p3}, Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;->g()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v10

    .line 40
    invoke-virtual/range {p3 .. p3}, Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;->f()Ljava/lang/Long;

    .line 41
    .line 42
    .line 43
    move-result-object v11

    .line 44
    invoke-virtual/range {p3 .. p3}, Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;->e()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v12

    .line 48
    invoke-virtual/range {p3 .. p3}, Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;->b()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    if-nez v8, :cond_0

    .line 53
    .line 54
    const-string v8, ""

    .line 55
    .line 56
    :cond_0
    move-object v13, v8

    .line 57
    const/4 v15, 0x0

    .line 58
    const-string v16, "Y"

    .line 59
    .line 60
    move-object v8, v3

    .line 61
    move-object/from16 v14, p2

    .line 62
    .line 63
    invoke-direct/range {v8 .. v16}, Lteam/opay/pay/kyc/customer/GuardianIdNumberReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-interface {v0, v3}, Lcv7;->D(Lteam/opay/pay/kyc/customer/GuardianIdNumberReq;)Lretrofit2/Call;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {v0, v6}, Lkpc;->a(Lretrofit2/Call;Landroidx/lifecycle/AndroidViewModel;)Landroidx/lifecycle/LiveData;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    new-instance v9, Lw08;

    .line 75
    .line 76
    move-object v0, v9

    .line 77
    move-object/from16 v3, p0

    .line 78
    .line 79
    move-object/from16 v4, p2

    .line 80
    .line 81
    move-object/from16 v5, p3

    .line 82
    .line 83
    invoke-direct/range {v0 .. v5}, Lw08;-><init>(JLteam/opay/pay/kyc/task/guardian/KycGuardianVerifyFaceViewModel;Ljava/lang/String;Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;)V

    .line 84
    .line 85
    .line 86
    invoke-static {v8, v7, v9}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method
