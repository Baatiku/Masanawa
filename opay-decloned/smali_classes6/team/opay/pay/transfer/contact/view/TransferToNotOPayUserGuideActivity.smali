.class public final Lteam/opay/pay/transfer/contact/view/TransferToNotOPayUserGuideActivity;
.super Lteam/opay/pay/transfer/contact/view/Hilt_TransferToNotOPayUserGuideActivity;
.source "TransferToNotOPayUserGuideActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/transfer/contact/view/TransferToNotOPayUserGuideActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 \u000c2\u00020\u0001:\u0001\rB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0003R\u001b\u0010\u000b\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000e"
    }
    d2 = {
        "Lteam/opay/pay/transfer/contact/view/TransferToNotOPayUserGuideActivity;",
        "Lteam/opay/pay/android/NoBindingActivity;",
        "<init>",
        "()V",
        "",
        "onStart",
        "Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel;",
        "g",
        "Lid8;",
        "B",
        "()Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel;",
        "dataViewModel",
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
.field public static final h:Lteam/opay/pay/transfer/contact/view/TransferToNotOPayUserGuideActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final g:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/transfer/contact/view/TransferToNotOPayUserGuideActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/transfer/contact/view/TransferToNotOPayUserGuideActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/transfer/contact/view/TransferToNotOPayUserGuideActivity;->h:Lteam/opay/pay/transfer/contact/view/TransferToNotOPayUserGuideActivity$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->activity_transfer_to_not_opay_user_guide:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/transfer/contact/view/Hilt_TransferToNotOPayUserGuideActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/pay/transfer/contact/view/TransferToNotOPayUserGuideActivity$special$$inlined$viewModels$default$1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lteam/opay/pay/transfer/contact/view/TransferToNotOPayUserGuideActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

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
    new-instance v3, Lteam/opay/pay/transfer/contact/view/TransferToNotOPayUserGuideActivity$special$$inlined$viewModels$default$2;

    .line 20
    .line 21
    invoke-direct {v3, p0}, Lteam/opay/pay/transfer/contact/view/TransferToNotOPayUserGuideActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 22
    .line 23
    .line 24
    new-instance v4, Lteam/opay/pay/transfer/contact/view/TransferToNotOPayUserGuideActivity$special$$inlined$viewModels$default$3;

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    invoke-direct {v4, v5, p0}, Lteam/opay/pay/transfer/contact/view/TransferToNotOPayUserGuideActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lteam/opay/pay/transfer/contact/view/TransferToNotOPayUserGuideActivity;->g:Lid8;

    .line 34
    .line 35
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/transfer/contact/view/TransferToNotOPayUserGuideActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/transfer/contact/view/TransferToNotOPayUserGuideActivity;->C(Lteam/opay/pay/transfer/contact/view/TransferToNotOPayUserGuideActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final B()Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/view/TransferToNotOPayUserGuideActivity;->g:Lid8;

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

.method public static final C(Lteam/opay/pay/transfer/contact/view/TransferToNotOPayUserGuideActivity;)Lkotlin/Unit;
    .locals 2

    .line 1
    sget v0, Lteam/opay/pay/R$id;->fragment_container:I

    .line 2
    .line 3
    sget-object v1, Lteam/opay/pay/transfer/contact/view/dialog/TransferToNotOPayUserGuideFragment;->q:Lteam/opay/pay/transfer/contact/view/dialog/TransferToNotOPayUserGuideFragment$Companion;

    .line 4
    .line 5
    invoke-virtual {v1}, Lteam/opay/pay/transfer/contact/view/dialog/TransferToNotOPayUserGuideFragment$Companion;->a()Lteam/opay/pay/transfer/contact/view/dialog/TransferToNotOPayUserGuideFragment;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {p0, v0, v1}, Lteam/opay/pay/base/FragmentKt;->h(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Lteam/opay/core/android/InjectableActivity;->onStart()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lteam/opay/pay/transfer/contact/view/TransferToNotOPayUserGuideActivity;->B()Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lpaf;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lpaf;-><init>(Lteam/opay/pay/transfer/contact/view/TransferToNotOPayUserGuideActivity;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0, v1}, Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel;->q(Lag8;Lkotlin/jvm/functions/Function0;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
