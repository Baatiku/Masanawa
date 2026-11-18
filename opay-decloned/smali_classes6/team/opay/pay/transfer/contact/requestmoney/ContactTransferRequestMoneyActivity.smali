.class public final Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyActivity;
.super Lteam/opay/pay/transfer/contact/requestmoney/Hilt_ContactTransferRequestMoneyActivity;
.source "ContactTransferRequestMoneyActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 \u00192\u00020\u0001:\u0001\u001aB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\u000b\u001a\u00020\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0019\u0010\r\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\r\u0010\u0008R\u001b\u0010\u0013\u001a\u00020\u000e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u001b\u0010\u0018\u001a\u00020\u00148VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0010\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001b"
    }
    d2 = {
        "Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyActivity;",
        "Lteam/opay/pay/android/BaseActivity;",
        "<init>",
        "()V",
        "Landroid/content/Intent;",
        "intent",
        "",
        "F",
        "(Landroid/content/Intent;)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onNewIntent",
        "Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel;",
        "e",
        "Lid8;",
        "D",
        "()Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel;",
        "dataViewModel",
        "Lpe;",
        "f",
        "E",
        "()Lpe;",
        "viewBinding",
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
.field public static final g:Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyActivity$Companion;
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
    new-instance v0, Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyActivity;->g:Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyActivity$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->activity_contact_transfer_request_money:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/transfer/contact/requestmoney/Hilt_ContactTransferRequestMoneyActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyActivity$special$$inlined$viewModels$default$1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 12
    .line 13
    const-class v2, Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel;

    .line 14
    .line 15
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyActivity$special$$inlined$viewModels$default$2;

    .line 20
    .line 21
    invoke-direct {v3, p0}, Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 22
    .line 23
    .line 24
    new-instance v4, Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyActivity$special$$inlined$viewModels$default$3;

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    invoke-direct {v4, v5, p0}, Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyActivity;->e:Lid8;

    .line 34
    .line 35
    new-instance v0, Lfo2;

    .line 36
    .line 37
    invoke-direct {v0, p0}, Lfo2;-><init>(Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyActivity;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyActivity;->f:Lid8;

    .line 45
    .line 46
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyActivity;)Lpe;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyActivity;->I(Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyActivity;)Lpe;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B(Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyActivity;->H(Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C(Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyActivity;->G(Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final D()Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyActivity;->e:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final F(Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyActivity;->D()Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ldo2;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Ldo2;-><init>(Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyActivity;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p0, v0}, Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel;->q(Lag8;Lkotlin/jvm/functions/Function0;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static final G(Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyActivity;)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyActivity;->D()Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel;->r()Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyFragment;->v:Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyFragment$Companion;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyFragment$Companion;->a(Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;)Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyFragment;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sget v2, Lteam/opay/pay/R$id;->fragment_container:I

    .line 16
    .line 17
    invoke-static {p0, v2, v1}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lteam/opay/core/android/InjectableActivity;->getTAG()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;->v()Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p0, 0x0

    .line 35
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v1, "isRegister = "

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 49
    .line 50
    return-object p0
.end method

.method public static final H(Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final I(Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyActivity;)Lpe;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lpe;->inflate(Landroid/view/LayoutInflater;)Lpe;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public E()Lpe;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyActivity;->f:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lpe;

    .line 8
    .line 9
    return-object v0
.end method

.method public bridge synthetic getViewBinding()Lxyf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyActivity;->E()Lpe;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/pay/transfer/contact/requestmoney/Hilt_ContactTransferRequestMoneyActivity;->onCreate(Landroid/os/Bundle;)V

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
    const-string v0, "getIntent(...)"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1}, Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyActivity;->F(Landroid/content/Intent;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyActivity;->E()Lpe;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object p1, p1, Lpe;->b:Lteam/opay/core/android/views/OpayActionBar;

    .line 23
    .line 24
    new-instance v0, Leo2;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Leo2;-><init>(Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyActivity;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lteam/opay/core/android/views/OpayActionBar;->setBackNavigationListener(Lkotlin/jvm/functions/Function0;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-direct {p0, p1}, Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyActivity;->F(Landroid/content/Intent;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method
