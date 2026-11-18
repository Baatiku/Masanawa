.class public final Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberViewModel;
.super Lteam/opay/pay/kyc/base/AbstractKycViewModel;
.source "Kyc2SetIdNumberViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0015\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\r\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\r\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0015\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001d\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J%\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0014\u0010#\u001a\u00020 8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R$\u0010+\u001a\u0004\u0018\u00010$8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008%\u0010&\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R\"\u00103\u001a\u00020,8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008-\u0010.\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R\u001d\u00109\u001a\u0008\u0012\u0004\u0012\u00020,048\u0006\u00a2\u0006\u000c\n\u0004\u00085\u00106\u001a\u0004\u00087\u00108R(\u0010>\u001a\u0008\u0012\u0004\u0012\u00020\u0008048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008:\u00106\u001a\u0004\u0008;\u00108\"\u0004\u0008<\u0010=R\u001d\u0010B\u001a\u0008\u0012\u0004\u0012\u00020?048\u0006\u00a2\u0006\u000c\n\u0004\u0008@\u00106\u001a\u0004\u0008A\u00108R\u001d\u0010F\u001a\u0008\u0012\u0004\u0012\u00020C048\u0006\u00a2\u0006\u000c\n\u0004\u0008D\u00106\u001a\u0004\u0008E\u00108R$\u0010M\u001a\u0004\u0018\u00010C8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008G\u0010H\u001a\u0004\u0008I\u0010J\"\u0004\u0008K\u0010LR\u001d\u0010P\u001a\u0008\u0012\u0004\u0012\u00020\u0016048\u0006\u00a2\u0006\u000c\n\u0004\u0008N\u00106\u001a\u0004\u0008O\u00108R$\u0010X\u001a\u0004\u0018\u00010Q8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008R\u0010S\u001a\u0004\u0008T\u0010U\"\u0004\u0008V\u0010WR$\u0010_\u001a\u0004\u0018\u00010?8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008Y\u0010Z\u001a\u0004\u0008[\u0010\\\"\u0004\u0008]\u0010^R$\u0010e\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008`\u0010a\u001a\u0004\u0008b\u0010\n\"\u0004\u0008c\u0010d\u00a8\u0006f"
    }
    d2 = {
        "Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberViewModel;",
        "Lteam/opay/pay/kyc/base/AbstractKycViewModel;",
        "Landroid/app/Application;",
        "app",
        "Lteam/opay/pay/kyc/base/KycSceneRepository;",
        "kycSceneRepository",
        "<init>",
        "(Landroid/app/Application;Lteam/opay/pay/kyc/base/KycSceneRepository;)V",
        "",
        "J",
        "()Ljava/lang/String;",
        "Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;",
        "I",
        "()Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;",
        "Landroid/content/Context;",
        "context",
        "K",
        "(Landroid/content/Context;)Ljava/lang/String;",
        "Lag8;",
        "lifecycleOwner",
        "",
        "taskRecordId",
        "",
        "C",
        "(Lag8;J)V",
        "Lteam/opay/pay/kyc/base/IdNumberVerifyReq;",
        "request",
        "pageName",
        "Q",
        "(Lteam/opay/pay/kyc/base/IdNumberVerifyReq;Lag8;Ljava/lang/String;)V",
        "i",
        "Lteam/opay/pay/kyc/base/KycSceneRepository;",
        "Lcv7;",
        "j",
        "Lcv7;",
        "api",
        "Lteam/opay/pay/kyc/base/KycTaskNode;",
        "k",
        "Lteam/opay/pay/kyc/base/KycTaskNode;",
        "getTaskNodeData",
        "()Lteam/opay/pay/kyc/base/KycTaskNode;",
        "W",
        "(Lteam/opay/pay/kyc/base/KycTaskNode;)V",
        "taskNodeData",
        "",
        "l",
        "Z",
        "P",
        "()Z",
        "V",
        "(Z)V",
        "showedBackDialog",
        "Landroidx/lifecycle/MutableLiveData;",
        "m",
        "Landroidx/lifecycle/MutableLiveData;",
        "L",
        "()Landroidx/lifecycle/MutableLiveData;",
        "loadingEvent",
        "n",
        "N",
        "setProceedSuccessEvent",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "proceedSuccessEvent",
        "Lteam/opay/pay/kyc/upgrade2/task/ForgotFailBean;",
        "o",
        "F",
        "faceMatchFailEvent",
        "Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;",
        "p",
        "M",
        "photoComparison",
        "q",
        "Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;",
        "getIdNumberVerifyRsp",
        "()Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;",
        "setIdNumberVerifyRsp",
        "(Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)V",
        "idNumberVerifyRsp",
        "r",
        "O",
        "showIdNumberConfirmDialogEvent",
        "Lteam/opay/pay/kyc/customer/FindFaceInfoRsp;",
        "s",
        "Lteam/opay/pay/kyc/customer/FindFaceInfoRsp;",
        "H",
        "()Lteam/opay/pay/kyc/customer/FindFaceInfoRsp;",
        "U",
        "(Lteam/opay/pay/kyc/customer/FindFaceInfoRsp;)V",
        "forgotMobileInfo",
        "t",
        "Lteam/opay/pay/kyc/upgrade2/task/ForgotFailBean;",
        "G",
        "()Lteam/opay/pay/kyc/upgrade2/task/ForgotFailBean;",
        "T",
        "(Lteam/opay/pay/kyc/upgrade2/task/ForgotFailBean;)V",
        "forgotFailBean",
        "u",
        "Ljava/lang/String;",
        "E",
        "S",
        "(Ljava/lang/String;)V",
        "endScene",
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
.field public final i:Lteam/opay/pay/kyc/base/KycSceneRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lcv7;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Lteam/opay/pay/kyc/base/KycTaskNode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public l:Z

.field public final m:Landroidx/lifecycle/MutableLiveData;
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

.field public n:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final o:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/kyc/upgrade2/task/ForgotFailBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final p:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public q:Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final r:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public s:Lteam/opay/pay/kyc/customer/FindFaceInfoRsp;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public t:Lteam/opay/pay/kyc/upgrade2/task/ForgotFailBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public u:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;Lteam/opay/pay/kyc/base/KycSceneRepository;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/kyc/base/KycSceneRepository;
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
    const-string v0, "kycSceneRepository"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lteam/opay/pay/kyc/base/AbstractKycViewModel;-><init>(Landroid/app/Application;)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberViewModel;->i:Lteam/opay/pay/kyc/base/KycSceneRepository;

    .line 15
    .line 16
    sget-object p2, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 17
    .line 18
    const-class v0, Lcv7;

    .line 19
    .line 20
    invoke-virtual {p2, p1, v0}, Lteam/opay/core/api/GraphQL;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcv7;

    .line 25
    .line 26
    iput-object p1, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberViewModel;->j:Lcv7;

    .line 27
    .line 28
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 29
    .line 30
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    .line 34
    .line 35
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 36
    .line 37
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberViewModel;->n:Landroidx/lifecycle/MutableLiveData;

    .line 41
    .line 42
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 43
    .line 44
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberViewModel;->o:Landroidx/lifecycle/MutableLiveData;

    .line 48
    .line 49
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 50
    .line 51
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    .line 55
    .line 56
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 57
    .line 58
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object p1, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberViewModel;->r:Landroidx/lifecycle/MutableLiveData;

    .line 62
    .line 63
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberViewModel;Lteam/opay/pay/kyc/base/IdNumberVerifyReq;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberViewModel;->R(Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberViewModel;Lteam/opay/pay/kyc/base/IdNumberVerifyReq;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B(Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberViewModel;->D(Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final D(Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 8

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
    iget-object v0, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberViewModel;->m:Landroidx/lifecycle/MutableLiveData;

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
    sget-object v1, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberViewModel$a;->a:[I

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
    const-string v2, "USSD"

    .line 33
    .line 34
    if-eq v0, v1, :cond_2

    .line 35
    .line 36
    const/4 p1, 0x2

    .line 37
    if-eq v0, p1, :cond_1

    .line 38
    .line 39
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 40
    .line 41
    .line 42
    goto/16 :goto_5

    .line 43
    .line 44
    :cond_1
    iget-object p0, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberViewModel;->n:Landroidx/lifecycle/MutableLiveData;

    .line 45
    .line 46
    invoke-virtual {p0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto/16 :goto_5

    .line 50
    .line 51
    :cond_2
    new-instance v0, Lteam/opay/pay/kyc/customer/FindFaceInfoRsp;

    .line 52
    .line 53
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Lteam/opay/pay/kyc/customer/CertMethodRsp;

    .line 58
    .line 59
    const/4 v3, 0x0

    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    invoke-virtual {v1}, Lteam/opay/pay/kyc/customer/CertMethodRsp;->getIdType()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    goto :goto_0

    .line 67
    :cond_3
    move-object v1, v3

    .line 68
    :goto_0
    const-string v4, ""

    .line 69
    .line 70
    if-nez v1, :cond_4

    .line 71
    .line 72
    move-object v1, v4

    .line 73
    :cond_4
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    check-cast v5, Lteam/opay/pay/kyc/customer/CertMethodRsp;

    .line 78
    .line 79
    if-eqz v5, :cond_5

    .line 80
    .line 81
    invoke-virtual {v5}, Lteam/opay/pay/kyc/customer/CertMethodRsp;->getIdNumber()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    goto :goto_1

    .line 86
    :cond_5
    move-object v5, v3

    .line 87
    :goto_1
    if-nez v5, :cond_6

    .line 88
    .line 89
    move-object v5, v4

    .line 90
    :cond_6
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    check-cast v6, Lteam/opay/pay/kyc/customer/CertMethodRsp;

    .line 95
    .line 96
    if-eqz v6, :cond_7

    .line 97
    .line 98
    invoke-virtual {v6}, Lteam/opay/pay/kyc/customer/CertMethodRsp;->getFirstName()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    goto :goto_2

    .line 103
    :cond_7
    move-object v6, v3

    .line 104
    :goto_2
    if-nez v6, :cond_8

    .line 105
    .line 106
    move-object v6, v4

    .line 107
    :cond_8
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    check-cast v7, Lteam/opay/pay/kyc/customer/CertMethodRsp;

    .line 112
    .line 113
    if-eqz v7, :cond_9

    .line 114
    .line 115
    invoke-virtual {v7}, Lteam/opay/pay/kyc/customer/CertMethodRsp;->getLastName()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    :cond_9
    if-nez v3, :cond_a

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_a
    move-object v4, v3

    .line 123
    :goto_3
    invoke-direct {v0, v1, v5, v6, v4}, Lteam/opay/pay/kyc/customer/FindFaceInfoRsp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iput-object v0, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberViewModel;->s:Lteam/opay/pay/kyc/customer/FindFaceInfoRsp;

    .line 127
    .line 128
    iget-object p0, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberViewModel;->n:Landroidx/lifecycle/MutableLiveData;

    .line 129
    .line 130
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    check-cast p1, Lteam/opay/pay/kyc/customer/CertMethodRsp;

    .line 135
    .line 136
    if-eqz p1, :cond_c

    .line 137
    .line 138
    invoke-virtual {p1}, Lteam/opay/pay/kyc/customer/CertMethodRsp;->getMethod()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    if-nez p1, :cond_b

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_b
    move-object v2, p1

    .line 146
    :cond_c
    :goto_4
    invoke-virtual {p0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    :goto_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 150
    .line 151
    return-object p0
.end method

.method public static final R(Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberViewModel;Lteam/opay/pay/kyc/base/IdNumberVerifyReq;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 11

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    if-nez p3, :cond_0

    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycViewModel;->v()Landroidx/lifecycle/MutableLiveData;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    sget-object v5, Lteam/opay/core/android/arch/Status;->LOADING:Lteam/opay/core/android/arch/Status;

    .line 18
    .line 19
    if-ne v4, v5, :cond_1

    .line 20
    .line 21
    const/4 v4, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v4, 0x0

    .line 24
    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    sget-object v4, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberViewModel$a;->a:[I

    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    aget v3, v4, v3

    .line 42
    .line 43
    if-eq v3, v2, :cond_5

    .line 44
    .line 45
    if-eq v3, v0, :cond_2

    .line 46
    .line 47
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    const-string v4, "05060"

    .line 56
    .line 57
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_4

    .line 62
    .line 63
    iget-object v3, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberViewModel;->r:Landroidx/lifecycle/MutableLiveData;

    .line 64
    .line 65
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 66
    .line 67
    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/IdNumberVerifyReq;->getScene()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    const-string v3, "pagename"

    .line 75
    .line 76
    invoke-static {v3, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    const-string v3, "code"

    .line 81
    .line 82
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-static {v3, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p3

    .line 94
    if-nez p3, :cond_3

    .line 95
    .line 96
    const-string p3, ""

    .line 97
    .line 98
    :cond_3
    const-string v4, "msg"

    .line 99
    .line 100
    invoke-static {v4, p3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 101
    .line 102
    .line 103
    move-result-object p3

    .line 104
    const/4 v4, 0x3

    .line 105
    new-array v4, v4, [Lkotlin/Pair;

    .line 106
    .line 107
    aput-object p2, v4, v1

    .line 108
    .line 109
    aput-object v3, v4, v2

    .line 110
    .line 111
    aput-object p3, v4, v0

    .line 112
    .line 113
    const-string p2, "sevrice_error_show"

    .line 114
    .line 115
    invoke-virtual {p0, p2, p1, v4}, Lteam/opay/pay/kyc/base/AbstractKycViewModel;->y(Ljava/lang/String;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_4
    new-instance v0, Lteam/opay/pay/kyc/base/ErrorMsg;

    .line 120
    .line 121
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    const/4 v9, 0x4

    .line 130
    const/4 v10, 0x0

    .line 131
    const/4 v8, 0x0

    .line 132
    move-object v5, v0

    .line 133
    invoke-direct/range {v5 .. v10}, Lteam/opay/pay/kyc/base/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/IdNumberVerifyReq;->getScene()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {p0, v0, p1, p2}, Lteam/opay/pay/kyc/base/AbstractKycViewModel;->x(Lteam/opay/pay/kyc/base/ErrorMsg;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_5
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    check-cast p1, Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;

    .line 149
    .line 150
    if-eqz p1, :cond_6

    .line 151
    .line 152
    iput-object p1, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberViewModel;->q:Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;

    .line 153
    .line 154
    iget-object p0, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    .line 155
    .line 156
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    :cond_6
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 160
    .line 161
    return-object p0
.end method


# virtual methods
.method public final C(Lag8;J)V
    .locals 9
    .param p1    # Lag8;
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
    new-instance v0, Lteam/opay/pay/kyc/customer/CertMethodReq;

    .line 7
    .line 8
    sget-object v1, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 9
    .line 10
    invoke-virtual {v1}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lteam/opay/core/account/AccountInfoManager;->u()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    new-instance v6, Lteam/opay/pay/kyc/customer/IdFoundInfo;

    .line 19
    .line 20
    const-string v1, "Forgot"

    .line 21
    .line 22
    invoke-virtual {p0}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberViewModel;->J()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-direct {v6, v1, v3}, Lteam/opay/pay/kyc/customer/IdFoundInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 v7, 0x4

    .line 30
    const/4 v8, 0x0

    .line 31
    const/4 v5, 0x0

    .line 32
    move-object v1, v0

    .line 33
    move-wide v3, p2

    .line 34
    invoke-direct/range {v1 .. v8}, Lteam/opay/pay/kyc/customer/CertMethodReq;-><init>(Ljava/lang/String;JZLteam/opay/pay/kyc/customer/IdFoundInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 35
    .line 36
    .line 37
    iget-object p2, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberViewModel;->j:Lcv7;

    .line 38
    .line 39
    invoke-interface {p2, v0}, Lcv7;->b(Lteam/opay/pay/kyc/customer/CertMethodReq;)Lretrofit2/Call;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-static {p2, p0}, Lkpc;->a(Lretrofit2/Call;Landroidx/lifecycle/AndroidViewModel;)Landroidx/lifecycle/LiveData;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    new-instance p3, Lqt7;

    .line 48
    .line 49
    invoke-direct {p3, p0}, Lqt7;-><init>(Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberViewModel;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p2, p1, p3}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final E()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberViewModel;->u:Ljava/lang/String;

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
            "Lteam/opay/pay/kyc/upgrade2/task/ForgotFailBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberViewModel;->o:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final G()Lteam/opay/pay/kyc/upgrade2/task/ForgotFailBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberViewModel;->t:Lteam/opay/pay/kyc/upgrade2/task/ForgotFailBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final H()Lteam/opay/pay/kyc/customer/FindFaceInfoRsp;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberViewModel;->s:Lteam/opay/pay/kyc/customer/FindFaceInfoRsp;

    .line 2
    .line 3
    return-object v0
.end method

.method public final I()Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberViewModel;->k:Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycTaskNode;->getSupportIdTypes()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    :cond_0
    new-instance v0, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v7, 0x0

    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x0

    .line 25
    const/4 v4, 0x0

    .line 26
    const/4 v5, 0x0

    .line 27
    move-object v1, v0

    .line 28
    invoke-direct/range {v1 .. v7}, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-object v0
.end method

.method public final J()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberViewModel;->k:Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycTaskNode;->getSupportIdTypes()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;->getCode()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    if-nez v0, :cond_1

    .line 26
    .line 27
    const-string v0, ""

    .line 28
    .line 29
    :cond_1
    return-object v0
.end method

.method public final K(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
    invoke-virtual {p0}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberViewModel;->J()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "BVN"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const-string v2, "getString(...)"

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    sget v0, Lteam/opay/pay/R$string;->osdk_bvn_detail:I

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string v1, "NIN"

    .line 31
    .line 32
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    sget v0, Lteam/opay/pay/R$string;->osdk_nin_detail:I

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const-string p1, ""

    .line 49
    .line 50
    :goto_0
    return-object p1
.end method

.method public final L()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final M()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final N()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberViewModel;->n:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final O()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberViewModel;->r:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final P()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberViewModel;->l:Z

    .line 2
    .line 3
    return v0
.end method

.method public final Q(Lteam/opay/pay/kyc/base/IdNumberVerifyReq;Lag8;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lteam/opay/pay/kyc/base/IdNumberVerifyReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "lifecycleOwner"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "pageName"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberViewModel;->i:Lteam/opay/pay/kyc/base/KycSceneRepository;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lteam/opay/pay/kyc/base/KycSceneRepository;->g(Lteam/opay/pay/kyc/base/IdNumberVerifyReq;)Landroidx/lifecycle/LiveData;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Lrt7;

    .line 23
    .line 24
    invoke-direct {v1, p0, p1, p3}, Lrt7;-><init>(Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberViewModel;Lteam/opay/pay/kyc/base/IdNumberVerifyReq;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p2, v1}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final S(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberViewModel;->u:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final T(Lteam/opay/pay/kyc/upgrade2/task/ForgotFailBean;)V
    .locals 0
    .param p1    # Lteam/opay/pay/kyc/upgrade2/task/ForgotFailBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberViewModel;->t:Lteam/opay/pay/kyc/upgrade2/task/ForgotFailBean;

    .line 2
    .line 3
    return-void
.end method

.method public final U(Lteam/opay/pay/kyc/customer/FindFaceInfoRsp;)V
    .locals 0
    .param p1    # Lteam/opay/pay/kyc/customer/FindFaceInfoRsp;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberViewModel;->s:Lteam/opay/pay/kyc/customer/FindFaceInfoRsp;

    .line 2
    .line 3
    return-void
.end method

.method public final V(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberViewModel;->l:Z

    .line 2
    .line 3
    return-void
.end method

.method public final W(Lteam/opay/pay/kyc/base/KycTaskNode;)V
    .locals 0
    .param p1    # Lteam/opay/pay/kyc/base/KycTaskNode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberViewModel;->k:Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 2
    .line 3
    return-void
.end method
