.class public final Lteam/opay/pay/kyc/ModifyUserInfoActivity;
.super Lteam/opay/pay/kyc/Hilt_ModifyUserInfoActivity;
.source "ModifyUserInfoActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/kyc/ModifyUserInfoActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 \u00182\u00020\u0001:\u0001\u0019B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\u000b\u001a\u00020\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u001b\u0010\u0012\u001a\u00020\r8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011R\u001b\u0010\u0017\u001a\u00020\u00138BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u000f\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001a"
    }
    d2 = {
        "Lteam/opay/pay/kyc/ModifyUserInfoActivity;",
        "Lteam/opay/pay/android/BaseActivity;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onPostCreate",
        "(Landroid/os/Bundle;)V",
        "",
        "operateType",
        "F",
        "(Ljava/lang/String;)V",
        "Lte;",
        "e",
        "Lid8;",
        "C",
        "()Lte;",
        "viewBinding",
        "Lteam/opay/pay/settings/AccountViewModel;",
        "f",
        "D",
        "()Lteam/opay/pay/settings/AccountViewModel;",
        "viewModel",
        "g",
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
.field public static final g:Lteam/opay/pay/kyc/ModifyUserInfoActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final e:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/kyc/ModifyUserInfoActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/kyc/ModifyUserInfoActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/kyc/ModifyUserInfoActivity;->g:Lteam/opay/pay/kyc/ModifyUserInfoActivity$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->activity_fragment_container:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/kyc/Hilt_ModifyUserInfoActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lwb9;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lwb9;-><init>(Lteam/opay/pay/kyc/ModifyUserInfoActivity;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lteam/opay/pay/kyc/ModifyUserInfoActivity;->e:Lid8;

    .line 16
    .line 17
    new-instance v0, Lteam/opay/pay/kyc/ModifyUserInfoActivity$special$$inlined$viewModels$default$1;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lteam/opay/pay/kyc/ModifyUserInfoActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 23
    .line 24
    const-class v2, Lteam/opay/pay/settings/AccountViewModel;

    .line 25
    .line 26
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    new-instance v3, Lteam/opay/pay/kyc/ModifyUserInfoActivity$special$$inlined$viewModels$default$2;

    .line 31
    .line 32
    invoke-direct {v3, p0}, Lteam/opay/pay/kyc/ModifyUserInfoActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 33
    .line 34
    .line 35
    new-instance v4, Lteam/opay/pay/kyc/ModifyUserInfoActivity$special$$inlined$viewModels$default$3;

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    invoke-direct {v4, v5, p0}, Lteam/opay/pay/kyc/ModifyUserInfoActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lteam/opay/pay/kyc/ModifyUserInfoActivity;->f:Lid8;

    .line 45
    .line 46
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/kyc/ModifyUserInfoActivity;)Lte;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/ModifyUserInfoActivity;->G(Lteam/opay/pay/kyc/ModifyUserInfoActivity;)Lte;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B(Lteam/opay/pay/kyc/ModifyUserInfoActivity;Lkotlin/jvm/internal/Ref$ObjectRef;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/kyc/ModifyUserInfoActivity;->E(Lteam/opay/pay/kyc/ModifyUserInfoActivity;Lkotlin/jvm/internal/Ref$ObjectRef;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final D()Lteam/opay/pay/settings/AccountViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/ModifyUserInfoActivity;->f:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/settings/AccountViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final E(Lteam/opay/pay/kyc/ModifyUserInfoActivity;Lkotlin/jvm/internal/Ref$ObjectRef;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-virtual/range {p2 .. p2}, Lteam/opay/core/android/arch/Resource;->f()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    goto/16 :goto_a

    .line 13
    .line 14
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/kyc/ModifyUserInfoActivity;->C()Lte;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v1, v1, Lte;->c:Lteam/opay/core/android/views/PulseLoaderView;

    .line 19
    .line 20
    const-string v2, "fragmentLoading"

    .line 21
    .line 22
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/16 v2, 0x8

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    move-object/from16 v1, p1

    .line 31
    .line 32
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v1, Ljava/lang/String;

    .line 35
    .line 36
    const-string v2, "NAME"

    .line 37
    .line 38
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    const/4 v3, 0x0

    .line 43
    if-eqz v2, :cond_4

    .line 44
    .line 45
    sget v1, Lteam/opay/pay/R$id;->fragment_container:I

    .line 46
    .line 47
    sget-object v2, Lteam/opay/pay/kyc/ModifyUserNameFragment;->t:Lteam/opay/pay/kyc/ModifyUserNameFragment$Companion;

    .line 48
    .line 49
    if-eqz p2, :cond_1

    .line 50
    .line 51
    invoke-virtual/range {p2 .. p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    check-cast v4, Lteam/opay/core/api/graphql/UserInfoAggregateRsp;

    .line 56
    .line 57
    if-eqz v4, :cond_1

    .line 58
    .line 59
    invoke-virtual {v4}, Lteam/opay/core/api/graphql/UserInfoAggregateRsp;->o()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    move-object v4, v3

    .line 65
    :goto_0
    if-eqz p2, :cond_2

    .line 66
    .line 67
    invoke-virtual/range {p2 .. p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    check-cast v5, Lteam/opay/core/api/graphql/UserInfoAggregateRsp;

    .line 72
    .line 73
    if-eqz v5, :cond_2

    .line 74
    .line 75
    invoke-virtual {v5}, Lteam/opay/core/api/graphql/UserInfoAggregateRsp;->v()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    goto :goto_1

    .line 80
    :cond_2
    move-object v5, v3

    .line 81
    :goto_1
    if-eqz p2, :cond_3

    .line 82
    .line 83
    invoke-virtual/range {p2 .. p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    check-cast v6, Lteam/opay/core/api/graphql/UserInfoAggregateRsp;

    .line 88
    .line 89
    if-eqz v6, :cond_3

    .line 90
    .line 91
    invoke-virtual {v6}, Lteam/opay/core/api/graphql/UserInfoAggregateRsp;->C()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    :cond_3
    invoke-virtual {v2, v4, v5, v3}, Lteam/opay/pay/kyc/ModifyUserNameFragment$Companion;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lteam/opay/pay/kyc/ModifyUserNameFragment;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-static {v0, v1, v2}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 100
    .line 101
    .line 102
    goto/16 :goto_a

    .line 103
    .line 104
    :cond_4
    const-string v2, "ADDRESS"

    .line 105
    .line 106
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-eqz v1, :cond_e

    .line 111
    .line 112
    sget v1, Lteam/opay/pay/R$id;->fragment_container:I

    .line 113
    .line 114
    sget-object v2, Lteam/opay/pay/kyc/ModifyUserAddressFragment;->I:Lteam/opay/pay/kyc/ModifyUserAddressFragment$Companion;

    .line 115
    .line 116
    new-instance v15, Lteam/opay/pay/kyc/AddressInfo;

    .line 117
    .line 118
    if-eqz p2, :cond_5

    .line 119
    .line 120
    invoke-virtual/range {p2 .. p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    check-cast v4, Lteam/opay/core/api/graphql/UserInfoAggregateRsp;

    .line 125
    .line 126
    if-eqz v4, :cond_5

    .line 127
    .line 128
    invoke-virtual {v4}, Lteam/opay/core/api/graphql/UserInfoAggregateRsp;->B()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    move-object v5, v4

    .line 133
    goto :goto_2

    .line 134
    :cond_5
    move-object v5, v3

    .line 135
    :goto_2
    if-eqz p2, :cond_6

    .line 136
    .line 137
    invoke-virtual/range {p2 .. p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    check-cast v4, Lteam/opay/core/api/graphql/UserInfoAggregateRsp;

    .line 142
    .line 143
    if-eqz v4, :cond_6

    .line 144
    .line 145
    invoke-virtual {v4}, Lteam/opay/core/api/graphql/UserInfoAggregateRsp;->u()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    move-object v6, v4

    .line 150
    goto :goto_3

    .line 151
    :cond_6
    move-object v6, v3

    .line 152
    :goto_3
    if-eqz p2, :cond_7

    .line 153
    .line 154
    invoke-virtual/range {p2 .. p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    check-cast v4, Lteam/opay/core/api/graphql/UserInfoAggregateRsp;

    .line 159
    .line 160
    if-eqz v4, :cond_7

    .line 161
    .line 162
    invoke-virtual {v4}, Lteam/opay/core/api/graphql/UserInfoAggregateRsp;->j()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    move-object v7, v4

    .line 167
    goto :goto_4

    .line 168
    :cond_7
    move-object v7, v3

    .line 169
    :goto_4
    if-eqz p2, :cond_8

    .line 170
    .line 171
    invoke-virtual/range {p2 .. p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    check-cast v4, Lteam/opay/core/api/graphql/UserInfoAggregateRsp;

    .line 176
    .line 177
    if-eqz v4, :cond_8

    .line 178
    .line 179
    invoke-virtual {v4}, Lteam/opay/core/api/graphql/UserInfoAggregateRsp;->A()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    move-object v8, v4

    .line 184
    goto :goto_5

    .line 185
    :cond_8
    move-object v8, v3

    .line 186
    :goto_5
    if-eqz p2, :cond_9

    .line 187
    .line 188
    invoke-virtual/range {p2 .. p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    check-cast v4, Lteam/opay/core/api/graphql/UserInfoAggregateRsp;

    .line 193
    .line 194
    if-eqz v4, :cond_9

    .line 195
    .line 196
    invoke-virtual {v4}, Lteam/opay/core/api/graphql/UserInfoAggregateRsp;->t()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    move-object v9, v4

    .line 201
    goto :goto_6

    .line 202
    :cond_9
    move-object v9, v3

    .line 203
    :goto_6
    if-eqz p2, :cond_a

    .line 204
    .line 205
    invoke-virtual/range {p2 .. p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    check-cast v4, Lteam/opay/core/api/graphql/UserInfoAggregateRsp;

    .line 210
    .line 211
    if-eqz v4, :cond_a

    .line 212
    .line 213
    invoke-virtual {v4}, Lteam/opay/core/api/graphql/UserInfoAggregateRsp;->i()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    move-object v10, v4

    .line 218
    goto :goto_7

    .line 219
    :cond_a
    move-object v10, v3

    .line 220
    :goto_7
    if-eqz p2, :cond_b

    .line 221
    .line 222
    invoke-virtual/range {p2 .. p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    check-cast v4, Lteam/opay/core/api/graphql/UserInfoAggregateRsp;

    .line 227
    .line 228
    if-eqz v4, :cond_b

    .line 229
    .line 230
    invoke-virtual {v4}, Lteam/opay/core/api/graphql/UserInfoAggregateRsp;->s()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    move-object v11, v4

    .line 235
    goto :goto_8

    .line 236
    :cond_b
    move-object v11, v3

    .line 237
    :goto_8
    if-eqz p2, :cond_c

    .line 238
    .line 239
    invoke-virtual/range {p2 .. p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    check-cast v4, Lteam/opay/core/api/graphql/UserInfoAggregateRsp;

    .line 244
    .line 245
    if-eqz v4, :cond_c

    .line 246
    .line 247
    invoke-virtual {v4}, Lteam/opay/core/api/graphql/UserInfoAggregateRsp;->a()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v4

    .line 251
    move-object v12, v4

    .line 252
    goto :goto_9

    .line 253
    :cond_c
    move-object v12, v3

    .line 254
    :goto_9
    if-eqz p2, :cond_d

    .line 255
    .line 256
    invoke-virtual/range {p2 .. p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    check-cast v4, Lteam/opay/core/api/graphql/UserInfoAggregateRsp;

    .line 261
    .line 262
    if-eqz v4, :cond_d

    .line 263
    .line 264
    invoke-virtual {v4}, Lteam/opay/core/api/graphql/UserInfoAggregateRsp;->r()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    :cond_d
    move-object v13, v3

    .line 269
    const/4 v14, 0x0

    .line 270
    move-object v4, v15

    .line 271
    invoke-direct/range {v4 .. v14}, Lteam/opay/pay/kyc/AddressInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v2, v15}, Lteam/opay/pay/kyc/ModifyUserAddressFragment$Companion;->a(Lteam/opay/pay/kyc/AddressInfo;)Lteam/opay/pay/kyc/ModifyUserAddressFragment;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    invoke-static {v0, v1, v2}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 279
    .line 280
    .line 281
    goto :goto_a

    .line 282
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 283
    .line 284
    .line 285
    :goto_a
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 286
    .line 287
    return-object v0
.end method

.method public static final G(Lteam/opay/pay/kyc/ModifyUserInfoActivity;)Lte;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lte;->inflate(Landroid/view/LayoutInflater;)Lte;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public C()Lte;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/ModifyUserInfoActivity;->e:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lte;

    .line 8
    .line 9
    return-object v0
.end method

.method public final F(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "NAME"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget p1, Lteam/opay/pay/R$id;->fragment_container:I

    .line 10
    .line 11
    sget-object v0, Lteam/opay/pay/kyc/ModifyUserNameFragment;->t:Lteam/opay/pay/kyc/ModifyUserNameFragment$Companion;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "key_first_name"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const-string v3, "key_middle_name"

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const-string v4, "key_surname"

    .line 38
    .line 39
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v0, v1, v2, v3}, Lteam/opay/pay/kyc/ModifyUserNameFragment$Companion;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lteam/opay/pay/kyc/ModifyUserNameFragment;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {p0, p1, v0}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const-string v0, "ADDRESS"

    .line 52
    .line 53
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    sget p1, Lteam/opay/pay/R$id;->fragment_container:I

    .line 60
    .line 61
    sget-object v0, Lteam/opay/pay/kyc/ModifyUserAddressFragment;->I:Lteam/opay/pay/kyc/ModifyUserAddressFragment$Companion;

    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    const-string v2, "key_address_info"

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Lteam/opay/pay/kyc/AddressInfo;

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/ModifyUserAddressFragment$Companion;->a(Lteam/opay/pay/kyc/AddressInfo;)Lteam/opay/pay/kyc/ModifyUserAddressFragment;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {p0, p1, v0}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 80
    .line 81
    .line 82
    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic getViewBinding()Lxyf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/ModifyUserInfoActivity;->C()Lte;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 5
    .line 6
    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "key_operate_type"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Ljava/lang/CharSequence;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p1, Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lteam/opay/pay/kyc/ModifyUserInfoActivity;->F(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const/4 v0, 0x0

    .line 58
    :goto_1
    iput-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 59
    .line 60
    invoke-virtual {p0}, Lteam/opay/pay/kyc/ModifyUserInfoActivity;->C()Lte;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget-object v0, v0, Lte;->c:Lteam/opay/core/android/views/PulseLoaderView;

    .line 65
    .line 66
    const-string v1, "fragmentLoading"

    .line 67
    .line 68
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const/4 v1, 0x0

    .line 72
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    invoke-direct {p0}, Lteam/opay/pay/kyc/ModifyUserInfoActivity;->D()Lteam/opay/pay/settings/AccountViewModel;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const-string v1, "detail"

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Lteam/opay/pay/settings/AccountViewModel;->C(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    new-instance v1, Lvb9;

    .line 86
    .line 87
    invoke-direct {v1, p0, p1}, Lvb9;-><init>(Lteam/opay/pay/kyc/ModifyUserInfoActivity;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 88
    .line 89
    .line 90
    invoke-static {v0, p0, v1}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 91
    .line 92
    .line 93
    :goto_2
    return-void
.end method
