.class public final Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SecondaryPersonInfoConfirmViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001d\u0010\r\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u001d\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00118\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R\u001d\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00118\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u0014\u001a\u0004\u0008\u001a\u0010\u0016R\u001d\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u00118\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u0014\u001a\u0004\u0008\u001e\u0010\u0016\u00a8\u0006 "
    }
    d2 = {
        "Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Landroid/app/Application;",
        "app",
        "Lxt;",
        "api",
        "<init>",
        "(Landroid/app/Application;Lxt;)V",
        "Lag8;",
        "lifecycleOwner",
        "Lteam/opay/core/api/graphql/ReleaseCheckReq;",
        "req",
        "",
        "v",
        "(Lag8;Lteam/opay/core/api/graphql/ReleaseCheckReq;)V",
        "b",
        "Lxt;",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "c",
        "Landroidx/lifecycle/MutableLiveData;",
        "t",
        "()Landroidx/lifecycle/MutableLiveData;",
        "loadingEvent",
        "",
        "d",
        "s",
        "errorEvent",
        "Lteam/opay/core/api/graphql/ReleaseCheckRsp;",
        "e",
        "u",
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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/core/api/graphql/ReleaseCheckRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


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
    iput-object p2, p0, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmViewModel;->b:Lxt;

    .line 15
    .line 16
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 17
    .line 18
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    .line 22
    .line 23
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 24
    .line 25
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    .line 29
    .line 30
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 36
    .line 37
    return-void
.end method

.method public static synthetic r(Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmViewModel;->w(Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final w(Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    iget-object v3, p0, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    .line 10
    .line 11
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->f()Z

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    sget-object v4, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmViewModel$a;->a:[I

    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    aget v3, v4, v3

    .line 33
    .line 34
    const-string v4, "error_msg"

    .line 35
    .line 36
    const-string v5, "reject"

    .line 37
    .line 38
    const-string v6, "result"

    .line 39
    .line 40
    const-string v7, "recycled_number_checklist_result"

    .line 41
    .line 42
    const-string v8, ""

    .line 43
    .line 44
    if-eq v3, v2, :cond_4

    .line 45
    .line 46
    if-eq v3, v1, :cond_1

    .line 47
    .line 48
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 49
    .line 50
    .line 51
    goto/16 :goto_5

    .line 52
    .line 53
    :cond_1
    sget-object v3, Lx7b;->a:Lx7b;

    .line 54
    .line 55
    invoke-static {v6, v5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    const-string v6, "error_code"

    .line 60
    .line 61
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    invoke-static {v6, v9}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v9

    .line 73
    if-nez v9, :cond_2

    .line 74
    .line 75
    move-object v9, v8

    .line 76
    :cond_2
    invoke-static {v4, v9}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    const/4 v9, 0x3

    .line 81
    new-array v9, v9, [Lkotlin/Pair;

    .line 82
    .line 83
    aput-object v5, v9, v0

    .line 84
    .line 85
    aput-object v6, v9, v2

    .line 86
    .line 87
    aput-object v4, v9, v1

    .line 88
    .line 89
    invoke-virtual {v3, v7, v9}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 90
    .line 91
    .line 92
    iget-object p0, p0, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    .line 93
    .line 94
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    if-nez p1, :cond_3

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_3
    move-object v8, p1

    .line 102
    :goto_0
    invoke-virtual {p0, v8}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    goto/16 :goto_5

    .line 106
    .line 107
    :cond_4
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    check-cast p1, Lteam/opay/core/api/graphql/ReleaseCheckRsp;

    .line 112
    .line 113
    if-eqz p1, :cond_a

    .line 114
    .line 115
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/ReleaseCheckRsp;->c()Ljava/lang/Boolean;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 120
    .line 121
    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    if-eqz v3, :cond_7

    .line 126
    .line 127
    sget-object v1, Lx7b;->a:Lx7b;

    .line 128
    .line 129
    const-string v3, "pass"

    .line 130
    .line 131
    invoke-static {v6, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    new-array v2, v2, [Lkotlin/Pair;

    .line 136
    .line 137
    aput-object v3, v2, v0

    .line 138
    .line 139
    invoke-virtual {v1, v7, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 140
    .line 141
    .line 142
    sget-object v0, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 143
    .line 144
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/ReleaseCheckRsp;->e()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    if-nez v2, :cond_5

    .line 153
    .line 154
    move-object v2, v8

    .line 155
    :cond_5
    invoke-virtual {v1, v2}, Lteam/opay/core/account/AccountInfoManager;->S(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/ReleaseCheckRsp;->d()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    if-nez v1, :cond_6

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_6
    move-object v8, v1

    .line 170
    :goto_1
    invoke-virtual {v0, v8}, Lteam/opay/core/account/AccountInfoManager;->R(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    goto :goto_4

    .line 174
    :cond_7
    sget-object v3, Lx7b;->a:Lx7b;

    .line 175
    .line 176
    invoke-static {v6, v5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/ReleaseCheckRsp;->a()Lteam/opay/core/api/graphql/ReleaseDialogInfo;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    if-eqz v6, :cond_8

    .line 185
    .line 186
    invoke-virtual {v6}, Lteam/opay/core/api/graphql/ReleaseDialogInfo;->getContent()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    goto :goto_2

    .line 191
    :cond_8
    const/4 v6, 0x0

    .line 192
    :goto_2
    if-nez v6, :cond_9

    .line 193
    .line 194
    goto :goto_3

    .line 195
    :cond_9
    move-object v8, v6

    .line 196
    :goto_3
    invoke-static {v4, v8}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    new-array v1, v1, [Lkotlin/Pair;

    .line 201
    .line 202
    aput-object v5, v1, v0

    .line 203
    .line 204
    aput-object v4, v1, v2

    .line 205
    .line 206
    invoke-virtual {v3, v7, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 207
    .line 208
    .line 209
    :goto_4
    iget-object p0, p0, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 210
    .line 211
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    :cond_a
    :goto_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 215
    .line 216
    return-object p0
.end method


# virtual methods
.method public final s()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmViewModel;->d:Landroidx/lifecycle/MutableLiveData;

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
    iget-object v0, p0, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmViewModel;->c:Landroidx/lifecycle/MutableLiveData;

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
            "Lteam/opay/core/api/graphql/ReleaseCheckRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final v(Lag8;Lteam/opay/core/api/graphql/ReleaseCheckReq;)V
    .locals 1
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/api/graphql/ReleaseCheckReq;
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
    const-string v0, "req"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmViewModel;->b:Lxt;

    .line 12
    .line 13
    invoke-interface {v0, p2}, Lxt;->r(Lteam/opay/core/api/graphql/ReleaseCheckReq;)Lretrofit2/Call;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-static {p2, p0}, Lkpc;->a(Lretrofit2/Call;Landroidx/lifecycle/AndroidViewModel;)Landroidx/lifecycle/LiveData;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    new-instance v0, Ll7d;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Ll7d;-><init>(Lteam/opay/pay/onboarding/secondary/SecondaryPersonInfoConfirmViewModel;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p2, p1, v0}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
