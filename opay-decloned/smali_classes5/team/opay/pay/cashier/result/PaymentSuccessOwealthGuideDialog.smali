.class public final Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;
.super Lteam/opay/pay/cashier/result/Hilt_PaymentSuccessOwealthGuideDialog;
.source "PaymentSuccessOwealthGuideDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/cashier/result/Hilt_PaymentSuccessOwealthGuideDialog<",
        "Lwd3;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0007\u0018\u0000 &2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\'B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\'\u0010\u0010\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\"\u0010\u0018\u001a\u00020\u00128\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0010\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\"\u0010\u001c\u001a\u00020\u00128\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u0010\u001a\u0004\u0008\u001a\u0010\u0015\"\u0004\u0008\u001b\u0010\u0017R\u001b\u0010\"\u001a\u00020\u001d8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!R\u0018\u0010%\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010$\u00a8\u0006("
    }
    d2 = {
        "Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;",
        "Lteam/opay/core/base/BaseSheetInjectFragmentV2;",
        "Lwd3;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "",
        "type",
        "orderNo",
        "jumpUrl",
        "Z",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "",
        "q",
        "J",
        "()Z",
        "setSupportCancelable",
        "(Z)V",
        "supportCancelable",
        "r",
        "I",
        "setSupportBgTransparent",
        "supportBgTransparent",
        "Lteam/opay/pay/cashier/newpayment/AutoSubOWealthViewModel;",
        "s",
        "Lid8;",
        "Y",
        "()Lteam/opay/pay/cashier/newpayment/AutoSubOWealthViewModel;",
        "viewModel",
        "t",
        "Ljava/lang/String;",
        "autoSaveType",
        "u",
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
.field public static final u:Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final v:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final w:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final x:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public q:Z

.field public r:Z

.field public final s:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public t:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;->u:Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog$Companion;

    .line 8
    .line 9
    const-string v0, "key_data"

    .line 10
    .line 11
    sput-object v0, Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;->v:Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "key_order_number"

    .line 14
    .line 15
    sput-object v0, Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;->w:Ljava/lang/String;

    .line 16
    .line 17
    const-string v0, "key_height"

    .line 18
    .line 19
    sput-object v0, Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;->x:Ljava/lang/String;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    sget-object v0, Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog$1;->INSTANCE:Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/cashier/result/Hilt_PaymentSuccessOwealthGuideDialog;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;->r:Z

    .line 8
    .line 9
    new-instance v0, Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog$special$$inlined$viewModels$default$1;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 12
    .line 13
    .line 14
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 15
    .line 16
    new-instance v2, Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog$special$$inlined$viewModels$default$2;

    .line 17
    .line 18
    invoke-direct {v2, v0}, Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v2}, Lkotlin/c;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-class v1, Lteam/opay/pay/cashier/newpayment/AutoSubOWealthViewModel;

    .line 26
    .line 27
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    new-instance v2, Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog$special$$inlined$viewModels$default$3;

    .line 32
    .line 33
    invoke-direct {v2, v0}, Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog$special$$inlined$viewModels$default$3;-><init>(Lid8;)V

    .line 34
    .line 35
    .line 36
    new-instance v3, Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog$special$$inlined$viewModels$default$4;

    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    invoke-direct {v3, v4, v0}, Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lid8;)V

    .line 40
    .line 41
    .line 42
    new-instance v4, Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog$special$$inlined$viewModels$default$5;

    .line 43
    .line 44
    invoke-direct {v4, p0, v0}, Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lid8;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p0, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;->s:Lid8;

    .line 52
    .line 53
    return-void
.end method

