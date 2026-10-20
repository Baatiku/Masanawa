.class public final Lteam/opay/business/pin/PayPinInputFragment;
.super Lteam/opay/business/pin/Hilt_PayPinInputFragment;
.source "PayPinInputFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/business/pin/PayPinInputFragment$Companion;,
        Lteam/opay/business/pin/PayPinInputFragment$KeyboardListener;,
        Lteam/opay/business/pin/PayPinInputFragment$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0007\u0018\u0000 J2\u00020\u0001:\u0002KLB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0003J\u000f\u0010\t\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0003J\u0017\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ+\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J!\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00142\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0019\u0010\u001a\u001a\u00020\u00072\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0007H\u0014\u00a2\u0006\u0004\u0008\u001c\u0010\u0003J\u0017\u0010\u001f\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u001dH\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 R\u001b\u0010&\u001a\u00020!8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%R\"\u0010,\u001a\u00020\u00048\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0012\n\u0004\u0008\'\u0010(\u001a\u0004\u0008)\u0010\u0006\"\u0004\u0008*\u0010+R\"\u00100\u001a\u00020\u00048\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0012\n\u0004\u0008-\u0010(\u001a\u0004\u0008.\u0010\u0006\"\u0004\u0008/\u0010+R\"\u00104\u001a\u00020\u00048\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0012\n\u0004\u00081\u0010(\u001a\u0004\u00082\u0010\u0006\"\u0004\u00083\u0010+R\u001b\u0010:\u001a\u0002058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00086\u00107\u001a\u0004\u00088\u00109R\u0016\u0010<\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008;\u0010(R\"\u0010B\u001a\u0010\u0012\u000c\u0012\n ?*\u0004\u0018\u00010>0>0=8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008@\u0010AR\u0014\u0010F\u001a\u00020C8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008D\u0010ER\u0014\u0010I\u001a\u00020\n8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008G\u0010H\u00a8\u0006M"
    }
    d2 = {
        "Lteam/opay/business/pin/PayPinInputFragment;",
        "Lteam/opay/core/common/base/BaseSheetFragment;",
        "<init>",
        "()V",
        "",
        "q0",
        "()Z",
        "",
        "c0",
        "o0",
        "",
        "paymentPin",
        "n0",
        "(Ljava/lang/String;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onActivityCreated",
        "(Landroid/os/Bundle;)V",
        "P",
        "Landroid/content/DialogInterface;",
        "dialog",
        "onDismiss",
        "(Landroid/content/DialogInterface;)V",
        "Lm52;",
        "u",
        "Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;",
        "e0",
        "()Lm52;",
        "binding",
        "v",
        "Z",
        "N",
        "setSupportDragging",
        "(Z)V",
        "supportDragging",
        "w",
        "M",
        "setSupportCancelable",
        "supportCancelable",
        "x",
        "getSupportBack",
        "setSupportBack",
        "supportBack",
        "Lteam/opay/business/pin/PinViewModel;",
        "y",
        "Lid8;",
        "h0",
        "()Lteam/opay/business/pin/PinViewModel;",
        "viewModel",
        "z",
        "success",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "Landroid/content/Intent;",
        "kotlin.jvm.PlatformType",
        "A",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "forgotPinResult",
        "Lteam/opay/business/pin/PinInput;",
        "g0",
        "()Lteam/opay/business/pin/PinInput;",
        "pinInput",
        "f0",
        "()Ljava/lang/String;",
        "pinCode",
        "B",
        "KeyboardListener",
        "Companion",
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


# static fields
.field public static final B:Lteam/opay/business/pin/PayPinInputFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final synthetic C:[Lzo7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lzo7<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final u:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public v:Z

.field public w:Z

.field public x:Z

.field public final y:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    .line 2
    .line 3
    const-string v1, "getBinding()Lteam/opay/business/pin/databinding/CashierFragmentPayPinInputBinding;"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-class v3, Lteam/opay/business/pin/PayPinInputFragment;

    .line 7
    .line 8
    const-string v4, "binding"

    .line 9
    .line 10
    invoke-direct {v0, v3, v4, v1, v2}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->i(Lkotlin/jvm/internal/PropertyReference1;)Lbp7;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x1

    .line 18
    new-array v1, v1, [Lzo7;

    .line 19
    .line 20
    aput-object v0, v1, v2

    .line 21
    .line 22
    sput-object v1, Lteam/opay/business/pin/PayPinInputFragment;->C:[Lzo7;

    .line 23
    .line 24
    new-instance v0, Lteam/opay/business/pin/PayPinInputFragment$Companion;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-direct {v0, v1}, Lteam/opay/business/pin/PayPinInputFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lteam/opay/business/pin/PayPinInputFragment;->B:Lteam/opay/business/pin/PayPinInputFragment$Companion;

    .line 31
    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lteam/opay/business/pin/Hilt_PayPinInputFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 5
    .line 6
    const-class v1, Lm52;

    .line 7
    .line 8
    invoke-direct {v0, v1, p0}, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;-><init>(Ljava/lang/Class;Landroidx/fragment/app/Fragment;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lteam/opay/business/pin/PayPinInputFragment;->u:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lteam/opay/business/pin/PayPinInputFragment;->x:Z

    .line 15
    .line 16
    const-class v0, Lteam/opay/business/pin/PinViewModel;

    .line 17
    .line 18
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Lteam/opay/business/pin/PayPinInputFragment$special$$inlined$activityViewModels$default$1;

    .line 23
    .line 24
    invoke-direct {v1, p0}, Lteam/opay/business/pin/PayPinInputFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 25
    .line 26
    .line 27
    new-instance v2, Lteam/opay/business/pin/PayPinInputFragment$special$$inlined$activityViewModels$default$2;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-direct {v2, v3, p0}, Lteam/opay/business/pin/PayPinInputFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 31
    .line 32
    .line 33
    new-instance v3, Lteam/opay/business/pin/PayPinInputFragment$special$$inlined$activityViewModels$default$3;

    .line 34
    .line 35
    invoke-direct {v3, p0}, Lteam/opay/business/pin/PayPinInputFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lteam/opay/business/pin/PayPinInputFragment;->y:Lid8;

    .line 43
    .line 44
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 45
    .line 46
    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    .line 47
    .line 48
    .line 49
    new-instance v1, Llab;

    .line 50
    .line 51
    invoke-direct {v1, p0}, Llab;-><init>(Lteam/opay/business/pin/PayPinInputFragment;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Lag;)Landroidx/activity/result/ActivityResultLauncher;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v1, "registerForActivityResult(...)"

    .line 59
    .line 60
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lteam/opay/business/pin/PayPinInputFragment;->A:Landroidx/activity/result/ActivityResultLauncher;

    .line 64
    .line 65
    return-void
.end method

.method public static synthetic T(Lteam/opay/business/pin/PayPinInputFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/pin/PayPinInputFragment;->j0(Lteam/opay/business/pin/PayPinInputFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic U(Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/pin/PayPinInputFragment;->l0(Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic V(Lteam/opay/business/pin/PayPinInputFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/pin/PayPinInputFragment;->d0(Lteam/opay/business/pin/PayPinInputFragment;Landroidx/activity/result/ActivityResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic W(Lteam/opay/business/pin/PayPinInputFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/pin/PayPinInputFragment;->i0(Lteam/opay/business/pin/PayPinInputFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic X(Lteam/opay/business/pin/PayPinInputFragment;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/pin/PayPinInputFragment;->k0(Lteam/opay/business/pin/PayPinInputFragment;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Y(Lteam/opay/business/pin/PayPinInputFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/pin/PayPinInputFragment;->m0(Lteam/opay/business/pin/PayPinInputFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Z(Lteam/opay/business/pin/PayPinInputFragment;Lteam/opay/business/pin/hilt/PinRequest;Lteam/opay/core/http/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/business/pin/PayPinInputFragment;->p0(Lteam/opay/business/pin/PayPinInputFragment;Lteam/opay/business/pin/hilt/PinRequest;Lteam/opay/core/http/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic a0(Lteam/opay/business/pin/PayPinInputFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/pin/PayPinInputFragment;->c0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic b0(Lteam/opay/business/pin/PayPinInputFragment;)Lm52;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/pin/PayPinInputFragment;->e0()Lm52;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final d0(Lteam/opay/business/pin/PayPinInputFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/pin/PayPinInputFragment;->e0()Lm52;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lm52;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 6
    .line 7
    const-string p1, "tvError"

    .line 8
    .line 9
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Lg0g;->d(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final h0()Lteam/opay/business/pin/PinViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/pin/PayPinInputFragment;->y:Lid8;

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

.method public static final i0(Lteam/opay/business/pin/PayPinInputFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/pin/PayPinInputFragment;->P()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final j0(Lteam/opay/business/pin/PayPinInputFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/pin/PayPinInputFragment;->c0()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final k0(Lteam/opay/business/pin/PayPinInputFragment;Z)Lkotlin/Unit;
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    sget-object v1, Lteam/opay/core/common/spi/a;->b:Lteam/opay/core/common/spi/a;

    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeSheetFragment;->getAppContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    const/4 v3, 0x0

    .line 9
    new-array v4, v3, [Lkotlin/Pair;

    .line 10
    .line 11
    const-string v5, "enter_payment_pin_forgot_click"

    .line 12
    .line 13
    invoke-virtual {v1, v2, v5, v4}, Lteam/opay/core/common/spi/a;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 14
    .line 15
    .line 16
    sget-object v1, Lorb;->b:Lorb;

    .line 17
    .line 18
    invoke-virtual {v1}, Lorb;->c()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeSheetFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    sget p1, Lteam/opay/business/pin/R$string;->cashier_desk_pin_tips:I

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    const-string p1, "getString(...)"

    .line 35
    .line 36
    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sget v0, Lteam/opay/core/common/R$string;->common_confirm:I

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    invoke-static {v7, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    new-instance v9, Lxab;

    .line 49
    .line 50
    invoke-direct {v9}, Lxab;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v5, ""

    .line 54
    .line 55
    const-string v8, ""

    .line 56
    .line 57
    invoke-static/range {v4 .. v9}, Lpc3;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_0
    if-eqz p1, :cond_1

    .line 62
    .line 63
    const-string p1, "ForgetEmployeePaymentPin"

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    const-string p1, "ForgetPaymentPin"

    .line 67
    .line 68
    :goto_0
    sget-object v1, Lf6e;->a:Lf6e;

    .line 69
    .line 70
    new-array v1, v0, [Ljava/lang/Object;

    .line 71
    .line 72
    aput-object p1, v1, v3

    .line 73
    .line 74
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    const-string v0, "opay://common/account/modify?modifyType=%s"

    .line 79
    .line 80
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    const-string v0, "format(...)"

    .line 85
    .line 86
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object v2, p0, Lteam/opay/business/pin/PayPinInputFragment;->A:Landroidx/activity/result/ActivityResultLauncher;

    .line 90
    .line 91
    sget-object v0, Lud;->a:Lud;

    .line 92
    .line 93
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeSheetFragment;->getAppContext()Landroid/content/Context;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v0, v1, p1}, Lud;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    const/4 v5, 0x4

    .line 102
    const/4 v6, 0x0

    .line 103
    const/4 v4, 0x0

    .line 104
    move-object v1, p0

    .line 105
    invoke-static/range {v1 .. v6}, Lvd;->h(Landroidx/fragment/app/Fragment;Landroidx/activity/result/ActivityResultLauncher;Landroid/content/Intent;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 109
    .line 110
    return-object p0
.end method

.method public static final l0(Z)Lkotlin/Unit;
    .locals 0

    .line 1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final m0(Lteam/opay/business/pin/PayPinInputFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/business/pin/FingerPrintPaymentFragment;->z:Lteam/opay/business/pin/FingerPrintPaymentFragment$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/business/pin/FingerPrintPaymentFragment$Companion;->a()Lteam/opay/business/pin/FingerPrintPaymentFragment;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p0, v0}, Lre6;->p(Landroidx/fragment/app/Fragment;Lteam/opay/core/common/base/BaseSheetFragment;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lteam/opay/core/common/base/BaseSheetFragment;->dismiss()V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method

.method private final n0(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeSheetFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroid/content/Intent;

    .line 6
    .line 7
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "pin"

    .line 11
    .line 12
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    const/4 p1, -0x1

    .line 18
    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeSheetFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public static final p0(Lteam/opay/business/pin/PayPinInputFragment;Lteam/opay/business/pin/hilt/PinRequest;Lteam/opay/core/http/arch/Resource;)Lkotlin/Unit;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/pin/PayPinInputFragment;->e0()Lm52;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lm52;->j:Lteam/opay/core/widget/PulseLoaderView;

    .line 6
    .line 7
    const-string v1, "loading"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    invoke-virtual {p2}, Lteam/opay/core/http/arch/Resource;->c()Lteam/opay/core/http/arch/Status;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v2, v1

    .line 21
    :goto_0
    sget-object v3, Lteam/opay/core/http/arch/Status;->LOADING:Lteam/opay/core/http/arch/Status;

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    if-ne v2, v3, :cond_1

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const/4 v2, 0x0

    .line 29
    :goto_1
    invoke-static {v0, v2}, Lg0g;->j(Landroid/view/View;Z)V

    .line 30
    .line 31
    .line 32
    if-eqz p2, :cond_2

    .line 33
    .line 34
    invoke-virtual {p2}, Lteam/opay/core/http/arch/Resource;->c()Lteam/opay/core/http/arch/Status;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    :cond_2
    if-nez v1, :cond_3

    .line 39
    .line 40
    const/4 v0, -0x1

    .line 41
    goto :goto_2

    .line 42
    :cond_3
    sget-object v0, Lteam/opay/business/pin/PayPinInputFragment$a;->a:[I

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    aget v0, v0, v1

    .line 49
    .line 50
    :goto_2
    const-string v1, "getString(...)"

    .line 51
    .line 52
    const-string v2, "tvError"

    .line 53
    .line 54
    if-eq v0, v4, :cond_6

    .line 55
    .line 56
    const/4 p1, 0x2

    .line 57
    if-eq v0, p1, :cond_4

    .line 58
    .line 59
    invoke-static {}, Let;->l()Lkotlin/jvm/functions/Function0;

    .line 60
    .line 61
    .line 62
    goto/16 :goto_5

    .line 63
    .line 64
    :cond_4
    invoke-virtual {p0}, Lteam/opay/business/pin/PayPinInputFragment;->e0()Lm52;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iget-object p1, p1, Lm52;->e:Lteam/opay/core/widget/FixCodeInputField;

    .line 69
    .line 70
    invoke-virtual {p1}, Lteam/opay/core/widget/FixCodeInputField;->j()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lteam/opay/business/pin/PayPinInputFragment;->e0()Lm52;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iget-object p1, p1, Lm52;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 78
    .line 79
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-static {p1}, Lg0g;->h(Landroid/view/View;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lteam/opay/business/pin/PayPinInputFragment;->e0()Lm52;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iget-object p1, p1, Lm52;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 90
    .line 91
    invoke-virtual {p2}, Lteam/opay/core/http/arch/Resource;->b()Lteam/opay/core/http/arch/ApiError;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    if-eqz p2, :cond_5

    .line 96
    .line 97
    invoke-virtual {p2}, Lteam/opay/core/http/arch/ApiError;->d()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    if-eqz p2, :cond_5

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_5
    sget p2, Lteam/opay/business/pin/R$string;->cashier_bad_gateway_error:I

    .line 105
    .line 106
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :goto_3
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    .line 115
    .line 116
    sget-object p1, Lwkd;->a:Lwkd;

    .line 117
    .line 118
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeSheetFragment;->getAppContext()Landroid/content/Context;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    invoke-virtual {p0}, Lteam/opay/business/pin/PayPinInputFragment;->e0()Lm52;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    iget-object p0, p0, Lm52;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 127
    .line 128
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, p2, p0}, Lwkd;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 132
    .line 133
    .line 134
    goto :goto_5

    .line 135
    :cond_6
    invoke-virtual {p2}, Lteam/opay/core/http/arch/Resource;->a()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    check-cast p2, Lteam/opay/business/pin/hilt/PinResponse;

    .line 140
    .line 141
    if-eqz p2, :cond_9

    .line 142
    .line 143
    invoke-virtual {p2}, Lteam/opay/business/pin/hilt/PinResponse;->b()Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-eqz v0, :cond_7

    .line 148
    .line 149
    iput-boolean v4, p0, Lteam/opay/business/pin/PayPinInputFragment;->z:Z

    .line 150
    .line 151
    invoke-virtual {p1}, Lteam/opay/business/pin/hilt/PinRequest;->a()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-direct {p0, p1}, Lteam/opay/business/pin/PayPinInputFragment;->n0(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    goto :goto_5

    .line 159
    :cond_7
    invoke-virtual {p0}, Lteam/opay/business/pin/PayPinInputFragment;->e0()Lm52;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    iget-object p1, p1, Lm52;->e:Lteam/opay/core/widget/FixCodeInputField;

    .line 164
    .line 165
    invoke-virtual {p1}, Lteam/opay/core/widget/FixCodeInputField;->j()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Lteam/opay/business/pin/PayPinInputFragment;->e0()Lm52;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    iget-object p1, p1, Lm52;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 173
    .line 174
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-static {p1}, Lg0g;->h(Landroid/view/View;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0}, Lteam/opay/business/pin/PayPinInputFragment;->e0()Lm52;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    iget-object p1, p1, Lm52;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 185
    .line 186
    invoke-virtual {p2}, Lteam/opay/business/pin/hilt/PinResponse;->a()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    if-eqz p2, :cond_8

    .line 191
    .line 192
    goto :goto_4

    .line 193
    :cond_8
    sget p2, Lteam/opay/business/pin/R$string;->cashier_bad_gateway_error:I

    .line 194
    .line 195
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    :goto_4
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    .line 204
    .line 205
    sget-object p1, Lwkd;->a:Lwkd;

    .line 206
    .line 207
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeSheetFragment;->getAppContext()Landroid/content/Context;

    .line 208
    .line 209
    .line 210
    move-result-object p2

    .line 211
    invoke-virtual {p0}, Lteam/opay/business/pin/PayPinInputFragment;->e0()Lm52;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    iget-object p0, p0, Lm52;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 216
    .line 217
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p1, p2, p0}, Lwkd;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 221
    .line 222
    .line 223
    :cond_9
    :goto_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 224
    .line 225
    return-object p0
.end method


# virtual methods
.method public M()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/business/pin/PayPinInputFragment;->w:Z

    .line 2
    .line 3
    return v0
.end method

.method public N()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/business/pin/PayPinInputFragment;->v:Z

    .line 2
    .line 3
    return v0
.end method

.method public P()V
    .locals 1

    .line 1
    invoke-super {p0}, Lteam/opay/core/common/base/BaseSheetFragment;->P()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    const-string v0, ""

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lteam/opay/business/pin/PayPinInputFragment;->n0(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final c0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/pin/PayPinInputFragment;->g0()Lteam/opay/business/pin/PinInput;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/business/pin/PinInput;->b()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "only-fetch-pin"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lteam/opay/business/pin/PayPinInputFragment;->f0()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-direct {p0, v0}, Lteam/opay/business/pin/PayPinInputFragment;->n0(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0}, Lteam/opay/business/pin/PayPinInputFragment;->o0()V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method public final e0()Lm52;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/business/pin/PayPinInputFragment;->u:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/business/pin/PayPinInputFragment;->C:[Lzo7;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aget-object v1, v1, v2

    .line 7
    .line 8
    invoke-virtual {v0, p0, v1}, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;->g(Landroidx/fragment/app/Fragment;Lzo7;)Lxyf;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lm52;

    .line 13
    .line 14
    return-object v0
.end method

.method public final f0()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/pin/PayPinInputFragment;->e0()Lm52;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lm52;->e:Lteam/opay/core/widget/FixCodeInputField;

    .line 6
    .line 7
    invoke-virtual {v0}, Lteam/opay/core/widget/FixCodeInputField;->getCode()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final g0()Lteam/opay/business/pin/PinInput;
    .locals 1

    .line 1
    invoke-direct {p0}, Lteam/opay/business/pin/PayPinInputFragment;->h0()Lteam/opay/business/pin/PinViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/business/pin/PinViewModel;->s()Lteam/opay/business/pin/PinInput;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getSupportBack()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/business/pin/PayPinInputFragment;->x:Z

    .line 2
    .line 3
    return v0
.end method

.method public final o0()V
    .locals 3

    .line 1
    new-instance v0, Lteam/opay/business/pin/hilt/PinRequest;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/business/pin/PayPinInputFragment;->f0()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lteam/opay/business/pin/PayPinInputFragment;->g0()Lteam/opay/business/pin/PinInput;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lteam/opay/business/pin/PinInput;->a()Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-direct {v0, v1, v2}, Lteam/opay/business/pin/hilt/PinRequest;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lteam/opay/business/pin/PayPinInputFragment;->h0()Lteam/opay/business/pin/PinViewModel;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1, v0}, Lteam/opay/business/pin/PinViewModel;->w(Lteam/opay/business/pin/hilt/PinRequest;)Landroidx/lifecycle/LiveData;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    new-instance v2, Lvab;

    .line 27
    .line 28
    invoke-direct {v2, p0, v0}, Lvab;-><init>(Lteam/opay/business/pin/PayPinInputFragment;Lteam/opay/business/pin/hilt/PinRequest;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v1, p0, v2}, Lpna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/core/common/base/BaseSheetFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x3

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0}, Lteam/opay/business/pin/PayPinInputFragment;->e0()Lm52;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object p1, p1, Lm52;->k:Lteam/opay/business/pin/PinKeyboardView;

    .line 27
    .line 28
    new-instance v0, Lteam/opay/business/pin/PayPinInputFragment$KeyboardListener;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lteam/opay/business/pin/PayPinInputFragment$KeyboardListener;-><init>(Lteam/opay/business/pin/PayPinInputFragment;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lteam/opay/business/pin/PinKeyboardView;->setOnInputCallback(Lteam/opay/core/widget/internal/OnInputCallback;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p2, "inflater"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/business/pin/PayPinInputFragment;->e0()Lm52;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lm52;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string p2, "getRoot(...)"

    .line 15
    .line 16
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "dialog"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lteam/opay/core/common/base/BaseSheetFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    iget-boolean p1, p0, Lteam/opay/business/pin/PayPinInputFragment;->z:Z

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    sget-object p1, Lteam/opay/core/common/spi/a;->b:Lteam/opay/core/common/spi/a;

    .line 16
    .line 17
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeSheetFragment;->getAppContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x0

    .line 22
    new-array v1, v1, [Lkotlin/Pair;

    .line 23
    .line 24
    const-string v2, "enter_payment_pin_back_click"

    .line 25
    .line 26
    invoke-virtual {p1, v0, v2, v1}, Lteam/opay/core/common/spi/a;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
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
    const/4 v1, 0x1

    .line 3
    const-string v2, "view"

    .line 4
    .line 5
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Lteam/opay/core/common/base/BaseSheetFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/business/pin/PayPinInputFragment;->q0()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lteam/opay/business/pin/PayPinInputFragment;->e0()Lm52;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    iget-object p2, p2, Lm52;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 22
    .line 23
    sget v2, Lteam/opay/business/pin/R$string;->cashier_employee_pin_enter:I

    .line 24
    .line 25
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lteam/opay/business/pin/PayPinInputFragment;->e0()Lm52;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    iget-object p2, p2, Lm52;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 37
    .line 38
    sget v2, Lteam/opay/business/pin/R$string;->cashier_employee_pin_forgot:I

    .line 39
    .line 40
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-virtual {p0}, Lteam/opay/business/pin/PayPinInputFragment;->e0()Lm52;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    iget-object p2, p2, Lm52;->d:Landroidx/appcompat/widget/AppCompatImageView;

    .line 52
    .line 53
    const-string v2, "cashierBack"

    .line 54
    .line 55
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    new-instance v2, Lnab;

    .line 59
    .line 60
    invoke-direct {v2, p0}, Lnab;-><init>(Lteam/opay/business/pin/PayPinInputFragment;)V

    .line 61
    .line 62
    .line 63
    invoke-static {p2, v2}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lteam/opay/business/pin/PayPinInputFragment;->e0()Lm52;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    iget-object p2, p2, Lm52;->e:Lteam/opay/core/widget/FixCodeInputField;

    .line 71
    .line 72
    new-instance v2, Lteam/opay/business/pin/PayPinInputFragment$b;

    .line 73
    .line 74
    invoke-direct {v2, p0}, Lteam/opay/business/pin/PayPinInputFragment$b;-><init>(Lteam/opay/business/pin/PayPinInputFragment;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2, v2}, Lteam/opay/core/widget/FixCodeInputField;->setOnTextChangeListener(Lteam/opay/core/widget/FixCodeInputField$a;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lteam/opay/business/pin/PayPinInputFragment;->e0()Lm52;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    iget-object p2, p2, Lm52;->e:Lteam/opay/core/widget/FixCodeInputField;

    .line 85
    .line 86
    new-instance v2, Lpab;

    .line 87
    .line 88
    invoke-direct {v2, p0}, Lpab;-><init>(Lteam/opay/business/pin/PayPinInputFragment;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2, v2}, Lteam/opay/core/widget/FixCodeInputField;->setOnActionDone(Lkotlin/jvm/functions/Function0;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Lteam/opay/business/pin/PayPinInputFragment;->e0()Lm52;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    iget-object p2, p2, Lm52;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 99
    .line 100
    const-string v2, "btnForgotPin"

    .line 101
    .line 102
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    sget-object v3, Lteam/opay/core/common/spi/c;->a:Lteam/opay/core/common/spi/c;

    .line 106
    .line 107
    invoke-virtual {v3}, Lteam/opay/core/common/spi/c;->a()Z

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    if-nez v4, :cond_2

    .line 112
    .line 113
    sget-object v4, Lorb;->b:Lorb;

    .line 114
    .line 115
    invoke-virtual {v4}, Lorb;->c()Z

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    if-eqz v4, :cond_1

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_1
    const/4 v4, 0x0

    .line 123
    goto :goto_1

    .line 124
    :cond_2
    :goto_0
    const/4 v4, 0x1

    .line 125
    :goto_1
    invoke-static {p2, v4}, Lg0g;->f(Landroid/view/View;Z)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Lteam/opay/business/pin/PayPinInputFragment;->e0()Lm52;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    iget-object p2, p2, Lm52;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 133
    .line 134
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    new-instance v2, Lrab;

    .line 138
    .line 139
    invoke-direct {v2, p0, p1}, Lrab;-><init>(Lteam/opay/business/pin/PayPinInputFragment;Z)V

    .line 140
    .line 141
    .line 142
    invoke-static {p2, v2}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Lteam/opay/business/pin/PayPinInputFragment;->e0()Lm52;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    iget-object p1, p1, Lm52;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 150
    .line 151
    const-string p2, "fingerPrintPayment"

    .line 152
    .line 153
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v3}, Lteam/opay/core/common/spi/c;->a()Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-eqz v2, :cond_3

    .line 161
    .line 162
    invoke-virtual {p0}, Lteam/opay/business/pin/PayPinInputFragment;->g0()Lteam/opay/business/pin/PinInput;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-virtual {v2}, Lteam/opay/business/pin/PinInput;->c()Z

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    if-eqz v2, :cond_3

    .line 171
    .line 172
    const/4 v2, 0x1

    .line 173
    goto :goto_2

    .line 174
    :cond_3
    const/4 v2, 0x0

    .line 175
    :goto_2
    invoke-static {p1, v2}, Lg0g;->j(Landroid/view/View;Z)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0}, Lteam/opay/business/pin/PayPinInputFragment;->e0()Lm52;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    iget-object p1, p1, Lm52;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 183
    .line 184
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    new-instance p2, Ltab;

    .line 188
    .line 189
    invoke-direct {p2, p0}, Ltab;-><init>(Lteam/opay/business/pin/PayPinInputFragment;)V

    .line 190
    .line 191
    .line 192
    invoke-static {p1, p2}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 193
    .line 194
    .line 195
    sget-object p1, Lteam/opay/core/common/spi/a;->b:Lteam/opay/core/common/spi/a;

    .line 196
    .line 197
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeSheetFragment;->getAppContext()Landroid/content/Context;

    .line 198
    .line 199
    .line 200
    move-result-object p2

    .line 201
    invoke-virtual {p0}, Lteam/opay/business/pin/PayPinInputFragment;->g0()Lteam/opay/business/pin/PinInput;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    invoke-virtual {v2}, Lteam/opay/business/pin/PinInput;->b()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    const-string v3, "from"

    .line 210
    .line 211
    invoke-static {v3, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    new-array v1, v1, [Lkotlin/Pair;

    .line 216
    .line 217
    aput-object v2, v1, v0

    .line 218
    .line 219
    const-string v0, "enter_payment_pin_show"

    .line 220
    .line 221
    invoke-virtual {p1, p2, v0, v1}, Lteam/opay/core/common/spi/a;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 222
    .line 223
    .line 224
    return-void
.end method

.method public final q0()Z
    .locals 4

    .line 1
    sget-object v0, Lorb;->b:Lorb;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorb;->d()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    invoke-virtual {p0}, Lteam/opay/business/pin/PayPinInputFragment;->g0()Lteam/opay/business/pin/PinInput;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lteam/opay/business/pin/PinInput;->a()Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const-string v3, "payChannel"

    .line 23
    .line 24
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move-object v0, v2

    .line 30
    :goto_0
    const-string v3, "ExpenseAccount"

    .line 31
    .line 32
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_3

    .line 37
    .line 38
    invoke-virtual {p0}, Lteam/opay/business/pin/PayPinInputFragment;->g0()Lteam/opay/business/pin/PinInput;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lteam/opay/business/pin/PinInput;->a()Ljava/util/Map;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    const-string v2, "businessType"

    .line 49
    .line 50
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    :cond_2
    const-string v0, "statementDownload"

    .line 55
    .line 56
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    :cond_3
    const/4 v1, 0x1

    .line 63
    :cond_4
    return v1
.end method
