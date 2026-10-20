.class public final Lteam/opay/pay/kyc/ModifyUserNameFragment;
.super Lteam/opay/pay/kyc/Hilt_ModifyUserNameFragment;
.source "ModifyUserNameFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/kyc/ModifyUserNameFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/kyc/Hilt_ModifyUserNameFragment<",
        "Lcg6;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u0007\u0018\u0000 \u001b2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001cB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J!\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u001b\u0010\u0012\u001a\u00020\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0015R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u0015\u00a8\u0006\u001d"
    }
    d2 = {
        "Lteam/opay/pay/kyc/ModifyUserNameFragment;",
        "Lteam/opay/core/base/BaseInjectFragmentV2;",
        "Lcg6;",
        "<init>",
        "()V",
        "",
        "S",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Lteam/opay/pay/kyc/ModifyUserInfoViewModel;",
        "p",
        "Lid8;",
        "T",
        "()Lteam/opay/pay/kyc/ModifyUserInfoViewModel;",
        "viewModel",
        "",
        "q",
        "Ljava/lang/String;",
        "userFirstName",
        "r",
        "userMiddleName",
        "s",
        "userSurName",
        "t",
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
.field public static final t:Lteam/opay/pay/kyc/ModifyUserNameFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final p:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public q:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public r:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public s:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/kyc/ModifyUserNameFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/kyc/ModifyUserNameFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/kyc/ModifyUserNameFragment;->t:Lteam/opay/pay/kyc/ModifyUserNameFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    sget-object v0, Lteam/opay/pay/kyc/ModifyUserNameFragment$1;->INSTANCE:Lteam/opay/pay/kyc/ModifyUserNameFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/kyc/Hilt_ModifyUserNameFragment;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/pay/kyc/ModifyUserNameFragment$special$$inlined$viewModels$default$1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lteam/opay/pay/kyc/ModifyUserNameFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 12
    .line 13
    new-instance v2, Lteam/opay/pay/kyc/ModifyUserNameFragment$special$$inlined$viewModels$default$2;

    .line 14
    .line 15
    invoke-direct {v2, v0}, Lteam/opay/pay/kyc/ModifyUserNameFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v2}, Lkotlin/c;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-class v1, Lteam/opay/pay/kyc/ModifyUserInfoViewModel;

    .line 23
    .line 24
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    new-instance v2, Lteam/opay/pay/kyc/ModifyUserNameFragment$special$$inlined$viewModels$default$3;

    .line 29
    .line 30
    invoke-direct {v2, v0}, Lteam/opay/pay/kyc/ModifyUserNameFragment$special$$inlined$viewModels$default$3;-><init>(Lid8;)V

    .line 31
    .line 32
    .line 33
    new-instance v3, Lteam/opay/pay/kyc/ModifyUserNameFragment$special$$inlined$viewModels$default$4;

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    invoke-direct {v3, v4, v0}, Lteam/opay/pay/kyc/ModifyUserNameFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lid8;)V

    .line 37
    .line 38
    .line 39
    new-instance v4, Lteam/opay/pay/kyc/ModifyUserNameFragment$special$$inlined$viewModels$default$5;

    .line 40
    .line 41
    invoke-direct {v4, p0, v0}, Lteam/opay/pay/kyc/ModifyUserNameFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lid8;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p0, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lteam/opay/pay/kyc/ModifyUserNameFragment;->p:Lid8;

    .line 49
    .line 50
    return-void
.end method

