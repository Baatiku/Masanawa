.class public final Lteam/opay/business/pin/biz/PinActivity;
.super Lvw6;
.source "PinActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0001\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J!\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0019\u0010\r\u001a\u00020\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0014\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0019\u0010\u0007\u001a\u00020\u00082\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u000fR\u001b\u0010\u0015\u001a\u00020\u00108BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0016"
    }
    d2 = {
        "Lteam/opay/business/pin/biz/PinActivity;",
        "Lteam/opay/core/common/base/HiltTranslucentActivity;",
        "<init>",
        "()V",
        "Landroid/content/Intent;",
        "intent",
        "",
        "onNewIntent",
        "",
        "i0",
        "(Landroid/content/Intent;Z)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "(Landroid/content/Intent;)V",
        "Lteam/opay/business/pin/PinViewModel;",
        "q",
        "Lid8;",
        "h0",
        "()Lteam/opay/business/pin/PinViewModel;",
        "viewModel",
        "business-pin_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final q:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    sget v0, Lteam/opay/core/http/R$layout;->business_activity_container:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lvw6;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/business/pin/biz/PinActivity$special$$inlined$viewModels$default$1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lteam/opay/business/pin/biz/PinActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 12
    .line 13
    const-class v2, Lteam/opay/business/pin/PinViewModel;

    .line 14
    .line 15
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Lteam/opay/business/pin/biz/PinActivity$special$$inlined$viewModels$default$2;

    .line 20
    .line 21
    invoke-direct {v3, p0}, Lteam/opay/business/pin/biz/PinActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 22
    .line 23
    .line 24
    new-instance v4, Lteam/opay/business/pin/biz/PinActivity$special$$inlined$viewModels$default$3;

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    invoke-direct {v4, v5, p0}, Lteam/opay/business/pin/biz/PinActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lteam/opay/business/pin/biz/PinActivity;->q:Lid8;

    .line 34
    .line 35
    return-void
.end method

.method private final i0(Landroid/content/Intent;Z)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    invoke-static {p2}, Lvd;->c(Landroid/net/Uri;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v1, v0

    .line 14
    :goto_0
    const-string v2, "opay://business/pin/verify"

    .line 15
    .line 16
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_5

    .line 21
    .line 22
    const-string v1, "from"

    .line 23
    .line 24
    invoke-virtual {p2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    if-nez p2, :cond_1

    .line 29
    .line 30
    const-string p2, "payment"

    .line 31
    .line 32
    :cond_1
    const-string v1, "biometrics"

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    const/16 v3, 0x21

    .line 42
    .line 43
    const-string v4, "extra"

    .line 44
    .line 45
    if-lt v2, v3, :cond_2

    .line 46
    .line 47
    :try_start_1
    const-class v2, Ljava/lang/Object;

    .line 48
    .line 49
    invoke-static {p1, v4, v2}, Lsqb;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    goto :goto_2

    .line 54
    :catch_0
    nop

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    instance-of v2, p1, Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 61
    .line 62
    if-nez v2, :cond_3

    .line 63
    .line 64
    :goto_1
    move-object p1, v0

    .line 65
    :cond_3
    :goto_2
    instance-of v2, p1, Ljava/util/Map;

    .line 66
    .line 67
    if-eqz v2, :cond_4

    .line 68
    .line 69
    move-object v0, p1

    .line 70
    check-cast v0, Ljava/util/Map;

    .line 71
    .line 72
    :cond_4
    invoke-virtual {p0}, Lteam/opay/business/pin/biz/PinActivity;->h0()Lteam/opay/business/pin/PinViewModel;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    new-instance v2, Lteam/opay/business/pin/PinInput;

    .line 77
    .line 78
    invoke-direct {v2, p2, v1, v0}, Lteam/opay/business/pin/PinInput;-><init>(Ljava/lang/String;ZLjava/util/Map;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v2}, Lteam/opay/business/pin/PinViewModel;->u(Lteam/opay/business/pin/PinInput;)V

    .line 82
    .line 83
    .line 84
    sget-object p1, Lteam/opay/business/pin/PayPinInputFragment;->B:Lteam/opay/business/pin/PayPinInputFragment$Companion;

    .line 85
    .line 86
    invoke-virtual {p1}, Lteam/opay/business/pin/PayPinInputFragment$Companion;->a()Lteam/opay/business/pin/PayPinInputFragment;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {p0, p1}, Lre6;->q(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/common/base/BaseSheetFragment;)V

    .line 91
    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_5
    const-string p1, "opay://business/pin/checkoutCustomerPIN"

    .line 95
    .line 96
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_7

    .line 101
    .line 102
    const-string p1, "customerId"

    .line 103
    .line 104
    invoke-virtual {p2, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    if-nez p1, :cond_6

    .line 109
    .line 110
    const-string p1, ""

    .line 111
    .line 112
    :cond_6
    invoke-virtual {p0}, Lteam/opay/business/pin/biz/PinActivity;->h0()Lteam/opay/business/pin/PinViewModel;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-virtual {p2, p1}, Lteam/opay/business/pin/PinViewModel;->t(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    sget-object p1, Lteam/opay/business/pin/checkout/CustomerPinInputFragment;->A:Lteam/opay/business/pin/checkout/CustomerPinInputFragment$Companion;

    .line 120
    .line 121
    invoke-virtual {p1}, Lteam/opay/business/pin/checkout/CustomerPinInputFragment$Companion;->a()Lteam/opay/business/pin/checkout/CustomerPinInputFragment;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-static {p0, p1}, Lre6;->q(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/common/base/BaseSheetFragment;)V

    .line 126
    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 130
    .line 131
    .line 132
    :goto_3
    return-void
.end method

.method public static synthetic j0(Lteam/opay/business/pin/biz/PinActivity;Landroid/content/Intent;ZILjava/lang/Object;)V
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
    invoke-direct {p0, p1, p2}, Lteam/opay/business/pin/biz/PinActivity;->i0(Landroid/content/Intent;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final h0()Lteam/opay/business/pin/PinViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/pin/biz/PinActivity;->q:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/business/pin/PinViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lvw6;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, "getIntent(...)"

    .line 17
    .line 18
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x2

    .line 22
    const/4 v1, 0x0

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-static {p0, p1, v2, v0, v1}, Lteam/opay/business/pin/biz/PinActivity;->j0(Lteam/opay/business/pin/biz/PinActivity;Landroid/content/Intent;ZILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-direct {p0, p1, v0}, Lteam/opay/business/pin/biz/PinActivity;->i0(Landroid/content/Intent;Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
