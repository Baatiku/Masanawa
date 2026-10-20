.class public final Lteam/opay/pay/payment/bill/NativeBillPaymentViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "NativeBillPaymentViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u000f\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0019\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0019\u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u0008\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\u001d\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u001d\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00178\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001cR%\u0010\"\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010\u001e0\u00178\u0006\u00a2\u0006\u000c\n\u0004\u0008 \u0010\u001a\u001a\u0004\u0008!\u0010\u001cR\u0014\u0010&\u001a\u00020#8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008$\u0010%R\"\u0010.\u001a\u00020\'8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008(\u0010)\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R\"\u00105\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008/\u00100\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104\u00a8\u00066"
    }
    d2 = {
        "Lteam/opay/pay/payment/bill/NativeBillPaymentViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Landroid/app/Application;",
        "application",
        "Lteam/opay/pay/payment/bill/NativeBillPaymentRepository;",
        "repository",
        "<init>",
        "(Landroid/app/Application;Lteam/opay/pay/payment/bill/NativeBillPaymentRepository;)V",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/Resource;",
        "Lteam/opay/pay/payment/bill/MoreHomeData;",
        "w",
        "()Landroidx/lifecycle/LiveData;",
        "x",
        "Lag8;",
        "lifecycleOwner",
        "",
        "name",
        "",
        "t",
        "(Lag8;Ljava/lang/String;)V",
        "b",
        "Lteam/opay/pay/payment/bill/NativeBillPaymentRepository;",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "c",
        "Landroidx/lifecycle/MutableLiveData;",
        "v",
        "()Landroidx/lifecycle/MutableLiveData;",
        "billListLoadingEvent",
        "",
        "Lteam/opay/pay/payment/bill/BillListRsq;",
        "d",
        "s",
        "billList",
        "Lteam/opay/core/settings/SettingsStorage;",
        "e",
        "Lteam/opay/core/settings/SettingsStorage;",
        "storage",
        "",
        "f",
        "I",
        "getBillReqCount",
        "()I",
        "setBillReqCount",
        "(I)V",
        "billReqCount",
        "g",
        "Ljava/lang/String;",
        "getBillReqText",
        "()Ljava/lang/String;",
        "setBillReqText",
        "(Ljava/lang/String;)V",
        "billReqText",
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
.field public final b:Lteam/opay/pay/payment/bill/NativeBillPaymentRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Landroidx/lifecycle/MutableLiveData;
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

.field public final d:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lteam/opay/pay/payment/bill/BillListRsq;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lteam/opay/core/settings/SettingsStorage;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:I

.field public g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;Lteam/opay/pay/payment/bill/NativeBillPaymentRepository;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/payment/bill/NativeBillPaymentRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "application"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "repository"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lteam/opay/pay/payment/bill/NativeBillPaymentViewModel;->b:Lteam/opay/pay/payment/bill/NativeBillPaymentRepository;

    .line 15
    .line 16
    new-instance p2, Landroidx/lifecycle/MutableLiveData;

    .line 17
    .line 18
    invoke-direct {p2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p2, p0, Lteam/opay/pay/payment/bill/NativeBillPaymentViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    .line 22
    .line 23
    new-instance p2, Landroidx/lifecycle/MutableLiveData;

    .line 24
    .line 25
    invoke-direct {p2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p2, p0, Lteam/opay/pay/payment/bill/NativeBillPaymentViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    .line 29
    .line 30
    new-instance p2, Lteam/opay/core/settings/SettingsStorage;

    .line 31
    .line 32
    invoke-direct {p2, p1}, Lteam/opay/core/settings/SettingsStorage;-><init>(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    iput-object p2, p0, Lteam/opay/pay/payment/bill/NativeBillPaymentViewModel;->e:Lteam/opay/core/settings/SettingsStorage;

    .line 36
    .line 37
    const-string p1, ""

    .line 38
    .line 39
    iput-object p1, p0, Lteam/opay/pay/payment/bill/NativeBillPaymentViewModel;->g:Ljava/lang/String;

    .line 40
    .line 41
    return-void
.end method

.method public static synthetic r(Lteam/opay/pay/payment/bill/NativeBillPaymentViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/bill/NativeBillPaymentViewModel;->u(Lteam/opay/pay/payment/bill/NativeBillPaymentViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final u(Lteam/opay/pay/payment/bill/NativeBillPaymentViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-static {p1}, Lteam/opay/core/android/arch/ResourceKt;->c(Lteam/opay/core/android/arch/Resource;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    iget v0, p0, Lteam/opay/pay/payment/bill/NativeBillPaymentViewModel;->f:I

    .line 11
    .line 12
    add-int/lit8 v0, v0, -0x1

    .line 13
    .line 14
    iput v0, p0, Lteam/opay/pay/payment/bill/NativeBillPaymentViewModel;->f:I

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lteam/opay/pay/payment/bill/NativeBillPaymentViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    .line 19
    .line 20
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/payment/bill/NativeBillPaymentViewModel;->g:Ljava/lang/String;

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-lez v0, :cond_1

    .line 32
    .line 33
    iget-object p0, p0, Lteam/opay/pay/payment/bill/NativeBillPaymentViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    .line 34
    .line 35
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 43
    .line 44
    return-object p0
.end method


# virtual methods
.method public final s()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lteam/opay/pay/payment/bill/BillListRsq;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/bill/NativeBillPaymentViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final t(Lag8;Ljava/lang/String;)V
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
    const-string v0, "name"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lteam/opay/pay/payment/bill/NativeBillPaymentViewModel;->g:Ljava/lang/String;

    .line 12
    .line 13
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lteam/opay/pay/payment/bill/NativeBillPaymentViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    .line 20
    .line 21
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/payment/bill/NativeBillPaymentViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    .line 28
    .line 29
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget v0, p0, Lteam/opay/pay/payment/bill/NativeBillPaymentViewModel;->f:I

    .line 35
    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    iput v0, p0, Lteam/opay/pay/payment/bill/NativeBillPaymentViewModel;->f:I

    .line 39
    .line 40
    iget-object v0, p0, Lteam/opay/pay/payment/bill/NativeBillPaymentViewModel;->b:Lteam/opay/pay/payment/bill/NativeBillPaymentRepository;

    .line 41
    .line 42
    invoke-virtual {v0, p2}, Lteam/opay/pay/payment/bill/NativeBillPaymentRepository;->f(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    new-instance v0, Ltj9;

    .line 47
    .line 48
    invoke-direct {v0, p0}, Ltj9;-><init>(Lteam/opay/pay/payment/bill/NativeBillPaymentViewModel;)V

    .line 49
    .line 50
    .line 51
    invoke-static {p2, p1, v0}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final v()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lteam/opay/pay/payment/bill/NativeBillPaymentViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final w()Landroidx/lifecycle/LiveData;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/payment/bill/MoreHomeData;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 2
    .line 3
    const-class v1, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 10
    .line 11
    new-instance v12, Lteam/opay/pay/payment/bill/MoreHomeRequest;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IUserDataGenerator;->token()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v2, v1

    .line 22
    :goto_0
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IUserLocationGenerator;->latitude()D

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move-object v3, v1

    .line 34
    :goto_1
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IUserLocationGenerator;->longitude()D

    .line 37
    .line 38
    .line 39
    move-result-wide v4

    .line 40
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    goto :goto_2

    .line 45
    :cond_2
    move-object v4, v1

    .line 46
    :goto_2
    if-eqz v0, :cond_3

    .line 47
    .line 48
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IUserDataGenerator;->phone()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    move-object v6, v5

    .line 53
    goto :goto_3

    .line 54
    :cond_3
    move-object v6, v1

    .line 55
    :goto_3
    sget-object v5, Lteam/opay/swarmfoundation/device/AuthUtil;->a:Lteam/opay/swarmfoundation/device/AuthUtil;

    .line 56
    .line 57
    sget-object v7, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 58
    .line 59
    invoke-virtual {v7}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    invoke-virtual {v8}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    invoke-virtual {v5, v8}, Lteam/opay/swarmfoundation/device/AuthUtil;->D(Landroid/content/Context;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IAppDataGenerator;->versionCode()I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    goto :goto_4

    .line 82
    :cond_4
    move-object v5, v1

    .line 83
    :goto_4
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v9

    .line 87
    if-eqz v0, :cond_6

    .line 88
    .line 89
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/ICityDataGenerator;->cityId()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    if-nez v5, :cond_5

    .line 94
    .line 95
    goto :goto_6

    .line 96
    :cond_5
    :goto_5
    move-object v10, v5

    .line 97
    goto :goto_7

    .line 98
    :cond_6
    :goto_6
    const-string v5, ""

    .line 99
    .line 100
    goto :goto_5

    .line 101
    :goto_7
    invoke-virtual {v7}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    invoke-virtual {v5}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    invoke-static {v5}, Ljmf;->r(Landroid/content/Context;)I

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v11

    .line 117
    invoke-virtual {v7}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-virtual {v5}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    invoke-static {v5}, Ljmf;->q(Landroid/content/Context;)I

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v18

    .line 133
    if-eqz v0, :cond_7

    .line 134
    .line 135
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IUserDataGenerator;->role()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    goto :goto_8

    .line 140
    :cond_7
    move-object v0, v1

    .line 141
    :goto_8
    const/16 v16, 0x2000

    .line 142
    .line 143
    const/16 v17, 0x0

    .line 144
    .line 145
    const-string v5, "NG"

    .line 146
    .line 147
    const-string v13, "1"

    .line 148
    .line 149
    const-string v14, "1"

    .line 150
    .line 151
    const/4 v15, 0x0

    .line 152
    move-object v1, v12

    .line 153
    move-object v7, v8

    .line 154
    move-object v8, v9

    .line 155
    move-object v9, v10

    .line 156
    move-object v10, v11

    .line 157
    move-object/from16 v11, v18

    .line 158
    .line 159
    move-object/from16 v19, v12

    .line 160
    .line 161
    move-object v12, v0

    .line 162
    invoke-direct/range {v1 .. v17}, Lteam/opay/pay/payment/bill/MoreHomeRequest;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 163
    .line 164
    .line 165
    move-object/from16 v0, p0

    .line 166
    .line 167
    iget-object v1, v0, Lteam/opay/pay/payment/bill/NativeBillPaymentViewModel;->b:Lteam/opay/pay/payment/bill/NativeBillPaymentRepository;

    .line 168
    .line 169
    move-object/from16 v2, v19

    .line 170
    .line 171
    invoke-virtual {v1, v2}, Lteam/opay/pay/payment/bill/NativeBillPaymentRepository;->g(Lteam/opay/pay/payment/bill/MoreHomeRequest;)Landroidx/lifecycle/LiveData;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    return-object v1
.end method

.method public final x()Landroidx/lifecycle/LiveData;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/payment/bill/MoreHomeData;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 2
    .line 3
    const-class v1, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 10
    .line 11
    new-instance v12, Lteam/opay/pay/payment/bill/MoreHomeRequest;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IUserDataGenerator;->token()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v2, v1

    .line 22
    :goto_0
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IUserLocationGenerator;->latitude()D

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move-object v3, v1

    .line 34
    :goto_1
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IUserLocationGenerator;->longitude()D

    .line 37
    .line 38
    .line 39
    move-result-wide v4

    .line 40
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    goto :goto_2

    .line 45
    :cond_2
    move-object v4, v1

    .line 46
    :goto_2
    if-eqz v0, :cond_3

    .line 47
    .line 48
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IUserDataGenerator;->phone()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    move-object v6, v5

    .line 53
    goto :goto_3

    .line 54
    :cond_3
    move-object v6, v1

    .line 55
    :goto_3
    sget-object v5, Lteam/opay/swarmfoundation/device/AuthUtil;->a:Lteam/opay/swarmfoundation/device/AuthUtil;

    .line 56
    .line 57
    sget-object v7, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 58
    .line 59
    invoke-virtual {v7}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    invoke-virtual {v8}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    invoke-virtual {v5, v8}, Lteam/opay/swarmfoundation/device/AuthUtil;->D(Landroid/content/Context;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IAppDataGenerator;->versionCode()I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    goto :goto_4

    .line 82
    :cond_4
    move-object v5, v1

    .line 83
    :goto_4
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v9

    .line 87
    if-eqz v0, :cond_6

    .line 88
    .line 89
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/ICityDataGenerator;->cityId()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    if-nez v5, :cond_5

    .line 94
    .line 95
    goto :goto_6

    .line 96
    :cond_5
    :goto_5
    move-object v10, v5

    .line 97
    goto :goto_7

    .line 98
    :cond_6
    :goto_6
    const-string v5, ""

    .line 99
    .line 100
    goto :goto_5

    .line 101
    :goto_7
    invoke-virtual {v7}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    invoke-virtual {v5}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    invoke-static {v5}, Ljmf;->r(Landroid/content/Context;)I

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v11

    .line 117
    invoke-virtual {v7}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-virtual {v5}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    invoke-static {v5}, Ljmf;->q(Landroid/content/Context;)I

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v18

    .line 133
    if-eqz v0, :cond_7

    .line 134
    .line 135
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IUserDataGenerator;->role()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    goto :goto_8

    .line 140
    :cond_7
    move-object v0, v1

    .line 141
    :goto_8
    const/16 v16, 0x2000

    .line 142
    .line 143
    const/16 v17, 0x0

    .line 144
    .line 145
    const-string v5, "NG"

    .line 146
    .line 147
    const-string v13, "1"

    .line 148
    .line 149
    const-string v14, "1"

    .line 150
    .line 151
    const/4 v15, 0x0

    .line 152
    move-object v1, v12

    .line 153
    move-object v7, v8

    .line 154
    move-object v8, v9

    .line 155
    move-object v9, v10

    .line 156
    move-object v10, v11

    .line 157
    move-object/from16 v11, v18

    .line 158
    .line 159
    move-object/from16 v19, v12

    .line 160
    .line 161
    move-object v12, v0

    .line 162
    invoke-direct/range {v1 .. v17}, Lteam/opay/pay/payment/bill/MoreHomeRequest;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 163
    .line 164
    .line 165
    move-object/from16 v0, p0

    .line 166
    .line 167
    iget-object v1, v0, Lteam/opay/pay/payment/bill/NativeBillPaymentViewModel;->b:Lteam/opay/pay/payment/bill/NativeBillPaymentRepository;

    .line 168
    .line 169
    move-object/from16 v2, v19

    .line 170
    .line 171
    invoke-virtual {v1, v2}, Lteam/opay/pay/payment/bill/NativeBillPaymentRepository;->h(Lteam/opay/pay/payment/bill/MoreHomeRequest;)Landroidx/lifecycle/LiveData;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    return-object v1
.end method
