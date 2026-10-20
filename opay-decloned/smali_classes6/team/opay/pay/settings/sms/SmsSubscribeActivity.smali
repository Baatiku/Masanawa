.class public final Lteam/opay/pay/settings/sms/SmsSubscribeActivity;
.super Lteam/opay/pay/settings/sms/Hilt_SmsSubscribeActivity;
.source "SmsSubscribeActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/settings/sms/SmsSubscribeActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 \u00182\u00020\u0001:\u0001\u0019B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u001b\u0010\u000e\u001a\u00020\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rR\u0016\u0010\u0012\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u001b\u0010\u0017\u001a\u00020\u00138VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u000b\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001a"
    }
    d2 = {
        "Lteam/opay/pay/settings/sms/SmsSubscribeActivity;",
        "Lteam/opay/pay/android/BaseActivity;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onPostCreate",
        "(Landroid/os/Bundle;)V",
        "Lteam/opay/pay/settings/sms/SmsSubscribeViewModel;",
        "e",
        "Lid8;",
        "G",
        "()Lteam/opay/pay/settings/sms/SmsSubscribeViewModel;",
        "viewModel",
        "",
        "f",
        "Z",
        "isEditting",
        "Lkg;",
        "g",
        "F",
        "()Lkg;",
        "viewBinding",
        "h",
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
.field public static final h:Lteam/opay/pay/settings/sms/SmsSubscribeActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final e:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Z

.field public final g:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/settings/sms/SmsSubscribeActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/settings/sms/SmsSubscribeActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/settings/sms/SmsSubscribeActivity;->h:Lteam/opay/pay/settings/sms/SmsSubscribeActivity$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->activity_sms_subscribe:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/settings/sms/Hilt_SmsSubscribeActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/pay/settings/sms/SmsSubscribeActivity$special$$inlined$viewModels$default$1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lteam/opay/pay/settings/sms/SmsSubscribeActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 12
    .line 13
    const-class v2, Lteam/opay/pay/settings/sms/SmsSubscribeViewModel;

    .line 14
    .line 15
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Lteam/opay/pay/settings/sms/SmsSubscribeActivity$special$$inlined$viewModels$default$2;

    .line 20
    .line 21
    invoke-direct {v3, p0}, Lteam/opay/pay/settings/sms/SmsSubscribeActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 22
    .line 23
    .line 24
    new-instance v4, Lteam/opay/pay/settings/sms/SmsSubscribeActivity$special$$inlined$viewModels$default$3;

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    invoke-direct {v4, v5, p0}, Lteam/opay/pay/settings/sms/SmsSubscribeActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lteam/opay/pay/settings/sms/SmsSubscribeActivity;->e:Lid8;

    .line 34
    .line 35
    new-instance v0, Lyzd;

    .line 36
    .line 37
    invoke-direct {v0, p0}, Lyzd;-><init>(Lteam/opay/pay/settings/sms/SmsSubscribeActivity;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lteam/opay/pay/settings/sms/SmsSubscribeActivity;->g:Lid8;

    .line 45
    .line 46
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/settings/sms/SmsSubscribeActivity;)Lkg;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/settings/sms/SmsSubscribeActivity;->L(Lteam/opay/pay/settings/sms/SmsSubscribeActivity;)Lkg;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B(Lteam/opay/pay/settings/sms/SmsSubscribeActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/settings/sms/SmsSubscribeActivity;->H(Lteam/opay/pay/settings/sms/SmsSubscribeActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C(Lteam/opay/pay/settings/sms/SmsSubscribeActivity;Lteam/opay/pay/settings/sms/SmsSubscribeFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/settings/sms/SmsSubscribeActivity;->J(Lteam/opay/pay/settings/sms/SmsSubscribeActivity;Lteam/opay/pay/settings/sms/SmsSubscribeFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic D(Lteam/opay/pay/settings/sms/SmsSubscribeActivity;Landroid/widget/TextView;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/settings/sms/SmsSubscribeActivity;->K(Lteam/opay/pay/settings/sms/SmsSubscribeActivity;Landroid/widget/TextView;Ljava/lang/Boolean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic E(Landroid/widget/TextView;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/settings/sms/SmsSubscribeActivity;->I(Landroid/widget/TextView;Ljava/lang/Boolean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final H(Lteam/opay/pay/settings/sms/SmsSubscribeActivity;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/settings/sms/SmsSubscribeActivity;->G()Lteam/opay/pay/settings/sms/SmsSubscribeViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/settings/sms/SmsSubscribeViewModel;->x()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-boolean p0, p0, Lteam/opay/pay/settings/sms/SmsSubscribeActivity;->f:Z

    .line 10
    .line 11
    xor-int/lit8 p0, p0, 0x1

    .line 12
    .line 13
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {v0, p0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    return-object p0
.end method

.method public static final I(Landroid/widget/TextView;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-static {p0, p1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public static final J(Lteam/opay/pay/settings/sms/SmsSubscribeActivity;Lteam/opay/pay/settings/sms/SmsSubscribeFragment;)Lkotlin/Unit;
    .locals 5

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/pay/settings/sms/SmsSubscribeActivity;->G()Lteam/opay/pay/settings/sms/SmsSubscribeViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lteam/opay/pay/settings/sms/SmsSubscribeViewModel;->t()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "status"

    .line 12
    .line 13
    invoke-static {v2, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lteam/opay/pay/settings/sms/SmsSubscribeFragment;->i0()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const-string v3, "sms_alert_subscription_submit_text"

    .line 22
    .line 23
    invoke-static {v3, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {p0}, Lteam/opay/pay/settings/sms/SmsSubscribeActivity;->G()Lteam/opay/pay/settings/sms/SmsSubscribeViewModel;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Lteam/opay/pay/settings/sms/SmsSubscribeViewModel;->w()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-string v3, "Source"

    .line 36
    .line 37
    invoke-static {v3, p0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const/4 v3, 0x3

    .line 42
    new-array v3, v3, [Lkotlin/Pair;

    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    aput-object v1, v3, v4

    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    aput-object v2, v3, v1

    .line 49
    .line 50
    const/4 v1, 0x2

    .line 51
    aput-object p0, v3, v1

    .line 52
    .line 53
    const-string p0, "sms_alert_subscription_return_click"

    .line 54
    .line 55
    invoke-virtual {v0, p0, v3}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lteam/opay/pay/settings/sms/SmsSubscribeFragment;->onBackPressed()Z

    .line 59
    .line 60
    .line 61
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 62
    .line 63
    return-object p0
.end method

.method public static final K(Lteam/opay/pay/settings/sms/SmsSubscribeActivity;Landroid/widget/TextView;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    iput-boolean p2, p0, Lteam/opay/pay/settings/sms/SmsSubscribeActivity;->f:Z

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    sget p2, Lteam/opay/pay/R$string;->cancel:I

    .line 12
    .line 13
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    if-eqz p1, :cond_1

    .line 22
    .line 23
    sget p2, Lteam/opay/pay/R$string;->edit:I

    .line 24
    .line 25
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method public static final L(Lteam/opay/pay/settings/sms/SmsSubscribeActivity;)Lkg;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lkg;->inflate(Landroid/view/LayoutInflater;)Lkg;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public F()Lkg;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/sms/SmsSubscribeActivity;->g:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lkg;

    .line 8
    .line 9
    return-object v0
.end method

.method public final G()Lteam/opay/pay/settings/sms/SmsSubscribeViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/sms/SmsSubscribeActivity;->e:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/settings/sms/SmsSubscribeViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public bridge synthetic getViewBinding()Lxyf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/settings/sms/SmsSubscribeActivity;->F()Lkg;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/pay/settings/sms/SmsSubscribeActivity;->G()Lteam/opay/pay/settings/sms/SmsSubscribeViewModel;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "source"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Lteam/opay/pay/settings/sms/SmsSubscribeViewModel;->A(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lteam/opay/pay/settings/sms/SmsSubscribeActivity;->G()Lteam/opay/pay/settings/sms/SmsSubscribeViewModel;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lteam/opay/pay/settings/sms/SmsSubscribeViewModel;->w()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/4 v0, 0x0

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_3

    .line 37
    .line 38
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/settings/sms/SmsSubscribeActivity;->G()Lteam/opay/pay/settings/sms/SmsSubscribeViewModel;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    invoke-virtual {v2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    move-object v1, v0

    .line 58
    :goto_0
    if-nez v1, :cond_2

    .line 59
    .line 60
    const-string v1, ""

    .line 61
    .line 62
    :cond_2
    invoke-virtual {p1, v1}, Lteam/opay/pay/settings/sms/SmsSubscribeViewModel;->A(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_3
    invoke-virtual {p0}, Lteam/opay/pay/settings/sms/SmsSubscribeActivity;->F()Lkg;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iget-object p1, p1, Lkg;->b:Lteam/opay/core/android/views/OpayActionBar;

    .line 70
    .line 71
    if-eqz p1, :cond_4

    .line 72
    .line 73
    sget v0, Lteam/opay/pay/R$id;->end_text_action_view:I

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    move-object v0, p1

    .line 80
    check-cast v0, Landroid/widget/TextView;

    .line 81
    .line 82
    :cond_4
    if-eqz v0, :cond_5

    .line 83
    .line 84
    sget p1, Lteam/opay/pay/R$color;->color_00B876:I

    .line 85
    .line 86
    invoke-static {p0, p1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    .line 92
    .line 93
    :cond_5
    invoke-virtual {p0}, Lteam/opay/pay/settings/sms/SmsSubscribeActivity;->F()Lkg;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iget-object p1, p1, Lkg;->b:Lteam/opay/core/android/views/OpayActionBar;

    .line 98
    .line 99
    if-eqz p1, :cond_6

    .line 100
    .line 101
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 102
    .line 103
    sget v2, Lteam/opay/pay/R$string;->edit:I

    .line 104
    .line 105
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    const-string v3, "getString(...)"

    .line 110
    .line 111
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    new-instance v3, Lzzd;

    .line 115
    .line 116
    invoke-direct {v3, p0}, Lzzd;-><init>(Lteam/opay/pay/settings/sms/SmsSubscribeActivity;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v1, v2, v3}, Lteam/opay/core/android/views/OpayActionBar;->i(Ljava/lang/Boolean;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 120
    .line 121
    .line 122
    :cond_6
    invoke-virtual {p0}, Lteam/opay/pay/settings/sms/SmsSubscribeActivity;->G()Lteam/opay/pay/settings/sms/SmsSubscribeViewModel;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {p1}, Lteam/opay/pay/settings/sms/SmsSubscribeViewModel;->u()Landroidx/lifecycle/MutableLiveData;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    new-instance v1, La0e;

    .line 131
    .line 132
    invoke-direct {v1, v0}, La0e;-><init>(Landroid/widget/TextView;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 136
    .line 137
    .line 138
    new-instance p1, Lteam/opay/pay/settings/sms/SmsSubscribeFragment;

    .line 139
    .line 140
    invoke-direct {p1}, Lteam/opay/pay/settings/sms/SmsSubscribeFragment;-><init>()V

    .line 141
    .line 142
    .line 143
    sget v1, Lteam/opay/pay/R$id;->container:I

    .line 144
    .line 145
    invoke-static {p0, v1, p1}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Lteam/opay/pay/settings/sms/SmsSubscribeActivity;->F()Lkg;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    iget-object v1, v1, Lkg;->b:Lteam/opay/core/android/views/OpayActionBar;

    .line 153
    .line 154
    if-eqz v1, :cond_7

    .line 155
    .line 156
    new-instance v2, Lb0e;

    .line 157
    .line 158
    invoke-direct {v2, p0, p1}, Lb0e;-><init>(Lteam/opay/pay/settings/sms/SmsSubscribeActivity;Lteam/opay/pay/settings/sms/SmsSubscribeFragment;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, v2}, Lteam/opay/core/android/views/OpayActionBar;->setBackNavigationListener(Lkotlin/jvm/functions/Function0;)V

    .line 162
    .line 163
    .line 164
    :cond_7
    invoke-virtual {p0}, Lteam/opay/pay/settings/sms/SmsSubscribeActivity;->G()Lteam/opay/pay/settings/sms/SmsSubscribeViewModel;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-virtual {p1}, Lteam/opay/pay/settings/sms/SmsSubscribeViewModel;->x()Landroidx/lifecycle/MutableLiveData;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    new-instance v1, Lc0e;

    .line 173
    .line 174
    invoke-direct {v1, p0, v0}, Lc0e;-><init>(Lteam/opay/pay/settings/sms/SmsSubscribeActivity;Landroid/widget/TextView;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 178
    .line 179
    .line 180
    return-void
.end method
