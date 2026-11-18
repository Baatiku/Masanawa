.class final Lteam/opay/pay/account/verify/VerifyViewModel$callOutPhone$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "VerifyViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/account/verify/VerifyViewModel;->E(Lteam/opay/pay/account/verify/BaseVerifyFragment;Ljava/lang/String;Ljava/lang/String;)V
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
    c = "team.opay.pay.account.verify.VerifyViewModel$callOutPhone$1"
    f = "VerifyViewModel.kt"
    l = {
        0x163
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $outCallTemp:Ljava/lang/String;

.field final synthetic $popupScene:Ljava/lang/String;

.field final synthetic $viewLifecycleOwner:Lteam/opay/pay/account/verify/BaseVerifyFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/account/verify/BaseVerifyFragment<",
            "*>;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lteam/opay/pay/account/verify/VerifyViewModel;


# direct methods
.method public constructor <init>(Lteam/opay/pay/account/verify/VerifyViewModel;Lteam/opay/pay/account/verify/BaseVerifyFragment;Ljava/lang/String;Ljava/lang/String;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/account/verify/VerifyViewModel;",
            "Lteam/opay/pay/account/verify/BaseVerifyFragment<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/account/verify/VerifyViewModel$callOutPhone$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/account/verify/VerifyViewModel$callOutPhone$1;->this$0:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/account/verify/VerifyViewModel$callOutPhone$1;->$viewLifecycleOwner:Lteam/opay/pay/account/verify/BaseVerifyFragment;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/account/verify/VerifyViewModel$callOutPhone$1;->$popupScene:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/pay/account/verify/VerifyViewModel$callOutPhone$1;->$outCallTemp:Ljava/lang/String;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static synthetic c(Lteam/opay/pay/account/verify/VerifyViewModel;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/account/verify/BaseVerifyFragment;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lteam/opay/pay/account/verify/VerifyViewModel$callOutPhone$1;->invokeSuspend$lambda$0(Lteam/opay/pay/account/verify/VerifyViewModel;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/account/verify/BaseVerifyFragment;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final invokeSuspend$lambda$0(Lteam/opay/pay/account/verify/VerifyViewModel;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/account/verify/BaseVerifyFragment;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifyViewModel;->T()Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz p5, :cond_0

    .line 7
    .line 8
    invoke-virtual {p5}, Lteam/opay/core/android/arch/Resource;->f()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x1

    .line 13
    if-ne v2, v3, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    if-eqz p5, :cond_1

    .line 25
    .line 26
    invoke-virtual {p5}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move-object v1, v0

    .line 32
    :goto_0
    sget-object v2, Lteam/opay/core/android/arch/Status;->SUCCESS:Lteam/opay/core/android/arch/Status;

    .line 33
    .line 34
    if-ne v1, v2, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifyViewModel;->I()Landroidx/lifecycle/MutableLiveData;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto/16 :goto_2

    .line 46
    .line 47
    :cond_2
    if-eqz p5, :cond_3

    .line 48
    .line 49
    invoke-virtual {p5}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    :cond_3
    sget-object v1, Lteam/opay/core/android/arch/Status;->ERROR:Lteam/opay/core/android/arch/Status;

    .line 54
    .line 55
    if-ne v0, v1, :cond_8

    .line 56
    .line 57
    iget-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v0, [Ljava/lang/Object;

    .line 60
    .line 61
    invoke-virtual {p5}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const-string v2, ""

    .line 66
    .line 67
    if-nez v1, :cond_4

    .line 68
    .line 69
    move-object v1, v2

    .line 70
    :cond_4
    const-string v3, "error_code"

    .line 71
    .line 72
    invoke-static {v3, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-static {v0, v1}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iput-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v0, [Ljava/lang/Object;

    .line 83
    .line 84
    invoke-virtual {p5}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    if-nez v1, :cond_5

    .line 89
    .line 90
    move-object v1, v2

    .line 91
    :cond_5
    const-string v3, "error_message"

    .line 92
    .line 93
    invoke-static {v3, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-static {v0, v1}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    iput-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v0, [Ljava/lang/Object;

    .line 104
    .line 105
    const-string v1, "popup_scene"

    .line 106
    .line 107
    invoke-static {v1, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    invoke-static {v0, p2}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    iput-object p2, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast p2, [Ljava/lang/Object;

    .line 118
    .line 119
    const-string v0, "out_call_temp"

    .line 120
    .line 121
    invoke-static {v0, p3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 122
    .line 123
    .line 124
    move-result-object p3

    .line 125
    invoke-static {p2, p3}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    iput-object p2, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 130
    .line 131
    sget-object p1, Lx7b;->a:Lx7b;

    .line 132
    .line 133
    move-object p3, p2

    .line 134
    check-cast p3, [Ljava/lang/Object;

    .line 135
    .line 136
    check-cast p2, [Ljava/lang/Object;

    .line 137
    .line 138
    array-length p2, p2

    .line 139
    invoke-static {p3, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    check-cast p2, [Lkotlin/Pair;

    .line 144
    .line 145
    const-string p3, "verify_poll_out_call_api_fail_page_show"

    .line 146
    .line 147
    invoke-virtual {p1, p3, p2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifyViewModel;->I()Landroidx/lifecycle/MutableLiveData;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 155
    .line 156
    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p5}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    const-string p2, "9000011"

    .line 164
    .line 165
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    if-eqz p1, :cond_6

    .line 170
    .line 171
    invoke-virtual {p5}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-static {p0, p1, p4}, Lteam/opay/pay/account/verify/VerifyViewModel;->D(Lteam/opay/pay/account/verify/VerifyViewModel;Ljava/lang/String;Lteam/opay/pay/account/verify/BaseVerifyFragment;)V

    .line 176
    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_6
    sget-object p0, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 180
    .line 181
    invoke-virtual {p0}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    invoke-virtual {p0}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    invoke-virtual {p5}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    if-nez p1, :cond_7

    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_7
    move-object v2, p1

    .line 197
    :goto_1
    invoke-static {p0, v2}, Lkmf;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    :cond_8
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 201
    .line 202
    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 6
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
    new-instance p1, Lteam/opay/pay/account/verify/VerifyViewModel$callOutPhone$1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/account/verify/VerifyViewModel$callOutPhone$1;->this$0:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/pay/account/verify/VerifyViewModel$callOutPhone$1;->$viewLifecycleOwner:Lteam/opay/pay/account/verify/BaseVerifyFragment;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/pay/account/verify/VerifyViewModel$callOutPhone$1;->$popupScene:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/pay/account/verify/VerifyViewModel$callOutPhone$1;->$outCallTemp:Ljava/lang/String;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lteam/opay/pay/account/verify/VerifyViewModel$callOutPhone$1;-><init>(Lteam/opay/pay/account/verify/VerifyViewModel;Lteam/opay/pay/account/verify/BaseVerifyFragment;Ljava/lang/String;Ljava/lang/String;Ljr2;)V

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/account/verify/VerifyViewModel$callOutPhone$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/account/verify/VerifyViewModel$callOutPhone$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/account/verify/VerifyViewModel$callOutPhone$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/account/verify/VerifyViewModel$callOutPhone$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/pay/account/verify/VerifyViewModel$callOutPhone$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyViewModel$callOutPhone$1;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    move-object v2, v0

    .line 20
    goto/16 :goto_2

    .line 21
    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :cond_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    new-instance p1, Lteam/opay/pay/account/OutCallReq;

    .line 34
    .line 35
    iget-object v1, p0, Lteam/opay/pay/account/verify/VerifyViewModel$callOutPhone$1;->this$0:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 36
    .line 37
    invoke-virtual {v1}, Lteam/opay/pay/account/verify/VerifyViewModel;->m0()Lteam/opay/pay/account/verify/VerifyPoolResponse;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const/4 v3, 0x0

    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    invoke-virtual {v1}, Lteam/opay/pay/account/verify/VerifyPoolResponse;->getValChainId()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    move-object v1, v3

    .line 50
    :goto_0
    iget-object v4, p0, Lteam/opay/pay/account/verify/VerifyViewModel$callOutPhone$1;->this$0:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 51
    .line 52
    invoke-virtual {v4}, Lteam/opay/pay/account/verify/VerifyViewModel;->R()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    iget-object v5, p0, Lteam/opay/pay/account/verify/VerifyViewModel$callOutPhone$1;->this$0:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 57
    .line 58
    invoke-virtual {v5}, Lteam/opay/pay/account/verify/VerifyViewModel;->M()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    iget-object v6, p0, Lteam/opay/pay/account/verify/VerifyViewModel$callOutPhone$1;->this$0:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 63
    .line 64
    invoke-virtual {v6}, Lteam/opay/pay/account/verify/VerifyViewModel;->P()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    invoke-direct {p1, v1, v4, v5, v6}, Lteam/opay/pay/account/OutCallReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 72
    .line 73
    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 74
    .line 75
    .line 76
    const/4 v4, 0x0

    .line 77
    new-array v4, v4, [Lkotlin/Pair;

    .line 78
    .line 79
    iput-object v4, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v4, [Ljava/lang/Object;

    .line 82
    .line 83
    iget-object v5, p0, Lteam/opay/pay/account/verify/VerifyViewModel$callOutPhone$1;->this$0:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 84
    .line 85
    invoke-virtual {v5}, Lteam/opay/pay/account/verify/VerifyViewModel;->P()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    const-string v6, "entrance_id"

    .line 90
    .line 91
    invoke-static {v6, v5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    invoke-static {v4, v5}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    iput-object v4, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v4, [Ljava/lang/Object;

    .line 102
    .line 103
    sget-object v5, Lteam/opay/pay/account/verify/V3VerifyConfig;->Companion:Lteam/opay/pay/account/verify/V3VerifyConfig$Companion;

    .line 104
    .line 105
    invoke-virtual {v5}, Lteam/opay/pay/account/verify/V3VerifyConfig$Companion;->a()Z

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    if-eqz v5, :cond_3

    .line 110
    .line 111
    const-string v5, "3"

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_3
    const-string v5, ""

    .line 115
    .line 116
    :goto_1
    const-string v6, "verify_pool_version"

    .line 117
    .line 118
    invoke-static {v6, v5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    invoke-static {v4, v5}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    iput-object v4, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast v4, [Ljava/lang/Object;

    .line 129
    .line 130
    sget-object v5, Lteam/opay/pay/account/verify/c;->a:Lteam/opay/pay/account/verify/c;

    .line 131
    .line 132
    invoke-virtual {v5}, Lteam/opay/pay/account/verify/c;->i()Lteam/opay/pay/account/verify/VerifyPoolResponse;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    if-eqz v5, :cond_4

    .line 137
    .line 138
    invoke-virtual {v5}, Lteam/opay/pay/account/verify/VerifyPoolResponse;->getValChainId()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    :cond_4
    const-string v5, "valChainId"

    .line 143
    .line 144
    invoke-static {v5, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-static {v4, v3}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    iput-object v3, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 153
    .line 154
    iget-object v3, p0, Lteam/opay/pay/account/verify/VerifyViewModel$callOutPhone$1;->this$0:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 155
    .line 156
    iput-object v1, p0, Lteam/opay/pay/account/verify/VerifyViewModel$callOutPhone$1;->L$0:Ljava/lang/Object;

    .line 157
    .line 158
    iput v2, p0, Lteam/opay/pay/account/verify/VerifyViewModel$callOutPhone$1;->label:I

    .line 159
    .line 160
    invoke-static {v3, p1, p0}, Lteam/opay/pay/account/verify/VerifyViewModel;->B(Lteam/opay/pay/account/verify/VerifyViewModel;Lteam/opay/pay/account/OutCallReq;Ljr2;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    if-ne p1, v0, :cond_5

    .line 165
    .line 166
    return-object v0

    .line 167
    :cond_5
    move-object v2, v1

    .line 168
    :goto_2
    check-cast p1, Lretrofit2/Call;

    .line 169
    .line 170
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyViewModel$callOutPhone$1;->this$0:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 171
    .line 172
    invoke-static {p1, v0}, Lkpc;->a(Lretrofit2/Call;Landroidx/lifecycle/AndroidViewModel;)Landroidx/lifecycle/LiveData;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    iget-object v6, p0, Lteam/opay/pay/account/verify/VerifyViewModel$callOutPhone$1;->$viewLifecycleOwner:Lteam/opay/pay/account/verify/BaseVerifyFragment;

    .line 177
    .line 178
    iget-object v1, p0, Lteam/opay/pay/account/verify/VerifyViewModel$callOutPhone$1;->this$0:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 179
    .line 180
    iget-object v3, p0, Lteam/opay/pay/account/verify/VerifyViewModel$callOutPhone$1;->$popupScene:Ljava/lang/String;

    .line 181
    .line 182
    iget-object v4, p0, Lteam/opay/pay/account/verify/VerifyViewModel$callOutPhone$1;->$outCallTemp:Ljava/lang/String;

    .line 183
    .line 184
    new-instance v7, Lteam/opay/pay/account/verify/f;

    .line 185
    .line 186
    move-object v0, v7

    .line 187
    move-object v5, v6

    .line 188
    invoke-direct/range {v0 .. v5}, Lteam/opay/pay/account/verify/f;-><init>(Lteam/opay/pay/account/verify/VerifyViewModel;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/account/verify/BaseVerifyFragment;)V

    .line 189
    .line 190
    .line 191
    invoke-static {p1, v6, v7}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 192
    .line 193
    .line 194
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 195
    .line 196
    return-object p1
.end method
