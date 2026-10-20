.class public final Lteam/opay/pay/onboarding/AccountThirdStepViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "AccountThirdStepViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/onboarding/AccountThirdStepViewModel$Companion;,
        Lteam/opay/pay/onboarding/AccountThirdStepViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 /2\u00020\u0001:\u00010B!\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ5\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R)\u0010 \u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00100\u001b0\u001a8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001fR\u001d\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u001a8\u0006\u00a2\u0006\u000c\n\u0004\u0008!\u0010\u001d\u001a\u0004\u0008\"\u0010\u001fR\u001d\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u001a8\u0006\u00a2\u0006\u000c\n\u0004\u0008$\u0010\u001d\u001a\u0004\u0008%\u0010\u001fR#\u0010.\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020)0(0\'8\u0006\u00a2\u0006\u000c\n\u0004\u0008*\u0010+\u001a\u0004\u0008,\u0010-\u00a8\u00061"
    }
    d2 = {
        "Lteam/opay/pay/onboarding/AccountThirdStepViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Landroid/app/Application;",
        "app",
        "Lteam/opay/pay/onboarding/AccountStepRepository;",
        "accountStepRepository",
        "Lteam/opay/core/api/SessionRepository;",
        "sessionRepository",
        "<init>",
        "(Landroid/app/Application;Lteam/opay/pay/onboarding/AccountStepRepository;Lteam/opay/core/api/SessionRepository;)V",
        "Lag8;",
        "lifecycleOwner",
        "",
        "words",
        "",
        "tag",
        "",
        "goNext",
        "sence",
        "",
        "v",
        "(Lag8;Ljava/lang/String;IZLjava/lang/String;)V",
        "b",
        "Lteam/opay/pay/onboarding/AccountStepRepository;",
        "c",
        "Lteam/opay/core/api/SessionRepository;",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lkotlin/Pair;",
        "d",
        "Landroidx/lifecycle/MutableLiveData;",
        "u",
        "()Landroidx/lifecycle/MutableLiveData;",
        "sensitiveErrorEvent",
        "e",
        "s",
        "autoGoNextEvent",
        "f",
        "t",
        "errorMessageEvent",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/Resource;",
        "Lteam/opay/core/api/Session;",
        "g",
        "Landroidx/lifecycle/LiveData;",
        "getSession",
        "()Landroidx/lifecycle/LiveData;",
        "session",
        "h",
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
.field public static final h:Lteam/opay/pay/onboarding/AccountThirdStepViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final b:Lteam/opay/pay/onboarding/AccountStepRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lteam/opay/core/api/SessionRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
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
            "Lkotlin/Unit;",
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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/core/api/Session;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/onboarding/AccountThirdStepViewModel$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/onboarding/AccountThirdStepViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/onboarding/AccountThirdStepViewModel;->h:Lteam/opay/pay/onboarding/AccountThirdStepViewModel$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lteam/opay/pay/onboarding/AccountStepRepository;Lteam/opay/core/api/SessionRepository;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/onboarding/AccountStepRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/core/api/SessionRepository;
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
    const-string v0, "accountStepRepository"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "sessionRepository"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Lteam/opay/pay/onboarding/AccountThirdStepViewModel;->b:Lteam/opay/pay/onboarding/AccountStepRepository;

    .line 20
    .line 21
    iput-object p3, p0, Lteam/opay/pay/onboarding/AccountThirdStepViewModel;->c:Lteam/opay/core/api/SessionRepository;

    .line 22
    .line 23
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 24
    .line 25
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lteam/opay/pay/onboarding/AccountThirdStepViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    .line 29
    .line 30
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lteam/opay/pay/onboarding/AccountThirdStepViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 36
    .line 37
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 38
    .line 39
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lteam/opay/pay/onboarding/AccountThirdStepViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 43
    .line 44
    const/4 p1, 0x1

    .line 45
    const/4 p2, 0x0

    .line 46
    const/4 v0, 0x0

    .line 47
    invoke-static {p3, v0, p1, p2}, Lteam/opay/core/api/SessionRepository;->l(Lteam/opay/core/api/SessionRepository;ZILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Lteam/opay/pay/onboarding/AccountThirdStepViewModel;->g:Landroidx/lifecycle/LiveData;

    .line 52
    .line 53
    return-void
.end method

.method public static synthetic r(ILteam/opay/pay/onboarding/AccountThirdStepViewModel;Ljava/lang/String;Ljava/lang/String;ZLteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lteam/opay/pay/onboarding/AccountThirdStepViewModel;->w(ILteam/opay/pay/onboarding/AccountThirdStepViewModel;Ljava/lang/String;Ljava/lang/String;ZLteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final w(ILteam/opay/pay/onboarding/AccountThirdStepViewModel;Ljava/lang/String;Ljava/lang/String;ZLteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 6

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x2

    .line 4
    if-nez p5, :cond_0

    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-virtual {p5}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    sget-object v4, Lteam/opay/pay/onboarding/AccountThirdStepViewModel$a;->a:[I

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    aget v3, v4, v3

    .line 20
    .line 21
    if-eq v3, v1, :cond_2

    .line 22
    .line 23
    if-eq v3, v2, :cond_1

    .line 24
    .line 25
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 26
    .line 27
    .line 28
    goto/16 :goto_1

    .line 29
    .line 30
    :cond_1
    iget-object p2, p1, Lteam/opay/pay/onboarding/AccountThirdStepViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    new-instance p3, Lkotlin/Pair;

    .line 33
    .line 34
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    sget-object p5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-direct {p3, p0, p5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, p3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    if-eqz p4, :cond_8

    .line 47
    .line 48
    iget-object p0, p1, Lteam/opay/pay/onboarding/AccountThirdStepViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 49
    .line 50
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto/16 :goto_1

    .line 56
    .line 57
    :cond_2
    invoke-virtual {p5}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p4

    .line 61
    const-string v3, "60002"

    .line 62
    .line 63
    invoke-static {p4, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p4

    .line 67
    if-eqz p4, :cond_7

    .line 68
    .line 69
    if-eq p0, v1, :cond_5

    .line 70
    .line 71
    if-eq p0, v2, :cond_4

    .line 72
    .line 73
    if-eq p0, v0, :cond_3

    .line 74
    .line 75
    const-string p4, ""

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    const-string p4, "last"

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_4
    const-string p4, "middle"

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_5
    const-string p4, "first"

    .line 85
    .line 86
    :goto_0
    new-instance p5, Lteam/opay/core/settings/SettingsStorage;

    .line 87
    .line 88
    invoke-static {p1}, Lloa;->c(Landroidx/lifecycle/AndroidViewModel;)Lteam/opay/pay/android/OpayApplication;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-direct {p5, v3}, Lteam/opay/core/settings/SettingsStorage;-><init>(Landroid/content/Context;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p5}, Lteam/opay/core/settings/SettingsStorage;->I()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p5

    .line 99
    if-nez p5, :cond_6

    .line 100
    .line 101
    const-string p5, "0"

    .line 102
    .line 103
    :cond_6
    sget-object v3, Lx7b;->a:Lx7b;

    .line 104
    .line 105
    const-string v4, "call_code"

    .line 106
    .line 107
    invoke-static {v4, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    const-string v4, "name_code"

    .line 112
    .line 113
    invoke-static {v4, p4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 114
    .line 115
    .line 116
    move-result-object p4

    .line 117
    const-string v4, "name"

    .line 118
    .line 119
    invoke-static {v4, p3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 120
    .line 121
    .line 122
    move-result-object p3

    .line 123
    const-string v4, "kyc_level"

    .line 124
    .line 125
    invoke-static {v4, p5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 126
    .line 127
    .line 128
    move-result-object p5

    .line 129
    const/4 v4, 0x4

    .line 130
    new-array v4, v4, [Lkotlin/Pair;

    .line 131
    .line 132
    const/4 v5, 0x0

    .line 133
    aput-object p2, v4, v5

    .line 134
    .line 135
    aput-object p4, v4, v1

    .line 136
    .line 137
    aput-object p3, v4, v2

    .line 138
    .line 139
    aput-object p5, v4, v0

    .line 140
    .line 141
    const-string p2, "kyc_hitblacklist"

    .line 142
    .line 143
    invoke-virtual {v3, p2, v4}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 144
    .line 145
    .line 146
    iget-object p1, p1, Lteam/opay/pay/onboarding/AccountThirdStepViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    .line 147
    .line 148
    new-instance p2, Lkotlin/Pair;

    .line 149
    .line 150
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 155
    .line 156
    invoke-direct {p2, p0, p3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_7
    invoke-virtual {p5}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    if-eqz p0, :cond_8

    .line 168
    .line 169
    iget-object p1, p1, Lteam/opay/pay/onboarding/AccountThirdStepViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 170
    .line 171
    invoke-virtual {p1, p0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    :cond_8
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 175
    .line 176
    return-object p0
.end method


# virtual methods
.method public final s()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lteam/opay/pay/onboarding/AccountThirdStepViewModel;->e:Landroidx/lifecycle/MutableLiveData;

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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/onboarding/AccountThirdStepViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final u()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/onboarding/AccountThirdStepViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final v(Lag8;Ljava/lang/String;IZLjava/lang/String;)V
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

    .line 1
    const-string v0, "lifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "words"

    .line 7
    .line 8
    .line 9
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "sence"

    .line 13
    .line 14
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lteam/opay/pay/onboarding/AccountThirdStepViewModel;->b:Lteam/opay/pay/onboarding/AccountStepRepository;

    .line 18
    .line 19
    new-instance v1, Lteam/opay/pay/onboarding/SensitiveWordsReq;

    .line 20
    .line 21
    invoke-direct {v1, p2}, Lteam/opay/pay/onboarding/SensitiveWordsReq;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lteam/opay/pay/onboarding/AccountStepRepository;->g(Lteam/opay/pay/onboarding/SensitiveWordsReq;)Landroidx/lifecycle/LiveData;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v7, Lad;

    .line 29
    .line 30
    move-object v1, v7

    .line 31
    move v2, p3

    .line 32
    move-object v3, p0

    .line 33
    move-object v4, p5

    .line 34
    move-object v5, p2

    .line 35
    move v6, p4

    .line 36
    invoke-direct/range {v1 .. v6}, Lad;-><init>(ILteam/opay/pay/onboarding/AccountThirdStepViewModel;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0, p1, v7}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
