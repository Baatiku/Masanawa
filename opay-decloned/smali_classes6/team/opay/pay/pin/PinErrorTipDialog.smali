.class public final Lteam/opay/pay/pin/PinErrorTipDialog;
.super Lteam/opay/pay/pin/Hilt_PinErrorTipDialog;
.source "PinErrorTipDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/pin/PinErrorTipDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/pin/Hilt_PinErrorTipDialog<",
        "Lvd3;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0007\u0018\u0000 *2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001+B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u0019\u0010\t\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u0004J\u0017\u0010\u000e\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000cH\u0007\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u000e\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0010H\u0007\u00a2\u0006\u0004\u0008\u000e\u0010\u0011J!\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00122\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\"\u0010\u001d\u001a\u00020\u00168\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u0018\u0010!\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R*\u0010)\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\"8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008#\u0010$\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(\u00a8\u0006,"
    }
    d2 = {
        "Lteam/opay/pay/pin/PinErrorTipDialog;",
        "Lteam/opay/core/base/BaseDialogInjectFragmentV2;",
        "Lvd3;",
        "<init>",
        "()V",
        "",
        "R",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onDestroy",
        "Lteam/opay/pay/account/verify/VerifyEvent;",
        "event",
        "onEvent",
        "(Lteam/opay/pay/account/verify/VerifyEvent;)V",
        "Lteam/opay/pay/account/verify/VerifyExitEvent;",
        "(Lteam/opay/pay/account/verify/VerifyExitEvent;)V",
        "Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "",
        "p",
        "Z",
        "J",
        "()Z",
        "setSupportCancelable",
        "(Z)V",
        "supportCancelable",
        "Lteam/opay/pay/pin/PinError;",
        "q",
        "Lteam/opay/pay/pin/PinError;",
        "pinErrorData",
        "Lkotlin/Function0;",
        "r",
        "Lkotlin/jvm/functions/Function0;",
        "getRetryClick",
        "()Lkotlin/jvm/functions/Function0;",
        "setRetryClick",
        "(Lkotlin/jvm/functions/Function0;)V",
        "retryClick",
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
.field public static final s:Lteam/opay/pay/pin/PinErrorTipDialog$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public p:Z

.field public q:Lteam/opay/pay/pin/PinError;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public r:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/pin/PinErrorTipDialog$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/pin/PinErrorTipDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/pin/PinErrorTipDialog;->s:Lteam/opay/pay/pin/PinErrorTipDialog$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/pin/PinErrorTipDialog$1;->INSTANCE:Lteam/opay/pay/pin/PinErrorTipDialog$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/pin/Hilt_PinErrorTipDialog;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic M(Lteam/opay/pay/pin/PinErrorTipDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/pin/PinErrorTipDialog;->U(Lteam/opay/pay/pin/PinErrorTipDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic N(Lteam/opay/pay/pin/PinErrorTipDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/pin/PinErrorTipDialog;->W(Lteam/opay/pay/pin/PinErrorTipDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic O(Lteam/opay/pay/pin/PinErrorTipDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/pin/PinErrorTipDialog;->V(Lteam/opay/pay/pin/PinErrorTipDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic P(Lteam/opay/pay/account/verify/VerifyExitEvent;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/pin/PinErrorTipDialog;->S(Lteam/opay/pay/account/verify/VerifyExitEvent;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Q(Lteam/opay/pay/pin/PinErrorTipDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/pin/PinErrorTipDialog;->T(Lteam/opay/pay/pin/PinErrorTipDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final R()V
    .locals 9

    .line 1
    sget-object v0, Lteam/opay/pay/account/verify/VerifyActivity;->l:Lteam/opay/pay/account/verify/VerifyActivity$Companion;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Lteam/opay/pay/account/verify/ModifyType;->FORGET_PAYMENT_PIN:Lteam/opay/pay/account/verify/ModifyType;

    .line 8
    .line 9
    new-instance v3, Lteam/opay/core/settings/SettingsStorage;

    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragment;->getAppContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-direct {v3, v4}, Lteam/opay/core/settings/SettingsStorage;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3}, Lteam/opay/core/settings/SettingsStorage;->K()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const-string v4, "+"

    .line 23
    .line 24
    invoke-static {v3, v4}, Lkotlin/text/StringsKt;->L0(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const-string v4, "234"

    .line 29
    .line 30
    invoke-static {v3, v4}, Lkotlin/text/StringsKt;->L0(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const-string v4, "0"

    .line 35
    .line 36
    invoke-static {v3, v4}, Lkotlin/text/StringsKt;->L0(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const/16 v7, 0x18

    .line 41
    .line 42
    const/4 v8, 0x0

    .line 43
    const/4 v4, 0x0

    .line 44
    const/4 v5, 0x0

    .line 45
    const-string v6, "payment_error_forget_payment_pin"

    .line 46
    .line 47
    invoke-static/range {v0 .. v8}, Lteam/opay/pay/account/verify/VerifyActivity$Companion;->b(Lteam/opay/pay/account/verify/VerifyActivity$Companion;Landroid/app/Activity;Lteam/opay/pay/account/verify/ModifyType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public static final S(Lteam/opay/pay/account/verify/VerifyExitEvent;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final T(Lteam/opay/pay/pin/PinErrorTipDialog;)Lkotlin/Unit;
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
    const-string v2, "pin_error_reach_forgot_click"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lteam/opay/pay/pin/PinErrorTipDialog;->R()V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method

.method public static final U(Lteam/opay/pay/pin/PinErrorTipDialog;)Lkotlin/Unit;
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
    const-string v2, "pin_error_reach_confirm_click"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragment;->dismiss()V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method

.method public static final V(Lteam/opay/pay/pin/PinErrorTipDialog;)Lkotlin/Unit;
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
    const-string v2, "pin_error_unreach_forgot_click"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lteam/opay/pay/pin/PinErrorTipDialog;->R()V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method

.method public static final W(Lteam/opay/pay/pin/PinErrorTipDialog;)Lkotlin/Unit;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/pin/PinErrorTipDialog;->r:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-object v0, Lx7b;->a:Lx7b;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    new-array v1, v1, [Lkotlin/Pair;

    .line 12
    .line 13
    const-string v2, "pin_error_unreach_retry_click"

    .line 14
    .line 15
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragment;->dismiss()V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p0
.end method


# virtual methods
.method public J()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/pin/PinErrorTipDialog;->p:Z

    .line 2
    .line 3
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/core/base/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const-string v0, "key"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lteam/opay/pay/pin/PinError;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    iput-object p1, p0, Lteam/opay/pay/pin/PinErrorTipDialog;->q:Lteam/opay/pay/pin/PinError;

    .line 21
    .line 22
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->c()Lorg/greenrobot/eventbus/EventBus;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->q(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
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
    .locals 9
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

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyEvent;->getRequestCode()Ljava/lang/String;

    move-result-object v0

    .line 2
    const-string v1, "payment_error_forget_payment_pin"

    .line 3
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v1, Lteam/opay/pay/home/security/paypin/ResetPayPinActivity;->i:Lteam/opay/pay/home/security/paypin/ResetPayPinActivity$Companion;

    .line 5
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v3, p1

    .line 6
    invoke-static/range {v1 .. v8}, Lteam/opay/pay/home/security/paypin/ResetPayPinActivity$Companion;->b(Lteam/opay/pay/home/security/paypin/ResetPayPinActivity$Companion;Landroid/content/Context;Lteam/opay/pay/account/verify/VerifyEvent;IILjava/lang/String;ILjava/lang/Object;)V

    .line 7
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public final onEvent(Lteam/opay/pay/account/verify/VerifyExitEvent;)V
    .locals 3
    .param p1    # Lteam/opay/pay/account/verify/VerifyExitEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lb8e;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object v0, Lxk8;->a:Lxk8;

    new-instance v1, Ltrb;

    invoke-direct {v1, p1}, Ltrb;-><init>(Lteam/opay/pay/account/verify/VerifyExitEvent;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1, v2}, Lxk8;->i(Lxk8;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 9
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragment;->dismiss()V

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
    invoke-super {p0, p1, p2}, Lteam/opay/core/base/BaseDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lteam/opay/pay/pin/PinErrorTipDialog;->q:Lteam/opay/pay/pin/PinError;

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    check-cast p2, Lvd3;

    .line 18
    .line 19
    iget-object p2, p2, Lvd3;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 20
    .line 21
    invoke-virtual {p1}, Lteam/opay/pay/pin/PinError;->getTip()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lteam/opay/pay/pin/PinError;->getCode()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string p2, "02070"

    .line 33
    .line 34
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    const/4 p2, 0x0

    .line 39
    const-string v0, "btnForgot1"

    .line 40
    .line 41
    const-string v1, "btnRetry"

    .line 42
    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Lvd3;

    .line 50
    .line 51
    iget-object p1, p1, Lvd3;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 52
    .line 53
    sget v2, Lteam/opay/pay/R$string;->osdk_account_locked:I

    .line 54
    .line 55
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Lvd3;

    .line 67
    .line 68
    iget-object p1, p1, Lvd3;->c:Lcom/google/android/material/button/MaterialButton;

    .line 69
    .line 70
    sget v2, Lteam/opay/pay/R$string;->secret_security_reset_pin:I

    .line 71
    .line 72
    invoke-static {v2}, Ljmf;->k(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    check-cast p1, Lvd3;

    .line 84
    .line 85
    iget-object p1, p1, Lvd3;->b:Lcom/google/android/material/button/MaterialButton;

    .line 86
    .line 87
    sget v2, Lteam/opay/pay/R$string;->cancel:I

    .line 88
    .line 89
    invoke-static {v2}, Ljmf;->k(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    check-cast p1, Lvd3;

    .line 101
    .line 102
    iget-object p1, p1, Lvd3;->f:Landroidx/appcompat/widget/AppCompatImageView;

    .line 103
    .line 104
    sget v2, Lteam/opay/pay/R$mipmap;->osdk_ic_account_locked:I

    .line 105
    .line 106
    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    check-cast p1, Lvd3;

    .line 114
    .line 115
    iget-object p1, p1, Lvd3;->c:Lcom/google/android/material/button/MaterialButton;

    .line 116
    .line 117
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    new-instance v1, Lprb;

    .line 121
    .line 122
    invoke-direct {v1, p0}, Lprb;-><init>(Lteam/opay/pay/pin/PinErrorTipDialog;)V

    .line 123
    .line 124
    .line 125
    invoke-static {p1, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    check-cast p1, Lvd3;

    .line 133
    .line 134
    iget-object p1, p1, Lvd3;->b:Lcom/google/android/material/button/MaterialButton;

    .line 135
    .line 136
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    new-instance v0, Lqrb;

    .line 140
    .line 141
    invoke-direct {v0, p0}, Lqrb;-><init>(Lteam/opay/pay/pin/PinErrorTipDialog;)V

    .line 142
    .line 143
    .line 144
    invoke-static {p1, v0}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 145
    .line 146
    .line 147
    sget-object p1, Lx7b;->a:Lx7b;

    .line 148
    .line 149
    const-string v0, "pin_error_reach_show"

    .line 150
    .line 151
    new-array p2, p2, [Lkotlin/Pair;

    .line 152
    .line 153
    invoke-virtual {p1, v0, p2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 154
    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    check-cast p1, Lvd3;

    .line 162
    .line 163
    iget-object p1, p1, Lvd3;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 164
    .line 165
    sget v2, Lteam/opay/pay/R$string;->osdk_pin_incorrect:I

    .line 166
    .line 167
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    check-cast p1, Lvd3;

    .line 179
    .line 180
    iget-object p1, p1, Lvd3;->f:Landroidx/appcompat/widget/AppCompatImageView;

    .line 181
    .line 182
    sget v2, Lteam/opay/pay/R$mipmap;->osdk_ic_account_error:I

    .line 183
    .line 184
    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    check-cast p1, Lvd3;

    .line 192
    .line 193
    iget-object p1, p1, Lvd3;->b:Lcom/google/android/material/button/MaterialButton;

    .line 194
    .line 195
    sget v2, Lteam/opay/pay/R$string;->osdk_forget_pin:I

    .line 196
    .line 197
    invoke-static {v2}, Ljmf;->k(I)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    check-cast p1, Lvd3;

    .line 209
    .line 210
    iget-object p1, p1, Lvd3;->b:Lcom/google/android/material/button/MaterialButton;

    .line 211
    .line 212
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    new-instance v0, Lrrb;

    .line 216
    .line 217
    invoke-direct {v0, p0}, Lrrb;-><init>(Lteam/opay/pay/pin/PinErrorTipDialog;)V

    .line 218
    .line 219
    .line 220
    invoke-static {p1, v0}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    check-cast p1, Lvd3;

    .line 228
    .line 229
    iget-object p1, p1, Lvd3;->c:Lcom/google/android/material/button/MaterialButton;

    .line 230
    .line 231
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    new-instance v0, Lsrb;

    .line 235
    .line 236
    invoke-direct {v0, p0}, Lsrb;-><init>(Lteam/opay/pay/pin/PinErrorTipDialog;)V

    .line 237
    .line 238
    .line 239
    invoke-static {p1, v0}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 240
    .line 241
    .line 242
    sget-object p1, Lx7b;->a:Lx7b;

    .line 243
    .line 244
    const-string v0, "pin_error_unreach_show"

    .line 245
    .line 246
    new-array p2, p2, [Lkotlin/Pair;

    .line 247
    .line 248
    invoke-virtual {p1, v0, p2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 249
    .line 250
    .line 251
    goto :goto_0

    .line 252
    :cond_1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragment;->dismiss()V

    .line 253
    .line 254
    .line 255
    :goto_0
    return-void
.end method
