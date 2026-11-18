.class public final Lteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog;
.super Lteam/opay/core/base/BaseDialogFragmentV2;
.source "SmsSubscribeConfirmDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/base/BaseDialogFragmentV2<",
        "Lee3;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u0000 &2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\'B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J!\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008\r\u0010\u0004R*\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R*\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0010\u001a\u0004\u0008\u0017\u0010\u0012\"\u0004\u0008\u0018\u0010\u0014R\"\u0010!\u001a\u00020\u001a8\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u0016\u0010%\u001a\u00020\"8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010$\u00a8\u0006("
    }
    d2 = {
        "Lteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog;",
        "Lteam/opay/core/base/BaseDialogFragmentV2;",
        "Lee3;",
        "<init>",
        "()V",
        "",
        "Q",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "K",
        "Lkotlin/Function0;",
        "j",
        "Lkotlin/jvm/functions/Function0;",
        "getConfirmCallback",
        "()Lkotlin/jvm/functions/Function0;",
        "U",
        "(Lkotlin/jvm/functions/Function0;)V",
        "confirmCallback",
        "k",
        "getCancelCallback",
        "setCancelCallback",
        "cancelCallback",
        "",
        "l",
        "Z",
        "getSupportBack",
        "()Z",
        "setSupportBack",
        "(Z)V",
        "supportBack",
        "",
        "m",
        "Ljava/lang/String;",
        "status",
        "n",
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
.field public static final n:Lteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public j:Lkotlin/jvm/functions/Function0;
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

.field public k:Lkotlin/jvm/functions/Function0;
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

.field public l:Z

.field public m:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog;->n:Lteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog$1;->INSTANCE:Lteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/core/base/BaseDialogFragmentV2;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog;->l:Z

    .line 8
    .line 9
    const-string v0, "01"

    .line 10
    .line 11
    iput-object v0, p0, Lteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog;->m:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic M(ZLteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog;->T(ZLteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic N(Lteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog;->R(Lteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog;Landroid/widget/CompoundButton;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic O(ZLteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog;->S(ZLteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic P(Lteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private final Q()V
    .locals 6

    .line 1
    sget v0, Lteam/opay/pay/R$string;->osdk_sms_confirm_tips:I

    .line 2
    .line 3
    invoke-static {v0}, Ljmf;->k(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lee3;

    .line 12
    .line 13
    iget-object v1, v1, Lee3;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 14
    .line 15
    new-instance v2, Landroid/text/SpannableStringBuilder;

    .line 16
    .line 17
    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    new-instance v3, Lteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog$a;

    .line 21
    .line 22
    invoke-direct {v3, p0}, Lteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog$a;-><init>(Lteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    const/16 v5, 0x21

    .line 30
    .line 31
    sub-int/2addr v4, v5

    .line 32
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    add-int/lit8 v0, v0, -0x1

    .line 37
    .line 38
    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lee3;

    .line 49
    .line 50
    iget-object v0, v0, Lee3;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 51
    .line 52
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Lee3;

    .line 64
    .line 65
    iget-object v0, v0, Lee3;->c:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 66
    .line 67
    new-instance v1, Lg0e;

    .line 68
    .line 69
    invoke-direct {v1, p0}, Lg0e;-><init>(Lteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public static final R(Lteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog;Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 1
    sget-object p1, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog;->m:Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, "status"

    .line 6
    .line 7
    invoke-static {v1, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x1

    .line 12
    new-array v1, v1, [Lkotlin/Pair;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    aput-object v0, v1, v2

    .line 16
    .line 17
    const-string v0, "sms_alert_agreement_check_show"

    .line 18
    .line 19
    invoke-virtual {p1, v0, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lee3;

    .line 27
    .line 28
    iget-object p0, p0, Lee3;->d:Lcom/google/android/material/button/MaterialButton;

    .line 29
    .line 30
    if-eqz p0, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public static final S(ZLteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog;)Lkotlin/Unit;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "status"

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lx7b;->a:Lx7b;

    .line 8
    .line 9
    iget-object v3, p1, Lteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog;->m:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v2, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    new-array v1, v1, [Lkotlin/Pair;

    .line 16
    .line 17
    aput-object v2, v1, v0

    .line 18
    .line 19
    const-string v0, "sms_alert_unsubscribe_window_click"

    .line 20
    .line 21
    invoke-virtual {p0, v0, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    sget-object p0, Lx7b;->a:Lx7b;

    .line 26
    .line 27
    iget-object v3, p1, Lteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog;->m:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v2, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    new-array v1, v1, [Lkotlin/Pair;

    .line 34
    .line 35
    aput-object v2, v1, v0

    .line 36
    .line 37
    const-string v0, "sms_alert_agreement_confirm_show"

    .line 38
    .line 39
    invoke-virtual {p0, v0, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    iget-object p0, p1, Lteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog;->j:Lkotlin/jvm/functions/Function0;

    .line 43
    .line 44
    if-eqz p0, :cond_1

    .line 45
    .line 46
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-virtual {p1}, Lteam/opay/core/base/BaseDialogFragment;->dismiss()V

    .line 50
    .line 51
    .line 52
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 53
    .line 54
    return-object p0
.end method

.method public static final T(ZLteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog;)Lkotlin/Unit;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "status"

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lx7b;->a:Lx7b;

    .line 8
    .line 9
    iget-object v3, p1, Lteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog;->m:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v2, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    new-array v1, v1, [Lkotlin/Pair;

    .line 16
    .line 17
    aput-object v2, v1, v0

    .line 18
    .line 19
    const-string v0, "sms_alert_unsubscribe_window_cancel"

    .line 20
    .line 21
    invoke-virtual {p0, v0, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    sget-object p0, Lx7b;->a:Lx7b;

    .line 26
    .line 27
    iget-object v3, p1, Lteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog;->m:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v2, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    new-array v1, v1, [Lkotlin/Pair;

    .line 34
    .line 35
    aput-object v2, v1, v0

    .line 36
    .line 37
    const-string v0, "sms_alert_agreement_cancel_show"

    .line 38
    .line 39
    invoke-virtual {p0, v0, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    iget-object p0, p1, Lteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog;->k:Lkotlin/jvm/functions/Function0;

    .line 43
    .line 44
    if-eqz p0, :cond_1

    .line 45
    .line 46
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-virtual {p1}, Lteam/opay/core/base/BaseDialogFragment;->dismiss()V

    .line 50
    .line 51
    .line 52
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 53
    .line 54
    return-object p0
.end method


# virtual methods
.method public K()V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog;->k:Lkotlin/jvm/functions/Function0;

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
    invoke-super {p0}, Lteam/opay/core/base/BaseDialogFragment;->K()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final U(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog;->j:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method

.method public getSupportBack()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog;->l:Z

    .line 2
    .line 3
    return v0
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
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "view"

    .line 4
    .line 5
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Lteam/opay/core/base/BaseDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const-string p2, "key_cancel"

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    if-eqz p2, :cond_1

    .line 30
    .line 31
    const-string v2, "key_status"

    .line 32
    .line 33
    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    if-nez p2, :cond_2

    .line 38
    .line 39
    :cond_1
    const-string p2, "01"

    .line 40
    .line 41
    :cond_2
    iput-object p2, p0, Lteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog;->m:Ljava/lang/String;

    .line 42
    .line 43
    if-eqz p1, :cond_3

    .line 44
    .line 45
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    check-cast p2, Lee3;

    .line 50
    .line 51
    iget-object p2, p2, Lee3;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 52
    .line 53
    sget v2, Lteam/opay/pay/R$string;->osdk_sms_unsubscribe_tips:I

    .line 54
    .line 55
    invoke-static {v2}, Ljmf;->k(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    check-cast p2, Lee3;

    .line 67
    .line 68
    iget-object p2, p2, Lee3;->c:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 69
    .line 70
    const-string v2, "checkButton"

    .line 71
    .line 72
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-static {p2}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    check-cast p2, Lee3;

    .line 83
    .line 84
    iget-object p2, p2, Lee3;->d:Lcom/google/android/material/button/MaterialButton;

    .line 85
    .line 86
    sget v2, Lteam/opay/pay/R$string;->osdk_cancel_anyway:I

    .line 87
    .line 88
    invoke-static {v2}, Ljmf;->k(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    check-cast p2, Lee3;

    .line 100
    .line 101
    iget-object p2, p2, Lee3;->b:Lcom/google/android/material/button/MaterialButton;

    .line 102
    .line 103
    sget v2, Lteam/opay/pay/R$string;->osdk_keep_alerts:I

    .line 104
    .line 105
    invoke-static {v2}, Ljmf;->k(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    const-string v2, "key_confirm_message"

    .line 118
    .line 119
    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    if-eqz p2, :cond_5

    .line 124
    .line 125
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-nez v2, :cond_4

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_4
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    check-cast v2, Lee3;

    .line 137
    .line 138
    iget-object v2, v2, Lee3;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 139
    .line 140
    invoke-static {p2}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    check-cast p2, Lee3;

    .line 153
    .line 154
    iget-object p2, p2, Lee3;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 155
    .line 156
    sget v2, Lteam/opay/pay/R$string;->osdk_sms_subscribe_confirm:I

    .line 157
    .line 158
    invoke-static {v2}, Ljmf;->k(I)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    .line 164
    .line 165
    :goto_2
    invoke-direct {p0}, Lteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog;->Q()V

    .line 166
    .line 167
    .line 168
    :goto_3
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    check-cast p2, Lee3;

    .line 173
    .line 174
    iget-object p2, p2, Lee3;->d:Lcom/google/android/material/button/MaterialButton;

    .line 175
    .line 176
    const-string v2, "confirm"

    .line 177
    .line 178
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    new-instance v2, Le0e;

    .line 182
    .line 183
    invoke-direct {v2, p1, p0}, Le0e;-><init>(ZLteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog;)V

    .line 184
    .line 185
    .line 186
    invoke-static {p2, v2}, Lfe1;->c(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 190
    .line 191
    .line 192
    move-result-object p2

    .line 193
    check-cast p2, Lee3;

    .line 194
    .line 195
    iget-object p2, p2, Lee3;->b:Lcom/google/android/material/button/MaterialButton;

    .line 196
    .line 197
    const-string v2, "cancel"

    .line 198
    .line 199
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    new-instance v2, Lf0e;

    .line 203
    .line 204
    invoke-direct {v2, p1, p0}, Lf0e;-><init>(ZLteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog;)V

    .line 205
    .line 206
    .line 207
    invoke-static {p2, v2}, Lfe1;->c(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 208
    .line 209
    .line 210
    const-string p2, "status"

    .line 211
    .line 212
    if-eqz p1, :cond_6

    .line 213
    .line 214
    sget-object p1, Lx7b;->a:Lx7b;

    .line 215
    .line 216
    iget-object v2, p0, Lteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog;->m:Ljava/lang/String;

    .line 217
    .line 218
    invoke-static {p2, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 219
    .line 220
    .line 221
    move-result-object p2

    .line 222
    new-array v0, v0, [Lkotlin/Pair;

    .line 223
    .line 224
    aput-object p2, v0, v1

    .line 225
    .line 226
    const-string p2, "sms_alert_unsubscribe_window_show"

    .line 227
    .line 228
    invoke-virtual {p1, p2, v0}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 229
    .line 230
    .line 231
    goto :goto_4

    .line 232
    :cond_6
    sget-object p1, Lx7b;->a:Lx7b;

    .line 233
    .line 234
    iget-object v2, p0, Lteam/opay/pay/settings/sms/SmsSubscribeConfirmDialog;->m:Ljava/lang/String;

    .line 235
    .line 236
    invoke-static {p2, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 237
    .line 238
    .line 239
    move-result-object p2

    .line 240
    new-array v0, v0, [Lkotlin/Pair;

    .line 241
    .line 242
    aput-object p2, v0, v1

    .line 243
    .line 244
    const-string p2, "sms_alert_agreement_window_show"

    .line 245
    .line 246
    invoke-virtual {p1, p2, v0}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 247
    .line 248
    .line 249
    :goto_4
    return-void
.end method
