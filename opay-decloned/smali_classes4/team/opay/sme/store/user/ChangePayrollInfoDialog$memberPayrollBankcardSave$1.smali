.class final Lteam/opay/sme/store/user/ChangePayrollInfoDialog$memberPayrollBankcardSave$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ChangePayrollInfoDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/store/user/ChangePayrollInfoDialog;->r0(Ljava/lang/String;)V
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
    c = "team.opay.sme.store.user.ChangePayrollInfoDialog$memberPayrollBankcardSave$1"
    f = "ChangePayrollInfoDialog.kt"
    l = {
        0x135
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $payPin:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lteam/opay/sme/store/user/ChangePayrollInfoDialog;


# direct methods
.method public constructor <init>(Lteam/opay/sme/store/user/ChangePayrollInfoDialog;Ljava/lang/String;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/sme/store/user/ChangePayrollInfoDialog;",
            "Ljava/lang/String;",
            "Ljr2<",
            "-",
            "Lteam/opay/sme/store/user/ChangePayrollInfoDialog$memberPayrollBankcardSave$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/store/user/ChangePayrollInfoDialog$memberPayrollBankcardSave$1;->this$0:Lteam/opay/sme/store/user/ChangePayrollInfoDialog;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/sme/store/user/ChangePayrollInfoDialog$memberPayrollBankcardSave$1;->$payPin:Ljava/lang/String;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 2
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
    new-instance p1, Lteam/opay/sme/store/user/ChangePayrollInfoDialog$memberPayrollBankcardSave$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/sme/store/user/ChangePayrollInfoDialog$memberPayrollBankcardSave$1;->this$0:Lteam/opay/sme/store/user/ChangePayrollInfoDialog;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/sme/store/user/ChangePayrollInfoDialog$memberPayrollBankcardSave$1;->$payPin:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/sme/store/user/ChangePayrollInfoDialog$memberPayrollBankcardSave$1;-><init>(Lteam/opay/sme/store/user/ChangePayrollInfoDialog;Ljava/lang/String;Ljr2;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/user/ChangePayrollInfoDialog$memberPayrollBankcardSave$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/user/ChangePayrollInfoDialog$memberPayrollBankcardSave$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/store/user/ChangePayrollInfoDialog$memberPayrollBankcardSave$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/store/user/ChangePayrollInfoDialog$memberPayrollBankcardSave$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/sme/store/user/ChangePayrollInfoDialog$memberPayrollBankcardSave$1;->label:I

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
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lteam/opay/sme/store/user/ChangePayrollInfoDialog$memberPayrollBankcardSave$1;->this$0:Lteam/opay/sme/store/user/ChangePayrollInfoDialog;

    .line 28
    .line 29
    invoke-static {p1}, Lteam/opay/sme/store/user/ChangePayrollInfoDialog;->c0(Lteam/opay/sme/store/user/ChangePayrollInfoDialog;)Lcud;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    iget-object p1, p1, Lcud;->g:Lteam/opay/core/widget/PulseLoaderView;

    .line 36
    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    invoke-static {p1}, Lg0g;->h(Landroid/view/View;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    iget-object p1, p0, Lteam/opay/sme/store/user/ChangePayrollInfoDialog$memberPayrollBankcardSave$1;->this$0:Lteam/opay/sme/store/user/ChangePayrollInfoDialog;

    .line 43
    .line 44
    invoke-static {p1}, Lteam/opay/sme/store/user/ChangePayrollInfoDialog;->d0(Lteam/opay/sme/store/user/ChangePayrollInfoDialog;)Lteam/opay/sme/store/api/PayrollBankInfo;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iget-object v1, p0, Lteam/opay/sme/store/user/ChangePayrollInfoDialog$memberPayrollBankcardSave$1;->$payPin:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Lteam/opay/sme/store/api/PayrollBankInfo;->setOperatorPayPin(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lteam/opay/sme/store/user/ChangePayrollInfoDialog$memberPayrollBankcardSave$1;->this$0:Lteam/opay/sme/store/user/ChangePayrollInfoDialog;

    .line 54
    .line 55
    invoke-static {v1}, Lteam/opay/sme/store/user/ChangePayrollInfoDialog;->e0(Lteam/opay/sme/store/user/ChangePayrollInfoDialog;)Lteam/opay/sme/store/StoreViewModel;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iput v2, p0, Lteam/opay/sme/store/user/ChangePayrollInfoDialog$memberPayrollBankcardSave$1;->label:I

    .line 60
    .line 61
    invoke-virtual {v1, p1, p0}, Lteam/opay/sme/store/StoreViewModel;->X(Lteam/opay/sme/store/api/PayrollBankInfo;Ljr2;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-ne p1, v0, :cond_3

    .line 66
    .line 67
    return-object v0

    .line 68
    :cond_3
    :goto_0
    check-cast p1, Lteam/opay/core/http/HttpResult;

    .line 69
    .line 70
    iget-object v0, p0, Lteam/opay/sme/store/user/ChangePayrollInfoDialog$memberPayrollBankcardSave$1;->this$0:Lteam/opay/sme/store/user/ChangePayrollInfoDialog;

    .line 71
    .line 72
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-interface {v0}, Lag8;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 81
    .line 82
    invoke-static {v0, v1}, Lsf8;->a(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_8

    .line 87
    .line 88
    instance-of v0, p1, Lteam/opay/core/http/HttpResult$Success;

    .line 89
    .line 90
    if-eqz v0, :cond_5

    .line 91
    .line 92
    iget-object p1, p0, Lteam/opay/sme/store/user/ChangePayrollInfoDialog$memberPayrollBankcardSave$1;->this$0:Lteam/opay/sme/store/user/ChangePayrollInfoDialog;

    .line 93
    .line 94
    invoke-static {p1}, Lteam/opay/sme/store/user/ChangePayrollInfoDialog;->c0(Lteam/opay/sme/store/user/ChangePayrollInfoDialog;)Lcud;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    if-eqz p1, :cond_4

    .line 99
    .line 100
    iget-object p1, p1, Lcud;->g:Lteam/opay/core/widget/PulseLoaderView;

    .line 101
    .line 102
    if-eqz p1, :cond_4

    .line 103
    .line 104
    invoke-static {p1}, Lg0g;->d(Landroid/view/View;)V

    .line 105
    .line 106
    .line 107
    :cond_4
    iget-object p1, p0, Lteam/opay/sme/store/user/ChangePayrollInfoDialog$memberPayrollBankcardSave$1;->this$0:Lteam/opay/sme/store/user/ChangePayrollInfoDialog;

    .line 108
    .line 109
    invoke-virtual {p1}, Lteam/opay/opb/common/base/EdgeSheetFragment;->getAppContext()Landroid/content/Context;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    iget-object v0, p0, Lteam/opay/sme/store/user/ChangePayrollInfoDialog$memberPayrollBankcardSave$1;->this$0:Lteam/opay/sme/store/user/ChangePayrollInfoDialog;

    .line 114
    .line 115
    sget v1, Lteam/opay/sme/store/R$string;->sme_store_successful:I

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-static {p1, v0}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-object p1, p0, Lteam/opay/sme/store/user/ChangePayrollInfoDialog$memberPayrollBankcardSave$1;->this$0:Lteam/opay/sme/store/user/ChangePayrollInfoDialog;

    .line 125
    .line 126
    invoke-virtual {p1}, Lteam/opay/core/common/base/BaseSheetFragment;->dismiss()V

    .line 127
    .line 128
    .line 129
    iget-object p1, p0, Lteam/opay/sme/store/user/ChangePayrollInfoDialog$memberPayrollBankcardSave$1;->this$0:Lteam/opay/sme/store/user/ChangePayrollInfoDialog;

    .line 130
    .line 131
    invoke-virtual {p1}, Lteam/opay/sme/store/user/ChangePayrollInfoDialog;->i0()Lteam/opay/core/common/android/event/CallbackWrapper;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    if-eqz p1, :cond_8

    .line 136
    .line 137
    iget-object v0, p0, Lteam/opay/sme/store/user/ChangePayrollInfoDialog$memberPayrollBankcardSave$1;->this$0:Lteam/opay/sme/store/user/ChangePayrollInfoDialog;

    .line 138
    .line 139
    invoke-static {v0}, Lteam/opay/sme/store/user/ChangePayrollInfoDialog;->d0(Lteam/opay/sme/store/user/ChangePayrollInfoDialog;)Lteam/opay/sme/store/api/PayrollBankInfo;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {p1, v0}, Lteam/opay/core/common/android/event/CallbackWrapper;->a(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_5
    iget-object v0, p0, Lteam/opay/sme/store/user/ChangePayrollInfoDialog$memberPayrollBankcardSave$1;->this$0:Lteam/opay/sme/store/user/ChangePayrollInfoDialog;

    .line 148
    .line 149
    invoke-static {v0}, Lteam/opay/sme/store/user/ChangePayrollInfoDialog;->c0(Lteam/opay/sme/store/user/ChangePayrollInfoDialog;)Lcud;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    if-eqz v0, :cond_6

    .line 154
    .line 155
    iget-object v0, v0, Lcud;->g:Lteam/opay/core/widget/PulseLoaderView;

    .line 156
    .line 157
    if-eqz v0, :cond_6

    .line 158
    .line 159
    invoke-static {v0}, Lg0g;->d(Landroid/view/View;)V

    .line 160
    .line 161
    .line 162
    :cond_6
    iget-object v0, p0, Lteam/opay/sme/store/user/ChangePayrollInfoDialog$memberPayrollBankcardSave$1;->this$0:Lteam/opay/sme/store/user/ChangePayrollInfoDialog;

    .line 163
    .line 164
    invoke-virtual {v0}, Lteam/opay/opb/common/base/EdgeSheetFragment;->getAppContext()Landroid/content/Context;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult;->getApiError()Lteam/opay/core/http/arch/ApiError;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    if-eqz p1, :cond_7

    .line 173
    .line 174
    invoke-virtual {p1}, Lteam/opay/core/http/arch/ApiError;->d()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    goto :goto_1

    .line 179
    :cond_7
    const/4 p1, 0x0

    .line 180
    :goto_1
    invoke-static {v0, p1}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    :cond_8
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 184
    .line 185
    return-object p1
.end method
