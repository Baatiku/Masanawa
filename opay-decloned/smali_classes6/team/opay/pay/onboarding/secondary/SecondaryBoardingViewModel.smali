.class public final Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SecondaryBoardingViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ#\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u001d\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00178\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001cR)\u0010#\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020 0\u001e0\u00178\u0006\u00a2\u0006\u000c\n\u0004\u0008!\u0010\u001a\u001a\u0004\u0008\"\u0010\u001cR\u001d\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u00178\u0006\u00a2\u0006\u000c\n\u0004\u0008$\u0010\u001a\u001a\u0004\u0008%\u0010\u001cR\"\u0010.\u001a\u00020\'8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008(\u0010)\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-\u00a8\u0006/"
    }
    d2 = {
        "Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Landroid/app/Application;",
        "app",
        "Lxt;",
        "api",
        "<init>",
        "(Landroid/app/Application;Lxt;)V",
        "Lag8;",
        "lifecycleOwner",
        "",
        "x",
        "(Lag8;)V",
        "Landroid/content/Context;",
        "context",
        "Lteam/opay/core/api/graphql/QueryUserInfoRsp;",
        "rsp",
        "",
        "Lteam/opay/pay/kyc/base/KycPairItem;",
        "u",
        "(Landroid/content/Context;Lteam/opay/core/api/graphql/QueryUserInfoRsp;)Ljava/util/List;",
        "b",
        "Lxt;",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "c",
        "Landroidx/lifecycle/MutableLiveData;",
        "t",
        "()Landroidx/lifecycle/MutableLiveData;",
        "loadingEvent",
        "Lkotlin/Pair;",
        "",
        "",
        "d",
        "s",
        "errorEvent",
        "e",
        "w",
        "successEvent",
        "Lteam/opay/core/api/graphql/ReleaseCheckReq;",
        "f",
        "Lteam/opay/core/api/graphql/ReleaseCheckReq;",
        "v",
        "()Lteam/opay/core/api/graphql/ReleaseCheckReq;",
        "z",
        "(Lteam/opay/core/api/graphql/ReleaseCheckReq;)V",
        "releaseCheckReq",
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
.field public final b:Lxt;
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
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/core/api/graphql/QueryUserInfoRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Lteam/opay/core/api/graphql/ReleaseCheckReq;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lxt;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lxt;
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
    const-string v0, "api"

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
    iput-object p2, p0, Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel;->b:Lxt;

    .line 15
    .line 16
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 17
    .line 18
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    .line 22
    .line 23
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 24
    .line 25
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    .line 29
    .line 30
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 36
    .line 37
    return-void
.end method

.method public static synthetic r(Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel;->y(Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final y(Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
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
    iget-object v0, p0, Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel;->c:Landroidx/lifecycle/MutableLiveData;

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
    sget-object v1, Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel$a;->a:[I

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
    iget-object p0, p0, Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    .line 42
    .line 43
    new-instance v0, Lkotlin/Pair;

    .line 44
    .line 45
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->e()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-nez p1, :cond_2

    .line 58
    .line 59
    const-string p1, ""

    .line 60
    .line 61
    :cond_2
    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Lteam/opay/core/api/graphql/QueryUserInfoRsp;

    .line 73
    .line 74
    if-eqz p1, :cond_4

    .line 75
    .line 76
    iget-object p0, p0, Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 77
    .line 78
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :cond_4
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 82
    .line 83
    return-object p0
.end method


# virtual methods
.method public final s()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final t()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final u(Landroid/content/Context;Lteam/opay/core/api/graphql/QueryUserInfoRsp;)Ljava/util/List;
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/api/graphql/QueryUserInfoRsp;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lteam/opay/core/api/graphql/QueryUserInfoRsp;",
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
    const-string v0, "rsp"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Lteam/opay/core/api/graphql/QueryUserInfoRsp;->b()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x1

    .line 21
    const-string v3, "getString(...)"

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance v1, Lteam/opay/pay/kyc/base/KycPairItem;

    .line 33
    .line 34
    sget v4, Lteam/opay/pay/R$string;->osdk_first_name_upper:I

    .line 35
    .line 36
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Lteam/opay/core/api/graphql/QueryUserInfoRsp;->b()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-direct {v1, v4, v5, v2}, Lteam/opay/pay/kyc/base/KycPairItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lteam/opay/core/api/graphql/QueryUserInfoRsp;->c()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_2

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    new-instance v1, Lteam/opay/pay/kyc/base/KycPairItem;

    .line 67
    .line 68
    sget v4, Lteam/opay/pay/R$string;->osdk_middle_name_upper:I

    .line 69
    .line 70
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2}, Lteam/opay/core/api/graphql/QueryUserInfoRsp;->c()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    invoke-direct {v1, v4, v5, v2}, Lteam/opay/pay/kyc/base/KycPairItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    .line 83
    .line 84
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    :cond_3
    :goto_1
    invoke-virtual {p2}, Lteam/opay/core/api/graphql/QueryUserInfoRsp;->d()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    if-eqz v1, :cond_5

    .line 92
    .line 93
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-nez v1, :cond_4

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_4
    new-instance v1, Lteam/opay/pay/kyc/base/KycPairItem;

    .line 101
    .line 102
    sget v4, Lteam/opay/pay/R$string;->osdk_last_name_upper:I

    .line 103
    .line 104
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2}, Lteam/opay/core/api/graphql/QueryUserInfoRsp;->d()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    invoke-direct {v1, v4, v5, v2}, Lteam/opay/pay/kyc/base/KycPairItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 116
    .line 117
    .line 118
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    :cond_5
    :goto_2
    new-instance v1, Lteam/opay/pay/kyc/base/KycPairItem;

    .line 122
    .line 123
    sget v4, Lteam/opay/pay/R$string;->osdk_register_date:I

    .line 124
    .line 125
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    sget-object v3, Lteam/opay/pay/kyc/a;->a:Lteam/opay/pay/kyc/a;

    .line 133
    .line 134
    invoke-virtual {p2}, Lteam/opay/core/api/graphql/QueryUserInfoRsp;->a()Ljava/lang/Long;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    invoke-virtual {v3, p2}, Lteam/opay/pay/kyc/a;->e(Ljava/lang/Long;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    invoke-direct {v1, p1, p2, v2}, Lteam/opay/pay/kyc/base/KycPairItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 143
    .line 144
    .line 145
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    return-object v0
.end method

.method public final v()Lteam/opay/core/api/graphql/ReleaseCheckReq;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel;->f:Lteam/opay/core/api/graphql/ReleaseCheckReq;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "releaseCheckReq"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final w()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/core/api/graphql/QueryUserInfoRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final x(Lag8;)V
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
    new-instance v0, Lteam/opay/core/api/graphql/QueryUserInfoReq;

    .line 7
    .line 8
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel;->v()Lteam/opay/core/api/graphql/ReleaseCheckReq;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lteam/opay/core/api/graphql/ReleaseCheckReq;->getRefreshToken()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, ""

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    move-object v1, v2

    .line 21
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel;->v()Lteam/opay/core/api/graphql/ReleaseCheckReq;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v3}, Lteam/opay/core/api/graphql/ReleaseCheckReq;->getMobile()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    if-nez v3, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move-object v2, v3

    .line 33
    :goto_0
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/graphql/QueryUserInfoReq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel;->b:Lxt;

    .line 37
    .line 38
    invoke-interface {v1, v0}, Lxt;->h(Lteam/opay/core/api/graphql/QueryUserInfoReq;)Lretrofit2/Call;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0, p0}, Lkpc;->a(Lretrofit2/Call;Landroidx/lifecycle/AndroidViewModel;)Landroidx/lifecycle/LiveData;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    new-instance v1, Lk6d;

    .line 47
    .line 48
    invoke-direct {v1, p0}, Lk6d;-><init>(Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v0, p1, v1}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final z(Lteam/opay/core/api/graphql/ReleaseCheckReq;)V
    .locals 1
    .param p1    # Lteam/opay/core/api/graphql/ReleaseCheckReq;
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
    iput-object p1, p0, Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel;->f:Lteam/opay/core/api/graphql/ReleaseCheckReq;

    .line 7
    .line 8
    return-void
.end method
