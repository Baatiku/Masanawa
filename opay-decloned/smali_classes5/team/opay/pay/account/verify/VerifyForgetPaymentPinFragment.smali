.class public final Lteam/opay/pay/account/verify/VerifyForgetPaymentPinFragment;
.super Lteam/opay/pay/account/verify/BaseVerifyFragment;
.source "VerifyForgetPaymentPinFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/account/verify/VerifyForgetPaymentPinFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/account/verify/BaseVerifyFragment<",
        "Lhd8;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 \"2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001#B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0019\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0019\u0010\u000c\u001a\u00020\u00072\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000eH\u0007\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J)\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00122\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0017\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0019H\u0007\u00a2\u0006\u0004\u0008\u0010\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u0004R\u0014\u0010\u001f\u001a\u00020\u001c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0016\u0010\u0006\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!\u00a8\u0006$"
    }
    d2 = {
        "Lteam/opay/pay/account/verify/VerifyForgetPaymentPinFragment;",
        "Lteam/opay/pay/account/verify/BaseVerifyFragment;",
        "Lhd8;",
        "<init>",
        "()V",
        "",
        "valChainId",
        "",
        "v0",
        "(Ljava/lang/String;)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Lteam/opay/pay/account/verify/VerifyEvent;",
        "event",
        "onEvent",
        "(Lteam/opay/pay/account/verify/VerifyEvent;)V",
        "",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "data",
        "onActivityResult",
        "(IILandroid/content/Intent;)V",
        "Lteam/opay/pay/account/verify/VerifyExitEvent;",
        "(Lteam/opay/pay/account/verify/VerifyExitEvent;)V",
        "onDestroy",
        "Lteam/opay/pay/account/verify/ValidationType;",
        "q",
        "Lteam/opay/pay/account/verify/ValidationType;",
        "validationType",
        "r",
        "Ljava/lang/String;",
        "s",
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
.field public static final s:Lteam/opay/pay/account/verify/VerifyForgetPaymentPinFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final q:Lteam/opay/pay/account/verify/ValidationType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public r:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/account/verify/VerifyForgetPaymentPinFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/account/verify/VerifyForgetPaymentPinFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/account/verify/VerifyForgetPaymentPinFragment;->s:Lteam/opay/pay/account/verify/VerifyForgetPaymentPinFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/account/verify/VerifyForgetPaymentPinFragment$1;->INSTANCE:Lteam/opay/pay/account/verify/VerifyForgetPaymentPinFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lteam/opay/pay/account/verify/ValidationType;->UNFRESSZE_PAYMENT_PIN:Lteam/opay/pay/account/verify/ValidationType;

    .line 7
    .line 8
    iput-object v0, p0, Lteam/opay/pay/account/verify/VerifyForgetPaymentPinFragment;->q:Lteam/opay/pay/account/verify/ValidationType;

    .line 9
    .line 10
    const-string v0, ""

    .line 11
    .line 12
    iput-object v0, p0, Lteam/opay/pay/account/verify/VerifyForgetPaymentPinFragment;->r:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method

.method public static synthetic u0(Lteam/opay/pay/account/verify/VerifyForgetPaymentPinFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/account/verify/VerifyForgetPaymentPinFragment;->w0(Lteam/opay/pay/account/verify/VerifyForgetPaymentPinFragment;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final v0(Ljava/lang/String;)V
    .locals 30

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
    move-result-object v1

    .line 41
    :cond_2
    if-nez v1, :cond_3

    .line 42
    .line 43
    move-object/from16 v20, v2

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_3
    move-object/from16 v20, v1

    .line 47
    .line 48
    :goto_2
    if-nez p1, :cond_4

    .line 49
    .line 50
    move-object v15, v2

    .line 51
    goto :goto_3

    .line 52
    :cond_4
    move-object/from16 v15, p1

    .line 53
    .line 54
    :goto_3
    iget-object v0, v12, Lteam/opay/pay/account/verify/VerifyForgetPaymentPinFragment;->q:Lteam/opay/pay/account/verify/ValidationType;

    .line 55
    .line 56
    move-object/from16 v16, v0

    .line 57
    .line 58
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->M()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v18

    .line 66
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->P()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v17

    .line 74
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->R()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v19

    .line 82
    new-instance v1, Lteam/opay/pay/account/verify/ValidationRequest;

    .line 83
    .line 84
    move-object v13, v1

    .line 85
    const/16 v28, 0x3f80

    .line 86
    .line 87
    const/16 v29, 0x0

    .line 88
    .line 89
    const/16 v21, 0x0

    .line 90
    .line 91
    const/16 v22, 0x0

    .line 92
    .line 93
    const/16 v23, 0x0

    .line 94
    .line 95
    const/16 v24, 0x0

    .line 96
    .line 97
    const/16 v25, 0x0

    .line 98
    .line 99
    const/16 v26, 0x0

    .line 100
    .line 101
    const/16 v27, 0x0

    .line 102
    .line 103
    invoke-direct/range {v13 .. v29}, Lteam/opay/pay/account/verify/ValidationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/account/verify/ValidationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    iget-object v3, v12, Lteam/opay/pay/account/verify/VerifyForgetPaymentPinFragment;->q:Lteam/opay/pay/account/verify/ValidationType;

    .line 111
    .line 112
    new-instance v9, Lmqf;

    .line 113
    .line 114
    invoke-direct {v9, v12}, Lmqf;-><init>(Lteam/opay/pay/account/verify/VerifyForgetPaymentPinFragment;)V

    .line 115
    .line 116
    .line 117
    const/16 v10, 0xf8

    .line 118
    .line 119
    const/4 v11, 0x0

    .line 120
    const/4 v4, 0x0

    .line 121
    const/4 v5, 0x0

    .line 122
    const/4 v6, 0x0

    .line 123
    const/4 v7, 0x0

    .line 124
    const/4 v8, 0x0

    .line 125
    move-object/from16 v2, p0

    .line 126
    .line 127
    invoke-static/range {v0 .. v11}, Lteam/opay/pay/account/verify/VerifyViewModel;->P0(Lteam/opay/pay/account/verify/VerifyViewModel;Lteam/opay/pay/account/verify/ValidationRequest;Lteam/opay/pay/account/verify/BaseVerifyFragment;Lteam/opay/pay/account/verify/ValidationType;ZLjava/lang/String;Ljava/lang/String;ZLhm6;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    return-void
.end method

.method public static final w0(Lteam/opay/pay/account/verify/VerifyForgetPaymentPinFragment;Ljava/lang/String;)Lkotlin/Unit;
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
    move-result-object v0

    .line 10
    invoke-static {v0, p1}, Lkmf;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 18
    .line 19
    .line 20
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    return-object p0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/4 p3, 0x2

    .line 5
    if-ne p1, p3, :cond_2

    .line 6
    .line 7
    const/4 p1, -0x1

    .line 8
    if-ne p2, p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lteam/opay/pay/account/verify/VerifyForgetPaymentPinFragment;->r:Ljava/lang/String;

    .line 11
    .line 12
    invoke-direct {p0, p1}, Lteam/opay/pay/account/verify/VerifyForgetPaymentPinFragment;->v0(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Lteam/opay/pay/account/verify/VerifyExitEvent;

    .line 17
    .line 18
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p2}, Lteam/opay/pay/account/verify/VerifyViewModel;->P()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    if-nez p2, :cond_1

    .line 27
    .line 28
    const-string p2, ""

    .line 29
    .line 30
    :cond_1
    move-object v2, p2

    .line 31
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p2}, Lteam/opay/pay/account/verify/VerifyViewModel;->M()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    const/16 v7, 0x20

    .line 40
    .line 41
    const/4 v8, 0x0

    .line 42
    const/4 v1, 0x1

    .line 43
    const-string v3, ""

    .line 44
    .line 45
    const-string v4, ""

    .line 46
    .line 47
    const/4 v6, 0x0

    .line 48
    move-object v0, p1

    .line 49
    invoke-direct/range {v0 .. v8}, Lteam/opay/pay/account/verify/VerifyExitEvent;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-virtual {p2}, Lteam/opay/pay/account/verify/VerifyViewModel;->S()Lteam/opay/pay/account/verify/VerifyManager;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {p2, p1}, Lteam/opay/pay/account/verify/VerifyManager;->X(Lteam/opay/pay/account/verify/VerifyExitEvent;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->c()Lorg/greenrobot/eventbus/EventBus;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->q(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lteam/opay/pay/account/verify/VerifyActivity;->l:Lteam/opay/pay/account/verify/VerifyActivity$Companion;

    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sget-object v2, Lteam/opay/pay/account/verify/ModifyType;->FORGET_PAYMENT_PIN:Lteam/opay/pay/account/verify/ModifyType;

    .line 18
    .line 19
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyViewModel;->M()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyViewModel;->m0()Lteam/opay/pay/account/verify/VerifyPoolResponse;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const/4 v4, 0x0

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyPoolResponse;->getValChainId()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move-object p1, v4

    .line 44
    :goto_0
    const-string v5, ""

    .line 45
    .line 46
    if-nez p1, :cond_1

    .line 47
    .line 48
    move-object p1, v5

    .line 49
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-virtual {v6}, Lteam/opay/pay/account/verify/VerifyViewModel;->m0()Lteam/opay/pay/account/verify/VerifyPoolResponse;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    if-eqz v6, :cond_2

    .line 58
    .line 59
    invoke-virtual {v6}, Lteam/opay/pay/account/verify/VerifyPoolResponse;->getSecurityId()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    :cond_2
    if-nez v4, :cond_3

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    move-object v5, v4

    .line 67
    :goto_1
    move-object v4, p1

    .line 68
    invoke-virtual/range {v0 .. v5}, Lteam/opay/pay/account/verify/VerifyActivity$Companion;->c(Landroid/app/Activity;Lteam/opay/pay/account/verify/ModifyType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->c()Lorg/greenrobot/eventbus/EventBus;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->s(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onEvent(Lteam/opay/pay/account/verify/VerifyEvent;)V
    .locals 7
    .param p1    # Lteam/opay/pay/account/verify/VerifyEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lb8e;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyEvent;->getModifyType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lteam/opay/pay/account/verify/ModifyType;->FORGET_PAYMENT_PIN:Lteam/opay/pay/account/verify/ModifyType;

    invoke-virtual {v1}, Lteam/opay/pay/account/verify/ModifyType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyEvent;->getRequestCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lteam/opay/pay/account/verify/VerifyViewModel;->M()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyEvent;->getValChainId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    iput-object v0, p0, Lteam/opay/pay/account/verify/VerifyForgetPaymentPinFragment;->r:Ljava/lang/String;

    .line 4
    sget-object v1, Lteam/opay/pay/home/security/paypin/ResetPayPinActivity;->i:Lteam/opay/pay/home/security/paypin/ResetPayPinActivity$Companion;

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v4, 0x3

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lteam/opay/pay/home/security/paypin/ResetPayPinActivity$Companion;->c(Lteam/opay/core/base/BaseFragmentV2;Lteam/opay/pay/account/verify/VerifyEvent;III)V

    :cond_1
    return-void
.end method

.method public final onEvent(Lteam/opay/pay/account/verify/VerifyExitEvent;)V
    .locals 10
    .param p1    # Lteam/opay/pay/account/verify/VerifyExitEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lb8e;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyExitEvent;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lteam/opay/pay/account/verify/VerifyViewModel;->M()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyExitEvent;->c()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lteam/opay/pay/account/verify/ModifyType;->FORGET_PAYMENT_PIN:Lteam/opay/pay/account/verify/ModifyType;

    invoke-virtual {v1}, Lteam/opay/pay/account/verify/ModifyType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Lteam/opay/pay/account/verify/VerifyExitEvent;

    .line 7
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyExitEvent;->a()Z

    move-result v2

    .line 8
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lteam/opay/pay/account/verify/VerifyViewModel;->P()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    move-object v3, v1

    .line 9
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyExitEvent;->d()Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyExitEvent;->b()Ljava/lang/String;

    move-result-object v5

    .line 11
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyViewModel;->M()Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x20

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    .line 12
    invoke-direct/range {v1 .. v9}, Lteam/opay/pay/account/verify/VerifyExitEvent;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 13
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyViewModel;->S()Lteam/opay/pay/account/verify/VerifyManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lteam/opay/pay/account/verify/VerifyManager;->X(Lteam/opay/pay/account/verify/VerifyExitEvent;)V

    :cond_1
    return-void
.end method
