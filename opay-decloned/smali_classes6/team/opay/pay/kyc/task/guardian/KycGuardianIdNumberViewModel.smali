.class public final Lteam/opay/pay/kyc/task/guardian/KycGuardianIdNumberViewModel;
.super Lteam/opay/pay/kyc/base/AbstractKycViewModel;
.source "KycGuardianIdNumberViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/kyc/task/guardian/KycGuardianIdNumberViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J1\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u001d\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u00168\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001bR$\u0010$\u001a\u0004\u0018\u00010\u001d8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R(\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u001d0%8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+\u00a8\u0006-"
    }
    d2 = {
        "Lteam/opay/pay/kyc/task/guardian/KycGuardianIdNumberViewModel;",
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
        "deleteIdType",
        "",
        "E",
        "(Lag8;Ljava/lang/String;Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;Ljava/lang/String;)V",
        "i",
        "Landroid/app/Application;",
        "Lcv7;",
        "j",
        "Lcv7;",
        "api",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;",
        "k",
        "Landroidx/lifecycle/MutableLiveData;",
        "C",
        "()Landroidx/lifecycle/MutableLiveData;",
        "verifyIdNumberSuccessEvent",
        "Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;",
        "l",
        "Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;",
        "B",
        "()Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;",
        "D",
        "(Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;)V",
        "checkedIdItem",
        "",
        "m",
        "Ljava/util/List;",
        "getSupportIdTypes",
        "()Ljava/util/List;",
        "setSupportIdTypes",
        "(Ljava/util/List;)V",
        "supportIdTypes",
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

.field public l:Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;",
            ">;"
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
    invoke-direct {p0, p1}, Lteam/opay/pay/kyc/base/AbstractKycViewModel;-><init>(Landroid/app/Application;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianIdNumberViewModel;->i:Landroid/app/Application;

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
    iput-object p1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianIdNumberViewModel;->j:Lcv7;

    .line 22
    .line 23
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 24
    .line 25
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianIdNumberViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    .line 29
    .line 30
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianIdNumberViewModel;->m:Ljava/util/List;

    .line 35
    .line 36
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/kyc/task/guardian/KycGuardianIdNumberViewModel;Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/kyc/task/guardian/KycGuardianIdNumberViewModel;->F(Lteam/opay/pay/kyc/task/guardian/KycGuardianIdNumberViewModel;Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final F(Lteam/opay/pay/kyc/task/guardian/KycGuardianIdNumberViewModel;Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 6

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
    sget-object v1, Lteam/opay/pay/kyc/task/guardian/KycGuardianIdNumberViewModel$a;->a:[I

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
    const/4 p1, 0x2

    .line 37
    if-eq v0, p1, :cond_1

    .line 38
    .line 39
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycViewModel;->t()Landroidx/lifecycle/MutableLiveData;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    new-instance p1, Lteam/opay/pay/kyc/base/ErrorMsg;

    .line 48
    .line 49
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const/4 v4, 0x4

    .line 58
    const/4 v5, 0x0

    .line 59
    const/4 v3, 0x0

    .line 60
    move-object v0, p1

    .line 61
    invoke-direct/range {v0 .. v5}, Lteam/opay/pay/kyc/base/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    check-cast p3, Lteam/opay/pay/kyc/customer/GuardianIdNumberRsp;

    .line 73
    .line 74
    if-eqz p3, :cond_3

    .line 75
    .line 76
    invoke-virtual {p1, p2}, Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;->l(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object p0, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianIdNumberViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    .line 80
    .line 81
    invoke-virtual {p0, p3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    :cond_3
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 85
    .line 86
    return-object p0
.end method


# virtual methods
.method public final B()Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianIdNumberViewModel;->l:Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;

    .line 2
    .line 3
    return-object v0
.end method

.method public final C()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianIdNumberViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final D(Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;)V
    .locals 0
    .param p1    # Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianIdNumberViewModel;->l:Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;

    .line 2
    .line 3
    return-void
.end method

.method public final E(Lag8;Ljava/lang/String;Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;Ljava/lang/String;)V
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
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v13, p2

    .line 6
    .line 7
    move-object/from16 v14, p3

    .line 8
    .line 9
    const-string v2, "lifecycleOwner"

    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v2, "idNumber"

    .line 15
    .line 16
    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v2, "guardianInfo"

    .line 20
    .line 21
    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v15, v0, Lteam/opay/pay/kyc/task/guardian/KycGuardianIdNumberViewModel;->j:Lcv7;

    .line 25
    .line 26
    new-instance v12, Lteam/opay/pay/kyc/customer/GuardianIdNumberReq;

    .line 27
    .line 28
    invoke-virtual/range {p3 .. p3}, Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;->d()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual/range {p3 .. p3}, Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;->g()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual/range {p3 .. p3}, Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;->f()Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual/range {p3 .. p3}, Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;->e()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    invoke-virtual/range {p3 .. p3}, Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;->b()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    if-nez v2, :cond_0

    .line 49
    .line 50
    const-string v2, ""

    .line 51
    .line 52
    :cond_0
    move-object v7, v2

    .line 53
    const/16 v11, 0x80

    .line 54
    .line 55
    const/16 v16, 0x0

    .line 56
    .line 57
    const/4 v10, 0x0

    .line 58
    move-object v2, v12

    .line 59
    move-object/from16 v8, p2

    .line 60
    .line 61
    move-object/from16 v9, p4

    .line 62
    .line 63
    move-object v1, v12

    .line 64
    move-object/from16 v12, v16

    .line 65
    .line 66
    invoke-direct/range {v2 .. v12}, Lteam/opay/pay/kyc/customer/GuardianIdNumberReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 67
    .line 68
    .line 69
    invoke-interface {v15, v1}, Lcv7;->D(Lteam/opay/pay/kyc/customer/GuardianIdNumberReq;)Lretrofit2/Call;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {v1, v0}, Lkpc;->a(Lretrofit2/Call;Landroidx/lifecycle/AndroidViewModel;)Landroidx/lifecycle/LiveData;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    new-instance v2, Lgz7;

    .line 78
    .line 79
    invoke-direct {v2, v0, v14, v13}, Lgz7;-><init>(Lteam/opay/pay/kyc/task/guardian/KycGuardianIdNumberViewModel;Lteam/opay/pay/kyc/customer/InputGuardianInfoReq;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    move-object/from16 v3, p1

    .line 83
    .line 84
    invoke-static {v1, v3, v2}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method
