.class public final Lcashier/ui/PayFailedFragment;
.super Lcashier/ui/Hilt_PayFailedFragment;
.source "PayFailedFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0001\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J-\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u0003J!\u0010\u0010\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\n2\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0017\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0003J\u000f\u0010\u0013\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0003R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u001b\u0010\u001d\u001a\u00020\u00188BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001cR$\u0010%\u001a\u0004\u0018\u00010\u001e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$\u00a8\u0006&"
    }
    d2 = {
        "Lcashier/ui/PayFailedFragment;",
        "Lcashier/ui/BaseBSFragment;",
        "<init>",
        "()V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "",
        "onDestroyView",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "I",
        "M",
        "Lp8b;",
        "g",
        "Lp8b;",
        "binding",
        "Lcashier/model/CashierViewModel;",
        "h",
        "Lid8;",
        "K",
        "()Lcashier/model/CashierViewModel;",
        "viewModel",
        "",
        "i",
        "Ljava/lang/String;",
        "J",
        "()Ljava/lang/String;",
        "L",
        "(Ljava/lang/String;)V",
        "code",
        "cashier_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public g:Lp8b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final h:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcashier/ui/Hilt_PayFailedFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcashier/model/CashierViewModel;

    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcashier/ui/PayFailedFragment$special$$inlined$activityViewModels$default$1;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcashier/ui/PayFailedFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lcashier/ui/PayFailedFragment$special$$inlined$activityViewModels$default$2;

    .line 16
    .line 17
    invoke-direct {v2, p0}, Lcashier/ui/PayFailedFragment$special$$inlined$activityViewModels$default$2;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p0, v0, v1, v2}, Landroidx/fragment/app/FragmentViewModelLazyKt;->c(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcashier/ui/PayFailedFragment;->h:Lid8;

    .line 25
    .line 26
    return-void
.end method

.method public static final synthetic E(Lcashier/ui/PayFailedFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcashier/ui/PayFailedFragment;->I()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic F(Lcashier/ui/PayFailedFragment;)Lp8b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcashier/ui/PayFailedFragment;->g:Lp8b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic G(Lcashier/ui/PayFailedFragment;)Lcashier/model/CashierViewModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcashier/ui/PayFailedFragment;->K()Lcashier/model/CashierViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic H(Lcashier/ui/PayFailedFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcashier/ui/PayFailedFragment;->M()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final K()Lcashier/model/CashierViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcashier/ui/PayFailedFragment;->h:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcashier/model/CashierViewModel;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final I()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final J()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcashier/ui/PayFailedFragment;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final L(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcashier/ui/PayFailedFragment;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final M()V
    .locals 19

    .line 1
    sget-object v0, Lteam/opay/swarmfoundation/utils/SwarmBus;->a:Lteam/opay/swarmfoundation/utils/SwarmBus;

    .line 2
    .line 3
    new-instance v7, Lteam/opay/swarmfoundation/utils/PaymentMessage;

    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Lcashier/ui/PayFailedFragment;->K()Lcashier/model/CashierViewModel;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->N()Lcashier/data/CashierInput;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcashier/data/CashierInput;->b()Lteam/opay/swarmfoundation/payment/PayInput;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v8, 0x0

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1}, Lteam/opay/swarmfoundation/payment/PayInput;->getOrderNo()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v1, v8

    .line 26
    :goto_0
    const-string v9, ""

    .line 27
    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    move-object v2, v9

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move-object v2, v1

    .line 33
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcashier/ui/PayFailedFragment;->K()Lcashier/model/CashierViewModel;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->X()Lcashier/data/OrderInfo;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    invoke-virtual {v1}, Lcashier/data/OrderInfo;->b()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    move-object v1, v8

    .line 49
    :goto_2
    if-nez v1, :cond_3

    .line 50
    .line 51
    move-object v3, v9

    .line 52
    goto :goto_3

    .line 53
    :cond_3
    move-object v3, v1

    .line 54
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcashier/ui/PayFailedFragment;->K()Lcashier/model/CashierViewModel;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->U()Lcashier/data/FailedInfo;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1}, Lcashier/data/FailedInfo;->c()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-nez v1, :cond_4

    .line 67
    .line 68
    move-object v5, v9

    .line 69
    goto :goto_4

    .line 70
    :cond_4
    move-object v5, v1

    .line 71
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcashier/ui/PayFailedFragment;->K()Lcashier/model/CashierViewModel;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->U()Lcashier/data/FailedInfo;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v1}, Lcashier/data/FailedInfo;->d()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    const/16 v4, 0xcd

    .line 84
    .line 85
    move-object v1, v7

    .line 86
    invoke-direct/range {v1 .. v6}, Lteam/opay/swarmfoundation/utils/PaymentMessage;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const/4 v4, 0x4

    .line 90
    const/4 v5, 0x0

    .line 91
    const-string v1, "swarm_event_key_payment_result"

    .line 92
    .line 93
    const/4 v3, 0x0

    .line 94
    move-object v2, v7

    .line 95
    invoke-static/range {v0 .. v5}, Lteam/opay/swarmfoundation/utils/SwarmBus;->d(Lteam/opay/swarmfoundation/utils/SwarmBus;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    invoke-direct/range {p0 .. p0}, Lcashier/ui/PayFailedFragment;->K()Lcashier/model/CashierViewModel;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->R()Lcashier/CashierDelegate;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    if-eqz v0, :cond_a

    .line 107
    .line 108
    invoke-direct/range {p0 .. p0}, Lcashier/ui/PayFailedFragment;->K()Lcashier/model/CashierViewModel;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->U()Lcashier/data/FailedInfo;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v1}, Lcashier/data/FailedInfo;->c()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    const-string v2, "30002"

    .line 121
    .line 122
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-eqz v1, :cond_5

    .line 127
    .line 128
    sget-object v1, Lcashier/CashierResult;->SUCCESS:Lcashier/CashierResult;

    .line 129
    .line 130
    :goto_5
    move-object v11, v1

    .line 131
    goto :goto_6

    .line 132
    :cond_5
    sget-object v1, Lcashier/CashierResult;->FAILED:Lcashier/CashierResult;

    .line 133
    .line 134
    goto :goto_5

    .line 135
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcashier/ui/PayFailedFragment;->K()Lcashier/model/CashierViewModel;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->X()Lcashier/data/OrderInfo;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    if-eqz v1, :cond_6

    .line 144
    .line 145
    invoke-virtual {v1}, Lcashier/data/OrderInfo;->b()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    move-object v13, v1

    .line 150
    goto :goto_7

    .line 151
    :cond_6
    move-object v13, v8

    .line 152
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcashier/ui/PayFailedFragment;->K()Lcashier/model/CashierViewModel;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->N()Lcashier/data/CashierInput;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v1}, Lcashier/data/CashierInput;->b()Lteam/opay/swarmfoundation/payment/PayInput;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    if-eqz v1, :cond_7

    .line 165
    .line 166
    invoke-virtual {v1}, Lteam/opay/swarmfoundation/payment/PayInput;->getOrderNo()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v8

    .line 170
    :cond_7
    if-nez v8, :cond_8

    .line 171
    .line 172
    move-object v12, v9

    .line 173
    goto :goto_8

    .line 174
    :cond_8
    move-object v12, v8

    .line 175
    :goto_8
    invoke-direct/range {p0 .. p0}, Lcashier/ui/PayFailedFragment;->K()Lcashier/model/CashierViewModel;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->U()Lcashier/data/FailedInfo;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {v1}, Lcashier/data/FailedInfo;->c()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    if-nez v1, :cond_9

    .line 188
    .line 189
    move-object v15, v9

    .line 190
    goto :goto_9

    .line 191
    :cond_9
    move-object v15, v1

    .line 192
    :goto_9
    invoke-direct/range {p0 .. p0}, Lcashier/ui/PayFailedFragment;->K()Lcashier/model/CashierViewModel;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->U()Lcashier/data/FailedInfo;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-virtual {v1}, Lcashier/data/FailedInfo;->d()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v16

    .line 204
    new-instance v1, Lcashier/PayResult;

    .line 205
    .line 206
    const/16 v17, 0x8

    .line 207
    .line 208
    const/16 v18, 0x0

    .line 209
    .line 210
    const/4 v14, 0x0

    .line 211
    move-object v10, v1

    .line 212
    invoke-direct/range {v10 .. v18}, Lcashier/PayResult;-><init>(Lcashier/CashierResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 213
    .line 214
    .line 215
    invoke-interface {v0, v1}, Lcashier/CashierDelegate;->onPaymentResult(Lcashier/PayResult;)V

    .line 216
    .line 217
    .line 218
    :cond_a
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string p3, "inflater"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 p3, 0x0

    .line 11
    invoke-static {p1, p2, p3}, Lp8b;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lp8b;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcashier/ui/PayFailedFragment;->g:Lp8b;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Lp8b;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    :goto_0
    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcashier/ui/PayFailedFragment;->g:Lp8b;

    .line 6
    .line 7
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    iget-object p1, p0, Lcashier/ui/PayFailedFragment;->i:Ljava/lang/String;

    .line 12
    .line 13
    const-string p2, "04010"

    .line 14
    .line 15
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/4 p2, 0x1

    .line 20
    const/4 v0, 0x0

    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lcashier/ui/PayFailedFragment;->i:Ljava/lang/String;

    .line 24
    .line 25
    const-string v1, "04009"

    .line 26
    .line 27
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p1, 0x0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 37
    :goto_1
    iget-object v1, p0, Lcashier/ui/PayFailedFragment;->i:Ljava/lang/String;

    .line 38
    .line 39
    const-string v2, "20100"

    .line 40
    .line 41
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_3

    .line 46
    .line 47
    iget-object v1, p0, Lcashier/ui/PayFailedFragment;->i:Ljava/lang/String;

    .line 48
    .line 49
    const-string v2, "20103"

    .line 50
    .line 51
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    const/4 v1, 0x0

    .line 59
    goto :goto_3

    .line 60
    :cond_3
    :goto_2
    const/4 v1, 0x1

    .line 61
    :goto_3
    iget-object v2, p0, Lcashier/ui/PayFailedFragment;->g:Lp8b;

    .line 62
    .line 63
    const-string v3, "ivClose"

    .line 64
    .line 65
    if-eqz v2, :cond_6

    .line 66
    .line 67
    iget-object v2, v2, Lp8b;->f:Landroidx/appcompat/widget/AppCompatImageView;

    .line 68
    .line 69
    if-eqz v2, :cond_6

    .line 70
    .line 71
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    if-nez v1, :cond_5

    .line 75
    .line 76
    if-eqz p1, :cond_4

    .line 77
    .line 78
    goto :goto_4

    .line 79
    :cond_4
    const/4 v4, 0x0

    .line 80
    goto :goto_5

    .line 81
    :cond_5
    :goto_4
    const/4 v4, 0x1

    .line 82
    :goto_5
    invoke-static {v2, v4}, Ld0g;->t(Landroid/view/View;Z)V

    .line 83
    .line 84
    .line 85
    :cond_6
    iget-object v2, p0, Lcashier/ui/PayFailedFragment;->g:Lp8b;

    .line 86
    .line 87
    if-eqz v2, :cond_7

    .line 88
    .line 89
    iget-object v2, v2, Lp8b;->f:Landroidx/appcompat/widget/AppCompatImageView;

    .line 90
    .line 91
    if-eqz v2, :cond_7

    .line 92
    .line 93
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    new-instance v3, Lcashier/ui/PayFailedFragment$onViewCreated$1$1;

    .line 97
    .line 98
    invoke-direct {v3, p0}, Lcashier/ui/PayFailedFragment$onViewCreated$1$1;-><init>(Lcashier/ui/PayFailedFragment;)V

    .line 99
    .line 100
    .line 101
    invoke-static {v2, v3}, Ld0g;->o(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 102
    .line 103
    .line 104
    :cond_7
    invoke-direct {p0}, Lcashier/ui/PayFailedFragment;->K()Lcashier/model/CashierViewModel;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v2}, Lcashier/model/CashierViewModel;->U()Lcashier/data/FailedInfo;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    iget-object v3, p0, Lcashier/ui/PayFailedFragment;->g:Lp8b;

    .line 113
    .line 114
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    iget-object v3, v3, Lp8b;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 118
    .line 119
    invoke-virtual {v2}, Lcashier/data/FailedInfo;->e()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    .line 125
    .line 126
    iget-object v3, p0, Lcashier/ui/PayFailedFragment;->g:Lp8b;

    .line 127
    .line 128
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    iget-object v3, v3, Lp8b;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 132
    .line 133
    invoke-virtual {v2}, Lcashier/data/FailedInfo;->d()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    .line 139
    .line 140
    if-eqz v1, :cond_8

    .line 141
    .line 142
    iget-object v2, p0, Lcashier/ui/PayFailedFragment;->g:Lp8b;

    .line 143
    .line 144
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    iget-object v2, v2, Lp8b;->b:Lcom/google/android/material/button/MaterialButton;

    .line 148
    .line 149
    sget v3, Lteam/opay/pay/cashier/R$string;->pay_daily_limit_upgrade:I

    .line 150
    .line 151
    invoke-static {v3}, Lcashier/util/UtilsKt;->b(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    .line 157
    .line 158
    goto :goto_6

    .line 159
    :cond_8
    if-eqz p1, :cond_9

    .line 160
    .line 161
    iget-object v2, p0, Lcashier/ui/PayFailedFragment;->g:Lp8b;

    .line 162
    .line 163
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    iget-object v2, v2, Lp8b;->b:Lcom/google/android/material/button/MaterialButton;

    .line 167
    .line 168
    sget v3, Lteam/opay/pay/cashier/R$string;->pay_go:I

    .line 169
    .line 170
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    .line 176
    .line 177
    :cond_9
    :goto_6
    iget-object v2, p0, Lcashier/ui/PayFailedFragment;->g:Lp8b;

    .line 178
    .line 179
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    iget-object v2, v2, Lp8b;->b:Lcom/google/android/material/button/MaterialButton;

    .line 183
    .line 184
    const-string v3, "binding!!.action"

    .line 185
    .line 186
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    new-instance v3, Lcashier/ui/PayFailedFragment$onViewCreated$1$3;

    .line 190
    .line 191
    invoke-direct {v3, p0, p1, v1}, Lcashier/ui/PayFailedFragment$onViewCreated$1$3;-><init>(Lcashier/ui/PayFailedFragment;ZZ)V

    .line 192
    .line 193
    .line 194
    invoke-static {v2, v3}, Ld0g;->o(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 195
    .line 196
    .line 197
    sget-object v4, Lcashier/model/CashierViewModel;->E:Lcashier/model/CashierViewModel$Companion;

    .line 198
    .line 199
    invoke-direct {p0}, Lcashier/ui/PayFailedFragment;->K()Lcashier/model/CashierViewModel;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-virtual {p1}, Lcashier/model/CashierViewModel;->i0()Lcashier/data/PaymentItem;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    if-eqz p1, :cond_a

    .line 208
    .line 209
    invoke-virtual {p1}, Lcashier/data/PaymentItem;->d()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    goto :goto_7

    .line 214
    :cond_a
    const/4 p1, 0x0

    .line 215
    :goto_7
    const-string v1, "selected_paychannel"

    .line 216
    .line 217
    invoke-static {v1, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    const-string v1, "pay_code"

    .line 222
    .line 223
    iget-object v2, p0, Lcashier/ui/PayFailedFragment;->i:Ljava/lang/String;

    .line 224
    .line 225
    invoke-static {v1, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-direct {p0}, Lcashier/ui/PayFailedFragment;->K()Lcashier/model/CashierViewModel;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-virtual {v2}, Lcashier/model/CashierViewModel;->U()Lcashier/data/FailedInfo;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    invoke-virtual {v2}, Lcashier/data/FailedInfo;->d()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    const-string v3, "pay_msg"

    .line 242
    .line 243
    invoke-static {v3, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    const/4 v3, 0x3

    .line 248
    new-array v6, v3, [Lkotlin/Pair;

    .line 249
    .line 250
    aput-object p1, v6, v0

    .line 251
    .line 252
    aput-object v1, v6, p2

    .line 253
    .line 254
    const/4 p1, 0x2

    .line 255
    aput-object v2, v6, p1

    .line 256
    .line 257
    const/4 v8, 0x4

    .line 258
    const/4 v9, 0x0

    .line 259
    const-string v5, "COMMON_pay_fail_window_show"

    .line 260
    .line 261
    const/4 v7, 0x0

    .line 262
    invoke-static/range {v4 .. v9}, Lcashier/model/CashierViewModel$Companion;->b(Lcashier/model/CashierViewModel$Companion;Ljava/lang/String;[Lkotlin/Pair;Lcashier/data/CashierInput;ILjava/lang/Object;)V

    .line 263
    .line 264
    .line 265
    return-void
.end method
