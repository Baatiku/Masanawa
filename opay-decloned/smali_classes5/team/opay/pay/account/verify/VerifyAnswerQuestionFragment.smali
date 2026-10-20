.class public final Lteam/opay/pay/account/verify/VerifyAnswerQuestionFragment;
.super Lteam/opay/pay/account/verify/BaseVerifyFragment;
.source "VerifyAnswerQuestionFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/account/verify/VerifyAnswerQuestionFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/account/verify/BaseVerifyFragment<",
        "Lawf;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u001e2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001fB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ)\u0010\u0011\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000c2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J/\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u00132\u0016\u0008\u0002\u0010\u0017\u001a\u0010\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u0015H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001c\u00a8\u0006 "
    }
    d2 = {
        "Lteam/opay/pay/account/verify/VerifyAnswerQuestionFragment;",
        "Lteam/opay/pay/account/verify/BaseVerifyFragment;",
        "Lawf;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "intent",
        "onActivityResult",
        "(IILandroid/content/Intent;)V",
        "",
        "confirm",
        "",
        "",
        "extraMap",
        "B0",
        "(ZLjava/util/Map;)V",
        "Lteam/opay/pay/account/verify/ValidationType;",
        "q",
        "Lteam/opay/pay/account/verify/ValidationType;",
        "validationType",
        "r",
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
.field public static final r:Lteam/opay/pay/account/verify/VerifyAnswerQuestionFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final q:Lteam/opay/pay/account/verify/ValidationType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/account/verify/VerifyAnswerQuestionFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/account/verify/VerifyAnswerQuestionFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/account/verify/VerifyAnswerQuestionFragment;->r:Lteam/opay/pay/account/verify/VerifyAnswerQuestionFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/account/verify/VerifyAnswerQuestionFragment$1;->INSTANCE:Lteam/opay/pay/account/verify/VerifyAnswerQuestionFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lteam/opay/pay/account/verify/ValidationType;->ANSWER_QUESTION:Lteam/opay/pay/account/verify/ValidationType;

    .line 7
    .line 8
    iput-object v0, p0, Lteam/opay/pay/account/verify/VerifyAnswerQuestionFragment;->q:Lteam/opay/pay/account/verify/ValidationType;

    .line 9
    .line 10
    return-void
.end method

.method public static final A0(Lteam/opay/pay/account/verify/VerifyAnswerQuestionFragment;Ljava/util/Map;)Lkotlin/Unit;
    .locals 3

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Lkotlin/Pair;

    .line 5
    .line 6
    const-string v2, "Risk_popup_test_continue_payment_click"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "deeplink"

    .line 12
    .line 13
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/String;

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    const-string p1, ""

    .line 22
    .line 23
    :cond_0
    const/16 v0, 0x2711

    .line 24
    .line 25
    invoke-static {p0, p1, v0}, Lteam/opay/pay/base/FragmentKt;->o(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p0
.end method

.method public static synthetic C0(Lteam/opay/pay/account/verify/VerifyAnswerQuestionFragment;ZLjava/util/Map;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/account/verify/VerifyAnswerQuestionFragment;->B0(ZLjava/util/Map;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final D0(Lteam/opay/pay/account/verify/VerifyAnswerQuestionFragment;Ljava/lang/String;)Lkotlin/Unit;
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

.method public static synthetic u0(Lteam/opay/pay/account/verify/VerifyAnswerQuestionFragment;Ljava/util/Map;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/account/verify/VerifyAnswerQuestionFragment;->A0(Lteam/opay/pay/account/verify/VerifyAnswerQuestionFragment;Ljava/util/Map;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic v0(Lteam/opay/pay/account/verify/VerifyAnswerQuestionFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/account/verify/VerifyAnswerQuestionFragment;->D0(Lteam/opay/pay/account/verify/VerifyAnswerQuestionFragment;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic w0(Lteam/opay/pay/account/verify/VerifyAnswerQuestionFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/account/verify/VerifyAnswerQuestionFragment;->z0(Lteam/opay/pay/account/verify/VerifyAnswerQuestionFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic x0(Lteam/opay/pay/account/verify/VerifyAnswerQuestionFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/account/verify/VerifyAnswerQuestionFragment;->y0(Lteam/opay/pay/account/verify/VerifyAnswerQuestionFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final y0(Lteam/opay/pay/account/verify/VerifyAnswerQuestionFragment;)Lkotlin/Unit;
    .locals 4

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Lkotlin/Pair;

    .line 5
    .line 6
    const-string v3, "Risk_popup_test_cancel_payment_click"

    .line 7
    .line 8
    invoke-virtual {v0, v3, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    const/4 v2, 0x2

    .line 13
    invoke-static {p0, v1, v0, v2, v0}, Lteam/opay/pay/account/verify/VerifyAnswerQuestionFragment;->C0(Lteam/opay/pay/account/verify/VerifyAnswerQuestionFragment;ZLjava/util/Map;ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0
.end method

.method public static final z0(Lteam/opay/pay/account/verify/VerifyAnswerQuestionFragment;)Lkotlin/Unit;
    .locals 3

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Lkotlin/Pair;

    .line 5
    .line 6
    const-string v2, "Risk_popup_test_cancel_payment_click"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->W()V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method


# virtual methods
.method public final B0(ZLjava/util/Map;)V
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v12, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->m0()Lteam/opay/pay/account/verify/VerifyPoolResponse;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyPoolResponse;->getValChainId()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v0, v1

    .line 20
    :goto_0
    const-string v2, ""

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    move-object v14, v2

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move-object v14, v0

    .line 27
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->m0()Lteam/opay/pay/account/verify/VerifyPoolResponse;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyPoolResponse;->getSecurityId()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    move-object v0, v1

    .line 43
    :goto_2
    if-nez v0, :cond_3

    .line 44
    .line 45
    move-object/from16 v20, v2

    .line 46
    .line 47
    goto :goto_3

    .line 48
    :cond_3
    move-object/from16 v20, v0

    .line 49
    .line 50
    :goto_3
    if-eqz p1, :cond_4

    .line 51
    .line 52
    const-string v0, "2"

    .line 53
    .line 54
    goto :goto_4

    .line 55
    :cond_4
    const-string v0, "1"

    .line 56
    .line 57
    :goto_4
    invoke-virtual {v12, v0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->X(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v15

    .line 61
    iget-object v0, v12, Lteam/opay/pay/account/verify/VerifyAnswerQuestionFragment;->q:Lteam/opay/pay/account/verify/ValidationType;

    .line 62
    .line 63
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v2}, Lteam/opay/pay/account/verify/VerifyViewModel;->M()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v18

    .line 71
    if-eqz p2, :cond_5

    .line 72
    .line 73
    invoke-static/range {p2 .. p2}, Lkotlin/collections/e;->y(Ljava/util/Map;)Ljava/util/Map;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    :cond_5
    move-object/from16 v26, v1

    .line 78
    .line 79
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v1}, Lteam/opay/pay/account/verify/VerifyViewModel;->P()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v17

    .line 87
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v1}, Lteam/opay/pay/account/verify/VerifyViewModel;->R()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v19

    .line 95
    new-instance v1, Lteam/opay/pay/account/verify/ValidationRequest;

    .line 96
    .line 97
    move-object v13, v1

    .line 98
    const/16 v28, 0x2f80

    .line 99
    .line 100
    const/16 v29, 0x0

    .line 101
    .line 102
    const/16 v21, 0x0

    .line 103
    .line 104
    const/16 v22, 0x0

    .line 105
    .line 106
    const/16 v23, 0x0

    .line 107
    .line 108
    const/16 v24, 0x0

    .line 109
    .line 110
    const/16 v25, 0x0

    .line 111
    .line 112
    const/16 v27, 0x0

    .line 113
    .line 114
    move-object/from16 v16, v0

    .line 115
    .line 116
    invoke-direct/range {v13 .. v29}, Lteam/opay/pay/account/verify/ValidationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/account/verify/ValidationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    iget-object v3, v12, Lteam/opay/pay/account/verify/VerifyAnswerQuestionFragment;->q:Lteam/opay/pay/account/verify/ValidationType;

    .line 124
    .line 125
    xor-int/lit8 v4, p1, 0x1

    .line 126
    .line 127
    new-instance v9, Lynf;

    .line 128
    .line 129
    invoke-direct {v9, v12}, Lynf;-><init>(Lteam/opay/pay/account/verify/VerifyAnswerQuestionFragment;)V

    .line 130
    .line 131
    .line 132
    const/16 v10, 0xf0

    .line 133
    .line 134
    const/4 v11, 0x0

    .line 135
    const/4 v5, 0x0

    .line 136
    const/4 v6, 0x0

    .line 137
    const/4 v7, 0x0

    .line 138
    const/4 v8, 0x0

    .line 139
    move-object/from16 v2, p0

    .line 140
    .line 141
    invoke-static/range {v0 .. v11}, Lteam/opay/pay/account/verify/VerifyViewModel;->P0(Lteam/opay/pay/account/verify/VerifyViewModel;Lteam/opay/pay/account/verify/ValidationRequest;Lteam/opay/pay/account/verify/BaseVerifyFragment;Lteam/opay/pay/account/verify/ValidationType;ZLjava/lang/String;Ljava/lang/String;ZLhm6;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, -0x1

    .line 5
    if-ne p2, p1, :cond_3

    .line 6
    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    const-string p1, "android.intent.extra.TEXT"

    .line 10
    .line 11
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    if-nez p1, :cond_1

    .line 18
    .line 19
    const-string p1, ""

    .line 20
    .line 21
    :cond_1
    new-instance p2, Lorg/json/JSONObject;

    .line 22
    .line 23
    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string p1, "result"

    .line 27
    .line 28
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    const-string p3, "map"

    .line 33
    .line 34
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 42
    .line 43
    .line 44
    move-result p3

    .line 45
    if-nez p3, :cond_2

    .line 46
    .line 47
    invoke-static {}, Lkotlin/collections/e;->i()Ljava/util/Map;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    new-instance p3, Lteam/opay/pay/account/verify/VerifyAnswerQuestionFragment$a;

    .line 53
    .line 54
    invoke-direct {p3}, Lteam/opay/pay/account/verify/VerifyAnswerQuestionFragment$a;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 58
    .line 59
    .line 60
    move-result-object p3

    .line 61
    new-instance v0, Lcom/google/gson/Gson;

    .line 62
    .line 63
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p2, p3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    check-cast p2, Ljava/util/Map;

    .line 74
    .line 75
    :goto_1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/account/verify/VerifyAnswerQuestionFragment;->B0(ZLjava/util/Map;)V

    .line 76
    .line 77
    .line 78
    :cond_3
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "view"

    .line 4
    .line 5
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyViewModel;->S()Lteam/opay/pay/account/verify/VerifyManager;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p2, p0, Lteam/opay/pay/account/verify/VerifyAnswerQuestionFragment;->q:Lteam/opay/pay/account/verify/ValidationType;

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Lteam/opay/pay/account/verify/VerifyManager;->M(Lteam/opay/pay/account/verify/ValidationType;)Ljava/util/Map;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_3

    .line 26
    .line 27
    sget-object p2, Lx7b;->a:Lx7b;

    .line 28
    .line 29
    const-string v2, "assessmentId"

    .line 30
    .line 31
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const-string v3, "course_id"

    .line 36
    .line 37
    invoke-static {v3, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    new-array v3, v1, [Lkotlin/Pair;

    .line 42
    .line 43
    aput-object v2, v3, v0

    .line 44
    .line 45
    const-string v2, "Risk_popup_test_page_show"

    .line 46
    .line 47
    invoke-virtual {p2, v2, v3}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    check-cast p2, Lawf;

    .line 55
    .line 56
    iget-object v2, p2, Lawf;->e:Landroidx/appcompat/widget/AppCompatImageView;

    .line 57
    .line 58
    const-string p2, "icIcon"

    .line 59
    .line 60
    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string p2, "popPic"

    .line 64
    .line 65
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    move-object v3, p2

    .line 70
    check-cast v3, Ljava/lang/String;

    .line 71
    .line 72
    sget v4, Lteam/opay/pay/R$mipmap;->osdk_ic_warning:I

    .line 73
    .line 74
    const/4 v6, 0x4

    .line 75
    const/4 v7, 0x0

    .line 76
    const/4 v5, 0x0

    .line 77
    invoke-static/range {v2 .. v7}, Lme7;->v(Landroid/widget/ImageView;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    check-cast p2, Lawf;

    .line 85
    .line 86
    iget-object p2, p2, Lawf;->c:Lcom/google/android/material/button/MaterialButton;

    .line 87
    .line 88
    const-string v2, "rightButt"

    .line 89
    .line 90
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    check-cast v2, Ljava/lang/CharSequence;

    .line 95
    .line 96
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    check-cast p2, Lawf;

    .line 104
    .line 105
    iget-object p2, p2, Lawf;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 106
    .line 107
    const-string v2, "title"

    .line 108
    .line 109
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    check-cast v2, Ljava/lang/String;

    .line 114
    .line 115
    invoke-static {v2}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    check-cast p2, Lawf;

    .line 127
    .line 128
    iget-object p2, p2, Lawf;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 129
    .line 130
    const-string v2, "content"

    .line 131
    .line 132
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    check-cast v2, Ljava/lang/String;

    .line 137
    .line 138
    invoke-static {v2}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    .line 144
    .line 145
    const-string p2, "leftButt"

    .line 146
    .line 147
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    check-cast p2, Ljava/lang/String;

    .line 152
    .line 153
    if-nez p2, :cond_0

    .line 154
    .line 155
    const-string p2, ""

    .line 156
    .line 157
    :cond_0
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    check-cast v2, Lawf;

    .line 162
    .line 163
    iget-object v2, v2, Lawf;->b:Lcom/google/android/material/button/MaterialButton;

    .line 164
    .line 165
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    check-cast p2, Lawf;

    .line 173
    .line 174
    iget-object p2, p2, Lawf;->b:Lcom/google/android/material/button/MaterialButton;

    .line 175
    .line 176
    const-string v2, "cancel"

    .line 177
    .line 178
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    new-instance v2, Lznf;

    .line 182
    .line 183
    invoke-direct {v2, p0}, Lznf;-><init>(Lteam/opay/pay/account/verify/VerifyAnswerQuestionFragment;)V

    .line 184
    .line 185
    .line 186
    invoke-static {p2, v2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 187
    .line 188
    .line 189
    const-string p2, "belowTips"

    .line 190
    .line 191
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    check-cast v2, Ljava/lang/String;

    .line 196
    .line 197
    invoke-static {v2}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    check-cast v3, Lawf;

    .line 206
    .line 207
    iget-object v3, v3, Lawf;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 208
    .line 209
    const-string v4, "tvTip"

    .line 210
    .line 211
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    if-eqz v2, :cond_1

    .line 215
    .line 216
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    if-nez v2, :cond_2

    .line 221
    .line 222
    :cond_1
    const/4 v0, 0x1

    .line 223
    :cond_2
    xor-int/2addr v0, v1

    .line 224
    invoke-static {v3, v0}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    check-cast v0, Lawf;

    .line 232
    .line 233
    iget-object v0, v0, Lawf;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 234
    .line 235
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object p2

    .line 239
    check-cast p2, Ljava/lang/String;

    .line 240
    .line 241
    invoke-static {p2}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 242
    .line 243
    .line 244
    move-result-object p2

    .line 245
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 249
    .line 250
    .line 251
    move-result-object p2

    .line 252
    check-cast p2, Lawf;

    .line 253
    .line 254
    iget-object p2, p2, Lawf;->f:Landroidx/appcompat/widget/AppCompatImageView;

    .line 255
    .line 256
    const-string v0, "ivClose"

    .line 257
    .line 258
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-static {p2}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 265
    .line 266
    .line 267
    move-result-object p2

    .line 268
    check-cast p2, Lawf;

    .line 269
    .line 270
    iget-object p2, p2, Lawf;->f:Landroidx/appcompat/widget/AppCompatImageView;

    .line 271
    .line 272
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    new-instance v0, Laof;

    .line 276
    .line 277
    invoke-direct {v0, p0}, Laof;-><init>(Lteam/opay/pay/account/verify/VerifyAnswerQuestionFragment;)V

    .line 278
    .line 279
    .line 280
    invoke-static {p2, v0}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 284
    .line 285
    .line 286
    move-result-object p2

    .line 287
    check-cast p2, Lawf;

    .line 288
    .line 289
    iget-object p2, p2, Lawf;->c:Lcom/google/android/material/button/MaterialButton;

    .line 290
    .line 291
    const-string v0, "confirm"

    .line 292
    .line 293
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    new-instance v0, Lbof;

    .line 297
    .line 298
    invoke-direct {v0, p0, p1}, Lbof;-><init>(Lteam/opay/pay/account/verify/VerifyAnswerQuestionFragment;Ljava/util/Map;)V

    .line 299
    .line 300
    .line 301
    invoke-static {p2, v0}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 302
    .line 303
    .line 304
    :cond_3
    return-void
.end method
