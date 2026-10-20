.class public final Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;
.super Lteam/opay/pay/kyc/base/AbstractKycViewModel;
.source "KycVerifyInformationViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0017\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0019\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0015\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\n0\rH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\'\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\r\u0010\u0016\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\r\u0010\u0018\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0018\u0010\u0017J\u0015\u0010\u001a\u001a\u00020\u00192\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\r\u0010\u001c\u001a\u00020\u0019\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0013\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\r\u00a2\u0006\u0004\u0008\u001f\u0010\u000fJ\r\u0010 \u001a\u00020\u0008\u00a2\u0006\u0004\u0008 \u0010\u0017J\r\u0010!\u001a\u00020\u0008\u00a2\u0006\u0004\u0008!\u0010\u0017J\r\u0010#\u001a\u00020\"\u00a2\u0006\u0004\u0008#\u0010$J\u0015\u0010\'\u001a\u00020\u00132\u0006\u0010&\u001a\u00020%\u00a2\u0006\u0004\u0008\'\u0010(J\r\u0010)\u001a\u00020\u0008\u00a2\u0006\u0004\u0008)\u0010\u0017J%\u0010/\u001a\u00020\u00132\u0006\u0010+\u001a\u00020*2\u0006\u0010-\u001a\u00020,2\u0006\u0010.\u001a\u00020\u0008\u00a2\u0006\u0004\u0008/\u00100R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00081\u00102R$\u0010:\u001a\u0004\u0018\u0001038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00084\u00105\u001a\u0004\u00086\u00107\"\u0004\u00088\u00109R$\u0010B\u001a\u0004\u0018\u00010;8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008<\u0010=\u001a\u0004\u0008>\u0010?\"\u0004\u0008@\u0010AR$\u0010H\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008C\u0010D\u001a\u0004\u0008E\u0010\u0017\"\u0004\u0008F\u0010GR\u001d\u0010O\u001a\u0008\u0012\u0004\u0012\u00020J0I8\u0006\u00a2\u0006\u000c\n\u0004\u0008K\u0010L\u001a\u0004\u0008M\u0010NR\u001d\u0010R\u001a\u0008\u0012\u0004\u0012\u00020\u00080I8\u0006\u00a2\u0006\u000c\n\u0004\u0008P\u0010L\u001a\u0004\u0008Q\u0010NR\u001d\u0010V\u001a\u0008\u0012\u0004\u0012\u00020S0I8\u0006\u00a2\u0006\u000c\n\u0004\u0008T\u0010L\u001a\u0004\u0008U\u0010NR\u001d\u0010Y\u001a\u0008\u0012\u0004\u0012\u00020\u00080I8\u0006\u00a2\u0006\u000c\n\u0004\u0008W\u0010L\u001a\u0004\u0008X\u0010NR\u001d\u0010\\\u001a\u0008\u0012\u0004\u0012\u00020\u00080I8\u0006\u00a2\u0006\u000c\n\u0004\u0008Z\u0010L\u001a\u0004\u0008[\u0010NR$\u0010c\u001a\u0004\u0018\u00010\u001e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008]\u0010^\u001a\u0004\u0008_\u0010`\"\u0004\u0008a\u0010bR$\u0010i\u001a\u0004\u0018\u00010\"8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008d\u0010e\u001a\u0004\u0008f\u0010$\"\u0004\u0008g\u0010h\u00a8\u0006j"
    }
    d2 = {
        "Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;",
        "Lteam/opay/pay/kyc/base/AbstractKycViewModel;",
        "Landroid/app/Application;",
        "app",
        "Lteam/opay/pay/kyc/base/KycSceneRepository;",
        "kycSceneRepository",
        "<init>",
        "(Landroid/app/Application;Lteam/opay/pay/kyc/base/KycSceneRepository;)V",
        "",
        "itemName",
        "Lteam/opay/pay/kyc/base/PersonalItemControl;",
        "E",
        "(Ljava/lang/String;)Lteam/opay/pay/kyc/base/PersonalItemControl;",
        "",
        "J",
        "()Ljava/util/List;",
        "scene",
        "code",
        "msg",
        "",
        "B",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "O",
        "()Ljava/lang/String;",
        "M",
        "",
        "b0",
        "(Ljava/lang/String;)Z",
        "T",
        "()Z",
        "Lteam/opay/pay/kyc/base/KycNameVo;",
        "L",
        "I",
        "S",
        "Ljava/util/Calendar;",
        "R",
        "()Ljava/util/Calendar;",
        "Ljava/util/Date;",
        "date",
        "Z",
        "(Ljava/util/Date;)V",
        "H",
        "Lteam/opay/pay/kyc/base/BasicInfoReq;",
        "request",
        "Lag8;",
        "lifecycleOwner",
        "pageName",
        "U",
        "(Lteam/opay/pay/kyc/base/BasicInfoReq;Lag8;Ljava/lang/String;)V",
        "i",
        "Lteam/opay/pay/kyc/base/KycSceneRepository;",
        "Lteam/opay/pay/kyc/base/KycTaskNode;",
        "j",
        "Lteam/opay/pay/kyc/base/KycTaskNode;",
        "getTaskNode",
        "()Lteam/opay/pay/kyc/base/KycTaskNode;",
        "a0",
        "(Lteam/opay/pay/kyc/base/KycTaskNode;)V",
        "taskNode",
        "",
        "k",
        "Ljava/lang/Long;",
        "P",
        "()Ljava/lang/Long;",
        "X",
        "(Ljava/lang/Long;)V",
        "recordId",
        "l",
        "Ljava/lang/String;",
        "D",
        "W",
        "(Ljava/lang/String;)V",
        "bizSecurityId",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;",
        "m",
        "Landroidx/lifecycle/MutableLiveData;",
        "C",
        "()Landroidx/lifecycle/MutableLiveData;",
        "basicInfoLiveData",
        "n",
        "G",
        "dobTotalErrorEvent",
        "Lteam/opay/pay/kyc/base/dialog/DobErrorInfo;",
        "o",
        "F",
        "dobPartErrorEvent",
        "p",
        "N",
        "phoneNumberErrorEvent",
        "q",
        "K",
        "nameErrorEvent",
        "r",
        "Lteam/opay/pay/kyc/base/KycNameVo;",
        "Q",
        "()Lteam/opay/pay/kyc/base/KycNameVo;",
        "Y",
        "(Lteam/opay/pay/kyc/base/KycNameVo;)V",
        "selectNameVo",
        "s",
        "Ljava/util/Calendar;",
        "getSelectCalendar",
        "setSelectCalendar",
        "(Ljava/util/Calendar;)V",
        "selectCalendar",
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

.field public j:Lteam/opay/pay/kyc/base/KycTaskNode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public k:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public l:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final m:Landroidx/lifecycle/MutableLiveData;
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

.field public final n:Landroidx/lifecycle/MutableLiveData;
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
            "Lteam/opay/pay/kyc/base/dialog/DobErrorInfo;",
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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final q:Landroidx/lifecycle/MutableLiveData;
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

.field public r:Lteam/opay/pay/kyc/base/KycNameVo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public s:Ljava/util/Calendar;
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
    iput-object p2, p0, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->i:Lteam/opay/pay/kyc/base/KycSceneRepository;

    .line 15
    .line 16
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 17
    .line 18
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    .line 22
    .line 23
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 24
    .line 25
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->n:Landroidx/lifecycle/MutableLiveData;

    .line 29
    .line 30
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->o:Landroidx/lifecycle/MutableLiveData;

    .line 36
    .line 37
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 38
    .line 39
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    .line 43
    .line 44
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 45
    .line 46
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->q:Landroidx/lifecycle/MutableLiveData;

    .line 50
    .line 51
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;Lteam/opay/pay/kyc/base/BasicInfoReq;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->V(Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;Lteam/opay/pay/kyc/base/BasicInfoReq;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final E(Ljava/lang/String;)Lteam/opay/pay/kyc/base/PersonalItemControl;
    .locals 3

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->J()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    move-object v2, v1

    .line 20
    check-cast v2, Lteam/opay/pay/kyc/base/PersonalItemControl;

    .line 21
    .line 22
    invoke-virtual {v2}, Lteam/opay/pay/kyc/base/PersonalItemControl;->getItemName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v1, 0x0

    .line 34
    :goto_0
    check-cast v1, Lteam/opay/pay/kyc/base/PersonalItemControl;

    .line 35
    .line 36
    return-object v1
.end method

.method private final J()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/pay/kyc/base/PersonalItemControl;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->j:Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycTaskNode;->getItemControlList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_1
    return-object v0
.end method

.method public static final V(Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;Lteam/opay/pay/kyc/base/BasicInfoReq;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 10

    if-nez p3, :cond_0

    .line 1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycViewModel;->v()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    move-result-object v1

    sget-object v2, Lteam/opay/core/android/arch/Status;->LOADING:Lteam/opay/core/android/arch/Status;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    move-result-object v0

    sget-object v1, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v4, :cond_16

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 4
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    goto/16 :goto_7

    .line 5
    :cond_2
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v3, ""

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    const-string v1, "02522"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_6

    .line 6
    :cond_3
    iget-object p2, p0, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->q:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    move-object v0, v3

    :cond_4
    invoke-virtual {p2, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/BasicInfoReq;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_5

    move-object p2, v3

    :cond_5
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_6

    goto :goto_1

    :cond_6
    move-object v3, p3

    :goto_1
    invoke-virtual {p0, p1, p2, v3}, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 8
    :pswitch_1
    const-string v1, "02521"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_6

    .line 9
    :cond_7
    iget-object p2, p0, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    move-object v0, v3

    :cond_8
    invoke-virtual {p2, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/BasicInfoReq;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_9

    move-object p2, v3

    :cond_9
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_a

    goto :goto_2

    :cond_a
    move-object v3, p3

    :goto_2
    invoke-virtual {p0, p1, p2, v3}, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 11
    :pswitch_2
    const-string v2, "02520"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 12
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/BasicInfoReq;->a()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_b

    move-object p2, v3

    .line 13
    :cond_b
    iget-object v0, p0, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->j:Lteam/opay/pay/kyc/base/KycTaskNode;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycTaskNode;->getChannelVerifyDob()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_c
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_d

    move-object v0, v3

    .line 14
    :cond_d
    sget-object v2, Lteam/opay/pay/kyc/a;->a:Lteam/opay/pay/kyc/a;

    invoke-virtual {v2, p2, v0, v4}, Lteam/opay/pay/kyc/a;->r(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    .line 15
    invoke-virtual {v2, p2, v0, v1}, Lteam/opay/pay/kyc/a;->r(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_e

    add-int/lit8 v4, v4, 0x1

    :cond_e
    const/4 v5, 0x5

    .line 16
    invoke-virtual {v2, p2, v0, v5}, Lteam/opay/pay/kyc/a;->r(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_f

    add-int/lit8 v4, v4, 0x1

    :cond_f
    if-ge v4, v1, :cond_11

    .line 17
    iget-object p2, p0, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->n:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    move-object v0, v3

    :cond_10
    invoke-virtual {p2, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_4

    .line 18
    :cond_11
    iget-object v1, p0, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->o:Landroidx/lifecycle/MutableLiveData;

    .line 19
    new-instance v2, Lteam/opay/pay/kyc/base/dialog/DobErrorInfo;

    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->H()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_12

    move-object v5, v3

    :cond_12
    invoke-direct {v2, v4, p2, v0, v5}, Lteam/opay/pay/kyc/base/dialog/DobErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 21
    :goto_4
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/BasicInfoReq;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_13

    move-object p2, v3

    :cond_13
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_14

    goto :goto_5

    :cond_14
    move-object v3, p3

    :goto_5
    invoke-virtual {p0, p1, p2, v3}, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 22
    :cond_15
    :goto_6
    new-instance v0, Lteam/opay/pay/kyc/base/ErrorMsg;

    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lteam/opay/pay/kyc/base/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 23
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/BasicInfoReq;->b()Ljava/lang/String;

    move-result-object p1

    .line 24
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_ID_VERIFY"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 25
    invoke-virtual {p0, v0, p1, p2}, Lteam/opay/pay/kyc/base/AbstractKycViewModel;->x(Lteam/opay/pay/kyc/base/ErrorMsg;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 26
    :cond_16
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;

    if-eqz p1, :cond_19

    .line 27
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;->getErrInfos()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_17

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_18

    :cond_17
    const/4 v3, 0x1

    :cond_18
    if-eqz v3, :cond_19

    .line 28
    iget-object p0, p0, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 29
    :cond_19
    :goto_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2bbeff1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "pagename"

    .line 2
    .line 3
    const-string v1, "FILL_BASIC_INFO_ID_VERIFY"

    .line 4
    .line 5
    invoke-static {v0, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "code"

    .line 10
    .line 11
    invoke-static {v1, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    const-string v1, "msg"

    .line 16
    .line 17
    invoke-static {v1, p3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    const/4 v1, 0x3

    .line 22
    new-array v1, v1, [Lkotlin/Pair;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    aput-object v0, v1, v2

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    aput-object p2, v1, v0

    .line 29
    .line 30
    const/4 p2, 0x2

    .line 31
    aput-object p3, v1, p2

    .line 32
    .line 33
    const-string p2, "sevrice_error_show"

    .line 34
    .line 35
    invoke-virtual {p0, p2, p1, v1}, Lteam/opay/pay/kyc/base/AbstractKycViewModel;->y(Ljava/lang/String;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final C()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final D()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->l:Ljava/lang/String;

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
            "Lteam/opay/pay/kyc/base/dialog/DobErrorInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->o:Landroidx/lifecycle/MutableLiveData;

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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->n:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final H()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->j:Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycTaskNode;->getIdType()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :cond_0
    const-string v0, "BVN/NIN"

    .line 12
    .line 13
    :cond_1
    return-object v0
.end method

.method public final I()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public final K()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->q:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final L()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/pay/kyc/base/KycNameVo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->j:Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycTaskNode;->getNameVoList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_1
    return-object v0
.end method

.method public final M()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->j:Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycTaskNode;->getChannelVerifyMobile()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    const-string v1, ""

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    move-object v0, v1

    .line 16
    :cond_1
    invoke-static {v0}, Lxob;->v(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/16 v3, 0xa

    .line 25
    .line 26
    if-lt v2, v3, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    add-int/lit8 v1, v1, -0x4

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    :cond_2
    return-object v1
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
    iget-object v0, p0, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final O()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->j:Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycTaskNode;->getChannelVerifyMobile()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    const-string v1, ""

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    move-object v0, v1

    .line 16
    :cond_1
    invoke-static {v0}, Lxob;->v(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/16 v3, 0xa

    .line 25
    .line 26
    if-lt v2, v3, :cond_2

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    const/4 v2, 0x2

    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    :cond_2
    return-object v1
.end method

.method public final P()Ljava/lang/Long;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->k:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Q()Lteam/opay/pay/kyc/base/KycNameVo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->r:Lteam/opay/pay/kyc/base/KycNameVo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final R()Ljava/util/Calendar;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->s:Ljava/util/Calendar;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lteam/opay/pay/kyc/a;->a:Lteam/opay/pay/kyc/a;

    .line 6
    .line 7
    invoke-virtual {v0}, Lteam/opay/pay/kyc/a;->h()Ljava/util/Calendar;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    return-object v0
.end method

.method public final S()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->j:Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycTaskNode;->getTaskId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-nez v0, :cond_1

    .line 12
    .line 13
    const-string v0, ""

    .line 14
    .line 15
    :cond_1
    return-object v0
.end method

.method public final T()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->j:Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycTaskNode;->getChannelVerifyMobile()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-nez v0, :cond_1

    .line 12
    .line 13
    const-string v0, ""

    .line 14
    .line 15
    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-lez v0, :cond_2

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_1

    .line 23
    :cond_2
    const/4 v0, 0x0

    .line 24
    :goto_1
    return v0
.end method

.method public final U(Lteam/opay/pay/kyc/base/BasicInfoReq;Lag8;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lteam/opay/pay/kyc/base/BasicInfoReq;
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
    iget-object v0, p0, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->i:Lteam/opay/pay/kyc/base/KycSceneRepository;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lteam/opay/pay/kyc/base/KycSceneRepository;->h(Lteam/opay/pay/kyc/base/BasicInfoReq;)Landroidx/lifecycle/LiveData;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Lp88;

    .line 23
    .line 24
    invoke-direct {v1, p0, p1, p3}, Lp88;-><init>(Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;Lteam/opay/pay/kyc/base/BasicInfoReq;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p2, v1}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final W(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final X(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->k:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final Y(Lteam/opay/pay/kyc/base/KycNameVo;)V
    .locals 0
    .param p1    # Lteam/opay/pay/kyc/base/KycNameVo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->r:Lteam/opay/pay/kyc/base/KycNameVo;

    .line 2
    .line 3
    return-void
.end method

.method public final Z(Ljava/util/Date;)V
    .locals 1
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "date"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->s:Ljava/util/Calendar;

    .line 14
    .line 15
    return-void
.end method

.method public final a0(Lteam/opay/pay/kyc/base/KycTaskNode;)V
    .locals 0
    .param p1    # Lteam/opay/pay/kyc/base/KycTaskNode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->j:Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 2
    .line 3
    return-void
.end method

.method public final b0(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "itemName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lteam/opay/pay/kyc/base/KycVerifyInformationViewModel;->E(Ljava/lang/String;)Lteam/opay/pay/kyc/base/PersonalItemControl;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/PersonalItemControl;->getCanShow()Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x1

    .line 24
    :goto_0
    return p1
.end method
