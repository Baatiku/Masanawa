.class public final Lteam/opay/pay/payment/electricity/ElectricityPaymentActivity;
.super Lteam/opay/pay/payment/electricity/Hilt_ElectricityPaymentActivity;
.source "ElectricityPaymentActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/payment/electricity/ElectricityPaymentActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 \'2\u00020\u0001:\u0001(B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\u000b\u001a\u00020\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0011\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\"\u0010\u0017\u001a\u00020\u00108\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001b\u0010\u001d\u001a\u00020\u00188BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001cR\u001b\u0010\"\u001a\u00020\u001e8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010\u001a\u001a\u0004\u0008 \u0010!R\u0018\u0010&\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010%\u00a8\u0006)"
    }
    d2 = {
        "Lteam/opay/pay/payment/electricity/ElectricityPaymentActivity;",
        "Lteam/opay/pay/android/BaseShowAdActivity;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/content/Intent;",
        "intent",
        "onNewIntent",
        "(Landroid/content/Intent;)V",
        "Landroid/view/View;",
        "K",
        "()Landroid/view/View;",
        "",
        "g",
        "Z",
        "getNeedViewBinding",
        "()Z",
        "setNeedViewBinding",
        "(Z)V",
        "needViewBinding",
        "Lteam/opay/pay/payment/betting/LifeCommonViewModel;",
        "h",
        "Lid8;",
        "G",
        "()Lteam/opay/pay/payment/betting/LifeCommonViewModel;",
        "lifeCommonViewModel",
        "Lte;",
        "i",
        "H",
        "()Lte;",
        "viewBinding",
        "Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;",
        "j",
        "Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;",
        "fragment",
        "k",
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
.field public static final k:Lteam/opay/pay/payment/electricity/ElectricityPaymentActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public g:Z

.field public final h:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/payment/electricity/ElectricityPaymentActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/payment/electricity/ElectricityPaymentActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/payment/electricity/ElectricityPaymentActivity;->k:Lteam/opay/pay/payment/electricity/ElectricityPaymentActivity$Companion;

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
    invoke-direct {p0, v0}, Lteam/opay/pay/payment/electricity/Hilt_ElectricityPaymentActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/pay/payment/electricity/ElectricityPaymentActivity$special$$inlined$viewModels$default$1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lteam/opay/pay/payment/electricity/ElectricityPaymentActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 12
    .line 13
    const-class v2, Lteam/opay/pay/payment/betting/LifeCommonViewModel;

    .line 14
    .line 15
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Lteam/opay/pay/payment/electricity/ElectricityPaymentActivity$special$$inlined$viewModels$default$2;

    .line 20
    .line 21
    invoke-direct {v3, p0}, Lteam/opay/pay/payment/electricity/ElectricityPaymentActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 22
    .line 23
    .line 24
    new-instance v4, Lteam/opay/pay/payment/electricity/ElectricityPaymentActivity$special$$inlined$viewModels$default$3;

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    invoke-direct {v4, v5, p0}, Lteam/opay/pay/payment/electricity/ElectricityPaymentActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentActivity;->h:Lid8;

    .line 34
    .line 35
    new-instance v0, Luf5;

    .line 36
    .line 37
    invoke-direct {v0, p0}, Luf5;-><init>(Lteam/opay/pay/payment/electricity/ElectricityPaymentActivity;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentActivity;->i:Lid8;

    .line 45
    .line 46
    return-void
.end method

.method public static synthetic D(Lteam/opay/pay/payment/electricity/ElectricityPaymentActivity;Lteam/opay/pay/payment/betting/NewUserTaskRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/electricity/ElectricityPaymentActivity;->I(Lteam/opay/pay/payment/electricity/ElectricityPaymentActivity;Lteam/opay/pay/payment/betting/NewUserTaskRsp;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic E(Lteam/opay/pay/payment/electricity/ElectricityPaymentActivity;)Lte;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/electricity/ElectricityPaymentActivity;->L(Lteam/opay/pay/payment/electricity/ElectricityPaymentActivity;)Lte;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic F(Lteam/opay/pay/payment/electricity/ElectricityPaymentActivity;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/electricity/ElectricityPaymentActivity;->J(Lteam/opay/pay/payment/electricity/ElectricityPaymentActivity;Ljava/lang/Boolean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final G()Lteam/opay/pay/payment/betting/LifeCommonViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentActivity;->h:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/payment/betting/LifeCommonViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final I(Lteam/opay/pay/payment/electricity/ElectricityPaymentActivity;Lteam/opay/pay/payment/betting/NewUserTaskRsp;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/electricity/ElectricityPaymentActivity;->K()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lteam/opay/pay/payment/electricity/ElectricityPaymentActivity;->G()Lteam/opay/pay/payment/betting/LifeCommonViewModel;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {v0, p0, p1}, Lteam/opay/pay/payment/betting/LifeCommonViewModel;->L(Landroid/view/Window;Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
.end method

.method public static final J(Lteam/opay/pay/payment/electricity/ElectricityPaymentActivity;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/electricity/ElectricityPaymentActivity;->K()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lteam/opay/pay/payment/electricity/ElectricityPaymentActivity;->G()Lteam/opay/pay/payment/betting/LifeCommonViewModel;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {v0, p0, p1}, Lteam/opay/pay/payment/betting/LifeCommonViewModel;->K(Landroid/view/Window;Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
.end method

.method public static final L(Lteam/opay/pay/payment/electricity/ElectricityPaymentActivity;)Lte;
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
.method public H()Lte;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentActivity;->i:Lid8;

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

.method public final K()Landroid/view/View;
    .locals 2

    .line 1
    const v0, 0x1020002

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/FrameLayout;

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    return-object v0
.end method

.method public getNeedViewBinding()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentActivity;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public bridge synthetic getViewBinding()Lxyf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/electricity/ElectricityPaymentActivity;->H()Lte;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/pay/payment/electricity/Hilt_ElectricityPaymentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v0, ""

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const-string v1, "para_user_id"

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    :cond_0
    move-object p1, v0

    .line 25
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    const-string v2, "para_operator_id"

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-nez v1, :cond_3

    .line 42
    .line 43
    :cond_2
    move-object v1, v0

    .line 44
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    if-eqz v2, :cond_4

    .line 53
    .line 54
    const-string v3, "para_amount"

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    if-nez v2, :cond_5

    .line 61
    .line 62
    :cond_4
    move-object v2, v0

    .line 63
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    if-eqz v3, :cond_6

    .line 72
    .line 73
    const-string v4, "para_contact_type"

    .line 74
    .line 75
    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    if-nez v3, :cond_7

    .line 80
    .line 81
    :cond_6
    move-object v3, v0

    .line 82
    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    if-eqz v4, :cond_8

    .line 91
    .line 92
    const-string v5, "para_email"

    .line 93
    .line 94
    invoke-virtual {v4, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    if-nez v4, :cond_9

    .line 99
    .line 100
    :cond_8
    move-object v4, v0

    .line 101
    :cond_9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    if-eqz v5, :cond_b

    .line 110
    .line 111
    const-string v6, "para_back"

    .line 112
    .line 113
    invoke-virtual {v5, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    if-nez v5, :cond_a

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_a
    move-object v0, v5

    .line 121
    :cond_b
    :goto_0
    sget-object v5, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;->k0:Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$Companion;

    .line 122
    .line 123
    invoke-virtual {v5}, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$Companion;->a()Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    iput-object v5, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentActivity;->j:Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;

    .line 128
    .line 129
    if-eqz v5, :cond_c

    .line 130
    .line 131
    invoke-virtual {v5, p1}, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;->M2(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v5, v1}, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;->L2(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v5, v2}, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;->H2(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v5, v3}, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;->J2(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v5, v4}, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;->K2(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v5, v0}, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;->I2(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    sget p1, Lteam/opay/pay/R$id;->fragment_container:I

    .line 150
    .line 151
    invoke-static {p0, p1, v5}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 152
    .line 153
    .line 154
    :cond_c
    invoke-direct {p0}, Lteam/opay/pay/payment/electricity/ElectricityPaymentActivity;->G()Lteam/opay/pay/payment/betting/LifeCommonViewModel;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {p1}, Lteam/opay/pay/payment/betting/LifeCommonViewModel;->o0()Landroidx/lifecycle/MutableLiveData;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    new-instance v0, Lsf5;

    .line 163
    .line 164
    invoke-direct {v0, p0}, Lsf5;-><init>(Lteam/opay/pay/payment/electricity/ElectricityPaymentActivity;)V

    .line 165
    .line 166
    .line 167
    new-instance v1, Lteam/opay/pay/payment/electricity/ElectricityPaymentActivity$a;

    .line 168
    .line 169
    invoke-direct {v1, v0}, Lteam/opay/pay/payment/electricity/ElectricityPaymentActivity$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 173
    .line 174
    .line 175
    invoke-direct {p0}, Lteam/opay/pay/payment/electricity/ElectricityPaymentActivity;->G()Lteam/opay/pay/payment/betting/LifeCommonViewModel;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-virtual {p1}, Lteam/opay/pay/payment/betting/LifeCommonViewModel;->f0()Landroidx/lifecycle/MutableLiveData;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    new-instance v0, Ltf5;

    .line 184
    .line 185
    invoke-direct {v0, p0}, Ltf5;-><init>(Lteam/opay/pay/payment/electricity/ElectricityPaymentActivity;)V

    .line 186
    .line 187
    .line 188
    new-instance v1, Lteam/opay/pay/payment/electricity/ElectricityPaymentActivity$a;

    .line 189
    .line 190
    invoke-direct {v1, v0}, Lteam/opay/pay/payment/electricity/ElectricityPaymentActivity$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 194
    .line 195
    .line 196
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
    iget-object v0, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentActivity;->j:Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;->k2(Landroid/content/Intent;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setNeedViewBinding(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentActivity;->g:Z

    .line 2
    .line 3
    return-void
.end method
