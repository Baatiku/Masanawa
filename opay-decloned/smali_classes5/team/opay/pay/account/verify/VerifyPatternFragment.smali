.class public final Lteam/opay/pay/account/verify/VerifyPatternFragment;
.super Lteam/opay/pay/account/verify/Hilt_VerifyPatternFragment;
.source "VerifyPatternFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/account/verify/VerifyPatternFragment$Companion;,
        Lteam/opay/pay/account/verify/VerifyPatternFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/account/verify/Hilt_VerifyPatternFragment<",
        "Loj6;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000C\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0007*\u0001\u001a\u0008\u0007\u0018\u0000 \u001e2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001fB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0019\u0010\u000c\u001a\u00020\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u0010\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0019\u001a\u00020\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001c\u00a8\u0006 "
    }
    d2 = {
        "Lteam/opay/pay/account/verify/VerifyPatternFragment;",
        "Lteam/opay/pay/account/verify/BaseVerifyFragment;",
        "Loj6;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onActivityCreated",
        "(Landroid/os/Bundle;)V",
        "Lteam/opay/pay/account/verify/PatternStatus;",
        "status",
        "B0",
        "(Lteam/opay/pay/account/verify/PatternStatus;)V",
        "",
        "v",
        "[B",
        "gesturePassword",
        "Lteam/opay/pay/account/verify/ValidationType;",
        "w",
        "Lteam/opay/pay/account/verify/ValidationType;",
        "validationType",
        "team/opay/pay/account/verify/VerifyPatternFragment$b",
        "x",
        "Lteam/opay/pay/account/verify/VerifyPatternFragment$b;",
        "patternListener",
        "y",
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
.field public static final y:Lteam/opay/pay/account/verify/VerifyPatternFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public v:[B
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final w:Lteam/opay/pay/account/verify/ValidationType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final x:Lteam/opay/pay/account/verify/VerifyPatternFragment$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/account/verify/VerifyPatternFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/account/verify/VerifyPatternFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/account/verify/VerifyPatternFragment;->y:Lteam/opay/pay/account/verify/VerifyPatternFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/account/verify/VerifyPatternFragment$1;->INSTANCE:Lteam/opay/pay/account/verify/VerifyPatternFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/account/verify/Hilt_VerifyPatternFragment;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lteam/opay/pay/account/verify/ValidationType;->GESTURE:Lteam/opay/pay/account/verify/ValidationType;

    .line 7
    .line 8
    iput-object v0, p0, Lteam/opay/pay/account/verify/VerifyPatternFragment;->w:Lteam/opay/pay/account/verify/ValidationType;

    .line 9
    .line 10
    new-instance v0, Lteam/opay/pay/account/verify/VerifyPatternFragment$b;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lteam/opay/pay/account/verify/VerifyPatternFragment$b;-><init>(Lteam/opay/pay/account/verify/VerifyPatternFragment;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lteam/opay/pay/account/verify/VerifyPatternFragment;->x:Lteam/opay/pay/account/verify/VerifyPatternFragment$b;

    .line 16
    .line 17
    return-void
.end method

.method public static final A0(Lteam/opay/pay/account/verify/VerifyPatternFragment;)Lkotlin/Unit;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lteam/opay/pay/account/verify/c;->a:Lteam/opay/pay/account/verify/c;

    .line 9
    .line 10
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lteam/opay/pay/account/verify/VerifyPatternFragment;->w:Lteam/opay/pay/account/verify/ValidationType;

    .line 15
    .line 16
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifyViewModel;->P()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const/4 v3, 0x0

    .line 25
    new-array v3, v3, [Lkotlin/Pair;

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2, p0, v3}, Lteam/opay/pay/account/verify/c;->b(Landroid/content/Context;Lteam/opay/pay/account/verify/ValidationType;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 28
    .line 29
    .line 30
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 31
    .line 32
    return-object p0
.end method

.method public static final C0(Lteam/opay/pay/account/verify/VerifyPatternFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {p0, p1}, Lkmf;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method

.method public static synthetic u0(Lteam/opay/pay/account/verify/VerifyPatternFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/account/verify/VerifyPatternFragment;->z0(Lteam/opay/pay/account/verify/VerifyPatternFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic v0(Lteam/opay/pay/account/verify/VerifyPatternFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/account/verify/VerifyPatternFragment;->C0(Lteam/opay/pay/account/verify/VerifyPatternFragment;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic w0(Lteam/opay/pay/account/verify/VerifyPatternFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/account/verify/VerifyPatternFragment;->A0(Lteam/opay/pay/account/verify/VerifyPatternFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic x0(Lteam/opay/pay/account/verify/VerifyPatternFragment;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/account/verify/VerifyPatternFragment;->v:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic y0(Lteam/opay/pay/account/verify/VerifyPatternFragment;Lteam/opay/pay/account/verify/PatternStatus;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/account/verify/VerifyPatternFragment;->B0(Lteam/opay/pay/account/verify/PatternStatus;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final z0(Lteam/opay/pay/account/verify/VerifyPatternFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->r0()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method


# virtual methods
.method public final B0(Lteam/opay/pay/account/verify/PatternStatus;)V
    .locals 30

    .line 1
    move-object/from16 v12, p0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x2

    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    check-cast v3, Loj6;

    .line 11
    .line 12
    iget-object v3, v3, Loj6;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 13
    .line 14
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/account/verify/PatternStatus;->getColorId()I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    const/4 v6, 0x0

    .line 23
    invoke-static {v4, v5, v6}, Landroidx/core/content/res/ResourcesCompat;->d(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    .line 29
    .line 30
    sget-object v3, Lteam/opay/pay/account/verify/VerifyPatternFragment$a;->a:[I

    .line 31
    .line 32
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    aget v3, v3, v4

    .line 37
    .line 38
    if-eq v3, v2, :cond_7

    .line 39
    .line 40
    if-eq v3, v1, :cond_5

    .line 41
    .line 42
    const/4 v0, 0x3

    .line 43
    if-ne v3, v0, :cond_4

    .line 44
    .line 45
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Loj6;

    .line 50
    .line 51
    iget-object v0, v0, Loj6;->f:Lteam/opay/pay/lockpattern/widget/LockPatternView;

    .line 52
    .line 53
    sget-object v1, Lteam/opay/pay/lockpattern/widget/LockPatternView$DisplayMode;->DEFAULT:Lteam/opay/pay/lockpattern/widget/LockPatternView$DisplayMode;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lteam/opay/pay/lockpattern/widget/LockPatternView;->setPattern(Lteam/opay/pay/lockpattern/widget/LockPatternView$DisplayMode;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Loj6;

    .line 63
    .line 64
    iget-object v0, v0, Loj6;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 65
    .line 66
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/account/verify/PatternStatus;->getStrId()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->m0()Lteam/opay/pay/account/verify/VerifyPoolResponse;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    if-eqz v0, :cond_0

    .line 82
    .line 83
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyPoolResponse;->getValChainId()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    goto :goto_0

    .line 88
    :cond_0
    move-object v0, v6

    .line 89
    :goto_0
    const-string v1, ""

    .line 90
    .line 91
    if-nez v0, :cond_1

    .line 92
    .line 93
    move-object v14, v1

    .line 94
    goto :goto_1

    .line 95
    :cond_1
    move-object v14, v0

    .line 96
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->m0()Lteam/opay/pay/account/verify/VerifyPoolResponse;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    if-eqz v0, :cond_2

    .line 105
    .line 106
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyPoolResponse;->getSecurityId()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    :cond_2
    if-nez v6, :cond_3

    .line 111
    .line 112
    move-object/from16 v20, v1

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_3
    move-object/from16 v20, v6

    .line 116
    .line 117
    :goto_2
    const-string v0, "success"

    .line 118
    .line 119
    invoke-virtual {v12, v0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->X(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v15

    .line 123
    iget-object v0, v12, Lteam/opay/pay/account/verify/VerifyPatternFragment;->w:Lteam/opay/pay/account/verify/ValidationType;

    .line 124
    .line 125
    move-object/from16 v16, v0

    .line 126
    .line 127
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->M()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v18

    .line 135
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->P()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v17

    .line 143
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->R()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v19

    .line 151
    new-instance v1, Lteam/opay/pay/account/verify/ValidationRequest;

    .line 152
    .line 153
    move-object v13, v1

    .line 154
    const/16 v28, 0x3f80

    .line 155
    .line 156
    const/16 v29, 0x0

    .line 157
    .line 158
    const/16 v21, 0x0

    .line 159
    .line 160
    const/16 v22, 0x0

    .line 161
    .line 162
    const/16 v23, 0x0

    .line 163
    .line 164
    const/16 v24, 0x0

    .line 165
    .line 166
    const/16 v25, 0x0

    .line 167
    .line 168
    const/16 v26, 0x0

    .line 169
    .line 170
    const/16 v27, 0x0

    .line 171
    .line 172
    invoke-direct/range {v13 .. v29}, Lteam/opay/pay/account/verify/ValidationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/account/verify/ValidationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    iget-object v3, v12, Lteam/opay/pay/account/verify/VerifyPatternFragment;->w:Lteam/opay/pay/account/verify/ValidationType;

    .line 180
    .line 181
    new-instance v9, Lrtf;

    .line 182
    .line 183
    invoke-direct {v9, v12}, Lrtf;-><init>(Lteam/opay/pay/account/verify/VerifyPatternFragment;)V

    .line 184
    .line 185
    .line 186
    const/16 v10, 0xf8

    .line 187
    .line 188
    const/4 v11, 0x0

    .line 189
    const/4 v4, 0x0

    .line 190
    const/4 v5, 0x0

    .line 191
    const/4 v6, 0x0

    .line 192
    const/4 v7, 0x0

    .line 193
    const/4 v8, 0x0

    .line 194
    move-object/from16 v2, p0

    .line 195
    .line 196
    invoke-static/range {v0 .. v11}, Lteam/opay/pay/account/verify/VerifyViewModel;->P0(Lteam/opay/pay/account/verify/VerifyViewModel;Lteam/opay/pay/account/verify/ValidationRequest;Lteam/opay/pay/account/verify/BaseVerifyFragment;Lteam/opay/pay/account/verify/ValidationType;ZLjava/lang/String;Ljava/lang/String;ZLhm6;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    goto/16 :goto_3

    .line 200
    .line 201
    :cond_4
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 202
    .line 203
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 204
    .line 205
    .line 206
    throw v0

    .line 207
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    check-cast v3, Loj6;

    .line 212
    .line 213
    iget-object v3, v3, Loj6;->f:Lteam/opay/pay/lockpattern/widget/LockPatternView;

    .line 214
    .line 215
    sget-object v4, Lteam/opay/pay/lockpattern/widget/LockPatternView$DisplayMode;->ERROR:Lteam/opay/pay/lockpattern/widget/LockPatternView$DisplayMode;

    .line 216
    .line 217
    invoke-virtual {v3, v4}, Lteam/opay/pay/lockpattern/widget/LockPatternView;->setPattern(Lteam/opay/pay/lockpattern/widget/LockPatternView$DisplayMode;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    check-cast v3, Loj6;

    .line 225
    .line 226
    iget-object v3, v3, Loj6;->f:Lteam/opay/pay/lockpattern/widget/LockPatternView;

    .line 227
    .line 228
    const-wide/16 v4, 0x258

    .line 229
    .line 230
    invoke-virtual {v3, v4, v5}, Lteam/opay/pay/lockpattern/widget/LockPatternView;->v(J)V

    .line 231
    .line 232
    .line 233
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/account/verify/Hilt_VerifyPatternFragment;->getContext()Landroid/content/Context;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    if-eqz v3, :cond_6

    .line 238
    .line 239
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    invoke-virtual {v4}, Lteam/opay/pay/account/verify/VerifyViewModel;->V()Lteam/opay/core/settings/SettingsStorage;

    .line 244
    .line 245
    .line 246
    move-result-object v4

    .line 247
    invoke-virtual {v4}, Lteam/opay/core/settings/SettingsStorage;->p()I

    .line 248
    .line 249
    .line 250
    move-result v4

    .line 251
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 252
    .line 253
    .line 254
    move-result-object v5

    .line 255
    check-cast v5, Loj6;

    .line 256
    .line 257
    iget-object v5, v5, Loj6;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 258
    .line 259
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/account/verify/PatternStatus;->getStrId()I

    .line 260
    .line 261
    .line 262
    move-result v6

    .line 263
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 264
    .line 265
    .line 266
    move-result-object v7

    .line 267
    rsub-int/lit8 v4, v4, 0x6

    .line 268
    .line 269
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 270
    .line 271
    .line 272
    move-result-object v4

    .line 273
    new-array v1, v1, [Ljava/lang/Object;

    .line 274
    .line 275
    aput-object v7, v1, v0

    .line 276
    .line 277
    aput-object v4, v1, v2

    .line 278
    .line 279
    invoke-virtual {v3, v6, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    .line 285
    .line 286
    :cond_6
    sget-object v13, Lteam/opay/pay/account/verify/c;->a:Lteam/opay/pay/account/verify/c;

    .line 287
    .line 288
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 289
    .line 290
    .line 291
    move-result-object v14

    .line 292
    iget-object v1, v12, Lteam/opay/pay/account/verify/VerifyPatternFragment;->w:Lteam/opay/pay/account/verify/ValidationType;

    .line 293
    .line 294
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    invoke-virtual {v2}, Lteam/opay/pay/account/verify/VerifyViewModel;->P()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v17

    .line 302
    new-array v0, v0, [Lkotlin/Pair;

    .line 303
    .line 304
    const/16 v22, 0x70

    .line 305
    .line 306
    const/16 v23, 0x0

    .line 307
    .line 308
    const/4 v15, 0x1

    .line 309
    const/16 v18, 0x0

    .line 310
    .line 311
    const/16 v19, 0x0

    .line 312
    .line 313
    const/16 v20, 0x0

    .line 314
    .line 315
    move-object/from16 v16, v1

    .line 316
    .line 317
    move-object/from16 v21, v0

    .line 318
    .line 319
    invoke-static/range {v13 .. v23}, Lteam/opay/pay/account/verify/c;->g(Lteam/opay/pay/account/verify/c;Landroid/content/Context;ILteam/opay/pay/account/verify/ValidationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lkotlin/Pair;ILjava/lang/Object;)V

    .line 320
    .line 321
    .line 322
    goto :goto_3

    .line 323
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    check-cast v0, Loj6;

    .line 328
    .line 329
    iget-object v0, v0, Loj6;->f:Lteam/opay/pay/lockpattern/widget/LockPatternView;

    .line 330
    .line 331
    sget-object v1, Lteam/opay/pay/lockpattern/widget/LockPatternView$DisplayMode;->DEFAULT:Lteam/opay/pay/lockpattern/widget/LockPatternView$DisplayMode;

    .line 332
    .line 333
    invoke-virtual {v0, v1}, Lteam/opay/pay/lockpattern/widget/LockPatternView;->setPattern(Lteam/opay/pay/lockpattern/widget/LockPatternView$DisplayMode;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    check-cast v0, Loj6;

    .line 341
    .line 342
    iget-object v0, v0, Loj6;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 343
    .line 344
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/account/verify/PatternStatus;->getStrId()I

    .line 345
    .line 346
    .line 347
    move-result v1

    .line 348
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 349
    .line 350
    .line 351
    :goto_3
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Loj6;

    .line 11
    .line 12
    iget-object p1, p1, Loj6;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 13
    .line 14
    const-string v0, "verifyOther"

    .line 15
    .line 16
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->t0(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p1}, Ls;->a(Landroid/content/Context;)Ls;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    const-string v0, "GesturePassword"

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Ls;->d(Ljava/lang/String;)[B

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 p1, 0x0

    .line 40
    :goto_0
    iput-object p1, p0, Lteam/opay/pay/account/verify/VerifyPatternFragment;->v:[B

    .line 41
    .line 42
    sget-object p1, Lteam/opay/pay/account/verify/PatternStatus;->DEFAULT:Lteam/opay/pay/account/verify/PatternStatus;

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Lteam/opay/pay/account/verify/VerifyPatternFragment;->B0(Lteam/opay/pay/account/verify/PatternStatus;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
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
    invoke-super {p0, p1, p2}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Loj6;

    .line 16
    .line 17
    iget-object p1, p1, Loj6;->f:Lteam/opay/pay/lockpattern/widget/LockPatternView;

    .line 18
    .line 19
    const-string p2, "verifyPattern"

    .line 20
    .line 21
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lkmf;->t(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Loj6;

    .line 32
    .line 33
    iget-object p1, p1, Loj6;->f:Lteam/opay/pay/lockpattern/widget/LockPatternView;

    .line 34
    .line 35
    iget-object p2, p0, Lteam/opay/pay/account/verify/VerifyPatternFragment;->x:Lteam/opay/pay/account/verify/VerifyPatternFragment$b;

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Lteam/opay/pay/lockpattern/widget/LockPatternView;->setOnPatternListener(Lteam/opay/pay/lockpattern/widget/LockPatternView$a;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Loj6;

    .line 45
    .line 46
    iget-object p1, p1, Loj6;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 47
    .line 48
    const-string p2, "verifyOther"

    .line 49
    .line 50
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance p2, Lstf;

    .line 54
    .line 55
    invoke-direct {p2, p0}, Lstf;-><init>(Lteam/opay/pay/account/verify/VerifyPatternFragment;)V

    .line 56
    .line 57
    .line 58
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Loj6;

    .line 66
    .line 67
    iget-object p1, p1, Loj6;->b:Lteam/opay/core/android/views/OpayActionBar;

    .line 68
    .line 69
    new-instance p2, Lttf;

    .line 70
    .line 71
    invoke-direct {p2, p0}, Lttf;-><init>(Lteam/opay/pay/account/verify/VerifyPatternFragment;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p2}, Lteam/opay/core/android/views/OpayActionBar;->setBackNavigationListener(Lkotlin/jvm/functions/Function0;)V

    .line 75
    .line 76
    .line 77
    sget-object p1, Lteam/opay/pay/account/verify/c;->a:Lteam/opay/pay/account/verify/c;

    .line 78
    .line 79
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyPatternFragment;->w:Lteam/opay/pay/account/verify/ValidationType;

    .line 84
    .line 85
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v1}, Lteam/opay/pay/account/verify/VerifyViewModel;->P()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    const/4 v2, 0x0

    .line 94
    new-array v2, v2, [Lkotlin/Pair;

    .line 95
    .line 96
    invoke-virtual {p1, p2, v0, v1, v2}, Lteam/opay/pay/account/verify/c;->d(Landroid/content/Context;Lteam/opay/pay/account/verify/ValidationType;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method
