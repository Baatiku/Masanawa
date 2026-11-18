.class public final Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;
.super Lteam/opay/pay/kyc/base/AbstractKycViewModel;
.source "AbstractSetIdNumberViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel$Companion;,
        Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 o2\u00020\u0001:\u0001pB\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J%\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0010\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0012\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J%\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u001d\u0010!\u001a\u00020\u00082\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020\u0008\u00a2\u0006\u0004\u0008!\u0010\"J5\u0010\'\u001a\u00020\u001b2\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010$\u001a\u00020#2\u0006\u0010%\u001a\u00020\u00082\u0006\u0010&\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\'\u0010(J\u0015\u0010)\u001a\u00020\u001b2\u0006\u0010\u0019\u001a\u00020\u0018\u00a2\u0006\u0004\u0008)\u0010*R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008-\u0010.R\u001b\u00104\u001a\u00020/8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00080\u00101\u001a\u0004\u00082\u00103R\u0014\u00108\u001a\u0002058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00086\u00107R\u001d\u0010?\u001a\u0008\u0012\u0004\u0012\u00020:098\u0006\u00a2\u0006\u000c\n\u0004\u0008;\u0010<\u001a\u0004\u0008=\u0010>R\u001d\u0010C\u001a\u0008\u0012\u0004\u0012\u00020@098\u0006\u00a2\u0006\u000c\n\u0004\u0008A\u0010<\u001a\u0004\u0008B\u0010>R$\u0010J\u001a\u0004\u0018\u00010:8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008D\u0010E\u001a\u0004\u0008F\u0010G\"\u0004\u0008H\u0010IR\u001d\u0010M\u001a\u0008\u0012\u0004\u0012\u00020\u001b098\u0006\u00a2\u0006\u000c\n\u0004\u0008K\u0010<\u001a\u0004\u0008L\u0010>R\"\u0010%\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008N\u0010O\u001a\u0004\u0008P\u0010Q\"\u0004\u0008R\u0010SR$\u0010[\u001a\u0004\u0018\u00010T8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008U\u0010V\u001a\u0004\u0008W\u0010X\"\u0004\u0008Y\u0010ZR\"\u0010_\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\\\u0010O\u001a\u0004\u0008]\u0010Q\"\u0004\u0008^\u0010SR\"\u0010c\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008`\u0010O\u001a\u0004\u0008a\u0010Q\"\u0004\u0008b\u0010SR/\u0010g\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0008\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u000c0d098\u0006\u00a2\u0006\u000c\n\u0004\u0008e\u0010<\u001a\u0004\u0008f\u0010>R\u001d\u0010j\u001a\u0008\u0012\u0004\u0012\u00020:098\u0006\u00a2\u0006\u000c\n\u0004\u0008h\u0010<\u001a\u0004\u0008i\u0010>R!\u0010n\u001a\u0008\u0012\u0004\u0012\u00020k098FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008l\u00101\u001a\u0004\u0008m\u0010>\u00a8\u0006q"
    }
    d2 = {
        "Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;",
        "Lteam/opay/pay/kyc/base/AbstractKycViewModel;",
        "Landroid/app/Application;",
        "app",
        "Lteam/opay/pay/kyc/base/KycSceneRepository;",
        "kycSceneRepository",
        "<init>",
        "(Landroid/app/Application;Lteam/opay/pay/kyc/base/KycSceneRepository;)V",
        "",
        "idTypeCode",
        "Lteam/opay/pay/kyc/customer/CertMethodRsp;",
        "rsp",
        "",
        "Lteam/opay/pay/kyc/upgrade2/task/ForgotIdItem;",
        "g0",
        "(Ljava/lang/String;Lteam/opay/pay/kyc/customer/CertMethodRsp;)Ljava/util/List;",
        "Q",
        "(Lteam/opay/pay/kyc/customer/CertMethodRsp;)Lteam/opay/pay/kyc/upgrade2/task/ForgotIdItem;",
        "Y",
        "(Ljava/lang/String;)Lteam/opay/pay/kyc/upgrade2/task/ForgotIdItem;",
        "I",
        "()Lteam/opay/pay/kyc/upgrade2/task/ForgotIdItem;",
        "Lteam/opay/pay/kyc/base/IdNumberVerifyReq;",
        "request",
        "Lag8;",
        "lifecycleOwner",
        "pageName",
        "",
        "Z",
        "(Lteam/opay/pay/kyc/base/IdNumberVerifyReq;Lag8;Ljava/lang/String;)V",
        "Landroid/content/Context;",
        "context",
        "idType",
        "N",
        "(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;",
        "",
        "taskRecordId",
        "channel",
        "registerType",
        "b0",
        "(Lag8;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V",
        "S",
        "(Lag8;)V",
        "i",
        "Landroid/app/Application;",
        "j",
        "Lteam/opay/pay/kyc/base/KycSceneRepository;",
        "Lfv;",
        "k",
        "Lid8;",
        "H",
        "()Lfv;",
        "apiService",
        "Lcv7;",
        "l",
        "Lcv7;",
        "api",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;",
        "m",
        "Landroidx/lifecycle/MutableLiveData;",
        "R",
        "()Landroidx/lifecycle/MutableLiveData;",
        "photoComparison",
        "Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;",
        "n",
        "U",
        "resultDialogEvent",
        "o",
        "Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;",
        "M",
        "()Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;",
        "setIdNumberVerifyRsp",
        "(Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)V",
        "idNumberVerifyRsp",
        "p",
        "W",
        "showIdNumberConfirmDialogEvent",
        "q",
        "Ljava/lang/String;",
        "K",
        "()Ljava/lang/String;",
        "setChannel",
        "(Ljava/lang/String;)V",
        "Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;",
        "r",
        "Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;",
        "V",
        "()Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;",
        "f0",
        "(Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;)V",
        "selectIdTypeData",
        "s",
        "O",
        "d0",
        "lastCurrenPageBVNNumber",
        "t",
        "P",
        "e0",
        "lastCurrentPageNINNumber",
        "Lkotlin/Pair;",
        "u",
        "L",
        "findSuccessEvent",
        "v",
        "X",
        "successRspEvent",
        "Lteam/opay/odialog/net/AdDataItem;",
        "w",
        "J",
        "buttonAdDataEvent",
        "x",
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
.field public static final x:Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final i:Landroid/app/Application;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lteam/opay/pay/kyc/base/KycSceneRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Lcv7;
    .annotation build Lorg/jetbrains/annotations/NotNull;
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
            "Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public o:Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final p:Landroidx/lifecycle/MutableLiveData;
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

.field public q:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public r:Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public s:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public t:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final u:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lteam/opay/pay/kyc/upgrade2/task/ForgotIdItem;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final v:Landroidx/lifecycle/MutableLiveData;
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

.field public final w:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->x:Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel$Companion;

    .line 8
    .line 9
    return-void
.end method

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
    iput-object p1, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->i:Landroid/app/Application;

    .line 15
    .line 16
    iput-object p2, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->j:Lteam/opay/pay/kyc/base/KycSceneRepository;

    .line 17
    .line 18
    new-instance p2, Lv5;

    .line 19
    .line 20
    invoke-direct {p2, p0}, Lv5;-><init>(Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p2}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    iput-object p2, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->k:Lid8;

    .line 28
    .line 29
    sget-object p2, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 30
    .line 31
    const-class v0, Lcv7;

    .line 32
    .line 33
    invoke-virtual {p2, p1, v0}, Lteam/opay/core/api/GraphQL;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lcv7;

    .line 38
    .line 39
    iput-object p1, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->l:Lcv7;

    .line 40
    .line 41
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 42
    .line 43
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    .line 47
    .line 48
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 49
    .line 50
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->n:Landroidx/lifecycle/MutableLiveData;

    .line 54
    .line 55
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 56
    .line 57
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    .line 61
    .line 62
    const-string p1, ""

    .line 63
    .line 64
    iput-object p1, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->q:Ljava/lang/String;

    .line 65
    .line 66
    iput-object p1, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->s:Ljava/lang/String;

    .line 67
    .line 68
    iput-object p1, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->t:Ljava/lang/String;

    .line 69
    .line 70
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 71
    .line 72
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object p1, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->u:Landroidx/lifecycle/MutableLiveData;

    .line 76
    .line 77
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 78
    .line 79
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 80
    .line 81
    .line 82
    iput-object p1, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->v:Landroidx/lifecycle/MutableLiveData;

    .line 83
    .line 84
    new-instance p1, Lw5;

    .line 85
    .line 86
    invoke-direct {p1}, Lw5;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iput-object p1, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->w:Lid8;

    .line 94
    .line 95
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->T(Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B(Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->c0(Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->G()Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic D(Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;)Lfv;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->F(Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;)Lfv;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic E(Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;Lteam/opay/pay/kyc/base/IdNumberVerifyReq;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->a0(Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;Lteam/opay/pay/kyc/base/IdNumberVerifyReq;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final F(Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;)Lfv;
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 2
    .line 3
    iget-object p0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->i:Landroid/app/Application;

    .line 4
    .line 5
    const-class v1, Lfv;

    .line 6
    .line 7
    invoke-virtual {v0, p0, v1}, Lteam/opay/core/api/GraphQL;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lfv;

    .line 12
    .line 13
    return-object p0
.end method

.method public static final G()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final H()Lfv;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->k:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lfv;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final T(Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v1, v0

    .line 10
    :goto_0
    sget-object v2, Lteam/opay/core/android/arch/Status;->SUCCESS:Lteam/opay/core/android/arch/Status;

    .line 11
    .line 12
    if-ne v1, v2, :cond_2

    .line 13
    .line 14
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lteam/opay/odialog/net/ADListResponse;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Lteam/opay/odialog/net/ADListResponse;->getAds()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lteam/opay/odialog/net/ADListItem;

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1}, Lteam/opay/odialog/net/ADListItem;->getAdList()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    move-object v0, p1

    .line 47
    check-cast v0, Lteam/opay/odialog/net/AdDataItem;

    .line 48
    .line 49
    :cond_1
    if-eqz v0, :cond_2

    .line 50
    .line 51
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->J()Landroidx/lifecycle/MutableLiveData;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 59
    .line 60
    return-object p0
.end method

.method public static final a0(Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;Lteam/opay/pay/kyc/base/IdNumberVerifyReq;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
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
    sget-object v4, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel$a;->a:[I

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
    goto/16 :goto_2

    .line 51
    .line 52
    :cond_2
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    const-string v4, "05060"

    .line 57
    .line 58
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_4

    .line 63
    .line 64
    iget-object v3, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    .line 65
    .line 66
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 67
    .line 68
    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/IdNumberVerifyReq;->getScene()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    const-string v3, "pagename"

    .line 76
    .line 77
    invoke-static {v3, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    const-string v3, "code"

    .line 82
    .line 83
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-static {v3, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p3

    .line 95
    if-nez p3, :cond_3

    .line 96
    .line 97
    const-string p3, ""

    .line 98
    .line 99
    :cond_3
    const-string v4, "msg"

    .line 100
    .line 101
    invoke-static {v4, p3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 102
    .line 103
    .line 104
    move-result-object p3

    .line 105
    const/4 v4, 0x3

    .line 106
    new-array v4, v4, [Lkotlin/Pair;

    .line 107
    .line 108
    aput-object p2, v4, v1

    .line 109
    .line 110
    aput-object v3, v4, v2

    .line 111
    .line 112
    aput-object p3, v4, v0

    .line 113
    .line 114
    const-string p2, "sevrice_error_show"

    .line 115
    .line 116
    invoke-virtual {p0, p2, p1, v4}, Lteam/opay/pay/kyc/base/AbstractKycViewModel;->y(Ljava/lang/String;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_4
    new-instance v0, Lteam/opay/pay/kyc/base/ErrorMsg;

    .line 121
    .line 122
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    const/4 v9, 0x4

    .line 131
    const/4 v10, 0x0

    .line 132
    const/4 v8, 0x0

    .line 133
    move-object v5, v0

    .line 134
    invoke-direct/range {v5 .. v10}, Lteam/opay/pay/kyc/base/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/IdNumberVerifyReq;->getScene()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {p0, v0, p1, p2}, Lteam/opay/pay/kyc/base/AbstractKycViewModel;->x(Lteam/opay/pay/kyc/base/ErrorMsg;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_5
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    check-cast p2, Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;

    .line 150
    .line 151
    if-eqz p2, :cond_8

    .line 152
    .line 153
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/IdNumberVerifyReq;->getIfErrContent()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p3

    .line 157
    const-string v0, "Y"

    .line 158
    .line 159
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result p3

    .line 163
    if-eqz p3, :cond_7

    .line 164
    .line 165
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/IdNumberVerifyReq;->getSupportGuardianTask()Z

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    if-eqz p1, :cond_7

    .line 170
    .line 171
    iput-object p2, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->o:Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;

    .line 172
    .line 173
    invoke-virtual {p2}, Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;->getDialogResponse()Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    if-eqz p1, :cond_6

    .line 178
    .line 179
    iget-object p3, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->n:Landroidx/lifecycle/MutableLiveData;

    .line 180
    .line 181
    invoke-virtual {p3, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_6
    iget-object p1, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    .line 186
    .line 187
    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    goto :goto_1

    .line 191
    :cond_7
    iget-object p1, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    .line 192
    .line 193
    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    :goto_1
    iget-object p0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->v:Landroidx/lifecycle/MutableLiveData;

    .line 197
    .line 198
    invoke-virtual {p0, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    :cond_8
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 202
    .line 203
    return-object p0
.end method

.method public static final c0(Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 10

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycViewModel;->v()Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->f()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sget-object v1, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel$a;->a:[I

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    aget v0, v1, v0

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    if-eq v0, v1, :cond_2

    .line 35
    .line 36
    const/4 p3, 0x2

    .line 37
    if-eq v0, p3, :cond_1

    .line 38
    .line 39
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object p3, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->u:Landroidx/lifecycle/MutableLiveData;

    .line 44
    .line 45
    new-instance v0, Lkotlin/Pair;

    .line 46
    .line 47
    new-instance v9, Lteam/opay/pay/kyc/customer/CertMethodRsp;

    .line 48
    .line 49
    const/16 v7, 0x1e

    .line 50
    .line 51
    const/4 v8, 0x0

    .line 52
    const-string v2, "USSD"

    .line 53
    .line 54
    const/4 v3, 0x0

    .line 55
    const/4 v4, 0x0

    .line 56
    const/4 v5, 0x0

    .line 57
    const/4 v6, 0x0

    .line 58
    move-object v1, v9

    .line 59
    invoke-direct/range {v1 .. v8}, Lteam/opay/pay/kyc/customer/CertMethodRsp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p2, v9}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->g0(Ljava/lang/String;Lteam/opay/pay/kyc/customer/CertMethodRsp;)Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-direct {v0, p1, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p3, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    check-cast p3, Lteam/opay/pay/kyc/customer/CertMethodRsp;

    .line 78
    .line 79
    if-eqz p3, :cond_3

    .line 80
    .line 81
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->u:Landroidx/lifecycle/MutableLiveData;

    .line 82
    .line 83
    new-instance v1, Lkotlin/Pair;

    .line 84
    .line 85
    invoke-virtual {p0, p2, p3}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->g0(Ljava/lang/String;Lteam/opay/pay/kyc/customer/CertMethodRsp;)Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-direct {v1, p1, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    :cond_3
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 96
    .line 97
    return-object p0
.end method


# virtual methods
.method public final I()Lteam/opay/pay/kyc/upgrade2/task/ForgotIdItem;
    .locals 15

    .line 1
    new-instance v6, Lteam/opay/pay/kyc/upgrade2/task/ForgotIdItem;

    .line 2
    .line 3
    sget v2, Lteam/opay/pay/R$mipmap;->osdk_ic_by_bank:I

    .line 4
    .line 5
    sget v0, Lteam/opay/pay/R$string;->osdk_forgot_select_bank_title:I

    .line 6
    .line 7
    invoke-static {v0}, Ljmf;->k(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    sget v0, Lteam/opay/pay/R$string;->osdk_forgot_select_bank_desc:I

    .line 12
    .line 13
    invoke-static {v0}, Ljmf;->k(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    new-instance v5, Lteam/opay/pay/kyc/customer/CertMethodRsp;

    .line 18
    .line 19
    const/16 v13, 0x1e

    .line 20
    .line 21
    const/4 v14, 0x0

    .line 22
    const-string v8, "BANKACCOUNT"

    .line 23
    .line 24
    const/4 v9, 0x0

    .line 25
    const/4 v10, 0x0

    .line 26
    const/4 v11, 0x0

    .line 27
    const/4 v12, 0x0

    .line 28
    move-object v7, v5

    .line 29
    invoke-direct/range {v7 .. v14}, Lteam/opay/pay/kyc/customer/CertMethodRsp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 30
    .line 31
    .line 32
    const/4 v1, 0x2

    .line 33
    move-object v0, v6

    .line 34
    invoke-direct/range {v0 .. v5}, Lteam/opay/pay/kyc/upgrade2/task/ForgotIdItem;-><init>(IILjava/lang/String;Ljava/lang/String;Lteam/opay/pay/kyc/customer/CertMethodRsp;)V

    .line 35
    .line 36
    .line 37
    return-object v6
.end method

.method public final J()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/odialog/net/AdDataItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->w:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    return-object v0
.end method

.method public final K()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->q:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final L()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lteam/opay/pay/kyc/upgrade2/task/ForgotIdItem;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->u:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final M()Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->o:Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;

    .line 2
    .line 3
    return-object v0
.end method

.method public final N(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
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
    const-string v0, "idType"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "BVN"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const-string v1, "getString(...)"

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    sget p2, Lteam/opay/pay/R$string;->osdk_bvn_detail:I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-string v0, "NIN"

    .line 32
    .line 33
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-eqz p2, :cond_1

    .line 38
    .line 39
    sget p2, Lteam/opay/pay/R$string;->osdk_nin_detail:I

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const-string p1, ""

    .line 50
    .line 51
    :goto_0
    return-object p1
.end method

.method public final O()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->s:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final P()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->t:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Q(Lteam/opay/pay/kyc/customer/CertMethodRsp;)Lteam/opay/pay/kyc/upgrade2/task/ForgotIdItem;
    .locals 7

    .line 1
    new-instance v6, Lteam/opay/pay/kyc/upgrade2/task/ForgotIdItem;

    .line 2
    .line 3
    sget v2, Lteam/opay/pay/R$mipmap;->osdk_ic_call_ussd:I

    .line 4
    .line 5
    sget v0, Lteam/opay/pay/R$string;->osdk_personal_info:I

    .line 6
    .line 7
    invoke-static {v0}, Ljmf;->k(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    sget v0, Lteam/opay/pay/R$string;->osdk_personal_info_content:I

    .line 12
    .line 13
    invoke-static {v0}, Ljmf;->k(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    const/4 v1, 0x3

    .line 18
    move-object v0, v6

    .line 19
    move-object v5, p1

    .line 20
    invoke-direct/range {v0 .. v5}, Lteam/opay/pay/kyc/upgrade2/task/ForgotIdItem;-><init>(IILjava/lang/String;Ljava/lang/String;Lteam/opay/pay/kyc/customer/CertMethodRsp;)V

    .line 21
    .line 22
    .line 23
    return-object v6
.end method

.method public final R()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final S(Lag8;)V
    .locals 4
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
    invoke-direct {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->H()Lfv;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lteam/opay/pay/api/AllAnnouncementReq;

    .line 11
    .line 12
    new-instance v2, Lteam/opay/pay/api/AnnouncementReq;

    .line 13
    .line 14
    const-string v3, "kyc_register_id_information"

    .line 15
    .line 16
    invoke-direct {v2, v3}, Lteam/opay/pay/api/AnnouncementReq;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-direct {v1, v2}, Lteam/opay/pay/api/AllAnnouncementReq;-><init>(Ljava/util/List;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v1}, Lfv;->H1(Lteam/opay/pay/api/AllAnnouncementReq;)Lretrofit2/Call;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "200"

    .line 31
    .line 32
    invoke-static {v0, p0, v1}, Lkpc;->d(Lretrofit2/Call;Landroidx/lifecycle/AndroidViewModel;Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Lu5;

    .line 37
    .line 38
    invoke-direct {v1, p0}, Lu5;-><init>(Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v0, p1, v1}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final U()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->n:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final V()Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->r:Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;

    .line 2
    .line 3
    return-object v0
.end method

.method public final W()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final X()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->v:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Y(Ljava/lang/String;)Lteam/opay/pay/kyc/upgrade2/task/ForgotIdItem;
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "NIN"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v2, "*346#"

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object v2, Lteam/opay/pay/kyc/upgrade2/task/Kyc2BvnConfig;->Companion:Lteam/opay/pay/kyc/upgrade2/task/Kyc2BvnConfig$Companion;

    .line 15
    .line 16
    invoke-virtual {v2}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2BvnConfig$Companion;->a()Lteam/opay/pay/kyc/upgrade2/task/Kyc2BvnConfig;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {v2}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2BvnConfig;->getBvnCallPhone()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-nez v2, :cond_2

    .line 27
    .line 28
    :cond_1
    const-string v2, "*565*0#"

    .line 29
    .line 30
    :cond_2
    :goto_0
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    sget v0, Lteam/opay/pay/R$string;->osdk_nin_call_content:I

    .line 37
    .line 38
    :goto_1
    invoke-static {v0}, Ljmf;->k(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    move-object v7, v0

    .line 43
    goto :goto_2

    .line 44
    :cond_3
    sget v0, Lteam/opay/pay/R$string;->osdk_bvn_call_content:I

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :goto_2
    new-instance v0, Lteam/opay/pay/kyc/upgrade2/task/ForgotIdItem;

    .line 48
    .line 49
    sget v5, Lteam/opay/pay/R$mipmap;->osdk_ic_call_ussd:I

    .line 50
    .line 51
    move-object/from16 v1, p0

    .line 52
    .line 53
    iget-object v3, v1, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->i:Landroid/app/Application;

    .line 54
    .line 55
    sget v4, Lteam/opay/pay/R$string;->osdk_forgot_select_ussd_title:I

    .line 56
    .line 57
    const/4 v6, 0x1

    .line 58
    new-array v6, v6, [Ljava/lang/Object;

    .line 59
    .line 60
    const/4 v8, 0x0

    .line 61
    aput-object v2, v6, v8

    .line 62
    .line 63
    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    const-string v2, "getString(...)"

    .line 68
    .line 69
    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    new-instance v2, Lteam/opay/pay/kyc/customer/CertMethodRsp;

    .line 73
    .line 74
    const/16 v14, 0x1e

    .line 75
    .line 76
    const/4 v15, 0x0

    .line 77
    const-string v9, "USSD"

    .line 78
    .line 79
    const/4 v10, 0x0

    .line 80
    const/4 v11, 0x0

    .line 81
    const/4 v12, 0x0

    .line 82
    const/4 v13, 0x0

    .line 83
    move-object v8, v2

    .line 84
    invoke-direct/range {v8 .. v15}, Lteam/opay/pay/kyc/customer/CertMethodRsp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 85
    .line 86
    .line 87
    const/4 v4, 0x1

    .line 88
    move-object v3, v0

    .line 89
    invoke-direct/range {v3 .. v8}, Lteam/opay/pay/kyc/upgrade2/task/ForgotIdItem;-><init>(IILjava/lang/String;Ljava/lang/String;Lteam/opay/pay/kyc/customer/CertMethodRsp;)V

    .line 90
    .line 91
    .line 92
    return-object v0
.end method

.method public final Z(Lteam/opay/pay/kyc/base/IdNumberVerifyReq;Lag8;Ljava/lang/String;)V
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
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->j:Lteam/opay/pay/kyc/base/KycSceneRepository;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lteam/opay/pay/kyc/base/KycSceneRepository;->g(Lteam/opay/pay/kyc/base/IdNumberVerifyReq;)Landroidx/lifecycle/LiveData;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Lx5;

    .line 23
    .line 24
    invoke-direct {v1, p0, p1, p3}, Lx5;-><init>(Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;Lteam/opay/pay/kyc/base/IdNumberVerifyReq;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p2, v1}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final b0(Lag8;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
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
    const-string v0, "idTypeCode"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "channel"

    .line 12
    .line 13
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "registerType"

    .line 17
    .line 18
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "recycled_number"

    .line 22
    .line 23
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p6

    .line 27
    if-eqz p6, :cond_0

    .line 28
    .line 29
    iget-object p1, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->u:Landroidx/lifecycle/MutableLiveData;

    .line 30
    .line 31
    new-instance p3, Lkotlin/Pair;

    .line 32
    .line 33
    new-instance p4, Lteam/opay/pay/kyc/customer/CertMethodRsp;

    .line 34
    .line 35
    const/16 v6, 0x1e

    .line 36
    .line 37
    const/4 v7, 0x0

    .line 38
    const-string v1, "USSD"

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    const/4 v3, 0x0

    .line 42
    const/4 v4, 0x0

    .line 43
    const/4 v5, 0x0

    .line 44
    move-object v0, p4

    .line 45
    invoke-direct/range {v0 .. v7}, Lteam/opay/pay/kyc/customer/CertMethodRsp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p2, p4}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->g0(Ljava/lang/String;Lteam/opay/pay/kyc/customer/CertMethodRsp;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-direct {p3, p5, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    new-instance p6, Lteam/opay/pay/kyc/customer/CertMethodReq;

    .line 60
    .line 61
    sget-object v0, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 62
    .line 63
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager;->u()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    new-instance v5, Lteam/opay/pay/kyc/customer/IdFoundInfo;

    .line 72
    .line 73
    const-string v0, "Forgot"

    .line 74
    .line 75
    invoke-direct {v5, v0, p2}, Lteam/opay/pay/kyc/customer/IdFoundInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const/4 v4, 0x0

    .line 79
    move-object v0, p6

    .line 80
    move-wide v2, p3

    .line 81
    invoke-direct/range {v0 .. v5}, Lteam/opay/pay/kyc/customer/CertMethodReq;-><init>(Ljava/lang/String;JZLteam/opay/pay/kyc/customer/IdFoundInfo;)V

    .line 82
    .line 83
    .line 84
    iget-object p3, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->l:Lcv7;

    .line 85
    .line 86
    invoke-interface {p3, p6}, Lcv7;->b(Lteam/opay/pay/kyc/customer/CertMethodReq;)Lretrofit2/Call;

    .line 87
    .line 88
    .line 89
    move-result-object p3

    .line 90
    invoke-static {p3, p0}, Lkpc;->a(Lretrofit2/Call;Landroidx/lifecycle/AndroidViewModel;)Landroidx/lifecycle/LiveData;

    .line 91
    .line 92
    .line 93
    move-result-object p3

    .line 94
    new-instance p4, Ly5;

    .line 95
    .line 96
    invoke-direct {p4, p0, p5, p2}, Ly5;-><init>(Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-static {p3, p1, p4}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 100
    .line 101
    .line 102
    :goto_0
    return-void
.end method

.method public final d0(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->s:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final e0(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->t:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final f0(Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;)V
    .locals 0
    .param p1    # Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->r:Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;

    .line 2
    .line 3
    return-void
.end method

.method public final g0(Ljava/lang/String;Lteam/opay/pay/kyc/customer/CertMethodRsp;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lteam/opay/pay/kyc/customer/CertMethodRsp;",
            ")",
            "Ljava/util/List<",
            "Lteam/opay/pay/kyc/upgrade2/task/ForgotIdItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "BVN"

    .line 7
    .line 8
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const-string v2, "USSD"

    .line 13
    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    invoke-virtual {p2}, Lteam/opay/pay/kyc/customer/CertMethodRsp;->getMethod()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p2}, Lteam/opay/pay/kyc/customer/CertMethodRsp;->getMethod()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v3, "BANKACCOUNT"

    .line 34
    .line 35
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    invoke-virtual {p2}, Lteam/opay/pay/kyc/customer/CertMethodRsp;->getMethod()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_1

    .line 50
    .line 51
    invoke-virtual {p0, p2}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->Q(Lteam/opay/pay/kyc/customer/CertMethodRsp;)Lteam/opay/pay/kyc/upgrade2/task/ForgotIdItem;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->Y(Ljava/lang/String;)Lteam/opay/pay/kyc/upgrade2/task/ForgotIdItem;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->I()Lteam/opay/pay/kyc/upgrade2/task/ForgotIdItem;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->Y(Ljava/lang/String;)Lteam/opay/pay/kyc/upgrade2/task/ForgotIdItem;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->I()Lteam/opay/pay/kyc/upgrade2/task/ForgotIdItem;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_2
    const-string v1, "NIN"

    .line 89
    .line 90
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_5

    .line 95
    .line 96
    invoke-virtual {p2}, Lteam/opay/pay/kyc/customer/CertMethodRsp;->getMethod()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    if-eqz v1, :cond_4

    .line 101
    .line 102
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-nez v1, :cond_3

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_3
    invoke-virtual {p2}, Lteam/opay/pay/kyc/customer/CertMethodRsp;->getMethod()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-nez v1, :cond_4

    .line 118
    .line 119
    invoke-virtual {p0, p2}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->Q(Lteam/opay/pay/kyc/customer/CertMethodRsp;)Lteam/opay/pay/kyc/upgrade2/task/ForgotIdItem;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->Y(Ljava/lang/String;)Lteam/opay/pay/kyc/upgrade2/task/ForgotIdItem;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_4
    :goto_1
    invoke-virtual {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->Y(Ljava/lang/String;)Lteam/opay/pay/kyc/upgrade2/task/ForgotIdItem;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_5
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 143
    .line 144
    .line 145
    :goto_2
    return-object v0
.end method
