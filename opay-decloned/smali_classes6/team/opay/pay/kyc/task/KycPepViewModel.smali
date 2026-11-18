.class public final Lteam/opay/pay/kyc/task/KycPepViewModel;
.super Lteam/opay/pay/kyc/base/AbstractKycViewModel;
.source "KycPepViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/kyc/task/KycPepViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u001d\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0013\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0013\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0004\u0008\n\u0010\tJ\u0013\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0004\u0008\u000b\u0010\tJ\r\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\r\u0010\u000f\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000f\u0010\u000eJ\r\u0010\u0010\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0010\u0010\u000eJ5\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u001f\u001a\u00020\u001c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR$\u0010\'\u001a\u0004\u0018\u00010 8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008!\u0010\"\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R$\u0010.\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008(\u0010)\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R$\u00102\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008/\u0010)\u001a\u0004\u00080\u0010+\"\u0004\u00081\u0010-R$\u00106\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00083\u0010)\u001a\u0004\u00084\u0010+\"\u0004\u00085\u0010-R\"\u0010=\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00087\u00108\u001a\u0004\u00089\u0010:\"\u0004\u0008;\u0010<R$\u0010E\u001a\u0004\u0018\u00010>8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008?\u0010@\u001a\u0004\u0008A\u0010B\"\u0004\u0008C\u0010DR\u001b\u0010K\u001a\u00020F8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008G\u0010H\u001a\u0004\u0008I\u0010JR$\u0010R\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008L\u0010M\u001a\u0004\u0008N\u0010O\"\u0004\u0008P\u0010QR$\u0010Z\u001a\u0004\u0018\u00010S8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008T\u0010U\u001a\u0004\u0008V\u0010W\"\u0004\u0008X\u0010YR\u001d\u0010a\u001a\u0008\u0012\u0004\u0012\u00020\\0[8\u0006\u00a2\u0006\u000c\n\u0004\u0008]\u0010^\u001a\u0004\u0008_\u0010`\u00a8\u0006b"
    }
    d2 = {
        "Lteam/opay/pay/kyc/task/KycPepViewModel;",
        "Lteam/opay/pay/kyc/base/AbstractKycViewModel;",
        "Landroid/app/Application;",
        "app",
        "<init>",
        "(Landroid/app/Application;)V",
        "",
        "Lteam/opay/pay/kyc/base/KycNameCodeVo;",
        "G",
        "()Ljava/util/List;",
        "J",
        "I",
        "Ljava/util/Calendar;",
        "D",
        "()Ljava/util/Calendar;",
        "E",
        "N",
        "Lag8;",
        "lifecycleOwner",
        "",
        "scene",
        "",
        "myEnable",
        "myRelationEnable",
        "relationName",
        "",
        "X",
        "(Lag8;Ljava/lang/String;ZZLjava/lang/String;)V",
        "Lcv7;",
        "i",
        "Lcv7;",
        "api",
        "Lteam/opay/pay/kyc/base/KycTaskNode;",
        "j",
        "Lteam/opay/pay/kyc/base/KycTaskNode;",
        "getTaskNodeData",
        "()Lteam/opay/pay/kyc/base/KycTaskNode;",
        "V",
        "(Lteam/opay/pay/kyc/base/KycTaskNode;)V",
        "taskNodeData",
        "k",
        "Lteam/opay/pay/kyc/base/KycNameCodeVo;",
        "H",
        "()Lteam/opay/pay/kyc/base/KycNameCodeVo;",
        "R",
        "(Lteam/opay/pay/kyc/base/KycNameCodeVo;)V",
        "myPoliticalOfficeItem",
        "l",
        "K",
        "S",
        "relationPoliticalOfficeItem",
        "m",
        "L",
        "T",
        "relationshipItem",
        "n",
        "Z",
        "getCurrentlyChecked",
        "()Z",
        "Q",
        "(Z)V",
        "currentlyChecked",
        "Ljava/util/Date;",
        "o",
        "Ljava/util/Date;",
        "M",
        "()Ljava/util/Date;",
        "U",
        "(Ljava/util/Date;)V",
        "selectDate",
        "Ljava/text/SimpleDateFormat;",
        "p",
        "Lid8;",
        "F",
        "()Ljava/text/SimpleDateFormat;",
        "formatter",
        "q",
        "Ljava/lang/String;",
        "getBizSecurityId",
        "()Ljava/lang/String;",
        "P",
        "(Ljava/lang/String;)V",
        "bizSecurityId",
        "",
        "r",
        "Ljava/lang/Long;",
        "getTaskReocrdId",
        "()Ljava/lang/Long;",
        "W",
        "(Ljava/lang/Long;)V",
        "taskReocrdId",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;",
        "s",
        "Landroidx/lifecycle/MutableLiveData;",
        "O",
        "()Landroidx/lifecycle/MutableLiveData;",
        "successEvent",
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
.field public final i:Lcv7;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Lteam/opay/pay/kyc/base/KycTaskNode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public k:Lteam/opay/pay/kyc/base/KycNameCodeVo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public l:Lteam/opay/pay/kyc/base/KycNameCodeVo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public m:Lteam/opay/pay/kyc/base/KycNameCodeVo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public n:Z

.field public o:Ljava/util/Date;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final p:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public q:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public r:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final s:Landroidx/lifecycle/MutableLiveData;
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
    sget-object v0, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 10
    .line 11
    const-class v1, Lcv7;

    .line 12
    .line 13
    invoke-virtual {v0, p1, v1}, Lteam/opay/core/api/GraphQL;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcv7;

    .line 18
    .line 19
    iput-object p1, p0, Lteam/opay/pay/kyc/task/KycPepViewModel;->i:Lcv7;

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lteam/opay/pay/kyc/task/KycPepViewModel;->n:Z

    .line 23
    .line 24
    new-instance p1, Lc58;

    .line 25
    .line 26
    invoke-direct {p1}, Lc58;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lteam/opay/pay/kyc/task/KycPepViewModel;->p:Lid8;

    .line 34
    .line 35
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 36
    .line 37
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lteam/opay/pay/kyc/task/KycPepViewModel;->s:Landroidx/lifecycle/MutableLiveData;

    .line 41
    .line 42
    return-void
.end method

.method public static synthetic A()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/kyc/task/KycPepViewModel;->C()Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic B(Lteam/opay/pay/kyc/task/KycPepViewModel;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/kyc/task/KycPepViewModel;->Y(Lteam/opay/pay/kyc/task/KycPepViewModel;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final C()Ljava/text/SimpleDateFormat;
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

.method public static final Y(Lteam/opay/pay/kyc/task/KycPepViewModel;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 8

    .line 1
    if-nez p2, :cond_0

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
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->f()Z

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
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sget-object v1, Lteam/opay/pay/kyc/task/KycPepViewModel$a;->a:[I

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
    const/4 v1, 0x2

    .line 37
    if-eq v0, v1, :cond_1

    .line 38
    .line 39
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    new-instance v0, Lteam/opay/pay/kyc/base/ErrorMsg;

    .line 44
    .line 45
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    const/4 v6, 0x4

    .line 54
    const/4 v7, 0x0

    .line 55
    const/4 v5, 0x0

    .line 56
    move-object v2, v0

    .line 57
    invoke-direct/range {v2 .. v7}, Lteam/opay/pay/kyc/base/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 58
    .line 59
    .line 60
    const-string p2, "FILL_PEP_INFO"

    .line 61
    .line 62
    invoke-virtual {p0, v0, p1, p2}, Lteam/opay/pay/kyc/base/AbstractKycViewModel;->x(Lteam/opay/pay/kyc/base/ErrorMsg;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;

    .line 71
    .line 72
    if-eqz p1, :cond_3

    .line 73
    .line 74
    iget-object p0, p0, Lteam/opay/pay/kyc/task/KycPepViewModel;->s:Landroidx/lifecycle/MutableLiveData;

    .line 75
    .line 76
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :cond_3
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 80
    .line 81
    return-object p0
.end method


# virtual methods
.method public final D()Ljava/util/Calendar;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lteam/opay/pay/kyc/task/KycPepViewModel;->o:Ljava/util/Date;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public final E()Ljava/util/Calendar;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public final F()Ljava/text/SimpleDateFormat;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/task/KycPepViewModel;->p:Lid8;

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

.method public final G()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/pay/kyc/base/KycNameCodeVo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/task/KycPepViewModel;->j:Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycTaskNode;->getPoliticalOfficeList()Ljava/util/List;

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

.method public final H()Lteam/opay/pay/kyc/base/KycNameCodeVo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/task/KycPepViewModel;->k:Lteam/opay/pay/kyc/base/KycNameCodeVo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final I()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/pay/kyc/base/KycNameCodeVo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/task/KycPepViewModel;->j:Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycTaskNode;->getRelationshipWithPepList()Ljava/util/List;

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

.method public final J()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/pay/kyc/base/KycNameCodeVo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/task/KycPepViewModel;->j:Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycTaskNode;->getPepPublicOfficeList()Ljava/util/List;

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

.method public final K()Lteam/opay/pay/kyc/base/KycNameCodeVo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/task/KycPepViewModel;->l:Lteam/opay/pay/kyc/base/KycNameCodeVo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final L()Lteam/opay/pay/kyc/base/KycNameCodeVo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/task/KycPepViewModel;->m:Lteam/opay/pay/kyc/base/KycNameCodeVo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final M()Ljava/util/Date;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/task/KycPepViewModel;->o:Ljava/util/Date;

    .line 2
    .line 3
    return-object v0
.end method

.method public final N()Ljava/util/Calendar;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    add-int/lit8 v2, v2, -0x32

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public final O()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lteam/opay/pay/kyc/task/KycPepViewModel;->s:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final P(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/task/KycPepViewModel;->q:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final Q(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/kyc/task/KycPepViewModel;->n:Z

    .line 2
    .line 3
    return-void
.end method

.method public final R(Lteam/opay/pay/kyc/base/KycNameCodeVo;)V
    .locals 0
    .param p1    # Lteam/opay/pay/kyc/base/KycNameCodeVo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/task/KycPepViewModel;->k:Lteam/opay/pay/kyc/base/KycNameCodeVo;

    .line 2
    .line 3
    return-void
.end method

.method public final S(Lteam/opay/pay/kyc/base/KycNameCodeVo;)V
    .locals 0
    .param p1    # Lteam/opay/pay/kyc/base/KycNameCodeVo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/task/KycPepViewModel;->l:Lteam/opay/pay/kyc/base/KycNameCodeVo;

    .line 2
    .line 3
    return-void
.end method

.method public final T(Lteam/opay/pay/kyc/base/KycNameCodeVo;)V
    .locals 0
    .param p1    # Lteam/opay/pay/kyc/base/KycNameCodeVo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/task/KycPepViewModel;->m:Lteam/opay/pay/kyc/base/KycNameCodeVo;

    .line 2
    .line 3
    return-void
.end method

.method public final U(Ljava/util/Date;)V
    .locals 0
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/task/KycPepViewModel;->o:Ljava/util/Date;

    .line 2
    .line 3
    return-void
.end method

.method public final V(Lteam/opay/pay/kyc/base/KycTaskNode;)V
    .locals 0
    .param p1    # Lteam/opay/pay/kyc/base/KycTaskNode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/task/KycPepViewModel;->j:Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 2
    .line 3
    return-void
.end method

.method public final W(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/task/KycPepViewModel;->r:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final X(Lag8;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 18
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

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v15, p2

    .line 6
    .line 7
    const-string v2, "lifecycleOwner"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v2, "scene"

    .line 13
    .line 14
    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v2, "relationName"

    .line 18
    .line 19
    move-object/from16 v3, p5

    .line 20
    .line 21
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v2, "Y"

    .line 25
    .line 26
    if-nez p3, :cond_1

    .line 27
    .line 28
    if-eqz p4, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-string v4, "NE"

    .line 32
    .line 33
    move-object v8, v4

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    move-object v8, v2

    .line 36
    :goto_1
    const-string v4, ""

    .line 37
    .line 38
    if-eqz p3, :cond_4

    .line 39
    .line 40
    iget-object v6, v0, Lteam/opay/pay/kyc/task/KycPepViewModel;->k:Lteam/opay/pay/kyc/base/KycNameCodeVo;

    .line 41
    .line 42
    if-eqz v6, :cond_2

    .line 43
    .line 44
    invoke-virtual {v6}, Lteam/opay/pay/kyc/base/KycNameCodeVo;->getCode()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    goto :goto_2

    .line 49
    :cond_2
    const/4 v6, 0x0

    .line 50
    :goto_2
    if-nez v6, :cond_3

    .line 51
    .line 52
    move-object v9, v4

    .line 53
    goto :goto_3

    .line 54
    :cond_3
    move-object v9, v6

    .line 55
    goto :goto_3

    .line 56
    :cond_4
    const/4 v9, 0x0

    .line 57
    :goto_3
    if-eqz p3, :cond_6

    .line 58
    .line 59
    iget-object v6, v0, Lteam/opay/pay/kyc/task/KycPepViewModel;->o:Ljava/util/Date;

    .line 60
    .line 61
    if-eqz v6, :cond_6

    .line 62
    .line 63
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/kyc/task/KycPepViewModel;->F()Ljava/text/SimpleDateFormat;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    invoke-virtual {v7, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    if-nez v6, :cond_5

    .line 72
    .line 73
    goto :goto_4

    .line 74
    :cond_5
    move-object v10, v6

    .line 75
    goto :goto_5

    .line 76
    :cond_6
    :goto_4
    const/4 v10, 0x0

    .line 77
    :goto_5
    const-string v6, "N"

    .line 78
    .line 79
    if-eqz p3, :cond_7

    .line 80
    .line 81
    iget-boolean v7, v0, Lteam/opay/pay/kyc/task/KycPepViewModel;->n:Z

    .line 82
    .line 83
    if-eqz v7, :cond_7

    .line 84
    .line 85
    move-object v14, v2

    .line 86
    goto :goto_6

    .line 87
    :cond_7
    move-object v14, v6

    .line 88
    :goto_6
    if-eqz p4, :cond_8

    .line 89
    .line 90
    move-object v11, v3

    .line 91
    goto :goto_7

    .line 92
    :cond_8
    const/4 v11, 0x0

    .line 93
    :goto_7
    if-eqz p4, :cond_b

    .line 94
    .line 95
    iget-object v2, v0, Lteam/opay/pay/kyc/task/KycPepViewModel;->m:Lteam/opay/pay/kyc/base/KycNameCodeVo;

    .line 96
    .line 97
    if-eqz v2, :cond_9

    .line 98
    .line 99
    invoke-virtual {v2}, Lteam/opay/pay/kyc/base/KycNameCodeVo;->getCode()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    goto :goto_8

    .line 104
    :cond_9
    const/4 v2, 0x0

    .line 105
    :goto_8
    if-nez v2, :cond_a

    .line 106
    .line 107
    move-object v12, v4

    .line 108
    goto :goto_9

    .line 109
    :cond_a
    move-object v12, v2

    .line 110
    goto :goto_9

    .line 111
    :cond_b
    const/4 v12, 0x0

    .line 112
    :goto_9
    if-eqz p4, :cond_e

    .line 113
    .line 114
    iget-object v2, v0, Lteam/opay/pay/kyc/task/KycPepViewModel;->l:Lteam/opay/pay/kyc/base/KycNameCodeVo;

    .line 115
    .line 116
    if-eqz v2, :cond_c

    .line 117
    .line 118
    invoke-virtual {v2}, Lteam/opay/pay/kyc/base/KycNameCodeVo;->getCode()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    goto :goto_a

    .line 123
    :cond_c
    const/4 v2, 0x0

    .line 124
    :goto_a
    if-nez v2, :cond_d

    .line 125
    .line 126
    move-object v13, v4

    .line 127
    goto :goto_b

    .line 128
    :cond_d
    move-object v13, v2

    .line 129
    goto :goto_b

    .line 130
    :cond_e
    const/4 v13, 0x0

    .line 131
    :goto_b
    new-instance v7, Lteam/opay/pay/kyc/customer/KycPepInputReq;

    .line 132
    .line 133
    invoke-static/range {p2 .. p2}, Lg4d;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    iget-object v3, v0, Lteam/opay/pay/kyc/task/KycPepViewModel;->q:Ljava/lang/String;

    .line 138
    .line 139
    iget-object v2, v0, Lteam/opay/pay/kyc/task/KycPepViewModel;->r:Ljava/lang/Long;

    .line 140
    .line 141
    iget-object v5, v0, Lteam/opay/pay/kyc/task/KycPepViewModel;->j:Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 142
    .line 143
    if-eqz v5, :cond_f

    .line 144
    .line 145
    invoke-virtual {v5}, Lteam/opay/pay/kyc/base/KycTaskNode;->getTaskId()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    goto :goto_c

    .line 150
    :cond_f
    const/4 v5, 0x0

    .line 151
    :goto_c
    move-object/from16 v17, v2

    .line 152
    .line 153
    if-nez v5, :cond_10

    .line 154
    .line 155
    move-object/from16 v16, v4

    .line 156
    .line 157
    goto :goto_d

    .line 158
    :cond_10
    move-object/from16 v16, v5

    .line 159
    .line 160
    :goto_d
    move-object v2, v7

    .line 161
    move-object v5, v3

    .line 162
    move-object/from16 v3, p2

    .line 163
    .line 164
    move-object v4, v6

    .line 165
    move-object/from16 v6, v17

    .line 166
    .line 167
    move-object v1, v7

    .line 168
    move-object/from16 v7, v16

    .line 169
    .line 170
    invoke-direct/range {v2 .. v14}, Lteam/opay/pay/kyc/customer/KycPepInputReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    iget-object v2, v0, Lteam/opay/pay/kyc/task/KycPepViewModel;->i:Lcv7;

    .line 174
    .line 175
    invoke-interface {v2, v1}, Lcv7;->r(Lteam/opay/pay/kyc/customer/KycPepInputReq;)Lretrofit2/Call;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-static {v1, v0}, Lkpc;->a(Lretrofit2/Call;Landroidx/lifecycle/AndroidViewModel;)Landroidx/lifecycle/LiveData;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    new-instance v2, Ld58;

    .line 184
    .line 185
    invoke-direct {v2, v0, v15}, Ld58;-><init>(Lteam/opay/pay/kyc/task/KycPepViewModel;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    move-object/from16 v3, p1

    .line 189
    .line 190
    invoke-static {v1, v3, v2}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 191
    .line 192
    .line 193
    return-void
.end method
