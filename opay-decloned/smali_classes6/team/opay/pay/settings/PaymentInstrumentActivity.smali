.class public final Lteam/opay/pay/settings/PaymentInstrumentActivity;
.super Lteam/opay/pay/settings/Hilt_PaymentInstrumentActivity;
.source "PaymentInstrumentsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/settings/PaymentInstrumentActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 ,2\u00020\u0001:\u0001-B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\t\u0010\u0003J\u0017\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\nH\u0007\u00a2\u0006\u0004\u0008\u000c\u0010\rJ)\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000e2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0014\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0003J\u0017\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0017\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u0019R\u001b\u0010!\u001a\u00020\u001c8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 R\u001b\u0010&\u001a\u00020\"8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008#\u0010\u001e\u001a\u0004\u0008$\u0010%R\u001b\u0010+\u001a\u00020\'8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008(\u0010\u001e\u001a\u0004\u0008)\u0010*\u00a8\u0006."
    }
    d2 = {
        "Lteam/opay/pay/settings/PaymentInstrumentActivity;",
        "Lteam/opay/pay/android/BaseActivity;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onDestroy",
        "Lteam/opay/pay/settings/BindSuccessToRefreshPreviousPageEvent;",
        "event",
        "onEvent",
        "(Lteam/opay/pay/settings/BindSuccessToRefreshPreviousPageEvent;)V",
        "",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "data",
        "onActivityResult",
        "(IILandroid/content/Intent;)V",
        "I",
        "Lteam/opay/core/api/b;",
        "item",
        "T",
        "(Lteam/opay/core/api/b;)V",
        "instrument",
        "R",
        "Ltf;",
        "e",
        "Lid8;",
        "K",
        "()Ltf;",
        "viewBinding",
        "Lteam/opay/pay/settings/PaymentInstrumentsViewModel;",
        "f",
        "L",
        "()Lteam/opay/pay/settings/PaymentInstrumentsViewModel;",
        "viewModel",
        "Lteam/opay/pay/settings/PaymentInstrumentAdapter;",
        "g",
        "J",
        "()Lteam/opay/pay/settings/PaymentInstrumentAdapter;",
        "instrumentsAdapter",
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
.field public static final h:Lteam/opay/pay/settings/PaymentInstrumentActivity$Companion;
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

.field public final g:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/settings/PaymentInstrumentActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/settings/PaymentInstrumentActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/settings/PaymentInstrumentActivity;->h:Lteam/opay/pay/settings/PaymentInstrumentActivity$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->activity_payment_instrument:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/settings/Hilt_PaymentInstrumentActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lueb;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lueb;-><init>(Lteam/opay/pay/settings/PaymentInstrumentActivity;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lteam/opay/pay/settings/PaymentInstrumentActivity;->e:Lid8;

    .line 16
    .line 17
    new-instance v0, Lteam/opay/pay/settings/PaymentInstrumentActivity$special$$inlined$viewModels$default$1;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lteam/opay/pay/settings/PaymentInstrumentActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 23
    .line 24
    const-class v2, Lteam/opay/pay/settings/PaymentInstrumentsViewModel;

    .line 25
    .line 26
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    new-instance v3, Lteam/opay/pay/settings/PaymentInstrumentActivity$special$$inlined$viewModels$default$2;

    .line 31
    .line 32
    invoke-direct {v3, p0}, Lteam/opay/pay/settings/PaymentInstrumentActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 33
    .line 34
    .line 35
    new-instance v4, Lteam/opay/pay/settings/PaymentInstrumentActivity$special$$inlined$viewModels$default$3;

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    invoke-direct {v4, v5, p0}, Lteam/opay/pay/settings/PaymentInstrumentActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lteam/opay/pay/settings/PaymentInstrumentActivity;->f:Lid8;

    .line 45
    .line 46
    new-instance v0, Lveb;

    .line 47
    .line 48
    invoke-direct {v0, p0}, Lveb;-><init>(Lteam/opay/pay/settings/PaymentInstrumentActivity;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lteam/opay/pay/settings/PaymentInstrumentActivity;->g:Lid8;

    .line 56
    .line 57
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/settings/PaymentInstrumentActivity;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/settings/PaymentInstrumentActivity;->P(Lteam/opay/pay/settings/PaymentInstrumentActivity;Ljava/lang/Boolean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B(Lteam/opay/pay/settings/PaymentInstrumentActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/settings/PaymentInstrumentActivity;->O(Lteam/opay/pay/settings/PaymentInstrumentActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C(Lteam/opay/pay/settings/PaymentInstrumentActivity;Lteam/opay/core/api/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/settings/PaymentInstrumentActivity;->N(Lteam/opay/pay/settings/PaymentInstrumentActivity;Lteam/opay/core/api/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic D(Lteam/opay/pay/settings/PaymentInstrumentActivity;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/settings/PaymentInstrumentActivity;->Q(Lteam/opay/pay/settings/PaymentInstrumentActivity;Ljava/util/List;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic E(Lteam/opay/pay/settings/PaymentInstrumentActivity;Lteam/opay/core/api/b;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/settings/PaymentInstrumentActivity;->U(Lteam/opay/pay/settings/PaymentInstrumentActivity;Lteam/opay/core/api/b;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic F(Lteam/opay/pay/settings/PaymentInstrumentActivity;)Lteam/opay/pay/settings/PaymentInstrumentAdapter;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/settings/PaymentInstrumentActivity;->M(Lteam/opay/pay/settings/PaymentInstrumentActivity;)Lteam/opay/pay/settings/PaymentInstrumentAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic G(Lteam/opay/pay/settings/PaymentInstrumentActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/settings/PaymentInstrumentActivity;->S(Lteam/opay/pay/settings/PaymentInstrumentActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic H(Lteam/opay/pay/settings/PaymentInstrumentActivity;)Ltf;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/settings/PaymentInstrumentActivity;->V(Lteam/opay/pay/settings/PaymentInstrumentActivity;)Ltf;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final M(Lteam/opay/pay/settings/PaymentInstrumentActivity;)Lteam/opay/pay/settings/PaymentInstrumentAdapter;
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/settings/PaymentInstrumentAdapter;

    .line 2
    .line 3
    new-instance v1, Lweb;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lweb;-><init>(Lteam/opay/pay/settings/PaymentInstrumentActivity;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lteam/opay/pay/settings/PaymentInstrumentAdapter;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static final N(Lteam/opay/pay/settings/PaymentInstrumentActivity;Lteam/opay/core/api/b;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lteam/opay/pay/settings/PaymentInstrumentActivity;->T(Lteam/opay/core/api/b;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method public static final O(Lteam/opay/pay/settings/PaymentInstrumentActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/settings/PaymentInstrumentActivity;->I()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final P(Lteam/opay/pay/settings/PaymentInstrumentActivity;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/settings/PaymentInstrumentActivity;->K()Ltf;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Ltf;->h:Lteam/opay/core/android/views/PulseLoaderView;

    .line 6
    .line 7
    const-string v0, "paymentListProgressSpinner"

    .line 8
    .line 9
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-static {p0, p1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 20
    .line 21
    .line 22
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0
.end method

.method public static final Q(Lteam/opay/pay/settings/PaymentInstrumentActivity;Ljava/util/List;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/settings/PaymentInstrumentActivity;->K()Ltf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Ltf;->c:Landroidx/constraintlayout/widget/Group;

    .line 6
    .line 7
    const-string v1, "emptyGroup"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-static {v0, v1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lteam/opay/pay/settings/PaymentInstrumentActivity;->J()Lteam/opay/pay/settings/PaymentInstrumentAdapter;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0, p1}, Lteam/opay/pay/settings/PaymentInstrumentAdapter;->n(Ljava/util/List;)V

    .line 24
    .line 25
    .line 26
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 27
    .line 28
    return-object p0
.end method

.method public static final S(Lteam/opay/pay/settings/PaymentInstrumentActivity;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/settings/PaymentInstrumentActivity;->L()Lteam/opay/pay/settings/PaymentInstrumentsViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lteam/opay/pay/settings/PaymentInstrumentsViewModel;->t(Lag8;)V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method

.method public static final U(Lteam/opay/pay/settings/PaymentInstrumentActivity;Lteam/opay/core/api/b;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/pay/settings/PaymentInstrumentActivity;->R(Lteam/opay/core/api/b;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method public static final V(Lteam/opay/pay/settings/PaymentInstrumentActivity;)Ltf;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Ltf;->inflate(Landroid/view/LayoutInflater;)Ltf;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public final I()V
    .locals 14

    .line 1
    new-instance v13, Lteam/opay/pay/settings/BindCardData;

    .line 2
    .line 3
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 4
    .line 5
    const/16 v11, 0x23e

    .line 6
    .line 7
    const/4 v12, 0x0

    .line 8
    const-string v1, "1"

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    const-string v8, "CARD"

    .line 16
    .line 17
    const-string v9, "me"

    .line 18
    .line 19
    const/4 v10, 0x0

    .line 20
    move-object v0, v13

    .line 21
    invoke-direct/range {v0 .. v12}, Lteam/opay/pay/settings/BindCardData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 22
    .line 23
    .line 24
    sget-object v0, Lteam/opay/pay/settings/NewCardActivity;->g:Lteam/opay/pay/settings/NewCardActivity$Companion;

    .line 25
    .line 26
    const/16 v1, 0x85f

    .line 27
    .line 28
    invoke-virtual {v0, p0, v1, v13}, Lteam/opay/pay/settings/NewCardActivity$Companion;->b(Landroid/app/Activity;ILteam/opay/pay/settings/BindCardData;)V

    .line 29
    .line 30
    .line 31
    sget-object v0, Ldk;->a:Ldk;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    new-array v1, v1, [Lkotlin/Pair;

    .line 35
    .line 36
    const-string v2, "click_add_payment_option"

    .line 37
    .line 38
    invoke-virtual {v0, v2, v1}, Ldk;->c(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final J()Lteam/opay/pay/settings/PaymentInstrumentAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/PaymentInstrumentActivity;->g:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/settings/PaymentInstrumentAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method public K()Ltf;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/PaymentInstrumentActivity;->e:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ltf;

    .line 8
    .line 9
    return-object v0
.end method

.method public final L()Lteam/opay/pay/settings/PaymentInstrumentsViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/PaymentInstrumentActivity;->f:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/settings/PaymentInstrumentsViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public final R(Lteam/opay/core/api/b;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/settings/PaymentInstrumentActivity;->L()Lteam/opay/pay/settings/PaymentInstrumentsViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1}, Lteam/opay/core/api/b;->getId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance v1, Lyeb;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lyeb;-><init>(Lteam/opay/pay/settings/PaymentInstrumentActivity;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1, p0, v1}, Lteam/opay/pay/settings/PaymentInstrumentsViewModel;->x(Ljava/lang/String;Lag8;Lkotlin/jvm/functions/Function0;)V

    .line 15
    .line 16
    .line 17
    sget-object p1, Ldk;->a:Ldk;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    new-array v0, v0, [Lkotlin/Pair;

    .line 21
    .line 22
    const-string v1, "click_payment_instrument_delete"

    .line 23
    .line 24
    invoke-virtual {p1, v1, v0}, Ldk;->c(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final T(Lteam/opay/core/api/b;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lteam/opay/pay/base/VerticalTwoButtonDialogFragment;->l:Lteam/opay/pay/base/VerticalTwoButtonDialogFragment$Companion;

    .line 4
    .line 5
    new-instance v15, Lteam/opay/pay/base/DialogInfo;

    .line 6
    .line 7
    sget v2, Lteam/opay/pay/R$string;->delete_payment_method_dialog_title:I

    .line 8
    .line 9
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    const-string v2, "getString(...)"

    .line 14
    .line 15
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget v4, Lteam/opay/pay/R$string;->delete_payment_method_dialog_message:I

    .line 19
    .line 20
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget v5, Lteam/opay/pay/R$string;->delete_instrument_text:I

    .line 28
    .line 29
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sget v6, Lteam/opay/pay/R$string;->cancel:I

    .line 37
    .line 38
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/16 v16, 0x1bf0

    .line 46
    .line 47
    const/16 v17, 0x0

    .line 48
    .line 49
    const/4 v7, 0x0

    .line 50
    const/4 v8, 0x0

    .line 51
    const/4 v9, 0x0

    .line 52
    const/4 v10, 0x0

    .line 53
    const/4 v11, 0x0

    .line 54
    const/4 v12, 0x0

    .line 55
    const/4 v13, 0x0

    .line 56
    const/4 v14, 0x0

    .line 57
    const/16 v18, 0x0

    .line 58
    .line 59
    move-object v2, v15

    .line 60
    move-object/from16 v19, v15

    .line 61
    .line 62
    move-object/from16 v15, v18

    .line 63
    .line 64
    invoke-direct/range {v2 .. v17}, Lteam/opay/pay/base/DialogInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;IIIILandroid/text/SpannableStringBuilder;ZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 65
    .line 66
    .line 67
    move-object/from16 v2, v19

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Lteam/opay/pay/base/VerticalTwoButtonDialogFragment$Companion;->a(Lteam/opay/pay/base/DialogInfo;)Lteam/opay/pay/base/VerticalTwoButtonDialogFragment;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    new-instance v2, Lxeb;

    .line 74
    .line 75
    move-object/from16 v3, p1

    .line 76
    .line 77
    invoke-direct {v2, v0, v3}, Lxeb;-><init>(Lteam/opay/pay/settings/PaymentInstrumentActivity;Lteam/opay/core/api/b;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v2}, Lteam/opay/pay/base/VerticalTwoButtonDialogFragment;->S(Lkotlin/jvm/functions/Function1;)V

    .line 81
    .line 82
    .line 83
    invoke-static {v0, v1}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public bridge synthetic getViewBinding()Lxyf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/settings/PaymentInstrumentActivity;->K()Ltf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/16 p3, 0x85f

    .line 5
    .line 6
    if-ne p1, p3, :cond_0

    .line 7
    .line 8
    const/4 p1, -0x1

    .line 9
    if-ne p2, p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/pay/settings/Hilt_PaymentInstrumentActivity;->onCreate(Landroid/os/Bundle;)V

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
    invoke-virtual {p0}, Lteam/opay/pay/settings/PaymentInstrumentActivity;->K()Ltf;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object p1, p1, Ltf;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    .line 17
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lteam/opay/pay/settings/PaymentInstrumentActivity;->J()Lteam/opay/pay/settings/PaymentInstrumentAdapter;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Lteam/opay/pay/android/SpaceItemDecoration;

    .line 33
    .line 34
    const/16 v1, 0x8

    .line 35
    .line 36
    invoke-static {v1}, Ljmf;->d(I)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    const/16 v9, 0x7c

    .line 41
    .line 42
    const/4 v10, 0x0

    .line 43
    const/4 v2, 0x0

    .line 44
    const/4 v4, 0x0

    .line 45
    const/4 v5, 0x0

    .line 46
    const/4 v6, 0x0

    .line 47
    const/4 v7, 0x0

    .line 48
    const/4 v8, 0x0

    .line 49
    move-object v1, v0

    .line 50
    invoke-direct/range {v1 .. v10}, Lteam/opay/pay/android/SpaceItemDecoration;-><init>(IIIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lteam/opay/pay/settings/PaymentInstrumentActivity;->K()Ltf;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iget-object p1, p1, Ltf;->e:Lcom/google/android/material/button/MaterialButton;

    .line 61
    .line 62
    const-string v0, "newMethodContainer"

    .line 63
    .line 64
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    new-instance v0, Lreb;

    .line 68
    .line 69
    invoke-direct {v0, p0}, Lreb;-><init>(Lteam/opay/pay/settings/PaymentInstrumentActivity;)V

    .line 70
    .line 71
    .line 72
    invoke-static {p1, v0}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lteam/opay/pay/settings/PaymentInstrumentActivity;->L()Lteam/opay/pay/settings/PaymentInstrumentsViewModel;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1}, Lteam/opay/pay/settings/PaymentInstrumentsViewModel;->w()Landroidx/lifecycle/MutableLiveData;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    new-instance v0, Lseb;

    .line 84
    .line 85
    invoke-direct {v0, p0}, Lseb;-><init>(Lteam/opay/pay/settings/PaymentInstrumentActivity;)V

    .line 86
    .line 87
    .line 88
    new-instance v1, Lteam/opay/pay/settings/PaymentInstrumentActivity$a;

    .line 89
    .line 90
    invoke-direct {v1, v0}, Lteam/opay/pay/settings/PaymentInstrumentActivity$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lteam/opay/pay/settings/PaymentInstrumentActivity;->L()Lteam/opay/pay/settings/PaymentInstrumentsViewModel;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p1}, Lteam/opay/pay/settings/PaymentInstrumentsViewModel;->v()Landroidx/lifecycle/MutableLiveData;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    new-instance v0, Lteb;

    .line 105
    .line 106
    invoke-direct {v0, p0}, Lteb;-><init>(Lteam/opay/pay/settings/PaymentInstrumentActivity;)V

    .line 107
    .line 108
    .line 109
    new-instance v1, Lteam/opay/pay/settings/PaymentInstrumentActivity$a;

    .line 110
    .line 111
    invoke-direct {v1, v0}, Lteam/opay/pay/settings/PaymentInstrumentActivity$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Lteam/opay/pay/settings/PaymentInstrumentActivity;->L()Lteam/opay/pay/settings/PaymentInstrumentsViewModel;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {p1, p0}, Lteam/opay/pay/settings/PaymentInstrumentsViewModel;->t(Lag8;)V

    .line 122
    .line 123
    .line 124
    sget-object p1, Ldk;->a:Ldk;

    .line 125
    .line 126
    const/4 v0, 0x0

    .line 127
    new-array v0, v0, [Lkotlin/Pair;

    .line 128
    .line 129
    const-string v1, "show_payment_instrument_list"

    .line 130
    .line 131
    invoke-virtual {p1, v1, v0}, Ldk;->c(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 132
    .line 133
    .line 134
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lteam/opay/pay/settings/Hilt_PaymentInstrumentActivity;->onDestroy()V

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

.method public final onEvent(Lteam/opay/pay/settings/BindSuccessToRefreshPreviousPageEvent;)V
    .locals 1
    .param p1    # Lteam/opay/pay/settings/BindSuccessToRefreshPreviousPageEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lb8e;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/pay/settings/PaymentInstrumentActivity;->L()Lteam/opay/pay/settings/PaymentInstrumentsViewModel;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1, p0}, Lteam/opay/pay/settings/PaymentInstrumentsViewModel;->t(Lag8;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