.method public static synthetic O(Lteam/opay/pay/kyc/ModifyUserNameFragment;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/ModifyUserNameFragment;->U(Lteam/opay/pay/kyc/ModifyUserNameFragment;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic P(Lteam/opay/pay/kyc/ModifyUserNameFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/ModifyUserNameFragment;->V(Lteam/opay/pay/kyc/ModifyUserNameFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Q(Lteam/opay/pay/kyc/ModifyUserNameFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lteam/opay/pay/kyc/ModifyUserNameFragment;->W(Lteam/opay/pay/kyc/ModifyUserNameFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic R(Lteam/opay/pay/kyc/ModifyUserNameFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/ModifyUserNameFragment;->X(Lteam/opay/pay/kyc/ModifyUserNameFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final S()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcg6;

    .line 6
    .line 7
    iget-object v0, v0, Lcg6;->b:Lteam/opay/pay/android/views/DetailInputText;

    .line 8
    .line 9
    invoke-direct {p0}, Lteam/opay/pay/kyc/ModifyUserNameFragment;->T()Lteam/opay/pay/kyc/ModifyUserInfoViewModel;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lteam/opay/pay/kyc/ModifyUserInfoViewModel;->x()Lteam/opay/pay/android/validation/FieldValidation;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lteam/opay/pay/android/validation/FieldValidation;->e()Landroidx/lifecycle/LiveData;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lteam/opay/pay/android/validation/ValidationInfo;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    const/4 v3, 0x1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {v1}, Lteam/opay/pay/android/validation/ValidationInfo;->d()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-ne v1, v3, :cond_0

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v1, 0x0

    .line 40
    :goto_0
    xor-int/2addr v1, v3

    .line 41
    invoke-virtual {v0, v1}, Lteam/opay/pay/android/views/DetailInputText;->setError(Z)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lcg6;

    .line 49
    .line 50
    iget-object v0, v0, Lcg6;->c:Lteam/opay/pay/android/views/DetailInputText;

    .line 51
    .line 52
    invoke-direct {p0}, Lteam/opay/pay/kyc/ModifyUserNameFragment;->T()Lteam/opay/pay/kyc/ModifyUserInfoViewModel;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Lteam/opay/pay/kyc/ModifyUserInfoViewModel;->z()Lteam/opay/pay/android/validation/FieldValidation;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1}, Lteam/opay/pay/android/validation/FieldValidation;->e()Landroidx/lifecycle/LiveData;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Lteam/opay/pay/android/validation/ValidationInfo;

    .line 69
    .line 70
    if-eqz v1, :cond_1

    .line 71
    .line 72
    invoke-virtual {v1}, Lteam/opay/pay/android/validation/ValidationInfo;->d()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-ne v1, v3, :cond_1

    .line 77
    .line 78
    const/4 v1, 0x1

    .line 79
    goto :goto_1

    .line 80
    :cond_1
    const/4 v1, 0x0

    .line 81
    :goto_1
    xor-int/2addr v1, v3

    .line 82
    invoke-virtual {v0, v1}, Lteam/opay/pay/android/views/DetailInputText;->setError(Z)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Lcg6;

    .line 90
    .line 91
    iget-object v0, v0, Lcg6;->d:Lteam/opay/pay/android/views/DetailInputText;

    .line 92
    .line 93
    invoke-direct {p0}, Lteam/opay/pay/kyc/ModifyUserNameFragment;->T()Lteam/opay/pay/kyc/ModifyUserInfoViewModel;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v1}, Lteam/opay/pay/kyc/ModifyUserInfoViewModel;->C()Lteam/opay/pay/android/validation/FieldValidation;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v1}, Lteam/opay/pay/android/validation/FieldValidation;->e()Landroidx/lifecycle/LiveData;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    check-cast v1, Lteam/opay/pay/android/validation/ValidationInfo;

    .line 110
    .line 111
    if-eqz v1, :cond_2

    .line 112
    .line 113
    invoke-virtual {v1}, Lteam/opay/pay/android/validation/ValidationInfo;->d()Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-ne v1, v3, :cond_2

    .line 118
    .line 119
    const/4 v1, 0x1

    .line 120
    goto :goto_2

    .line 121
    :cond_2
    const/4 v1, 0x0

    .line 122
    :goto_2
    xor-int/2addr v1, v3

    .line 123
    invoke-virtual {v0, v1}, Lteam/opay/pay/android/views/DetailInputText;->setError(Z)V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lteam/opay/pay/kyc/ModifyUserNameFragment;->q:Ljava/lang/String;

    .line 127
    .line 128
    invoke-direct {p0}, Lteam/opay/pay/kyc/ModifyUserNameFragment;->T()Lteam/opay/pay/kyc/ModifyUserInfoViewModel;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v1}, Lteam/opay/pay/kyc/ModifyUserInfoViewModel;->x()Lteam/opay/pay/android/validation/FieldValidation;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v1}, Lteam/opay/pay/android/validation/FieldValidation;->d()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_3

    .line 145
    .line 146
    iget-object v0, p0, Lteam/opay/pay/kyc/ModifyUserNameFragment;->r:Ljava/lang/String;

    .line 147
    .line 148
    invoke-direct {p0}, Lteam/opay/pay/kyc/ModifyUserNameFragment;->T()Lteam/opay/pay/kyc/ModifyUserInfoViewModel;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {v1}, Lteam/opay/pay/kyc/ModifyUserInfoViewModel;->z()Lteam/opay/pay/android/validation/FieldValidation;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v1}, Lteam/opay/pay/android/validation/FieldValidation;->d()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-eqz v0, :cond_3

    .line 165
    .line 166
    iget-object v0, p0, Lteam/opay/pay/kyc/ModifyUserNameFragment;->s:Ljava/lang/String;

    .line 167
    .line 168
    invoke-direct {p0}, Lteam/opay/pay/kyc/ModifyUserNameFragment;->T()Lteam/opay/pay/kyc/ModifyUserInfoViewModel;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {v1}, Lteam/opay/pay/kyc/ModifyUserInfoViewModel;->C()Lteam/opay/pay/android/validation/FieldValidation;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v1}, Lteam/opay/pay/android/validation/FieldValidation;->d()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-eqz v0, :cond_3

    .line 185
    .line 186
    const/4 v0, 0x1

    .line 187
    goto :goto_3

    .line 188
    :cond_3
    const/4 v0, 0x0

    .line 189
    :goto_3
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    check-cast v1, Lcg6;

    .line 194
    .line 195
    iget-object v1, v1, Lcg6;->f:Lcom/google/android/material/button/MaterialButton;

    .line 196
    .line 197
    if-eqz v1, :cond_5

    .line 198
    .line 199
    if-nez v0, :cond_4

    .line 200
    .line 201
    invoke-direct {p0}, Lteam/opay/pay/kyc/ModifyUserNameFragment;->T()Lteam/opay/pay/kyc/ModifyUserInfoViewModel;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {v0}, Lteam/opay/pay/kyc/ModifyUserInfoViewModel;->x()Lteam/opay/pay/android/validation/FieldValidation;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-virtual {v0}, Lteam/opay/pay/android/validation/FieldValidation;->e()Landroidx/lifecycle/LiveData;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    check-cast v0, Lteam/opay/pay/android/validation/ValidationInfo;

    .line 218
    .line 219
    if-eqz v0, :cond_4

    .line 220
    .line 221
    invoke-virtual {v0}, Lteam/opay/pay/android/validation/ValidationInfo;->d()Z

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    if-ne v0, v3, :cond_4

    .line 226
    .line 227
    invoke-direct {p0}, Lteam/opay/pay/kyc/ModifyUserNameFragment;->T()Lteam/opay/pay/kyc/ModifyUserInfoViewModel;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-virtual {v0}, Lteam/opay/pay/kyc/ModifyUserInfoViewModel;->C()Lteam/opay/pay/android/validation/FieldValidation;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-virtual {v0}, Lteam/opay/pay/android/validation/FieldValidation;->e()Landroidx/lifecycle/LiveData;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    check-cast v0, Lteam/opay/pay/android/validation/ValidationInfo;

    .line 244
    .line 245
    if-eqz v0, :cond_4

    .line 246
    .line 247
    invoke-virtual {v0}, Lteam/opay/pay/android/validation/ValidationInfo;->d()Z

    .line 248
    .line 249
    .line 250
    move-result v0

    .line 251
    if-ne v0, v3, :cond_4

    .line 252
    .line 253
    const/4 v2, 0x1

    .line 254
    :cond_4
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 255
    .line 256
    .line 257
    :cond_5
    return-void
.end method

.method private final T()Lteam/opay/pay/kyc/ModifyUserInfoViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/ModifyUserNameFragment;->p:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/kyc/ModifyUserInfoViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final U(Lteam/opay/pay/kyc/ModifyUserNameFragment;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/kyc/ModifyUserNameFragment;->S()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final V(Lteam/opay/pay/kyc/ModifyUserNameFragment;)Lkotlin/Unit;
    .locals 22

    .line 1
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcg6;

    .line 6
    .line 7
    iget-object v0, v0, Lcg6;->f:Lcom/google/android/material/button/MaterialButton;

    .line 8
    .line 9
    const-string v1, "btnSave"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lli2;->f(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcg6;

    .line 22
    .line 23
    iget-object v0, v0, Lcg6;->b:Lteam/opay/pay/android/views/DetailInputText;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0}, Lteam/opay/pay/android/views/DetailInputText;->getInputText()Lteam/opay/pay/android/views/KeyboardEditText;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    move-object v5, v0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move-object v5, v1

    .line 47
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lcg6;

    .line 52
    .line 53
    iget-object v0, v0, Lcg6;->c:Lteam/opay/pay/android/views/DetailInputText;

    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    invoke-virtual {v0}, Lteam/opay/pay/android/views/DetailInputText;->getInputText()Lteam/opay/pay/android/views/KeyboardEditText;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    move-object v6, v0

    .line 74
    goto :goto_1

    .line 75
    :cond_1
    move-object v6, v1

    .line 76
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Lcg6;

    .line 81
    .line 82
    iget-object v0, v0, Lcg6;->d:Lteam/opay/pay/android/views/DetailInputText;

    .line 83
    .line 84
    if-eqz v0, :cond_2

    .line 85
    .line 86
    invoke-virtual {v0}, Lteam/opay/pay/android/views/DetailInputText;->getInputText()Lteam/opay/pay/android/views/KeyboardEditText;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    if-eqz v0, :cond_2

    .line 91
    .line 92
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    if-eqz v0, :cond_2

    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    :cond_2
    move-object v7, v1

    .line 103
    invoke-direct/range {p0 .. p0}, Lteam/opay/pay/kyc/ModifyUserNameFragment;->T()Lteam/opay/pay/kyc/ModifyUserInfoViewModel;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    new-instance v0, Loc9;

    .line 108
    .line 109
    move-object/from16 v19, v0

    .line 110
    .line 111
    move-object/from16 v1, p0

    .line 112
    .line 113
    invoke-direct {v0, v1, v5, v6, v7}, Loc9;-><init>(Lteam/opay/pay/kyc/ModifyUserNameFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    const v20, 0xffe0

    .line 117
    .line 118
    .line 119
    const/16 v21, 0x0

    .line 120
    .line 121
    const-string v4, "NAME"

    .line 122
    .line 123
    const/4 v8, 0x0

    .line 124
    const/4 v9, 0x0

    .line 125
    const/4 v10, 0x0

    .line 126
    const/4 v11, 0x0

    .line 127
    const/4 v12, 0x0

    .line 128
    const/4 v13, 0x0

    .line 129
    const/4 v14, 0x0

    .line 130
    const/4 v15, 0x0

    .line 131
    const/16 v16, 0x0

    .line 132
    .line 133
    const/16 v17, 0x0

    .line 134
    .line 135
    const/16 v18, 0x0

    .line 136
    .line 137
    move-object/from16 v3, p0

    .line 138
    .line 139
    invoke-static/range {v2 .. v21}, Lteam/opay/pay/kyc/ModifyUserInfoViewModel;->E(Lteam/opay/pay/kyc/ModifyUserInfoViewModel;Lag8;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 143
    .line 144
    return-object v0
.end method

.method public static final W(Lteam/opay/pay/kyc/ModifyUserNameFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    if-eqz p5, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/pay/kyc/Hilt_ModifyUserNameFragment;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-static {v0, p5}, Lkmf;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    sget-object p5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p4

    .line 21
    if-eqz p4, :cond_3

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 24
    .line 25
    .line 26
    move-result-object p4

    .line 27
    if-eqz p4, :cond_2

    .line 28
    .line 29
    new-instance p5, Landroid/content/Intent;

    .line 30
    .line 31
    invoke-direct {p5}, Landroid/content/Intent;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v0, "key_first_name"

    .line 35
    .line 36
    invoke-virtual {p5, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    const-string p1, "key_middle_name"

    .line 40
    .line 41
    invoke-virtual {p5, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    const-string p1, "key_surname"

    .line 45
    .line 46
    invoke-virtual {p5, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 50
    .line 51
    const/4 p1, -0x1

    .line 52
    invoke-virtual {p4, p1, p5}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    if-eqz p0, :cond_3

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 62
    .line 63
    .line 64
    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 65
    .line 66
    return-object p0
.end method

.method public static final X(Lteam/opay/pay/kyc/ModifyUserNameFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 8
    .line 9
    .line 10
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method


# virtual methods
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string p2, "key_first_name"

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-direct {p0}, Lteam/opay/pay/kyc/ModifyUserNameFragment;->T()Lteam/opay/pay/kyc/ModifyUserInfoViewModel;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p2}, Lteam/opay/pay/kyc/ModifyUserInfoViewModel;->x()Lteam/opay/pay/android/validation/FieldValidation;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p2, p1}, Lteam/opay/pay/android/validation/FieldValidation;->i(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    check-cast p2, Lcg6;

    .line 37
    .line 38
    iget-object p2, p2, Lcg6;->b:Lteam/opay/pay/android/views/DetailInputText;

    .line 39
    .line 40
    invoke-virtual {p2}, Lteam/opay/pay/android/views/DetailInputText;->getInputText()Lteam/opay/pay/android/views/KeyboardEditText;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lteam/opay/pay/kyc/ModifyUserNameFragment;->q:Ljava/lang/String;

    .line 48
    .line 49
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const-string p2, "key_middle_name"

    .line 54
    .line 55
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-eqz p1, :cond_1

    .line 60
    .line 61
    invoke-direct {p0}, Lteam/opay/pay/kyc/ModifyUserNameFragment;->T()Lteam/opay/pay/kyc/ModifyUserInfoViewModel;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-virtual {p2}, Lteam/opay/pay/kyc/ModifyUserInfoViewModel;->z()Lteam/opay/pay/android/validation/FieldValidation;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-virtual {p2, p1}, Lteam/opay/pay/android/validation/FieldValidation;->i(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    check-cast p2, Lcg6;

    .line 77
    .line 78
    iget-object p2, p2, Lcg6;->c:Lteam/opay/pay/android/views/DetailInputText;

    .line 79
    .line 80
    invoke-virtual {p2}, Lteam/opay/pay/android/views/DetailInputText;->getInputText()Lteam/opay/pay/android/views/KeyboardEditText;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    .line 86
    .line 87
    iput-object p1, p0, Lteam/opay/pay/kyc/ModifyUserNameFragment;->r:Ljava/lang/String;

    .line 88
    .line 89
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    const-string p2, "key_surname"

    .line 94
    .line 95
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    if-eqz p1, :cond_2

    .line 100
    .line 101
    invoke-direct {p0}, Lteam/opay/pay/kyc/ModifyUserNameFragment;->T()Lteam/opay/pay/kyc/ModifyUserInfoViewModel;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    invoke-virtual {p2}, Lteam/opay/pay/kyc/ModifyUserInfoViewModel;->C()Lteam/opay/pay/android/validation/FieldValidation;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-virtual {p2, p1}, Lteam/opay/pay/android/validation/FieldValidation;->i(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    check-cast p2, Lcg6;

    .line 117
    .line 118
    iget-object p2, p2, Lcg6;->d:Lteam/opay/pay/android/views/DetailInputText;

    .line 119
    .line 120
    invoke-virtual {p2}, Lteam/opay/pay/android/views/DetailInputText;->getInputText()Lteam/opay/pay/android/views/KeyboardEditText;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    .line 126
    .line 127
    iput-object p1, p0, Lteam/opay/pay/kyc/ModifyUserNameFragment;->s:Ljava/lang/String;

    .line 128
    .line 129
    :cond_2
    invoke-direct {p0}, Lteam/opay/pay/kyc/ModifyUserNameFragment;->T()Lteam/opay/pay/kyc/ModifyUserInfoViewModel;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p1}, Lteam/opay/pay/kyc/ModifyUserInfoViewModel;->x()Lteam/opay/pay/android/validation/FieldValidation;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    new-instance p2, Lteam/opay/pay/android/validation/ValidationDecorator;

    .line 138
    .line 139
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    check-cast v0, Lcg6;

    .line 144
    .line 145
    iget-object v0, v0, Lcg6;->b:Lteam/opay/pay/android/views/DetailInputText;

    .line 146
    .line 147
    const-string v1, "accountFirstName"

    .line 148
    .line 149
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-direct {p2, v0}, Lteam/opay/pay/android/validation/ValidationDecorator;-><init>(Lteam/opay/pay/android/views/DetailInputText;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, p0, p2}, Lteam/opay/pay/android/validation/FieldValidation;->g(Lag8;Lteam/opay/pay/android/validation/ValidationDecorator;)V

    .line 156
    .line 157
    .line 158
    invoke-direct {p0}, Lteam/opay/pay/kyc/ModifyUserNameFragment;->T()Lteam/opay/pay/kyc/ModifyUserInfoViewModel;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-virtual {p1}, Lteam/opay/pay/kyc/ModifyUserInfoViewModel;->z()Lteam/opay/pay/android/validation/FieldValidation;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    new-instance p2, Lteam/opay/pay/android/validation/ValidationDecorator;

    .line 167
    .line 168
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    check-cast v0, Lcg6;

    .line 173
    .line 174
    iget-object v0, v0, Lcg6;->c:Lteam/opay/pay/android/views/DetailInputText;

    .line 175
    .line 176
    const-string v1, "accountMiddleName"

    .line 177
    .line 178
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-direct {p2, v0}, Lteam/opay/pay/android/validation/ValidationDecorator;-><init>(Lteam/opay/pay/android/views/DetailInputText;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1, p0, p2}, Lteam/opay/pay/android/validation/FieldValidation;->g(Lag8;Lteam/opay/pay/android/validation/ValidationDecorator;)V

    .line 185
    .line 186
    .line 187
    invoke-direct {p0}, Lteam/opay/pay/kyc/ModifyUserNameFragment;->T()Lteam/opay/pay/kyc/ModifyUserInfoViewModel;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-virtual {p1}, Lteam/opay/pay/kyc/ModifyUserInfoViewModel;->C()Lteam/opay/pay/android/validation/FieldValidation;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    new-instance p2, Lteam/opay/pay/android/validation/ValidationDecorator;

    .line 196
    .line 197
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    check-cast v0, Lcg6;

    .line 202
    .line 203
    iget-object v0, v0, Lcg6;->d:Lteam/opay/pay/android/views/DetailInputText;

    .line 204
    .line 205
    const-string v1, "accountSurname"

    .line 206
    .line 207
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-direct {p2, v0}, Lteam/opay/pay/android/validation/ValidationDecorator;-><init>(Lteam/opay/pay/android/views/DetailInputText;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1, p0, p2}, Lteam/opay/pay/android/validation/FieldValidation;->g(Lag8;Lteam/opay/pay/android/validation/ValidationDecorator;)V

    .line 214
    .line 215
    .line 216
    invoke-direct {p0}, Lteam/opay/pay/kyc/ModifyUserNameFragment;->T()Lteam/opay/pay/kyc/ModifyUserInfoViewModel;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    invoke-virtual {p1}, Lteam/opay/pay/kyc/ModifyUserInfoViewModel;->A()Landroidx/lifecycle/MediatorLiveData;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 225
    .line 226
    .line 227
    move-result-object p2

    .line 228
    new-instance v0, Llc9;

    .line 229
    .line 230
    invoke-direct {v0, p0}, Llc9;-><init>(Lteam/opay/pay/kyc/ModifyUserNameFragment;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    check-cast p1, Lcg6;

    .line 241
    .line 242
    iget-object p1, p1, Lcg6;->f:Lcom/google/android/material/button/MaterialButton;

    .line 243
    .line 244
    const-string p2, "btnSave"

    .line 245
    .line 246
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    new-instance p2, Lmc9;

    .line 250
    .line 251
    invoke-direct {p2, p0}, Lmc9;-><init>(Lteam/opay/pay/kyc/ModifyUserNameFragment;)V

    .line 252
    .line 253
    .line 254
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    check-cast p1, Lcg6;

    .line 262
    .line 263
    iget-object p1, p1, Lcg6;->e:Lteam/opay/core/android/views/OpayActionBar;

    .line 264
    .line 265
    new-instance p2, Lnc9;

    .line 266
    .line 267
    invoke-direct {p2, p0}, Lnc9;-><init>(Lteam/opay/pay/kyc/ModifyUserNameFragment;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {p1, p2}, Lteam/opay/core/android/views/OpayActionBar;->setBackNavigationListener(Lkotlin/jvm/functions/Function0;)V

    .line 271
    .line 272
    .line 273
    return-void
.end method
