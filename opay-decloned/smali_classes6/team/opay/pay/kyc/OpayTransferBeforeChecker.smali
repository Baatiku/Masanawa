.class public final Lteam/opay/pay/kyc/OpayTransferBeforeChecker;
.super Ljava/lang/Object;
.source "OpayTransferBeforeChecker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/kyc/OpayTransferBeforeChecker$Companion;,
        Lteam/opay/pay/kyc/OpayTransferBeforeChecker$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00152\u00020\u0001:\u0001,B!\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJU\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\n2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\n2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00102\u0018\u0010\u0014\u001a\u0014\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00130\u0012\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J-\u0010\u001a\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\u000c2\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00172\u0006\u0010\u0019\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001fR\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#R\u0017\u0010\u0007\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'R\u0018\u0010+\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008)\u0010*\u00a8\u0006-"
    }
    d2 = {
        "Lteam/opay/pay/kyc/OpayTransferBeforeChecker;",
        "",
        "Lr0g;",
        "owner",
        "Lag8;",
        "lifecycleOwner",
        "Landroidx/fragment/app/FragmentActivity;",
        "activity",
        "<init>",
        "(Lr0g;Lag8;Landroidx/fragment/app/FragmentActivity;)V",
        "",
        "accountNumber",
        "Lteam/opay/core/api/GraphQL$ServiceType;",
        "serviceType",
        "amount",
        "payChannel",
        "",
        "aa",
        "Lkotlin/Function2;",
        "",
        "block",
        "e",
        "(Ljava/lang/String;Lteam/opay/core/api/GraphQL$ServiceType;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V",
        "Lteam/opay/core/android/arch/Resource;",
        "it",
        "kyc",
        "i",
        "(Lteam/opay/core/api/GraphQL$ServiceType;Lteam/opay/core/android/arch/Resource;Ljava/lang/String;)V",
        "a",
        "Lr0g;",
        "getOwner",
        "()Lr0g;",
        "b",
        "Lag8;",
        "getLifecycleOwner",
        "()Lag8;",
        "c",
        "Landroidx/fragment/app/FragmentActivity;",
        "getActivity",
        "()Landroidx/fragment/app/FragmentActivity;",
        "Lteam/opay/pay/home/tabs/MoneyTransferViewModel;",
        "d",
        "Lteam/opay/pay/home/tabs/MoneyTransferViewModel;",
        "viewModel",
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
.field public static final e:Lteam/opay/pay/kyc/OpayTransferBeforeChecker$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static f:Lteam/opay/pay/kyc/OpayTransferBeforeChecker;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# instance fields
.field public final a:Lr0g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lag8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Landroidx/fragment/app/FragmentActivity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Lteam/opay/pay/home/tabs/MoneyTransferViewModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/kyc/OpayTransferBeforeChecker$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/kyc/OpayTransferBeforeChecker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/kyc/OpayTransferBeforeChecker;->e:Lteam/opay/pay/kyc/OpayTransferBeforeChecker$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lr0g;Lag8;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lteam/opay/pay/kyc/OpayTransferBeforeChecker;->a:Lr0g;

    .line 4
    iput-object p2, p0, Lteam/opay/pay/kyc/OpayTransferBeforeChecker;->b:Lag8;

    .line 5
    iput-object p3, p0, Lteam/opay/pay/kyc/OpayTransferBeforeChecker;->c:Landroidx/fragment/app/FragmentActivity;

    return-void
.end method

.method public synthetic constructor <init>(Lr0g;Lag8;Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/pay/kyc/OpayTransferBeforeChecker;-><init>(Lr0g;Lag8;Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method public static synthetic a(Lteam/opay/core/api/GraphQL$ServiceType;Lkotlin/jvm/functions/Function2;Lteam/opay/pay/kyc/OpayTransferBeforeChecker;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lteam/opay/pay/kyc/OpayTransferBeforeChecker;->g(Lteam/opay/core/api/GraphQL$ServiceType;Lkotlin/jvm/functions/Function2;Lteam/opay/pay/kyc/OpayTransferBeforeChecker;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function2;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/OpayTransferBeforeChecker;->h(Lkotlin/jvm/functions/Function2;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic c()Lteam/opay/pay/kyc/OpayTransferBeforeChecker;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/kyc/OpayTransferBeforeChecker;->f:Lteam/opay/pay/kyc/OpayTransferBeforeChecker;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic d(Lteam/opay/pay/kyc/OpayTransferBeforeChecker;)V
    .locals 0

    .line 1
    sput-object p0, Lteam/opay/pay/kyc/OpayTransferBeforeChecker;->f:Lteam/opay/pay/kyc/OpayTransferBeforeChecker;

    .line 2
    .line 3
    return-void
.end method

.method public static synthetic f(Lteam/opay/pay/kyc/OpayTransferBeforeChecker;Ljava/lang/String;Lteam/opay/core/api/GraphQL$ServiceType;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 7

    .line 1
    and-int/lit8 p8, p7, 0x8

    .line 2
    .line 3
    if-eqz p8, :cond_0

    .line 4
    .line 5
    const/4 p4, 0x0

    .line 6
    :cond_0
    move-object v4, p4

    .line 7
    and-int/lit8 p4, p7, 0x10

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    const/4 p5, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    move v5, p5

    .line 15
    :goto_0
    move-object v0, p0

    .line 16
    move-object v1, p1

    .line 17
    move-object v2, p2

    .line 18
    move-object v3, p3

    .line 19
    move-object v6, p6

    .line 20
    invoke-virtual/range {v0 .. v6}, Lteam/opay/pay/kyc/OpayTransferBeforeChecker;->e(Ljava/lang/String;Lteam/opay/core/api/GraphQL$ServiceType;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static final g(Lteam/opay/core/api/GraphQL$ServiceType;Lkotlin/jvm/functions/Function2;Lteam/opay/pay/kyc/OpayTransferBeforeChecker;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x1

    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    invoke-virtual/range {p4 .. p4}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    sget-object v7, Lteam/opay/core/android/arch/Status;->LOADING:Lteam/opay/core/android/arch/Status;

    .line 21
    .line 22
    if-eq v6, v7, :cond_2

    .line 23
    .line 24
    sget-object v6, Lx7b;->a:Lx7b;

    .line 25
    .line 26
    const-string v7, "service_type"

    .line 27
    .line 28
    invoke-static {v7, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    invoke-virtual/range {p4 .. p4}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 33
    .line 34
    .line 35
    move-result-object v8

    .line 36
    sget-object v9, Lteam/opay/core/android/arch/Status;->SUCCESS:Lteam/opay/core/android/arch/Status;

    .line 37
    .line 38
    if-ne v8, v9, :cond_1

    .line 39
    .line 40
    const-string v8, "suc"

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const-string v8, "fail"

    .line 44
    .line 45
    :goto_0
    const-string v9, "result"

    .line 46
    .line 47
    invoke-static {v9, v8}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    const-string v9, "errorcode"

    .line 52
    .line 53
    invoke-virtual/range {p4 .. p4}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v10

    .line 57
    invoke-static {v9, v10}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    const-string v10, "errorMsg"

    .line 62
    .line 63
    invoke-virtual/range {p4 .. p4}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v11

    .line 67
    invoke-static {v10, v11}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    const/4 v11, 0x4

    .line 72
    new-array v11, v11, [Lkotlin/Pair;

    .line 73
    .line 74
    const/4 v12, 0x0

    .line 75
    aput-object v7, v11, v12

    .line 76
    .line 77
    aput-object v8, v11, v5

    .line 78
    .line 79
    aput-object v9, v11, v4

    .line 80
    .line 81
    const/4 v7, 0x3

    .line 82
    aput-object v10, v11, v7

    .line 83
    .line 84
    const-string v7, "transfer_before_check_response_show"

    .line 85
    .line 86
    invoke-virtual {v6, v7, v11}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 87
    .line 88
    .line 89
    :cond_2
    invoke-virtual/range {p4 .. p4}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    sget-object v7, Lteam/opay/pay/kyc/OpayTransferBeforeChecker$a;->a:[I

    .line 94
    .line 95
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    aget v6, v7, v6

    .line 100
    .line 101
    if-eq v6, v5, :cond_6

    .line 102
    .line 103
    if-eq v6, v4, :cond_3

    .line 104
    .line 105
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 106
    .line 107
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 108
    .line 109
    invoke-interface {v1, v0, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    goto/16 :goto_b

    .line 113
    .line 114
    :cond_3
    iget-object v0, v2, Lteam/opay/pay/kyc/OpayTransferBeforeChecker;->b:Lag8;

    .line 115
    .line 116
    instance-of v3, v0, Landroidx/fragment/app/Fragment;

    .line 117
    .line 118
    if-eqz v3, :cond_5

    .line 119
    .line 120
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 121
    .line 122
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_4

    .line 127
    .line 128
    iget-object v0, v2, Lteam/opay/pay/kyc/OpayTransferBeforeChecker;->b:Lag8;

    .line 129
    .line 130
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 131
    .line 132
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-nez v0, :cond_4

    .line 137
    .line 138
    iget-object v0, v2, Lteam/opay/pay/kyc/OpayTransferBeforeChecker;->b:Lag8;

    .line 139
    .line 140
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 141
    .line 142
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_5

    .line 147
    .line 148
    :cond_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 149
    .line 150
    return-object v0

    .line 151
    :cond_5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 152
    .line 153
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 154
    .line 155
    invoke-interface {v1, v0, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    goto/16 :goto_b

    .line 159
    .line 160
    :cond_6
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 161
    .line 162
    invoke-interface {v1, v4, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    invoke-virtual/range {p4 .. p4}, Lteam/opay/core/android/arch/Resource;->e()I

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    const/16 v5, -0x3ec

    .line 170
    .line 171
    const-string v6, ""

    .line 172
    .line 173
    if-ne v4, v5, :cond_8

    .line 174
    .line 175
    sget-object v1, Lteam/opay/pay/kyc/ConnectionFailedDialog;->m:Lteam/opay/pay/kyc/ConnectionFailedDialog$Companion;

    .line 176
    .line 177
    iget-object v2, v2, Lteam/opay/pay/kyc/OpayTransferBeforeChecker;->c:Landroidx/fragment/app/FragmentActivity;

    .line 178
    .line 179
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-virtual/range {p4 .. p4}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    if-nez v3, :cond_7

    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_7
    move-object v6, v3

    .line 191
    :goto_1
    invoke-virtual {v1, v2, v0, v6}, Lteam/opay/pay/kyc/ConnectionFailedDialog$Companion;->a(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    goto/16 :goto_b

    .line 195
    .line 196
    :cond_8
    invoke-virtual/range {p4 .. p4}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    const-string v5, "61000"

    .line 201
    .line 202
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v4

    .line 206
    if-nez v4, :cond_14

    .line 207
    .line 208
    invoke-virtual/range {p4 .. p4}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    const-string v5, "61001"

    .line 213
    .line 214
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v4

    .line 218
    if-nez v4, :cond_14

    .line 219
    .line 220
    invoke-virtual/range {p4 .. p4}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    const-string v5, "61002"

    .line 225
    .line 226
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v4

    .line 230
    if-nez v4, :cond_14

    .line 231
    .line 232
    invoke-virtual/range {p4 .. p4}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    const-string v5, "61003"

    .line 237
    .line 238
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v4

    .line 242
    if-nez v4, :cond_14

    .line 243
    .line 244
    invoke-virtual/range {p4 .. p4}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v4

    .line 248
    const-string v5, "61004"

    .line 249
    .line 250
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result v4

    .line 254
    if-eqz v4, :cond_9

    .line 255
    .line 256
    goto/16 :goto_9

    .line 257
    .line 258
    :cond_9
    invoke-virtual/range {p4 .. p4}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v4

    .line 262
    const-string v5, "61005"

    .line 263
    .line 264
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v4

    .line 268
    if-eqz v4, :cond_b

    .line 269
    .line 270
    sget-object v4, Lteam/opay/pay/home/tabs/TransferAlertTipDialog;->q:Lteam/opay/pay/home/tabs/TransferAlertTipDialog$Companion;

    .line 271
    .line 272
    new-instance v5, Lteam/opay/pay/home/tabs/TransferAlertData;

    .line 273
    .line 274
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v8

    .line 278
    invoke-virtual/range {p4 .. p4}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    if-nez v0, :cond_a

    .line 283
    .line 284
    move-object v9, v6

    .line 285
    goto :goto_2

    .line 286
    :cond_a
    move-object v9, v0

    .line 287
    :goto_2
    const/16 v15, 0x78

    .line 288
    .line 289
    const/16 v16, 0x0

    .line 290
    .line 291
    const-string v10, "030011"

    .line 292
    .line 293
    const/4 v11, 0x0

    .line 294
    const/4 v12, 0x0

    .line 295
    const/4 v13, 0x0

    .line 296
    const/4 v14, 0x0

    .line 297
    move-object v7, v5

    .line 298
    invoke-direct/range {v7 .. v16}, Lteam/opay/pay/home/tabs/TransferAlertData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lteam/opay/core/api/GraphQL$CurrencyAmount;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v4, v5}, Lteam/opay/pay/home/tabs/TransferAlertTipDialog$Companion;->b(Lteam/opay/pay/home/tabs/TransferAlertData;)Lteam/opay/pay/home/tabs/TransferAlertTipDialog;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    new-instance v3, Lmta;

    .line 306
    .line 307
    invoke-direct {v3, v1}, Lmta;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v0, v3}, Lteam/opay/pay/home/tabs/TransferAlertTipDialog;->a0(Lkotlin/jvm/functions/Function0;)V

    .line 311
    .line 312
    .line 313
    iget-object v1, v2, Lteam/opay/pay/kyc/OpayTransferBeforeChecker;->c:Landroidx/fragment/app/FragmentActivity;

    .line 314
    .line 315
    invoke-static {v1, v0}, Lteam/opay/pay/base/FragmentKt;->x(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/DialogFragment;)V

    .line 316
    .line 317
    .line 318
    goto/16 :goto_b

    .line 319
    .line 320
    :cond_b
    invoke-virtual/range {p4 .. p4}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    const-string v4, "130006"

    .line 325
    .line 326
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result v1

    .line 330
    if-eqz v1, :cond_e

    .line 331
    .line 332
    new-instance v1, Lteam/opay/core/settings/SettingsStorage;

    .line 333
    .line 334
    iget-object v4, v2, Lteam/opay/pay/kyc/OpayTransferBeforeChecker;->c:Landroidx/fragment/app/FragmentActivity;

    .line 335
    .line 336
    invoke-direct {v1, v4}, Lteam/opay/core/settings/SettingsStorage;-><init>(Landroid/content/Context;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v1}, Lteam/opay/core/settings/SettingsStorage;->I()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    const-string v4, "0"

    .line 344
    .line 345
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    move-result v1

    .line 349
    if-eqz v1, :cond_c

    .line 350
    .line 351
    iget-object v1, v2, Lteam/opay/pay/kyc/OpayTransferBeforeChecker;->c:Landroidx/fragment/app/FragmentActivity;

    .line 352
    .line 353
    sget v4, Lteam/opay/pay/R$string;->proceed:I

    .line 354
    .line 355
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    :goto_3
    move-object v11, v1

    .line 360
    goto :goto_4

    .line 361
    :cond_c
    iget-object v1, v2, Lteam/opay/pay/kyc/OpayTransferBeforeChecker;->c:Landroidx/fragment/app/FragmentActivity;

    .line 362
    .line 363
    sget v4, Lteam/opay/pay/R$string;->trans_upgrade_tip:I

    .line 364
    .line 365
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    goto :goto_3

    .line 370
    :goto_4
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 371
    .line 372
    .line 373
    iget-object v1, v2, Lteam/opay/pay/kyc/OpayTransferBeforeChecker;->c:Landroidx/fragment/app/FragmentActivity;

    .line 374
    .line 375
    sget-object v7, Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog;->k:Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog$Companion;

    .line 376
    .line 377
    invoke-virtual/range {p4 .. p4}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v2

    .line 381
    if-nez v2, :cond_d

    .line 382
    .line 383
    move-object v8, v6

    .line 384
    goto :goto_5

    .line 385
    :cond_d
    move-object v8, v2

    .line 386
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v12

    .line 390
    const/4 v13, 0x4

    .line 391
    const/4 v14, 0x0

    .line 392
    const/4 v9, 0x1

    .line 393
    const/4 v10, 0x0

    .line 394
    invoke-static/range {v7 .. v14}, Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog$Companion;->b(Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog$Companion;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    invoke-static {v1, v0}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 399
    .line 400
    .line 401
    goto/16 :goto_b

    .line 402
    .line 403
    :cond_e
    invoke-virtual/range {p4 .. p4}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    const-string v1, "80001"

    .line 408
    .line 409
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 410
    .line 411
    .line 412
    move-result v0

    .line 413
    if-eqz v0, :cond_10

    .line 414
    .line 415
    iget-object v0, v2, Lteam/opay/pay/kyc/OpayTransferBeforeChecker;->c:Landroidx/fragment/app/FragmentActivity;

    .line 416
    .line 417
    sget-object v7, Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog;->k:Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog$Companion;

    .line 418
    .line 419
    invoke-virtual/range {p4 .. p4}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v1

    .line 423
    if-nez v1, :cond_f

    .line 424
    .line 425
    move-object v8, v6

    .line 426
    goto :goto_6

    .line 427
    :cond_f
    move-object v8, v1

    .line 428
    :goto_6
    sget v1, Lteam/opay/pay/R$string;->osdk_proceed:I

    .line 429
    .line 430
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v11

    .line 434
    const/16 v13, 0x14

    .line 435
    .line 436
    const/4 v14, 0x0

    .line 437
    const/4 v9, 0x1

    .line 438
    const/4 v10, 0x0

    .line 439
    const/4 v12, 0x0

    .line 440
    invoke-static/range {v7 .. v14}, Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog$Companion;->b(Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog$Companion;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog;

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    invoke-static {v0, v1}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 445
    .line 446
    .line 447
    goto :goto_b

    .line 448
    :cond_10
    invoke-virtual/range {p4 .. p4}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    const-string v1, "130007"

    .line 453
    .line 454
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 455
    .line 456
    .line 457
    move-result v0

    .line 458
    if-eqz v0, :cond_12

    .line 459
    .line 460
    iget-object v0, v2, Lteam/opay/pay/kyc/OpayTransferBeforeChecker;->c:Landroidx/fragment/app/FragmentActivity;

    .line 461
    .line 462
    sget-object v7, Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog;->k:Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog$Companion;

    .line 463
    .line 464
    invoke-virtual/range {p4 .. p4}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v1

    .line 468
    if-nez v1, :cond_11

    .line 469
    .line 470
    move-object v8, v6

    .line 471
    goto :goto_7

    .line 472
    :cond_11
    move-object v8, v1

    .line 473
    :goto_7
    const/16 v13, 0x1c

    .line 474
    .line 475
    const/4 v14, 0x0

    .line 476
    const/4 v9, 0x0

    .line 477
    const/4 v10, 0x0

    .line 478
    const/4 v11, 0x0

    .line 479
    const/4 v12, 0x0

    .line 480
    invoke-static/range {v7 .. v14}, Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog$Companion;->b(Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog$Companion;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog;

    .line 481
    .line 482
    .line 483
    move-result-object v1

    .line 484
    invoke-static {v0, v1}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 485
    .line 486
    .line 487
    goto :goto_b

    .line 488
    :cond_12
    sget-object v0, Lteam/opay/pay/wallet/OneButtonDialog;->p:Lteam/opay/pay/wallet/OneButtonDialog$Companion;

    .line 489
    .line 490
    new-instance v1, Lteam/opay/pay/wallet/OneButtonDialogData;

    .line 491
    .line 492
    invoke-virtual/range {p4 .. p4}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v3

    .line 496
    if-nez v3, :cond_13

    .line 497
    .line 498
    move-object v10, v6

    .line 499
    goto :goto_8

    .line 500
    :cond_13
    move-object v10, v3

    .line 501
    :goto_8
    const/16 v16, 0xfb

    .line 502
    .line 503
    const/16 v17, 0x0

    .line 504
    .line 505
    const/4 v8, 0x0

    .line 506
    const/4 v9, 0x0

    .line 507
    const/4 v11, 0x0

    .line 508
    const/4 v12, 0x0

    .line 509
    const/4 v13, 0x0

    .line 510
    const/4 v14, 0x0

    .line 511
    const/4 v15, 0x0

    .line 512
    move-object v7, v1

    .line 513
    invoke-direct/range {v7 .. v17}, Lteam/opay/pay/wallet/OneButtonDialogData;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v0, v1}, Lteam/opay/pay/wallet/OneButtonDialog$Companion;->a(Lteam/opay/pay/wallet/OneButtonDialogData;)Lteam/opay/pay/wallet/OneButtonDialog;

    .line 517
    .line 518
    .line 519
    move-result-object v0

    .line 520
    iget-object v1, v2, Lteam/opay/pay/kyc/OpayTransferBeforeChecker;->c:Landroidx/fragment/app/FragmentActivity;

    .line 521
    .line 522
    invoke-static {v1, v0}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 523
    .line 524
    .line 525
    goto :goto_b

    .line 526
    :cond_14
    :goto_9
    if-nez p3, :cond_15

    .line 527
    .line 528
    goto :goto_a

    .line 529
    :cond_15
    move-object/from16 v6, p3

    .line 530
    .line 531
    :goto_a
    invoke-virtual {v2, v0, v3, v6}, Lteam/opay/pay/kyc/OpayTransferBeforeChecker;->i(Lteam/opay/core/api/GraphQL$ServiceType;Lteam/opay/core/android/arch/Resource;Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    :goto_b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 535
    .line 536
    return-object v0
.end method

.method public static final h(Lkotlin/jvm/functions/Function2;)Lkotlin/Unit;
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-interface {p0, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method


# virtual methods
.method public final e(Ljava/lang/String;Lteam/opay/core/api/GraphQL$ServiceType;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/api/GraphQL$ServiceType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lteam/opay/core/api/GraphQL$ServiceType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string p5, "accountNumber"

    .line 2
    .line 3
    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p5, "serviceType"

    .line 7
    .line 8
    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p5, "amount"

    .line 12
    .line 13
    invoke-static {p3, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p5, "block"

    .line 17
    .line 18
    invoke-static {p6, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p5, p0, Lteam/opay/pay/kyc/OpayTransferBeforeChecker;->d:Lteam/opay/pay/home/tabs/MoneyTransferViewModel;

    .line 22
    .line 23
    if-nez p5, :cond_2

    .line 24
    .line 25
    iget-object p5, p0, Lteam/opay/pay/kyc/OpayTransferBeforeChecker;->a:Lr0g;

    .line 26
    .line 27
    instance-of v0, p5, Landroidx/fragment/app/FragmentActivity;

    .line 28
    .line 29
    const-class v1, Lteam/opay/pay/home/tabs/MoneyTransferViewModel;

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    check-cast p5, Landroidx/activity/ComponentActivity;

    .line 35
    .line 36
    new-instance v0, Lteam/opay/pay/kyc/OpayTransferBeforeChecker$beforeCheck$$inlined$viewModels$default$1;

    .line 37
    .line 38
    invoke-direct {v0, p5}, Lteam/opay/pay/kyc/OpayTransferBeforeChecker$beforeCheck$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 39
    .line 40
    .line 41
    new-instance v3, Landroidx/lifecycle/ViewModelLazy;

    .line 42
    .line 43
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    new-instance v4, Lteam/opay/pay/kyc/OpayTransferBeforeChecker$beforeCheck$$inlined$viewModels$default$2;

    .line 48
    .line 49
    invoke-direct {v4, p5}, Lteam/opay/pay/kyc/OpayTransferBeforeChecker$beforeCheck$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 50
    .line 51
    .line 52
    new-instance v5, Lteam/opay/pay/kyc/OpayTransferBeforeChecker$beforeCheck$$inlined$viewModels$default$3;

    .line 53
    .line 54
    invoke-direct {v5, v2, p5}, Lteam/opay/pay/kyc/OpayTransferBeforeChecker$beforeCheck$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 55
    .line 56
    .line 57
    invoke-direct {v3, v1, v4, v0, v5}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 58
    .line 59
    .line 60
    invoke-interface {v3}, Lid8;->getValue()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p5

    .line 64
    move-object v2, p5

    .line 65
    check-cast v2, Lteam/opay/pay/home/tabs/MoneyTransferViewModel;

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    instance-of v0, p5, Landroidx/fragment/app/Fragment;

    .line 69
    .line 70
    if-eqz v0, :cond_1

    .line 71
    .line 72
    check-cast p5, Landroidx/fragment/app/Fragment;

    .line 73
    .line 74
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    new-instance v1, Lteam/opay/pay/kyc/OpayTransferBeforeChecker$beforeCheck$$inlined$activityViewModels$default$1;

    .line 79
    .line 80
    invoke-direct {v1, p5}, Lteam/opay/pay/kyc/OpayTransferBeforeChecker$beforeCheck$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 81
    .line 82
    .line 83
    new-instance v3, Lteam/opay/pay/kyc/OpayTransferBeforeChecker$beforeCheck$$inlined$activityViewModels$default$2;

    .line 84
    .line 85
    invoke-direct {v3, v2, p5}, Lteam/opay/pay/kyc/OpayTransferBeforeChecker$beforeCheck$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 86
    .line 87
    .line 88
    new-instance v2, Lteam/opay/pay/kyc/OpayTransferBeforeChecker$beforeCheck$$inlined$activityViewModels$default$3;

    .line 89
    .line 90
    invoke-direct {v2, p5}, Lteam/opay/pay/kyc/OpayTransferBeforeChecker$beforeCheck$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 91
    .line 92
    .line 93
    invoke-static {p5, v0, v1, v3, v2}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 94
    .line 95
    .line 96
    move-result-object p5

    .line 97
    invoke-interface {p5}, Lid8;->getValue()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p5

    .line 101
    move-object v2, p5

    .line 102
    check-cast v2, Lteam/opay/pay/home/tabs/MoneyTransferViewModel;

    .line 103
    .line 104
    :cond_1
    :goto_0
    iput-object v2, p0, Lteam/opay/pay/kyc/OpayTransferBeforeChecker;->d:Lteam/opay/pay/home/tabs/MoneyTransferViewModel;

    .line 105
    .line 106
    :cond_2
    new-instance p5, Lteam/opay/core/api/BeforeCheckReq;

    .line 107
    .line 108
    new-instance v0, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 109
    .line 110
    iget-object v1, p0, Lteam/opay/pay/kyc/OpayTransferBeforeChecker;->d:Lteam/opay/pay/home/tabs/MoneyTransferViewModel;

    .line 111
    .line 112
    if-eqz v1, :cond_3

    .line 113
    .line 114
    invoke-virtual {v1}, Lteam/opay/pay/home/tabs/MoneyTransferViewModel;->p()Lteam/opay/core/api/GraphQL$Currency;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    if-eqz v1, :cond_3

    .line 119
    .line 120
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$Currency;->a()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    if-nez v1, :cond_4

    .line 125
    .line 126
    :cond_3
    const-string v1, "NGN"

    .line 127
    .line 128
    :cond_4
    invoke-direct {v0, p3, v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-direct {p5, p1, v0, p4}, Lteam/opay/core/api/BeforeCheckReq;-><init>(Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    sget-object p1, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 135
    .line 136
    invoke-virtual {p1}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {p1}, Lteam/opay/core/account/AccountInfoManager;->v()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    iget-object p3, p0, Lteam/opay/pay/kyc/OpayTransferBeforeChecker;->d:Lteam/opay/pay/home/tabs/MoneyTransferViewModel;

    .line 145
    .line 146
    if-eqz p3, :cond_5

    .line 147
    .line 148
    invoke-virtual {p3, p5}, Lteam/opay/pay/home/tabs/MoneyTransferViewModel;->s(Lteam/opay/core/api/BeforeCheckReq;)Landroidx/lifecycle/LiveData;

    .line 149
    .line 150
    .line 151
    move-result-object p3

    .line 152
    if-eqz p3, :cond_5

    .line 153
    .line 154
    iget-object p4, p0, Lteam/opay/pay/kyc/OpayTransferBeforeChecker;->b:Lag8;

    .line 155
    .line 156
    new-instance p5, Llta;

    .line 157
    .line 158
    invoke-direct {p5, p2, p6, p0, p1}, Llta;-><init>(Lteam/opay/core/api/GraphQL$ServiceType;Lkotlin/jvm/functions/Function2;Lteam/opay/pay/kyc/OpayTransferBeforeChecker;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-static {p3, p4, p5}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 162
    .line 163
    .line 164
    :cond_5
    return-void
.end method

.method public final i(Lteam/opay/core/api/GraphQL$ServiceType;Lteam/opay/core/android/arch/Resource;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/api/GraphQL$ServiceType;",
            "Lteam/opay/core/android/arch/Resource<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/pay/home/tabs/TransferLimitTipDialog;->x:Lteam/opay/pay/home/tabs/TransferLimitTipDialog$Companion;

    .line 2
    .line 3
    new-instance v7, Lteam/opay/pay/home/tabs/LimitTipData;

    .line 4
    .line 5
    invoke-virtual {p1}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v1, ""

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    move-object v3, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v3, p1

    .line 20
    :goto_0
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    move-object v4, v1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move-object v4, p1

    .line 29
    :goto_1
    const/4 v6, 0x0

    .line 30
    move-object v1, v7

    .line 31
    move-object v5, p3

    .line 32
    invoke-direct/range {v1 .. v6}, Lteam/opay/pay/home/tabs/LimitTipData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v7}, Lteam/opay/pay/home/tabs/TransferLimitTipDialog$Companion;->a(Lteam/opay/pay/home/tabs/LimitTipData;)Lteam/opay/pay/home/tabs/TransferLimitTipDialog;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object p2, p0, Lteam/opay/pay/kyc/OpayTransferBeforeChecker;->c:Landroidx/fragment/app/FragmentActivity;

    .line 40
    .line 41
    invoke-static {p2, p1}, Lteam/opay/pay/base/FragmentKt;->F(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseSheetFragmentV2;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
