.class final Lteam/opay/pay/onboarding/delegate/MainLockInterceptorDelegate$Companion$checkShowAppLock$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainLockInterceptorDelegate.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/onboarding/delegate/MainLockInterceptorDelegate$Companion;->a(Landroidx/lifecycle/LifecycleCoroutineScope;Lteam/opay/pay/android/BaseActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lzr2;",
        "Ljr2<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lzr2;",
        "",
        "<anonymous>",
        "(Lzr2;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Ln33;
    c = "team.opay.pay.onboarding.delegate.MainLockInterceptorDelegate$Companion$checkShowAppLock$1"
    f = "MainLockInterceptorDelegate.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $activity:Lteam/opay/pay/android/BaseActivity;

.field label:I


# direct methods
.method public constructor <init>(Lteam/opay/pay/android/BaseActivity;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/android/BaseActivity;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/onboarding/delegate/MainLockInterceptorDelegate$Companion$checkShowAppLock$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/onboarding/delegate/MainLockInterceptorDelegate$Companion$checkShowAppLock$1;->$activity:Lteam/opay/pay/android/BaseActivity;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static synthetic c()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/onboarding/delegate/MainLockInterceptorDelegate$Companion$checkShowAppLock$1;->invokeSuspend$lambda$0()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic f()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/onboarding/delegate/MainLockInterceptorDelegate$Companion$checkShowAppLock$1;->invokeSuspend$lambda$1()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final invokeSuspend$lambda$0()Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lcom/opay/team/home/ntp/a;->a:Lcom/opay/team/home/ntp/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/opay/team/home/ntp/a;->d()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object v0
.end method

.method private static final invokeSuspend$lambda$1()Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lcom/opay/team/home/ntp/a;->a:Lcom/opay/team/home/ntp/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/opay/team/home/ntp/a;->d()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object v0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljr2<",
            "*>;)",
            "Ljr2<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lteam/opay/pay/onboarding/delegate/MainLockInterceptorDelegate$Companion$checkShowAppLock$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/onboarding/delegate/MainLockInterceptorDelegate$Companion$checkShowAppLock$1;->$activity:Lteam/opay/pay/android/BaseActivity;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/pay/onboarding/delegate/MainLockInterceptorDelegate$Companion$checkShowAppLock$1;-><init>(Lteam/opay/pay/android/BaseActivity;Ljr2;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/onboarding/delegate/MainLockInterceptorDelegate$Companion$checkShowAppLock$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lzr2;Ljr2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzr2;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/onboarding/delegate/MainLockInterceptorDelegate$Companion$checkShowAppLock$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/onboarding/delegate/MainLockInterceptorDelegate$Companion$checkShowAppLock$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/onboarding/delegate/MainLockInterceptorDelegate$Companion$checkShowAppLock$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/pay/onboarding/delegate/MainLockInterceptorDelegate$Companion$checkShowAppLock$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_7

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Lteam/opay/core/settings/NoClearStorage;

    .line 12
    .line 13
    iget-object v0, p0, Lteam/opay/pay/onboarding/delegate/MainLockInterceptorDelegate$Companion$checkShowAppLock$1;->$activity:Lteam/opay/pay/android/BaseActivity;

    .line 14
    .line 15
    invoke-direct {p1, v0}, Lteam/opay/core/settings/NoClearStorage;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lteam/opay/core/settings/NoClearStorage;->v0()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    new-instance v0, Lteam/opay/core/settings/SettingsStorage;

    .line 23
    .line 24
    iget-object v1, p0, Lteam/opay/pay/onboarding/delegate/MainLockInterceptorDelegate$Companion$checkShowAppLock$1;->$activity:Lteam/opay/pay/android/BaseActivity;

    .line 25
    .line 26
    invoke-direct {v0, v1}, Lteam/opay/core/settings/SettingsStorage;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lteam/opay/core/settings/SettingsStorage;->H()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/4 v1, 0x0

    .line 38
    if-lez v0, :cond_3

    .line 39
    .line 40
    sget-object v0, Lteam/opay/pay/onboarding/delegate/MainLockInterceptorDelegate;->Companion:Lteam/opay/pay/onboarding/delegate/MainLockInterceptorDelegate$Companion;

    .line 41
    .line 42
    invoke-virtual {v0}, Lteam/opay/pay/onboarding/delegate/MainLockInterceptorDelegate$Companion;->b()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_3

    .line 47
    .line 48
    iget-object v2, p0, Lteam/opay/pay/onboarding/delegate/MainLockInterceptorDelegate$Companion$checkShowAppLock$1;->$activity:Lteam/opay/pay/android/BaseActivity;

    .line 49
    .line 50
    invoke-static {v2}, Lum8;->f(Landroid/content/Context;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-nez v2, :cond_3

    .line 55
    .line 56
    const/4 v2, 0x3

    .line 57
    if-ne p1, v2, :cond_3

    .line 58
    .line 59
    sget-object p1, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 60
    .line 61
    invoke-virtual {p1}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Lteam/opay/pay/envconfigapi/ConfigStorage;->i()Z

    .line 66
    .line 67
    .line 68
    sget-object p1, Lteam/opay/pay/home/security/remember/RememberPswTipFragment;->s:Lteam/opay/pay/home/security/remember/RememberPswTipFragment$Companion;

    .line 69
    .line 70
    invoke-virtual {p1}, Lteam/opay/pay/home/security/remember/RememberPswTipFragment$Companion;->a()Ljava/lang/Boolean;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    const/4 v3, 0x1

    .line 75
    invoke-static {v3}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_0

    .line 84
    .line 85
    invoke-static {v1}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {p1, v2}, Lteam/opay/pay/home/security/remember/RememberPswTipFragment$Companion;->c(Ljava/lang/Boolean;)V

    .line 90
    .line 91
    .line 92
    sget-object p1, Lcom/opay/team/home/ntp/a;->a:Lcom/opay/team/home/ntp/a;

    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/opay/team/home/ntp/a;->d()V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_0
    sget-object p1, Ltj8;->a:Ltj8;

    .line 99
    .line 100
    invoke-virtual {p1}, Ltj8;->a()Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-eqz v2, :cond_1

    .line 105
    .line 106
    invoke-virtual {p1, v1}, Ltj8;->b(Z)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_1
    iget-object p1, p0, Lteam/opay/pay/onboarding/delegate/MainLockInterceptorDelegate$Companion$checkShowAppLock$1;->$activity:Lteam/opay/pay/android/BaseActivity;

    .line 111
    .line 112
    invoke-virtual {p1}, Lteam/opay/pay/android/BaseActivity;->getAppLock()Lteam/opay/pay/android/AppLock;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    if-eqz v2, :cond_2

    .line 117
    .line 118
    iget-object v3, p0, Lteam/opay/pay/onboarding/delegate/MainLockInterceptorDelegate$Companion$checkShowAppLock$1;->$activity:Lteam/opay/pay/android/BaseActivity;

    .line 119
    .line 120
    new-instance v5, Lteam/opay/pay/onboarding/delegate/a;

    .line 121
    .line 122
    invoke-direct {v5}, Lteam/opay/pay/onboarding/delegate/a;-><init>()V

    .line 123
    .line 124
    .line 125
    const/4 v6, 0x2

    .line 126
    const/4 v7, 0x0

    .line 127
    const/4 v4, 0x0

    .line 128
    invoke-static/range {v2 .. v7}, Lteam/opay/pay/android/AppLock;->l(Lteam/opay/pay/android/AppLock;Landroid/content/Context;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    :cond_2
    :goto_0
    invoke-virtual {v0, v1}, Lteam/opay/pay/onboarding/delegate/MainLockInterceptorDelegate$Companion;->c(Z)V

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_3
    sget-object p1, Ltj8;->a:Ltj8;

    .line 136
    .line 137
    invoke-virtual {p1}, Ltj8;->a()Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-eqz v0, :cond_4

    .line 142
    .line 143
    invoke-virtual {p1, v1}, Ltj8;->b(Z)V

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_4
    new-instance p1, Lteam/opay/pay/home/AppLockStorage;

    .line 148
    .line 149
    invoke-direct {p1}, Lteam/opay/pay/home/AppLockStorage;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1}, Lteam/opay/pay/home/AppLockStorage;->b()Z

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    if-eqz p1, :cond_5

    .line 157
    .line 158
    iget-object p1, p0, Lteam/opay/pay/onboarding/delegate/MainLockInterceptorDelegate$Companion$checkShowAppLock$1;->$activity:Lteam/opay/pay/android/BaseActivity;

    .line 159
    .line 160
    invoke-virtual {p1}, Lteam/opay/pay/android/BaseActivity;->getAppLock()Lteam/opay/pay/android/AppLock;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    if-eqz v0, :cond_6

    .line 165
    .line 166
    iget-object v1, p0, Lteam/opay/pay/onboarding/delegate/MainLockInterceptorDelegate$Companion$checkShowAppLock$1;->$activity:Lteam/opay/pay/android/BaseActivity;

    .line 167
    .line 168
    new-instance v3, Lteam/opay/pay/onboarding/delegate/b;

    .line 169
    .line 170
    invoke-direct {v3}, Lteam/opay/pay/onboarding/delegate/b;-><init>()V

    .line 171
    .line 172
    .line 173
    const/4 v4, 0x2

    .line 174
    const/4 v5, 0x0

    .line 175
    const/4 v2, 0x0

    .line 176
    invoke-static/range {v0 .. v5}, Lteam/opay/pay/android/AppLock;->l(Lteam/opay/pay/android/AppLock;Landroid/content/Context;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_5
    sget-object p1, Lcom/opay/team/home/ntp/a;->a:Lcom/opay/team/home/ntp/a;

    .line 181
    .line 182
    invoke-virtual {p1}, Lcom/opay/team/home/ntp/a;->d()V

    .line 183
    .line 184
    .line 185
    :cond_6
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 186
    .line 187
    return-object p1

    .line 188
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 189
    .line 190
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 191
    .line 192
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    throw p1
.end method