.method public static synthetic P(Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;Ljava/lang/String;Lteam/opay/pay/cashier/newpayment/OpenAutoSubscribeInstantResult;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;->a0(Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;Ljava/lang/String;Lteam/opay/pay/cashier/newpayment/OpenAutoSubscribeInstantResult;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Q(Ljava/lang/String;Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;->c0(Ljava/lang/String;Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic R(Ljava/lang/String;Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;Lteam/opay/pay/cashier/newpayment/OpenAutoSubscribeInstantResult;Landroid/graphics/drawable/Drawable;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;->b0(Ljava/lang/String;Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;Lteam/opay/pay/cashier/newpayment/OpenAutoSubscribeInstantResult;Landroid/graphics/drawable/Drawable;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic S(Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;Lteam/opay/pay/cashier/result/OwealthGuideOpen;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;->e0(Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;Lteam/opay/pay/cashier/result/OwealthGuideOpen;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic T(Lteam/opay/pay/cashier/result/OwealthGuideOpen;Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;->d0(Lteam/opay/pay/cashier/result/OwealthGuideOpen;Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic U(Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;->g0(Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;Ljava/lang/Boolean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic V(Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;->f0(Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic W()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;->v:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic X()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;->w:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final a0(Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;Ljava/lang/String;Lteam/opay/pay/cashier/newpayment/OpenAutoSubscribeInstantResult;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;->Y()Lteam/opay/pay/cashier/newpayment/AutoSubOWealthViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lteam/opay/pay/cashier/newpayment/AutoSubOWealthViewModel;->y()Landroidx/lifecycle/MutableLiveData;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Lteam/opay/pay/cashier/newpayment/OpenAutoSubscribeInstantResult;->getResultImage()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    const-string v0, ""

    .line 26
    .line 27
    :cond_0
    new-instance v1, Ldhb;

    .line 28
    .line 29
    invoke-direct {v1, p1, p0, p2}, Ldhb;-><init>(Ljava/lang/String;Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;Lteam/opay/pay/cashier/newpayment/OpenAutoSubscribeInstantResult;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p0, v0, v1}, Lteam/opay/pay/base/FragmentKt;->p(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 33
    .line 34
    .line 35
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 36
    .line 37
    return-object p0
.end method

.method public static final b0(Ljava/lang/String;Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;Lteam/opay/pay/cashier/newpayment/OpenAutoSubscribeInstantResult;Landroid/graphics/drawable/Drawable;)Lkotlin/Unit;
    .locals 4

    .line 1
    sget-object p3, Lteam/opay/pay/cashier/PaySheetViewModel;->H:Lteam/opay/pay/cashier/PaySheetViewModel$Companion;

    .line 2
    .line 3
    const-string v0, "guide_type"

    .line 4
    .line 5
    invoke-static {v0, p0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p1, Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;->t:Ljava/lang/String;

    .line 10
    .line 11
    const-string v2, "autosave_type"

    .line 12
    .line 13
    invoke-static {v2, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x2

    .line 18
    new-array v2, v2, [Lkotlin/Pair;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    aput-object v0, v2, v3

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    aput-object v1, v2, v0

    .line 25
    .line 26
    const-string v0, "result_owealth_guide_autosave_suc_page_show"

    .line 27
    .line 28
    invoke-virtual {p3, v0, v2}, Lteam/opay/pay/cashier/PaySheetViewModel$Companion;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    if-eqz p3, :cond_0

    .line 36
    .line 37
    sget-object v0, Lteam/opay/pay/cashier/result/OwealthGuideSuccessDialog;->n:Lteam/opay/pay/cashier/result/OwealthGuideSuccessDialog$Companion;

    .line 38
    .line 39
    invoke-virtual {v0, p2, p0}, Lteam/opay/pay/cashier/result/OwealthGuideSuccessDialog$Companion;->a(Lteam/opay/pay/cashier/newpayment/OpenAutoSubscribeInstantResult;Ljava/lang/String;)Lteam/opay/pay/cashier/result/OwealthGuideSuccessDialog;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {p3, p0}, Lteam/opay/pay/base/FragmentKt;->x(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/DialogFragment;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-virtual {p1}, Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;->Y()Lteam/opay/pay/cashier/newpayment/AutoSubOWealthViewModel;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p0}, Lteam/opay/pay/cashier/newpayment/AutoSubOWealthViewModel;->y()Landroidx/lifecycle/MutableLiveData;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 55
    .line 56
    invoke-virtual {p0, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    .line 60
    .line 61
    .line 62
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 63
    .line 64
    return-object p0
.end method

.method public static final c0(Ljava/lang/String;Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 6

    .line 1
    sget-object v0, Lteam/opay/pay/cashier/PaySheetViewModel;->H:Lteam/opay/pay/cashier/PaySheetViewModel$Companion;

    .line 2
    .line 3
    const-string v1, "turn_from"

    .line 4
    .line 5
    const-string v2, "result_owealth"

    .line 6
    .line 7
    invoke-static {v1, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "status"

    .line 12
    .line 13
    const-string v3, "1"

    .line 14
    .line 15
    invoke-static {v2, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v3, "error_code"

    .line 20
    .line 21
    invoke-static {v3, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    const-string v3, "error_message"

    .line 26
    .line 27
    invoke-static {v3, p3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    const-string v3, "guide_type"

    .line 32
    .line 33
    invoke-static {v3, p0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    iget-object v3, p1, Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;->t:Ljava/lang/String;

    .line 38
    .line 39
    const-string v4, "autosave_type"

    .line 40
    .line 41
    invoke-static {v4, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const/4 v4, 0x6

    .line 46
    new-array v4, v4, [Lkotlin/Pair;

    .line 47
    .line 48
    const/4 v5, 0x0

    .line 49
    aput-object v1, v4, v5

    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    aput-object v2, v4, v1

    .line 53
    .line 54
    const/4 v1, 0x2

    .line 55
    aput-object p2, v4, v1

    .line 56
    .line 57
    const/4 p2, 0x3

    .line 58
    aput-object p3, v4, p2

    .line 59
    .line 60
    const/4 p2, 0x4

    .line 61
    aput-object p0, v4, p2

    .line 62
    .line 63
    const/4 p0, 0x5

    .line 64
    aput-object v3, v4, p0

    .line 65
    .line 66
    const-string p0, "owealth_autosave_turn_response_page_show"

    .line 67
    .line 68
    invoke-virtual {v0, p0, v4}, Lteam/opay/pay/cashier/PaySheetViewModel$Companion;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    .line 72
    .line 73
    .line 74
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 75
    .line 76
    return-object p0
.end method

.method public static final d0(Lteam/opay/pay/cashier/result/OwealthGuideOpen;Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;)Lkotlin/Unit;
    .locals 4

    .line 1
    sget-object v0, Lteam/opay/pay/cashier/PaySheetViewModel;->H:Lteam/opay/pay/cashier/PaySheetViewModel$Companion;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lteam/opay/pay/cashier/result/OwealthGuideOpen;->getPageType()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    const-string v1, "guide_type"

    .line 12
    .line 13
    invoke-static {v1, p0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    iget-object v1, p1, Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;->t:Ljava/lang/String;

    .line 18
    .line 19
    const-string v2, "autosave_type"

    .line 20
    .line 21
    invoke-static {v2, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x2

    .line 26
    new-array v2, v2, [Lkotlin/Pair;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    aput-object p0, v2, v3

    .line 30
    .line 31
    const/4 p0, 0x1

    .line 32
    aput-object v1, v2, p0

    .line 33
    .line 34
    const-string p0, "result_owealth_guide_later_click"

    .line 35
    .line 36
    invoke-virtual {v0, p0, v2}, Lteam/opay/pay/cashier/PaySheetViewModel$Companion;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    .line 40
    .line 41
    .line 42
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 43
    .line 44
    return-object p0
.end method

.method public static final e0(Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;Lteam/opay/pay/cashier/result/OwealthGuideOpen;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lteam/opay/pay/cashier/result/OwealthGuideOpen;->getPageType()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, ""

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    move-object v0, v1

    .line 10
    :cond_0
    if-nez p2, :cond_1

    .line 11
    .line 12
    move-object p2, v1

    .line 13
    :cond_1
    invoke-virtual {p1}, Lteam/opay/pay/cashier/result/OwealthGuideOpen;->getJumpUrl()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-nez p1, :cond_2

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    move-object v1, p1

    .line 21
    :goto_0
    invoke-virtual {p0, v0, p2, v1}, Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;->Z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p0
.end method

.method public static final f0(Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final g0(Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;Ljava/lang/Boolean;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    sget-object v0, Lteam/opay/pay/util/OpayLoadingWindow;->m:Lteam/opay/pay/util/OpayLoadingWindow$Companion;

    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    move-object v1, p0

    .line 14
    invoke-static/range {v0 .. v5}, Lteam/opay/pay/util/OpayLoadingWindow$Companion;->g(Lteam/opay/pay/util/OpayLoadingWindow$Companion;Landroidx/fragment/app/Fragment;ZZILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object p1, Lteam/opay/pay/util/OpayLoadingWindow;->m:Lteam/opay/pay/util/OpayLoadingWindow$Companion;

    .line 19
    .line 20
    invoke-virtual {p1, p0}, Lteam/opay/pay/util/OpayLoadingWindow$Companion;->a(Landroidx/fragment/app/Fragment;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method


# virtual methods
.method public I()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;->r:Z

    .line 2
    .line 3
    return v0
.end method

.method public J()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;->q:Z

    .line 2
    .line 3
    return v0
.end method

.method public final Y()Lteam/opay/pay/cashier/newpayment/AutoSubOWealthViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;->s:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/cashier/newpayment/AutoSubOWealthViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public final Z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "7"

    .line 4
    .line 5
    const-string v3, "8"

    .line 6
    .line 7
    filled-new-array {v2, v3}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->n([Ljava/lang/Object;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const-string v3, "guide_type"

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    sget-object p3, Lteam/opay/pay/cashier/PaySheetViewModel;->H:Lteam/opay/pay/cashier/PaySheetViewModel$Companion;

    .line 24
    .line 25
    invoke-static {v3, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const-string v3, "autosave_type"

    .line 30
    .line 31
    iget-object v4, p0, Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;->t:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v3, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const/4 v4, 0x2

    .line 38
    new-array v4, v4, [Lkotlin/Pair;

    .line 39
    .line 40
    aput-object v2, v4, v1

    .line 41
    .line 42
    aput-object v3, v4, v0

    .line 43
    .line 44
    const-string v0, "result_owealth_guide_turn_on_click"

    .line 45
    .line 46
    invoke-virtual {p3, v0, v4}, Lteam/opay/pay/cashier/PaySheetViewModel$Companion;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;->Y()Lteam/opay/pay/cashier/newpayment/AutoSubOWealthViewModel;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    new-instance v9, Lbhb;

    .line 54
    .line 55
    invoke-direct {v9, p0, p1}, Lbhb;-><init>(Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    new-instance v10, Lchb;

    .line 59
    .line 60
    invoke-direct {v10, p1, p0}, Lchb;-><init>(Ljava/lang/String;Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;)V

    .line 61
    .line 62
    .line 63
    move-object v6, p1

    .line 64
    move-object v7, p2

    .line 65
    move-object v8, p0

    .line 66
    invoke-virtual/range {v5 .. v10}, Lteam/opay/pay/cashier/newpayment/AutoSubOWealthViewModel;->w(Ljava/lang/String;Ljava/lang/String;Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    sget-object p2, Lteam/opay/pay/cashier/PaySheetViewModel;->H:Lteam/opay/pay/cashier/PaySheetViewModel$Companion;

    .line 71
    .line 72
    invoke-static {v3, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    new-array v0, v0, [Lkotlin/Pair;

    .line 77
    .line 78
    aput-object p1, v0, v1

    .line 79
    .line 80
    const-string p1, "result_owealth_guide_view_click"

    .line 81
    .line 82
    invoke-virtual {p2, p1, v0}, Lteam/opay/pay/cashier/PaySheetViewModel$Companion;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    if-nez p1, :cond_1

    .line 90
    .line 91
    return-void

    .line 92
    :cond_1
    invoke-static {p1, p3}, Lkmf;->E(Landroid/content/Context;Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    .line 96
    .line 97
    .line 98
    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    const-string v3, "view"

    .line 5
    .line 6
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    sget-object p2, Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;->v:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    instance-of p2, p1, Lteam/opay/pay/cashier/result/OwealthGuideOpen;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    if-eqz p2, :cond_0

    .line 26
    .line 27
    check-cast p1, Lteam/opay/pay/cashier/result/OwealthGuideOpen;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object p1, v3

    .line 31
    :goto_0
    if-nez p1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    sget-object v4, Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;->w:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p2, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p1}, Lteam/opay/pay/cashier/result/OwealthGuideOpen;->getPageType()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    if-nez v4, :cond_2

    .line 52
    .line 53
    const-string v4, ""

    .line 54
    .line 55
    :cond_2
    const-string v5, "7"

    .line 56
    .line 57
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-eqz v5, :cond_3

    .line 62
    .line 63
    const-string v5, "timed"

    .line 64
    .line 65
    iput-object v5, p0, Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;->t:Ljava/lang/String;

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    const-string v5, "8"

    .line 69
    .line 70
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-eqz v5, :cond_4

    .line 75
    .line 76
    const-string v5, "realtime"

    .line 77
    .line 78
    iput-object v5, p0, Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;->t:Ljava/lang/String;

    .line 79
    .line 80
    :cond_4
    :goto_1
    new-instance v5, Lteam/opay/core/settings/SettingsStorage;

    .line 81
    .line 82
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    const-string v7, "requireContext(...)"

    .line 87
    .line 88
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-direct {v5, v6}, Lteam/opay/core/settings/SettingsStorage;-><init>(Landroid/content/Context;)V

    .line 92
    .line 93
    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 95
    .line 96
    .line 97
    move-result-wide v6

    .line 98
    invoke-virtual {v5, v4, v6, v7}, Lteam/opay/core/settings/SettingsStorage;->m0(Ljava/lang/String;J)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v5, v4}, Lteam/opay/core/settings/SettingsStorage;->z(Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    add-int/2addr v6, v2

    .line 106
    invoke-virtual {v5, v4, v6}, Lteam/opay/core/settings/SettingsStorage;->k0(Ljava/lang/String;I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    check-cast v4, Lwd3;

    .line 114
    .line 115
    iget-object v4, v4, Lwd3;->h:Landroidx/appcompat/widget/AppCompatImageView;

    .line 116
    .line 117
    const-string v5, "tipsIcon"

    .line 118
    .line 119
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Lteam/opay/pay/cashier/result/OwealthGuideOpen;->getIcon()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    invoke-static {v4, v5, v0, v1, v3}, Lkzf;->k(Landroid/widget/ImageView;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Lteam/opay/pay/cashier/result/OwealthGuideOpen;->getTitle()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    if-eqz v3, :cond_6

    .line 134
    .line 135
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    if-nez v3, :cond_5

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_5
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    check-cast v3, Lwd3;

    .line 147
    .line 148
    iget-object v3, v3, Lwd3;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 149
    .line 150
    invoke-virtual {p1}, Lteam/opay/pay/cashier/result/OwealthGuideOpen;->getTitle()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    invoke-static {v4, v0}, Lf47;->a(Ljava/lang/String;I)Landroid/text/Spanned;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    .line 160
    .line 161
    :cond_6
    :goto_2
    invoke-virtual {p1}, Lteam/opay/pay/cashier/result/OwealthGuideOpen;->getDisplay()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    if-eqz v3, :cond_8

    .line 166
    .line 167
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    if-nez v3, :cond_7

    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_7
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    check-cast v3, Lwd3;

    .line 179
    .line 180
    iget-object v3, v3, Lwd3;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 181
    .line 182
    invoke-virtual {p1}, Lteam/opay/pay/cashier/result/OwealthGuideOpen;->getDisplay()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    invoke-static {v4, v0}, Lf47;->a(Ljava/lang/String;I)Landroid/text/Spanned;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    .line 192
    .line 193
    :cond_8
    :goto_3
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    check-cast v3, Lwd3;

    .line 198
    .line 199
    iget-object v3, v3, Lwd3;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 200
    .line 201
    new-instance v4, Lteam/opay/pay/cashier/result/PayOwealthGuideListAdapter;

    .line 202
    .line 203
    invoke-direct {v4}, Lteam/opay/pay/cashier/result/PayOwealthGuideListAdapter;-><init>()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1}, Lteam/opay/pay/cashier/result/OwealthGuideOpen;->getContent()Ljava/util/List;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    invoke-virtual {v4, v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1}, Lteam/opay/pay/cashier/result/OwealthGuideOpen;->getLeftButtonText()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    const-string v4, "btnCancleGroup"

    .line 221
    .line 222
    if-eqz v3, :cond_a

    .line 223
    .line 224
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 225
    .line 226
    .line 227
    move-result v3

    .line 228
    if-nez v3, :cond_9

    .line 229
    .line 230
    goto :goto_4

    .line 231
    :cond_9
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    check-cast v3, Lwd3;

    .line 236
    .line 237
    iget-object v3, v3, Lwd3;->c:Landroidx/constraintlayout/widget/Group;

    .line 238
    .line 239
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-static {v3}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    check-cast v3, Lwd3;

    .line 250
    .line 251
    iget-object v3, v3, Lwd3;->b:Lcom/google/android/material/button/MaterialButton;

    .line 252
    .line 253
    invoke-virtual {p1}, Lteam/opay/pay/cashier/result/OwealthGuideOpen;->getLeftButtonText()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v4

    .line 257
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    check-cast v3, Lwd3;

    .line 265
    .line 266
    iget-object v3, v3, Lwd3;->b:Lcom/google/android/material/button/MaterialButton;

    .line 267
    .line 268
    const-string v4, "btnCancle"

    .line 269
    .line 270
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    new-instance v4, Lxgb;

    .line 274
    .line 275
    invoke-direct {v4, p1, p0}, Lxgb;-><init>(Lteam/opay/pay/cashier/result/OwealthGuideOpen;Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;)V

    .line 276
    .line 277
    .line 278
    invoke-static {v3, v4}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 279
    .line 280
    .line 281
    goto :goto_5

    .line 282
    :cond_a
    :goto_4
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    check-cast v3, Lwd3;

    .line 287
    .line 288
    iget-object v3, v3, Lwd3;->c:Landroidx/constraintlayout/widget/Group;

    .line 289
    .line 290
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    invoke-static {v3}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 294
    .line 295
    .line 296
    :goto_5
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    check-cast v3, Lwd3;

    .line 301
    .line 302
    iget-object v3, v3, Lwd3;->e:Lcom/google/android/material/button/MaterialButton;

    .line 303
    .line 304
    invoke-virtual {p1}, Lteam/opay/pay/cashier/result/OwealthGuideOpen;->getRightButtonText()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v4

    .line 308
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 312
    .line 313
    .line 314
    move-result-object v3

    .line 315
    check-cast v3, Lwd3;

    .line 316
    .line 317
    iget-object v3, v3, Lwd3;->e:Lcom/google/android/material/button/MaterialButton;

    .line 318
    .line 319
    const-string v4, "btnConfirm"

    .line 320
    .line 321
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    new-instance v4, Lygb;

    .line 325
    .line 326
    invoke-direct {v4, p0, p1, p2}, Lygb;-><init>(Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;Lteam/opay/pay/cashier/result/OwealthGuideOpen;Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    invoke-static {v3, v4}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 333
    .line 334
    .line 335
    move-result-object p2

    .line 336
    check-cast p2, Lwd3;

    .line 337
    .line 338
    iget-object p2, p2, Lwd3;->f:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 339
    .line 340
    const-string v3, "icBack"

    .line 341
    .line 342
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    new-instance v3, Lzgb;

    .line 346
    .line 347
    invoke-direct {v3, p0}, Lzgb;-><init>(Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;)V

    .line 348
    .line 349
    .line 350
    invoke-static {p2, v3}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {p0}, Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;->Y()Lteam/opay/pay/cashier/newpayment/AutoSubOWealthViewModel;

    .line 354
    .line 355
    .line 356
    move-result-object p2

    .line 357
    invoke-virtual {p2}, Lteam/opay/pay/cashier/newpayment/AutoSubOWealthViewModel;->y()Landroidx/lifecycle/MutableLiveData;

    .line 358
    .line 359
    .line 360
    move-result-object p2

    .line 361
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 362
    .line 363
    .line 364
    move-result-object v3

    .line 365
    new-instance v4, Lahb;

    .line 366
    .line 367
    invoke-direct {v4, p0}, Lahb;-><init>(Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {p2, v3, v4}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 371
    .line 372
    .line 373
    sget-object p2, Lteam/opay/pay/cashier/PaySheetViewModel;->H:Lteam/opay/pay/cashier/PaySheetViewModel$Companion;

    .line 374
    .line 375
    const-string v3, "guide_type"

    .line 376
    .line 377
    invoke-virtual {p1}, Lteam/opay/pay/cashier/result/OwealthGuideOpen;->getPageType()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object p1

    .line 381
    invoke-static {v3, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 382
    .line 383
    .line 384
    move-result-object p1

    .line 385
    const-string v3, "autosave_type"

    .line 386
    .line 387
    iget-object v4, p0, Lteam/opay/pay/cashier/result/PaymentSuccessOwealthGuideDialog;->t:Ljava/lang/String;

    .line 388
    .line 389
    invoke-static {v3, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 390
    .line 391
    .line 392
    move-result-object v3

    .line 393
    new-array v1, v1, [Lkotlin/Pair;

    .line 394
    .line 395
    aput-object p1, v1, v0

    .line 396
    .line 397
    aput-object v3, v1, v2

    .line 398
    .line 399
    const-string p1, "result_owealth_guide_page_show"

    .line 400
    .line 401
    invoke-virtual {p2, p1, v1}, Lteam/opay/pay/cashier/PaySheetViewModel$Companion;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 402
    .line 403
    .line 404
    return-void
.end method
