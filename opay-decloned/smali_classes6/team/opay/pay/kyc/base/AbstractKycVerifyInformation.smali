.class public abstract Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;
.super Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;
.source "AbstractKycVerifyInformation.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/kyc/base/AbstractKycTaskFragment<",
        "Ljza;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008&\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J\u000f\u0010\u0008\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0004J\u001f\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0004J\u000f\u0010\u0015\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0004J\u000f\u0010\u0018\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0004J!\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u00192\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u001f\u0010#\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020!H&\u00a2\u0006\u0004\u0008#\u0010$J\u000f\u0010%\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008%\u0010\u0004R\u001b\u0010+\u001a\u00020&8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\'\u0010(\u001a\u0004\u0008)\u0010*R\u001b\u00100\u001a\u00020,8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008-\u0010(\u001a\u0004\u0008.\u0010/R\u001b\u00105\u001a\u0002018BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00082\u0010(\u001a\u0004\u00083\u00104R$\u0010<\u001a\u0004\u0018\u00010\u001f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00086\u00107\u001a\u0004\u00088\u00109\"\u0004\u0008:\u0010;R\u001b\u0010A\u001a\u00020=8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008>\u0010(\u001a\u0004\u0008?\u0010@R\u0018\u0010E\u001a\u0004\u0018\u00010B8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008C\u0010DR\u0014\u0010I\u001a\u00020F8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008G\u0010H\u00a8\u0006J"
    }
    d2 = {
        "Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;",
        "Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;",
        "Ljza;",
        "<init>",
        "()V",
        "",
        "initView",
        "a1",
        "s1",
        "addObserver",
        "Landroid/widget/ImageView;",
        "imageview",
        "",
        "expanded",
        "R0",
        "(Landroid/widget/ImageView;Z)V",
        "Lteam/opay/pay/kyc/base/KycNameVo;",
        "name",
        "o1",
        "(Lteam/opay/pay/kyc/base/KycNameVo;)V",
        "m1",
        "l1",
        "()Z",
        "t1",
        "Y0",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Lteam/opay/pay/kyc/base/BasicInfoReq;",
        "req",
        "Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;",
        "rsp",
        "p1",
        "(Lteam/opay/pay/kyc/base/BasicInfoReq;Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)V",
        "Z0",
        "Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;",
        "l",
        "Lid8;",
        "X0",
        "()Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;",
        "viewModel",
        "Lteam/opay/pay/kyc/base/dialog/KycSelectNamePopWindow;",
        "m",
        "V0",
        "()Lteam/opay/pay/kyc/base/dialog/KycSelectNamePopWindow;",
        "selectNamePopupWindow",
        "Ljava/text/SimpleDateFormat;",
        "n",
        "T0",
        "()Ljava/text/SimpleDateFormat;",
        "formatter",
        "o",
        "Lteam/opay/pay/kyc/base/BasicInfoReq;",
        "getBasicInfoReq",
        "()Lteam/opay/pay/kyc/base/BasicInfoReq;",
        "setBasicInfoReq",
        "(Lteam/opay/pay/kyc/base/BasicInfoReq;)V",
        "basicInfoReq",
        "Lteam/opay/pay/kyc/base/KycNodeData;",
        "p",
        "U0",
        "()Lteam/opay/pay/kyc/base/KycNodeData;",
        "nodeData",
        "Lteam/opay/pay/account/KeyBoardHelper;",
        "q",
        "Lteam/opay/pay/account/KeyBoardHelper;",
        "keyBoardHelper",
        "",
        "W0",
        "()Ljava/lang/String;",
        "userPhone",
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
.field public final l:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final m:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final n:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public o:Lteam/opay/pay/kyc/base/BasicInfoReq;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final p:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public q:Lteam/opay/pay/account/KeyBoardHelper;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    sget-object v0, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation$1;->INSTANCE:Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation$special$$inlined$viewModels$default$1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 12
    .line 13
    new-instance v2, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation$special$$inlined$viewModels$default$2;

    .line 14
    .line 15
    invoke-direct {v2, v0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v2}, Lkotlin/c;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-class v1, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;

    .line 23
    .line 24
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    new-instance v2, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation$special$$inlined$viewModels$default$3;

    .line 29
    .line 30
    invoke-direct {v2, v0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation$special$$inlined$viewModels$default$3;-><init>(Lid8;)V

    .line 31
    .line 32
    .line 33
    new-instance v3, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation$special$$inlined$viewModels$default$4;

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    invoke-direct {v3, v4, v0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lid8;)V

    .line 37
    .line 38
    .line 39
    new-instance v4, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation$special$$inlined$viewModels$default$5;

    .line 40
    .line 41
    invoke-direct {v4, p0, v0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lid8;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p0, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->l:Lid8;

    .line 49
    .line 50
    new-instance v0, Lg1;

    .line 51
    .line 52
    invoke-direct {v0, p0}, Lg1;-><init>(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->m:Lid8;

    .line 60
    .line 61
    new-instance v0, Lh1;

    .line 62
    .line 63
    invoke-direct {v0}, Lh1;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iput-object v0, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->n:Lid8;

    .line 71
    .line 72
    new-instance v0, Li1;

    .line 73
    .line 74
    invoke-direct {v0, p0}, Li1;-><init>(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;)V

    .line 75
    .line 76
    .line 77
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iput-object v0, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->p:Lid8;

    .line 82
    .line 83
    return-void
.end method

.method public static synthetic A0(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->r1(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic B0(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->O0(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C0(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->Q0(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;Ljava/lang/Boolean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic D0(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->H0(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic E0(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->g1(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic F0(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;Ljava/util/Date;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->j1(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;Ljava/util/Date;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic G0(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;Lteam/opay/pay/kyc/base/KycNameVo;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->o1(Lteam/opay/pay/kyc/base/KycNameVo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final H0(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->o:Lteam/opay/pay/kyc/base/BasicInfoReq;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0, p1}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->p1(Lteam/opay/pay/kyc/base/BasicInfoReq;Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method

.method public static final I0(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;Ljava/lang/String;)Lkotlin/Unit;
    .locals 9

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    sget v0, Lteam/opay/pay/R$string;->osdk_kyc_dob_error_title:I

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    const-string v0, "getString(...)"

    .line 11
    .line 12
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget v1, Lteam/opay/pay/R$string;->ok:I

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/16 v7, 0x18

    .line 25
    .line 26
    const/4 v8, 0x0

    .line 27
    const/4 v5, 0x0

    .line 28
    const/4 v6, 0x0

    .line 29
    move-object v1, p0

    .line 30
    move-object v2, p1

    .line 31
    invoke-static/range {v1 .. v8}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->f0(Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 35
    .line 36
    return-object p0
.end method

.method public static final J0(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;Lteam/opay/pay/kyc/base/dialog/DobErrorInfo;)Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/kyc/base/dialog/KycDobErrorDialog;->p:Lteam/opay/pay/kyc/base/dialog/KycDobErrorDialog$Companion;

    .line 2
    .line 3
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lteam/opay/pay/kyc/base/dialog/KycDobErrorDialog$Companion;->a(Lteam/opay/pay/kyc/base/dialog/DobErrorInfo;)Lteam/opay/pay/kyc/base/dialog/KycDobErrorDialog;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p0, p1}, Lteam/opay/pay/base/FragmentKt;->w(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/DialogFragment;)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method

.method public static final K0(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;Ljava/lang/String;)Lkotlin/Unit;
    .locals 12

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    sget v0, Lteam/opay/pay/R$string;->osdk_kyc_verify_mobile_error_title:I

    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->X0()Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->H()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x1

    .line 15
    new-array v2, v2, [Ljava/lang/Object;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    aput-object v1, v2, v3

    .line 19
    .line 20
    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    const-string v0, "getString(...)"

    .line 25
    .line 26
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sget v1, Lteam/opay/pay/R$string;->ok:I

    .line 30
    .line 31
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/16 v10, 0x18

    .line 39
    .line 40
    const/4 v11, 0x0

    .line 41
    const/4 v8, 0x0

    .line 42
    const/4 v9, 0x0

    .line 43
    move-object v4, p0

    .line 44
    move-object v5, p1

    .line 45
    invoke-static/range {v4 .. v11}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->f0(Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 49
    .line 50
    return-object p0
.end method

.method public static final L0(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;Ljava/lang/String;)Lkotlin/Unit;
    .locals 12

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    sget v0, Lteam/opay/pay/R$string;->osdk_kyc_verify_name_error_title:I

    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->X0()Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->H()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x1

    .line 15
    new-array v2, v2, [Ljava/lang/Object;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    aput-object v1, v2, v3

    .line 19
    .line 20
    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    const-string v0, "getString(...)"

    .line 25
    .line 26
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sget v1, Lteam/opay/pay/R$string;->ok:I

    .line 30
    .line 31
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/16 v10, 0x18

    .line 39
    .line 40
    const/4 v11, 0x0

    .line 41
    const/4 v8, 0x0

    .line 42
    const/4 v9, 0x0

    .line 43
    move-object v4, p0

    .line 44
    move-object v5, p1

    .line 45
    invoke-static/range {v4 .. v11}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->f0(Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 49
    .line 50
    return-object p0
.end method

.method public static final M0(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;Ljava/lang/String;)Lkotlin/Unit;
    .locals 3

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lteam/opay/pay/kyc/task/dialog/KycBindMutiDialog;->o:Lteam/opay/pay/kyc/task/dialog/KycBindMutiDialog$Companion;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-static {v0, p1, v1, v2, v1}, Lteam/opay/pay/kyc/task/dialog/KycBindMutiDialog$Companion;->b(Lteam/opay/pay/kyc/task/dialog/KycBindMutiDialog$Companion;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lteam/opay/pay/kyc/task/dialog/KycBindMutiDialog;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p0, p1}, Lteam/opay/pay/base/FragmentKt;->w(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/DialogFragment;)V

    .line 15
    .line 16
    .line 17
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p0
.end method

.method public static final N0(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;Ljava/lang/String;)Lkotlin/Unit;
    .locals 9

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/16 v7, 0x1e

    .line 7
    .line 8
    const/4 v8, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x0

    .line 13
    move-object v1, p0

    .line 14
    move-object v2, p1

    .line 15
    invoke-static/range {v1 .. v8}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->f0(Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
.end method

.method public static final O0(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;Ljava/lang/String;)Lkotlin/Unit;
    .locals 9

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/16 v7, 0x1e

    .line 7
    .line 8
    const/4 v8, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x0

    .line 13
    move-object v1, p0

    .line 14
    move-object v2, p1

    .line 15
    invoke-static/range {v1 .. v8}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->f0(Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
.end method

.method public static final P0(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;Lteam/opay/pay/kyc/base/ErrorMsg;)Lkotlin/Unit;
    .locals 8

    .line 1
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/ErrorMsg;->c()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    :cond_0
    move-object v1, p1

    .line 10
    const/16 v6, 0x1e

    .line 11
    .line 12
    const/4 v7, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x0

    .line 17
    move-object v0, p0

    .line 18
    invoke-static/range {v0 .. v7}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->f0(Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p0
.end method

.method public static final Q0(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljza;

    .line 6
    .line 7
    iget-object p0, p0, Ljza;->n:Lteam/opay/core/android/views/PulseLoaderView;

    .line 8
    .line 9
    const-string v0, "loading"

    .line 10
    .line 11
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-static {p0, p1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 22
    .line 23
    .line 24
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p0
.end method

.method public static final S0()Ljava/text/SimpleDateFormat;
    .locals 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string/jumbo v1, "yyyy-MM-dd"

    .line 4
    .line 5
    .line 6
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method private final W0()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljza;

    .line 6
    .line 7
    iget-object v0, v0, Ljza;->l:Lteam/opay/pay/android/views/KeyboardEditText;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v1, Lteam/opay/core/api/Country;->NIGERIA:Lteam/opay/core/api/Country;

    .line 18
    .line 19
    invoke-static {v0, v1}, Lxob;->s(Ljava/lang/String;Lteam/opay/core/api/Country;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    invoke-static {v0}, Lxob;->t(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    :cond_0
    return-object v1
.end method

.method private final a1()V
    .locals 11

    .line 1
    new-instance v10, Lteam/opay/pay/account/KeyBoardHelper;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljza;

    .line 8
    .line 9
    iget-object v0, v0, Ljza;->m:Lt1b;

    .line 10
    .line 11
    iget-object v1, v0, Lt1b;->g:Landroid/inputmethodservice/KeyboardView;

    .line 12
    .line 13
    const-string v0, "keyBoardView"

    .line 14
    .line 15
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ljza;

    .line 23
    .line 24
    iget-object v0, v0, Ljza;->t:Lteam/opay/core/android/views/CodeInputField;

    .line 25
    .line 26
    invoke-virtual {v0}, Lteam/opay/core/android/views/CodeInputField;->getEditText()Lteam/opay/core/android/views/HiddenEditText;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Ljza;

    .line 35
    .line 36
    iget-object v0, v0, Ljza;->m:Lt1b;

    .line 37
    .line 38
    iget-object v3, v0, Lt1b;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 39
    .line 40
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Ljza;

    .line 45
    .line 46
    iget-object v0, v0, Ljza;->m:Lt1b;

    .line 47
    .line 48
    iget-object v4, v0, Lt1b;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 49
    .line 50
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Ljza;

    .line 55
    .line 56
    iget-object v5, v0, Ljza;->z:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 57
    .line 58
    const/16 v8, 0x60

    .line 59
    .line 60
    const/4 v9, 0x0

    .line 61
    const/4 v6, 0x0

    .line 62
    const/4 v7, 0x0

    .line 63
    move-object v0, v10

    .line 64
    invoke-direct/range {v0 .. v9}, Lteam/opay/pay/account/KeyBoardHelper;-><init>(Landroid/inputmethodservice/KeyboardView;Landroid/widget/EditText;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZLt1b;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 65
    .line 66
    .line 67
    iput-object v10, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->q:Lteam/opay/pay/account/KeyBoardHelper;

    .line 68
    .line 69
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Ljza;

    .line 74
    .line 75
    iget-object v0, v0, Ljza;->t:Lteam/opay/core/android/views/CodeInputField;

    .line 76
    .line 77
    new-instance v1, Lj1;

    .line 78
    .line 79
    invoke-direct {v1, p0}, Lj1;-><init>(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Lteam/opay/core/android/views/CodeInputField;->setOnEditTextFocusChange(Lkotlin/jvm/functions/Function1;)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->q:Lteam/opay/pay/account/KeyBoardHelper;

    .line 86
    .line 87
    if-eqz v0, :cond_0

    .line 88
    .line 89
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    check-cast v1, Ljza;

    .line 94
    .line 95
    iget-object v1, v1, Ljza;->t:Lteam/opay/core/android/views/CodeInputField;

    .line 96
    .line 97
    invoke-virtual {v1, v0}, Lteam/opay/core/android/views/CodeInputField;->m(Lteam/opay/pay/account/KeyBoardHelper;)V

    .line 98
    .line 99
    .line 100
    :cond_0
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Ljza;

    .line 105
    .line 106
    iget-object v0, v0, Ljza;->l:Lteam/opay/pay/android/views/KeyboardEditText;

    .line 107
    .line 108
    new-instance v1, Lk1;

    .line 109
    .line 110
    invoke-direct {v1, p0}, Lk1;-><init>(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method private final addObserver()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->X0()Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->C()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Lf1;

    .line 14
    .line 15
    invoke-direct {v2, p0}, Lf1;-><init>(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;)V

    .line 16
    .line 17
    .line 18
    new-instance v3, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation$a;

    .line 19
    .line 20
    invoke-direct {v3, v2}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->X0()Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->G()Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    new-instance v3, Lq1;

    .line 39
    .line 40
    invoke-direct {v3, p0}, Lq1;-><init>(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;)V

    .line 41
    .line 42
    .line 43
    new-instance v4, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation$a;

    .line 44
    .line 45
    invoke-direct {v4, v3}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2, v4}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->F()Landroidx/lifecycle/MutableLiveData;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    new-instance v3, Lv1;

    .line 60
    .line 61
    invoke-direct {v3, p0}, Lv1;-><init>(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;)V

    .line 62
    .line 63
    .line 64
    new-instance v4, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation$a;

    .line 65
    .line 66
    invoke-direct {v4, v3}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v2, v4}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->N()Landroidx/lifecycle/MutableLiveData;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    new-instance v3, Lw1;

    .line 81
    .line 82
    invoke-direct {v3, p0}, Lw1;-><init>(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;)V

    .line 83
    .line 84
    .line 85
    new-instance v4, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation$a;

    .line 86
    .line 87
    invoke-direct {v4, v3}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v2, v4}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->K()Landroidx/lifecycle/MutableLiveData;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    new-instance v3, Lx1;

    .line 102
    .line 103
    invoke-direct {v3, p0}, Lx1;-><init>(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;)V

    .line 104
    .line 105
    .line 106
    new-instance v4, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation$a;

    .line 107
    .line 108
    invoke-direct {v4, v3}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v2, v4}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/AbstractKycViewModel;->r()Lteam/opay/pay/util/SingleLiveEvent;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    const-string v3, "getViewLifecycleOwner(...)"

    .line 123
    .line 124
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    new-instance v4, Ly1;

    .line 128
    .line 129
    invoke-direct {v4, p0}, Ly1;-><init>(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;)V

    .line 130
    .line 131
    .line 132
    new-instance v5, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation$a;

    .line 133
    .line 134
    invoke-direct {v5, v4}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v2, v5}, Lteam/opay/pay/util/SingleLiveEvent;->observe(Lag8;Lvfa;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/AbstractKycViewModel;->u()Lteam/opay/pay/util/SingleLiveEvent;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    new-instance v4, Lz1;

    .line 152
    .line 153
    invoke-direct {v4, p0}, Lz1;-><init>(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;)V

    .line 154
    .line 155
    .line 156
    new-instance v5, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation$a;

    .line 157
    .line 158
    invoke-direct {v5, v4}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, v2, v5}, Lteam/opay/pay/util/SingleLiveEvent;->observe(Lag8;Lvfa;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/AbstractKycViewModel;->s()Lteam/opay/pay/util/SingleLiveEvent;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    new-instance v2, La2;

    .line 176
    .line 177
    invoke-direct {v2, p0}, La2;-><init>(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;)V

    .line 178
    .line 179
    .line 180
    new-instance v3, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation$a;

    .line 181
    .line 182
    invoke-direct {v3, v2}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, v1, v3}, Lteam/opay/pay/util/SingleLiveEvent;->observe(Lag8;Lvfa;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->X0()Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/AbstractKycViewModel;->t()Landroidx/lifecycle/MutableLiveData;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    new-instance v2, Lb2;

    .line 201
    .line 202
    invoke-direct {v2, p0}, Lb2;-><init>(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;)V

    .line 203
    .line 204
    .line 205
    new-instance v3, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation$a;

    .line 206
    .line 207
    invoke-direct {v3, v2}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->X0()Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/AbstractKycViewModel;->v()Landroidx/lifecycle/MutableLiveData;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    new-instance v2, Lc2;

    .line 226
    .line 227
    invoke-direct {v2, p0}, Lc2;-><init>(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;)V

    .line 228
    .line 229
    .line 230
    new-instance v3, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation$a;

    .line 231
    .line 232
    invoke-direct {v3, v2}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 236
    .line 237
    .line 238
    return-void
.end method

.method public static final b1(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;Z)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->isForeground()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->t1()V

    .line 10
    .line 11
    .line 12
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final c1(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;Landroid/view/View;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->isForeground()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    if-eqz p2, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->q:Lteam/opay/pay/account/KeyBoardHelper;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    check-cast p2, Ljza;

    .line 18
    .line 19
    iget-object p2, p2, Ljza;->l:Lteam/opay/pay/android/views/KeyboardEditText;

    .line 20
    .line 21
    const-string v0, "inputPhone"

    .line 22
    .line 23
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Lteam/opay/pay/account/KeyBoardHelper;->p(Landroid/widget/EditText;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->t1()V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->s1()V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method public static final d1(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->m1()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final e1(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->m1()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Ljza;

    .line 9
    .line 10
    iget-object p0, p0, Ljza;->t:Lteam/opay/core/android/views/CodeInputField;

    .line 11
    .line 12
    invoke-virtual {p0}, Lteam/opay/core/android/views/CodeInputField;->getEditText()Lteam/opay/core/android/views/HiddenEditText;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Lli2;->f(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 20
    .line 21
    return-object p0
.end method

.method public static final f1(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;Landroid/text/Editable;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->m1()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final g1(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;)Lkotlin/Unit;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->Y0()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v3, v0, [Lkotlin/Pair;

    .line 6
    .line 7
    const/16 v6, 0xc

    .line 8
    .line 9
    const/4 v7, 0x0

    .line 10
    const-string v2, "BVN_NIN_infor_next_click"

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    move-object v1, p0

    .line 15
    invoke-static/range {v1 .. v7}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->X(Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;Ljava/lang/String;[Lkotlin/Pair;ZZILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
.end method

.method public static final h1(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;)Lkotlin/Unit;
    .locals 4

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->q:Lteam/opay/pay/account/KeyBoardHelper;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/account/KeyBoardHelper;->i()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->V0()Lteam/opay/pay/kyc/base/dialog/KycSelectNamePopWindow;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Ljza;

    .line 17
    .line 18
    iget-object v1, v1, Ljza;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 19
    .line 20
    const/16 v2, 0xc

    .line 21
    .line 22
    invoke-static {v2}, Ljmf;->d(I)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Ljza;

    .line 35
    .line 36
    iget-object v0, v0, Ljza;->f:Landroidx/appcompat/widget/AppCompatImageView;

    .line 37
    .line 38
    const-string v1, "bvnArrow"

    .line 39
    .line 40
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    invoke-virtual {p0, v0, v1}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->R0(Landroid/widget/ImageView;Z)V

    .line 45
    .line 46
    .line 47
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 48
    .line 49
    return-object p0
.end method

.method public static synthetic i0(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->b1(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final i1(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;)Lkotlin/Unit;
    .locals 11

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->q:Lteam/opay/pay/account/KeyBoardHelper;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/account/KeyBoardHelper;->i()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljza;

    .line 13
    .line 14
    iget-object v0, v0, Ljza;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 15
    .line 16
    const-string v1, "birthArrow"

    .line 17
    .line 18
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-virtual {p0, v0, v1}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->R0(Landroid/widget/ImageView;Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    sget-object v0, Lteam/opay/pay/kyc/a;->a:Lteam/opay/pay/kyc/a;

    .line 30
    .line 31
    invoke-virtual {v0}, Lteam/opay/pay/kyc/a;->j()Ljava/util/Calendar;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v0}, Lteam/opay/pay/kyc/a;->i()Ljava/util/Calendar;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->X0()Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->R()Ljava/util/Calendar;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    new-instance v6, Lt1;

    .line 48
    .line 49
    invoke-direct {v6, p0}, Lt1;-><init>(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;)V

    .line 50
    .line 51
    .line 52
    new-instance v7, Lu1;

    .line 53
    .line 54
    invoke-direct {v7, p0}, Lu1;-><init>(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;)V

    .line 55
    .line 56
    .line 57
    const/16 v9, 0x40

    .line 58
    .line 59
    const/4 v10, 0x0

    .line 60
    const/4 v8, 0x0

    .line 61
    invoke-static/range {v2 .. v10}, Lqc3;->z(Landroidx/fragment/app/FragmentActivity;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Ljava/lang/String;ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 65
    .line 66
    return-object p0
.end method

.method private final initView()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->X0()Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->H()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Ljza;

    .line 14
    .line 15
    iget-object v1, v1, Ljza;->C:Landroidx/appcompat/widget/AppCompatTextView;

    .line 16
    .line 17
    sget v2, Lteam/opay/pay/R$string;->osdk_title_bvn_information:I

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    new-array v4, v3, [Ljava/lang/Object;

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    aput-object v0, v4, v5

    .line 24
    .line 25
    invoke-virtual {p0, v2, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Ljza;

    .line 37
    .line 38
    iget-object v1, v1, Ljza;->B:Landroidx/appcompat/widget/AppCompatTextView;

    .line 39
    .line 40
    sget v2, Lteam/opay/pay/R$string;->osdk_input_bvn_info:I

    .line 41
    .line 42
    new-array v4, v3, [Ljava/lang/Object;

    .line 43
    .line 44
    aput-object v0, v4, v5

    .line 45
    .line 46
    invoke-virtual {p0, v2, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Ljza;

    .line 58
    .line 59
    iget-object v1, v1, Ljza;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 60
    .line 61
    sget v2, Lteam/opay/pay/R$string;->osdk_segment_bvn_name:I

    .line 62
    .line 63
    new-array v4, v3, [Ljava/lang/Object;

    .line 64
    .line 65
    aput-object v0, v4, v5

    .line 66
    .line 67
    invoke-virtual {p0, v2, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Ljza;

    .line 79
    .line 80
    iget-object v1, v1, Ljza;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 81
    .line 82
    sget v2, Lteam/opay/pay/R$string;->osdk_segment_bvn_name_hint:I

    .line 83
    .line 84
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    check-cast v1, Ljza;

    .line 96
    .line 97
    iget-object v1, v1, Ljza;->q:Landroidx/appcompat/widget/AppCompatTextView;

    .line 98
    .line 99
    sget v2, Lteam/opay/pay/R$string;->osdk_segment_bvn_mobile_num:I

    .line 100
    .line 101
    new-array v3, v3, [Ljava/lang/Object;

    .line 102
    .line 103
    aput-object v0, v3, v5

    .line 104
    .line 105
    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    check-cast v0, Ljza;

    .line 117
    .line 118
    iget-object v0, v0, Ljza;->u:Landroidx/appcompat/widget/AppCompatTextView;

    .line 119
    .line 120
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->X0()Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->O()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    check-cast v0, Ljza;

    .line 136
    .line 137
    iget-object v0, v0, Ljza;->s:Landroidx/appcompat/widget/AppCompatTextView;

    .line 138
    .line 139
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->X0()Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->M()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    check-cast v0, Ljza;

    .line 155
    .line 156
    iget-object v0, v0, Ljza;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 157
    .line 158
    const-string v1, "bvnNameInput"

    .line 159
    .line 160
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    new-instance v1, Ll1;

    .line 164
    .line 165
    invoke-direct {v1, p0}, Ll1;-><init>(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;)V

    .line 166
    .line 167
    .line 168
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    check-cast v0, Ljza;

    .line 176
    .line 177
    iget-object v0, v0, Ljza;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 178
    .line 179
    const-string v1, "birthNameInput"

    .line 180
    .line 181
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    new-instance v1, Lm1;

    .line 185
    .line 186
    invoke-direct {v1, p0}, Lm1;-><init>(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;)V

    .line 187
    .line 188
    .line 189
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    check-cast v0, Ljza;

    .line 197
    .line 198
    iget-object v0, v0, Ljza;->t:Lteam/opay/core/android/views/CodeInputField;

    .line 199
    .line 200
    new-instance v1, Ln1;

    .line 201
    .line 202
    invoke-direct {v1, p0}, Ln1;-><init>(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, v1}, Lteam/opay/core/android/views/CodeInputField;->setOnCodeEdited(Lkotlin/jvm/functions/Function0;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    check-cast v0, Ljza;

    .line 213
    .line 214
    iget-object v0, v0, Ljza;->t:Lteam/opay/core/android/views/CodeInputField;

    .line 215
    .line 216
    new-instance v1, Lo1;

    .line 217
    .line 218
    invoke-direct {v1, p0}, Lo1;-><init>(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, v1}, Lteam/opay/core/android/views/CodeInputField;->setOnActionDone(Lkotlin/jvm/functions/Function0;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    check-cast v0, Ljza;

    .line 229
    .line 230
    iget-object v0, v0, Ljza;->l:Lteam/opay/pay/android/views/KeyboardEditText;

    .line 231
    .line 232
    const-string v1, "inputPhone"

    .line 233
    .line 234
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    new-instance v1, Lp1;

    .line 238
    .line 239
    invoke-direct {v1, p0}, Lp1;-><init>(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;)V

    .line 240
    .line 241
    .line 242
    invoke-static {v0, v1}, Lpf5;->a(Landroid/widget/EditText;Lkotlin/jvm/functions/Function1;)Landroid/text/TextWatcher;

    .line 243
    .line 244
    .line 245
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    check-cast v0, Ljza;

    .line 250
    .line 251
    iget-object v0, v0, Ljza;->w:Lcom/google/android/material/button/MaterialButton;

    .line 252
    .line 253
    const-string v1, "nextStep"

    .line 254
    .line 255
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    new-instance v1, Lr1;

    .line 259
    .line 260
    invoke-direct {v1, p0}, Lr1;-><init>(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;)V

    .line 261
    .line 262
    .line 263
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->X0()Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    const-string v1, "name"

    .line 271
    .line 272
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->b0(Ljava/lang/String;)Z

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    check-cast v1, Ljza;

    .line 281
    .line 282
    iget-object v1, v1, Ljza;->h:Landroidx/constraintlayout/widget/Group;

    .line 283
    .line 284
    const-string v2, "bvnNameGroup"

    .line 285
    .line 286
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    invoke-static {v1, v0}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->X0()Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    const-string v1, "dob"

    .line 297
    .line 298
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->b0(Ljava/lang/String;)Z

    .line 299
    .line 300
    .line 301
    move-result v0

    .line 302
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    check-cast v1, Ljza;

    .line 307
    .line 308
    iget-object v1, v1, Ljza;->c:Landroidx/constraintlayout/widget/Group;

    .line 309
    .line 310
    const-string v2, "birthGroup"

    .line 311
    .line 312
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    invoke-static {v1, v0}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->X0()Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    const-string v1, "phone_number"

    .line 323
    .line 324
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->b0(Ljava/lang/String;)Z

    .line 325
    .line 326
    .line 327
    move-result v0

    .line 328
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    check-cast v1, Ljza;

    .line 333
    .line 334
    iget-object v1, v1, Ljza;->q:Landroidx/appcompat/widget/AppCompatTextView;

    .line 335
    .line 336
    const-string v2, "mobileName"

    .line 337
    .line 338
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    invoke-static {v1, v0}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 342
    .line 343
    .line 344
    const-string v1, "mobileNotGroup"

    .line 345
    .line 346
    const-string v2, "mobileHaveGroup"

    .line 347
    .line 348
    if-eqz v0, :cond_1

    .line 349
    .line 350
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->X0()Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->T()Z

    .line 355
    .line 356
    .line 357
    move-result v0

    .line 358
    if-eqz v0, :cond_0

    .line 359
    .line 360
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    check-cast v0, Ljza;

    .line 365
    .line 366
    iget-object v0, v0, Ljza;->p:Landroidx/constraintlayout/widget/Group;

    .line 367
    .line 368
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    check-cast v0, Ljza;

    .line 379
    .line 380
    iget-object v0, v0, Ljza;->r:Landroidx/constraintlayout/widget/Group;

    .line 381
    .line 382
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 386
    .line 387
    .line 388
    goto :goto_0

    .line 389
    :cond_0
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    check-cast v0, Ljza;

    .line 394
    .line 395
    iget-object v0, v0, Ljza;->r:Landroidx/constraintlayout/widget/Group;

    .line 396
    .line 397
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    check-cast v0, Ljza;

    .line 408
    .line 409
    iget-object v0, v0, Ljza;->p:Landroidx/constraintlayout/widget/Group;

    .line 410
    .line 411
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 415
    .line 416
    .line 417
    goto :goto_0

    .line 418
    :cond_1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    check-cast v0, Ljza;

    .line 423
    .line 424
    iget-object v0, v0, Ljza;->p:Landroidx/constraintlayout/widget/Group;

    .line 425
    .line 426
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 430
    .line 431
    .line 432
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    check-cast v0, Ljza;

    .line 437
    .line 438
    iget-object v0, v0, Ljza;->r:Landroidx/constraintlayout/widget/Group;

    .line 439
    .line 440
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 444
    .line 445
    .line 446
    :goto_0
    return-void
.end method

.method public static synthetic j0(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->c1(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;Landroid/view/View;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final j1(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;Ljava/util/Date;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->X0()Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->Z(Ljava/util/Date;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljza;

    .line 18
    .line 19
    iget-object v0, v0, Ljza;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 20
    .line 21
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->T0()Ljava/text/SimpleDateFormat;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Ljza;

    .line 37
    .line 38
    iget-object p1, p1, Ljza;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 39
    .line 40
    const-string v0, "birthArrow"

    .line 41
    .line 42
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0, p1, v0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->R0(Landroid/widget/ImageView;Z)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->m1()V

    .line 50
    .line 51
    .line 52
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 53
    .line 54
    return-object p0
.end method

.method public static synthetic k0(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->h1(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final k1(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljza;

    .line 6
    .line 7
    iget-object v0, v0, Ljza;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 8
    .line 9
    const-string v1, "birthArrow"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p0, v0, v1}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->R0(Landroid/widget/ImageView;Z)V

    .line 16
    .line 17
    .line 18
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
.end method

.method public static synthetic l0(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->I0(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic m0(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->M0(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic n0(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->d1(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final n1(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;)Lteam/opay/pay/kyc/base/KycNodeData;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->Y()Lteam/opay/pay/kyc/base/KycNodeData;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic o0(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;Lteam/opay/pay/kyc/base/dialog/DobErrorInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->J0(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;Lteam/opay/pay/kyc/base/dialog/DobErrorInfo;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic p0(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;Landroid/text/Editable;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->f1(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;Landroid/text/Editable;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic q0(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;Lteam/opay/pay/kyc/base/ErrorMsg;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->P0(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;Lteam/opay/pay/kyc/base/ErrorMsg;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final q1(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;)Lteam/opay/pay/kyc/base/dialog/KycSelectNamePopWindow;
    .locals 4

    .line 1
    new-instance v0, Lteam/opay/pay/kyc/base/dialog/KycSelectNamePopWindow;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "requireContext(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->X0()Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->L()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    new-instance v3, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation$selectNamePopupWindow$2$1;

    .line 21
    .line 22
    invoke-direct {v3, p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation$selectNamePopupWindow$2$1;-><init>(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1, v2, v3}, Lteam/opay/pay/kyc/base/dialog/KycSelectNamePopWindow;-><init>(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Ls1;

    .line 29
    .line 30
    invoke-direct {v1, p0}, Ls1;-><init>(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method

.method public static synthetic r0(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;)Lteam/opay/pay/kyc/base/KycNodeData;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->n1(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;)Lteam/opay/pay/kyc/base/KycNodeData;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final r1(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljza;

    .line 6
    .line 7
    iget-object v0, v0, Ljza;->f:Landroidx/appcompat/widget/AppCompatImageView;

    .line 8
    .line 9
    const-string v1, "bvnArrow"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p0, v0, v1}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->R0(Landroid/widget/ImageView;Z)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static synthetic s0(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->K0(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final s1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->q:Lteam/opay/pay/account/KeyBoardHelper;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/account/KeyBoardHelper;->o()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lteam/opay/pay/account/KeyBoardHelper;->s()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public static synthetic t0(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->k1(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic u0()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->S0()Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic v0(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->L0(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic w0(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->N0(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic x0(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->i1(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic y0(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->e1(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic z0(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;)Lteam/opay/pay/kyc/base/dialog/KycSelectNamePopWindow;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->q1(Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;)Lteam/opay/pay/kyc/base/dialog/KycSelectNamePopWindow;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final R0(Landroid/widget/ImageView;Z)V
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const/high16 p2, 0x43340000    # 180.0f

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p2, 0x0

    .line 7
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-wide/16 v0, 0xc8

    .line 12
    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final T0()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->n:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 8
    .line 9
    return-object v0
.end method

.method public final U0()Lteam/opay/pay/kyc/base/KycNodeData;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->p:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/kyc/base/KycNodeData;

    .line 8
    .line 9
    return-object v0
.end method

.method public final V0()Lteam/opay/pay/kyc/base/dialog/KycSelectNamePopWindow;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->m:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/kyc/base/dialog/KycSelectNamePopWindow;

    .line 8
    .line 9
    return-object v0
.end method

.method public final X0()Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->l:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public final Y0()V
    .locals 14

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->X0()Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "phone_number"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->b0(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->X0()Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->T()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->X0()Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->O()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Ljza;

    .line 36
    .line 37
    iget-object v1, v1, Ljza;->t:Lteam/opay/core/android/views/CodeInputField;

    .line 38
    .line 39
    invoke-virtual {v1}, Lteam/opay/core/android/views/CodeInputField;->getCode()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->X0()Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2}, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->M()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    invoke-direct {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->W0()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    :goto_0
    invoke-static {v0}, Lxob;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    :goto_1
    move-object v12, v0

    .line 79
    goto :goto_2

    .line 80
    :cond_1
    const-string v0, ""

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :goto_2
    new-instance v0, Lteam/opay/pay/kyc/base/BasicInfoReq;

    .line 84
    .line 85
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->U0()Lteam/opay/pay/kyc/base/KycNodeData;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/KycNodeData;->getScene()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->U0()Lteam/opay/pay/kyc/base/KycNodeData;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/KycNodeData;->getScene()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-static {v1}, Lg4d;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->X0()Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->Q()Lteam/opay/pay/kyc/base/KycNameVo;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    const/4 v4, 0x0

    .line 114
    if-eqz v1, :cond_2

    .line 115
    .line 116
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/KycNameVo;->getFirstName()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    move-object v5, v1

    .line 121
    goto :goto_3

    .line 122
    :cond_2
    move-object v5, v4

    .line 123
    :goto_3
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->X0()Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->Q()Lteam/opay/pay/kyc/base/KycNameVo;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    if-eqz v1, :cond_3

    .line 132
    .line 133
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/KycNameVo;->getMiddleName()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    move-object v6, v1

    .line 138
    goto :goto_4

    .line 139
    :cond_3
    move-object v6, v4

    .line 140
    :goto_4
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->X0()Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->Q()Lteam/opay/pay/kyc/base/KycNameVo;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    if-eqz v1, :cond_4

    .line 149
    .line 150
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/KycNameVo;->getSurName()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    move-object v7, v1

    .line 155
    goto :goto_5

    .line 156
    :cond_4
    move-object v7, v4

    .line 157
    :goto_5
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    check-cast v1, Ljza;

    .line 162
    .line 163
    iget-object v1, v1, Ljza;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 164
    .line 165
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v8

    .line 173
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->X0()Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->I()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v9

    .line 181
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->X0()Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->D()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v10

    .line 189
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->X0()Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->P()Ljava/lang/Long;

    .line 194
    .line 195
    .line 196
    move-result-object v11

    .line 197
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->X0()Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->S()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v13

    .line 205
    move-object v1, v0

    .line 206
    move-object v4, v5

    .line 207
    move-object v5, v6

    .line 208
    move-object v6, v7

    .line 209
    move-object v7, v8

    .line 210
    move-object v8, v9

    .line 211
    move-object v9, v10

    .line 212
    move-object v10, v11

    .line 213
    move-object v11, v13

    .line 214
    invoke-direct/range {v1 .. v12}, Lteam/opay/pay/kyc/base/BasicInfoReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    iput-object v0, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->o:Lteam/opay/pay/kyc/base/BasicInfoReq;

    .line 218
    .line 219
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->X0()Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    const-string v3, "getViewLifecycleOwner(...)"

    .line 228
    .line 229
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    const-string v3, "FILL_BASIC_INFO"

    .line 233
    .line 234
    invoke-virtual {v1, v0, v2, v3}, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->U(Lteam/opay/pay/kyc/base/BasicInfoReq;Lag8;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    return-void
.end method

.method public Z0()V
    .locals 0

    .line 1
    return-void
.end method

.method public final l1()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->W0()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x2

    .line 7
    invoke-static {v0, v1, v2, v1}, Lxob;->q(Ljava/lang/String;Lteam/opay/core/api/Country;ILjava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final m1()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->X0()Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "phone_number"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->b0(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->X0()Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->T()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljza;

    .line 30
    .line 31
    iget-object v0, v0, Ljza;->t:Lteam/opay/core/android/views/CodeInputField;

    .line 32
    .line 33
    invoke-virtual {v0}, Lteam/opay/core/android/views/CodeInputField;->getCode()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/4 v3, 0x4

    .line 42
    if-ne v0, v3, :cond_1

    .line 43
    .line 44
    :cond_0
    const/4 v0, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 v0, 0x0

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->l1()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    :goto_0
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->X0()Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    const-string v4, "name"

    .line 57
    .line 58
    invoke-virtual {v3, v4}, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->b0(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    const-string v4, "getText(...)"

    .line 63
    .line 64
    if-eqz v3, :cond_3

    .line 65
    .line 66
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    check-cast v3, Ljza;

    .line 71
    .line 72
    iget-object v3, v3, Ljza;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 73
    .line 74
    invoke-virtual {v3}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-lez v3, :cond_4

    .line 86
    .line 87
    :cond_3
    const/4 v3, 0x1

    .line 88
    goto :goto_1

    .line 89
    :cond_4
    const/4 v3, 0x0

    .line 90
    :goto_1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->X0()Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    const-string v6, "dob"

    .line 95
    .line 96
    invoke-virtual {v5, v6}, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->b0(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    if-eqz v5, :cond_5

    .line 101
    .line 102
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    check-cast v5, Ljza;

    .line 107
    .line 108
    iget-object v5, v5, Ljza;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 109
    .line 110
    invoke-virtual {v5}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    if-lez v4, :cond_6

    .line 122
    .line 123
    :cond_5
    const/4 v4, 0x1

    .line 124
    goto :goto_2

    .line 125
    :cond_6
    const/4 v4, 0x0

    .line 126
    :goto_2
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    check-cast v5, Ljza;

    .line 131
    .line 132
    iget-object v5, v5, Ljza;->w:Lcom/google/android/material/button/MaterialButton;

    .line 133
    .line 134
    if-eqz v3, :cond_7

    .line 135
    .line 136
    if-eqz v4, :cond_7

    .line 137
    .line 138
    if-eqz v0, :cond_7

    .line 139
    .line 140
    const/4 v1, 0x1

    .line 141
    :cond_7
    invoke-virtual {v5, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 142
    .line 143
    .line 144
    return-void
.end method

.method public final o1(Lteam/opay/pay/kyc/base/KycNameVo;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljza;

    .line 6
    .line 7
    iget-object v0, v0, Ljza;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 8
    .line 9
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycNameVo;->getTotalName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->X0()Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->Y(Lteam/opay/pay/kyc/base/KycNameVo;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->m1()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
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
    invoke-super {p0, p1, p2}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->a1()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->Z0()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->initView()V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyInformation;->addObserver()V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    new-array v2, p1, [Lkotlin/Pair;

    .line 23
    .line 24
    const/16 v5, 0xc

    .line 25
    .line 26
    const/4 v6, 0x0

    .line 27
    const-string v1, "BVN_NIN_infor_page_show"

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v4, 0x0

    .line 31
    move-object v0, p0

    .line 32
    invoke-static/range {v0 .. v6}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->X(Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;Ljava/lang/String;[Lkotlin/Pair;ZZILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public abstract p1(Lteam/opay/pay/kyc/base/BasicInfoReq;Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)V
    .param p1    # Lteam/opay/pay/kyc/base/BasicInfoReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final t1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljza;

    .line 6
    .line 7
    iget-object v0, v0, Ljza;->m:Lt1b;

    .line 8
    .line 9
    invoke-virtual {v0}, Lt1b;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "getRoot(...)"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljza;

    .line 30
    .line 31
    iget-object v0, v0, Ljza;->m:Lt1b;

    .line 32
    .line 33
    invoke-virtual {v0}, Lt1b;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void
.end method
