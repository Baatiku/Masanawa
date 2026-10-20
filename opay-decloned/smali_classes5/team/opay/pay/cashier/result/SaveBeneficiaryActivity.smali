.class public final Lteam/opay/pay/cashier/result/SaveBeneficiaryActivity;
.super Lteam/opay/pay/cashier/result/Hilt_SaveBeneficiaryActivity;
.source "SaveBeneficiaryActivity.kt"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InflateParams"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/cashier/result/SaveBeneficiaryActivity$Companion;,
        Lteam/opay/pay/cashier/result/SaveBeneficiaryActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 \u00142\u00020\u0001:\u0001\u0015B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u001b\u0010\u000e\u001a\u00020\t8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rR\u001b\u0010\u0013\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u000b\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0016"
    }
    d2 = {
        "Lteam/opay/pay/cashier/result/SaveBeneficiaryActivity;",
        "Lteam/opay/pay/android/BaseActivity;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onPostCreate",
        "(Landroid/os/Bundle;)V",
        "Lhg;",
        "e",
        "Lid8;",
        "C",
        "()Lhg;",
        "viewBinding",
        "Lteam/opay/pay/transfer/contact/TransferContactViewModel;",
        "f",
        "D",
        "()Lteam/opay/pay/transfer/contact/TransferContactViewModel;",
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
.field public static final g:Lteam/opay/pay/cashier/result/SaveBeneficiaryActivity$Companion;
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
    new-instance v0, Lteam/opay/pay/cashier/result/SaveBeneficiaryActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/cashier/result/SaveBeneficiaryActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/cashier/result/SaveBeneficiaryActivity;->g:Lteam/opay/pay/cashier/result/SaveBeneficiaryActivity$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->activity_save_beneficiary:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/cashier/result/Hilt_SaveBeneficiaryActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lz2d;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lz2d;-><init>(Lteam/opay/pay/cashier/result/SaveBeneficiaryActivity;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lteam/opay/pay/cashier/result/SaveBeneficiaryActivity;->e:Lid8;

    .line 16
    .line 17
    new-instance v0, Lteam/opay/pay/cashier/result/SaveBeneficiaryActivity$special$$inlined$viewModels$default$1;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lteam/opay/pay/cashier/result/SaveBeneficiaryActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 23
    .line 24
    const-class v2, Lteam/opay/pay/transfer/contact/TransferContactViewModel;

    .line 25
    .line 26
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    new-instance v3, Lteam/opay/pay/cashier/result/SaveBeneficiaryActivity$special$$inlined$viewModels$default$2;

    .line 31
    .line 32
    invoke-direct {v3, p0}, Lteam/opay/pay/cashier/result/SaveBeneficiaryActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 33
    .line 34
    .line 35
    new-instance v4, Lteam/opay/pay/cashier/result/SaveBeneficiaryActivity$special$$inlined$viewModels$default$3;

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    invoke-direct {v4, v5, p0}, Lteam/opay/pay/cashier/result/SaveBeneficiaryActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lteam/opay/pay/cashier/result/SaveBeneficiaryActivity;->f:Lid8;

    .line 45
    .line 46
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/cashier/result/SaveBeneficiaryActivity;Lteam/opay/core/android/arch/Resource;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/cashier/result/SaveBeneficiaryActivity;->E(Lteam/opay/pay/cashier/result/SaveBeneficiaryActivity;Lteam/opay/core/android/arch/Resource;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic B(Lteam/opay/pay/cashier/result/SaveBeneficiaryActivity;)Lhg;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/cashier/result/SaveBeneficiaryActivity;->F(Lteam/opay/pay/cashier/result/SaveBeneficiaryActivity;)Lhg;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final E(Lteam/opay/pay/cashier/result/SaveBeneficiaryActivity;Lteam/opay/core/android/arch/Resource;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lteam/opay/pay/cashier/result/SaveBeneficiaryActivity$a;->a:[I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    aget v0, v1, v0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lteam/opay/pay/cashier/result/SaveBeneficiaryActivity;->C()Lhg;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    iget-object p0, p0, Lhg;->b:Lteam/opay/core/android/views/PulseLoaderView;

    .line 21
    .line 22
    if-eqz p0, :cond_4

    .line 23
    .line 24
    invoke-static {p0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/cashier/result/SaveBeneficiaryActivity;->C()Lhg;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v0, v0, Lhg;->b:Lteam/opay/core/android/views/PulseLoaderView;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    new-instance v4, Lteam/opay/pay/cashier/result/BeneficiarySavedEvent;

    .line 40
    .line 41
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sget-object v2, Lteam/opay/core/android/arch/Status;->SUCCESS:Lteam/opay/core/android/arch/Status;

    .line 46
    .line 47
    if-ne v0, v2, :cond_2

    .line 48
    .line 49
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 54
    .line 55
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    const/4 v1, 0x0

    .line 63
    :goto_0
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-nez p1, :cond_3

    .line 68
    .line 69
    const-string p1, ""

    .line 70
    .line 71
    :cond_3
    invoke-direct {v4, v1, p1}, Lteam/opay/pay/cashier/result/BeneficiarySavedEvent;-><init>(ZLjava/lang/String;)V

    .line 72
    .line 73
    .line 74
    sget-object v2, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 75
    .line 76
    const/4 v6, 0x4

    .line 77
    const/4 v7, 0x0

    .line 78
    const-string v3, "save_beneficiary_success"

    .line 79
    .line 80
    const/4 v5, 0x0

    .line 81
    invoke-static/range {v2 .. v7}, Lteam/opay/pay/util/FlowBus;->i(Lteam/opay/pay/util/FlowBus;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 85
    .line 86
    .line 87
    :cond_4
    :goto_1
    return-void
.end method

.method public static final F(Lteam/opay/pay/cashier/result/SaveBeneficiaryActivity;)Lhg;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lhg;->inflate(Landroid/view/LayoutInflater;)Lhg;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public C()Lhg;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/result/SaveBeneficiaryActivity;->e:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lhg;

    .line 8
    .line 9
    return-object v0
.end method

.method public final D()Lteam/opay/pay/transfer/contact/TransferContactViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/result/SaveBeneficiaryActivity;->f:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public bridge synthetic getViewBinding()Lxyf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/cashier/result/SaveBeneficiaryActivity;->C()Lhg;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const-string v0, "orderNo"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 33
    .line 34
    .line 35
    :cond_2
    invoke-virtual {p0}, Lteam/opay/pay/cashier/result/SaveBeneficiaryActivity;->D()Lteam/opay/pay/transfer/contact/TransferContactViewModel;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-nez p1, :cond_3

    .line 40
    .line 41
    const-string p1, ""

    .line 42
    .line 43
    :cond_3
    invoke-virtual {v0, p1}, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->X0(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    new-instance v0, La3d;

    .line 48
    .line 49
    invoke-direct {v0, p0}, La3d;-><init>(Lteam/opay/pay/cashier/result/SaveBeneficiaryActivity;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method
